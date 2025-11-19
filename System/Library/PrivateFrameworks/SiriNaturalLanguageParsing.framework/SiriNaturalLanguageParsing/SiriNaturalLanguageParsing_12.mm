void snlp::ssu::matcher::SSUCandidateEncoder::buildEncodedAppCandidates(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  snlp::ssu::matcher::SSUCandidateEncoder::getOriginalEncoding(a2, v8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 != *a1)
  {
    if (!((v6 >> 8) >> 58))
    {
      v7 = a3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>>(v6 >> 8);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_22291047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::__destroy_vector::operator()[abi:ne200100](va);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v7 - 136));
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUCandidateEncoder::EncodingsBatch::~EncodingsBatch(snlp::ssu::matcher::SSUCandidateEncoder::EncodingsBatch *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(this + 48);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void snlp::ssu::matcher::SSUCandidateEncoder::UtterancesBatch::~UtterancesBatch(void **this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table((this + 3));
  v2 = this;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void snlp::ssu::matcher::SSUCandidateEncoder::getOriginalEncoding(uint64_t a1@<X0>, void *a2@<X8>)
{
  snlp::ssu::matcher::SSUCandidateEncoder::getEncodingAtIndex(a1, 0, &v5);
  if ((v9 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = v5;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, v5, v6, (v6 - v5) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v4 = v7;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), v7, v8, (v8 - v7) >> 2);
  if (v4)
  {
    operator delete(v4);
  }

  if (v3)
  {

    operator delete(v3);
  }
}

void sub_222910700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::optional<snlp::common::tensor::InferenceTensor>::~optional(va);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[2].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 64) == 1)
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

    std::unordered_set<std::string>::unordered_set(&this[1], a2 + 24);
    this[2].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_2229107A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    snlp::ssu::candidate::SSUAlternativeCandidateInfo::~SSUAlternativeCandidateInfo(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[3].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 88) == 1)
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

    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = 0;
    *&this[1].__r_.__value_.__l.__data_ = v5;
    this[2].__r_.__value_.__r.__words[0] = 0;
    this[2].__r_.__value_.__l.__size_ = 0;
    std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(&this[1].__r_.__value_.__r.__words[2], *(a2 + 5), *(a2 + 6), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v6 = a2[4];
      this[3].__r_.__value_.__l.__size_ = *(a2 + 10);
      *&this[2].__r_.__value_.__r.__words[2] = v6;
    }

    this[3].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_2229108B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  if (*(v2 + 88) == 1)
  {
    snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo::~AppEntitySpanInfo(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::ssu::candidate::SSUAlternativeCandidateInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>>::construct[abi:ne200100]<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 48, a2 + 6);
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v6 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v6;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 12) = 0;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 19);
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    *(a2 + 19) = 0;
    v7 = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a1 + 160) = v7;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a2 + 20) = 0;
    *(a1 + 184) = 1;
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  result = *(a2 + 216);
  *(a1 + 216) = result;
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  return result;
}

uint64_t std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::__emplace_back_slow_path<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>(uint64_t a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>>(v5);
  }

  v12 = 0;
  v13 = 240 * v2;
  std::allocator_traits<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>>::construct[abi:ne200100]<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,0>(240 * v2, a2);
  v14 = 240 * v2 + 240;
  v6 = *(a1 + 8);
  v7 = 240 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>,snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::~__split_buffer(&v12);
  return v11;
}

void snlp::ssu::candidate::SSUCandidate::~SSUCandidate(void **this)
{
  if (*(this + 184) == 1)
  {
    if (*(this + 183) < 0)
    {
      operator delete(this[20]);
    }

    v2 = this + 17;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 119) < 0)
    {
      operator delete(this[12]);
    }
  }

  if (*(this + 88) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 6));
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void snlp::ssu::matcher::SSUCandidateEncoder::getAlternativeEncoding(snlp::ssu::matcher::SSUCandidateEncoder *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(this + 7);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = a2;
    if (v7 <= a2)
    {
      v9 = a2 % v7;
    }
  }

  else
  {
    v9 = (v7 - 1) & a2;
  }

  v10 = *(*(this + 6) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v13 = SNLPOSLoggerForCategory(8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      *a4 = 0;
      a4[48] = 0;
      goto LABEL_21;
    }

    *buf = 134218240;
    *&buf[4] = a2;
    v21 = 2048;
    v22 = a3;
    v14 = buf;
LABEL_19:
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "Warning: alternative encoding at appCandidatesIndex=%lu, alternativeIndex=%lu not present in the encodings batch. Skipping.", v14, 0x16u);
    goto LABEL_20;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == a2)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= v7)
      {
        v12 %= v7;
      }
    }

    else
    {
      v12 &= v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_16;
  }

  snlp::ssu::matcher::SSUCandidateEncoder::getEncodingAtIndex(this, v11[3] + a3, buf);
  if ((v24 & 1) == 0)
  {
    v13 = SNLPOSLoggerForCategory(8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v16 = 134218240;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v14 = &v16;
    goto LABEL_19;
  }

  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](a4, buf);
  if (__p)
  {
    operator delete(__p);
  }

  if (*buf)
  {
    operator delete(*buf);
  }

LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_222910E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate::~EncodedCandidate(snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  if (*(this + 184) == 1)
  {
    if (*(this + 183) < 0)
    {
      operator delete(*(this + 20));
    }

    v4 = (this + 136);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 119) < 0)
    {
      operator delete(*(this + 12));
    }
  }

  if (*(this + 88) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 48);
    if (*(this + 47) < 0)
    {
      operator delete(*(this + 3));
    }
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::optional<snlp::common::tensor::InferenceTensor>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate::~EncodedCandidate((v4 - 240));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates::~EncodedAppCandidates(void **this)
{
  v2 = this + 5;
  std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::destroy[abi:ne200100](uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>,snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 4) = *(v6 + 4);
      *a4 = v7;
      v8 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v8;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    do
    {
      std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::destroy[abi:ne200100](v5);
      v5 += 64;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::destroy[abi:ne200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::ontology::UsoIdentifier>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<siri::ontology::UsoIdentifier>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 48) == 1 && *(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      if (*(v3 - 73) < 0)
      {
        operator delete(*(v3 - 12));
      }

      v4 = v3 - 15;
      if (*(v3 - 97) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 15;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t snlp::ssu::matcher::SSUCandidateEncoder::getEncodingAtIndex@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *result;
  if (*(result + 8) - *result <= 8uLL)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  if (*v4 > a2)
  {
    v5 = *(result + 24);
    v9 = v4[1];
    *&v8 = 0;
    v7 = 0uLL;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v7, &v9, &v10, 1uLL);
  }

  *a3 = 0;
  a3[48] = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22291141C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>>(unint64_t a1)
{
  if (a1 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>,snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate*>(snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>>::construct[abi:ne200100]<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate,0>(a3, v6);
      v6 += 15;
      a3 += 240;
    }

    while (v6 != a2);
    do
    {
      snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate::~EncodedCandidate(v5);
      v5 = (v5 + 240);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    snlp::ssu::matcher::SSUCandidateEncoder::EncodedCandidate::~EncodedCandidate((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::ontology::UsoIdentifier>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo::~AppEntitySpanInfo(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this + 5;
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<siri::ontology::UsoIdentifier>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

std::string *siri::ontology::UsoIdentifier::UsoIdentifier(std::string *this, __int128 *a2)
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

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 2, a2 + 3);
  v6 = *(a2 + 11);
  this[3].__r_.__value_.__l.__size_ = *(a2 + 10);
  this[3].__r_.__value_.__s.__data_[16] = v6;
  v7 = *(a2 + 12);
  LODWORD(this[4].__r_.__value_.__l.__data_) = v7;
  this[4].__r_.__value_.__s.__data_[4] = BYTE4(v7);
  v8 = *(a2 + 13);
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = v8;
  this[4].__r_.__value_.__s.__data_[12] = BYTE4(v8);
  v9 = *(a2 + 14);
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = v9;
  this[4].__r_.__value_.__s.__data_[20] = BYTE4(v9);
  return this;
}

void sub_22291182C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::ontology::UsoIdentifier>,siri::ontology::UsoIdentifier*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 48) == 1 && *(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 73) < 0)
        {
          operator delete(*(v4 - 12));
        }

        v6 = v4 - 15;
        if (*(v4 - 97) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 15;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void snlp::ssu::candidate::SSUAlternativeCandidateInfo::~SSUAlternativeCandidateInfo(void **this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
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

void nlv4_inference_orchestrator::inference_engine::BertE5MLModule::setInputTensors(const void **this, nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v4 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "setting Padded E5ML inputs.", &v10, 2u);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 47, a2);
  if ((*(a2 + 96) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "Received invalid tensor for utteranceTokensMask input!");
    std::runtime_error::runtime_error(exception, &v10);
    exception->__vftable = &unk_2835E9238;
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 50, a2 + 48);
  if ((*(a2 + 152) & 1) != 0 || *(a2 + 208) == 1)
  {
    v5 = *(this + 2);
    if (v5 == 2)
    {
      if ((*(a2 + 152) & 1) == 0)
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v10, "Received invalid tensor for featurePoolingMask input!");
        std::runtime_error::runtime_error(v9, &v10);
        v9->__vftable = &unk_2835E9238;
      }

      v6 = a2 + 104;
    }

    else
    {
      if (v5 != 3)
      {
        return;
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v10, "Received invalid tensor for featurePoolingMask2D input!");
        std::runtime_error::runtime_error(v8, &v10);
        v8->__vftable = &unk_2835E9238;
      }

      v6 = a2 + 160;
    }

    snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 26, v6);
  }
}

void sub_222911DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::BertE5MLModule::forward(E5RT::ExecutionStreamOperation **this, const nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v4 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Executing non-reshapable E5-ML inference.", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::BertModuleInputType(buf, a2);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(this + 54);
  (*(*this + 21))(this, buf);
  v5 = this[57];
  v6 = this[77];
  v9 = this[76];
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(this[57]);
  E5RT::ExecutionStream::ResetStream(this[57]);
  (*(*this + 22))(this);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(this + 54);
  v7 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "Success Executing non-reshapable E5-ML inference.", v8, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(buf);
}

void sub_222911FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  nlv4_inference_orchestrator::inference_engine::BertModuleOutputType::~BertModuleOutputType(v13);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(&a13);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::BertModuleOutputType::~BertModuleOutputType(nlv4_inference_orchestrator::inference_engine::BertModuleOutputType *this)
{
  if (*(this + 152) == 1)
  {
    v2 = *(this + 16);
    if (v2)
    {
      *(this + 17) = v2;
      operator delete(v2);
    }

    v3 = *(this + 13);
    if (v3)
    {
      *(this + 14) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 96) == 1)
  {
    v4 = *(this + 9);
    if (v4)
    {
      *(this + 10) = v4;
      operator delete(v4);
    }

    v5 = *(this + 6);
    if (v5)
    {
      *(this + 7) = v5;
      operator delete(v5);
    }
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

BOOL snlp::ssu::cache::SSUCacheObjectParameter::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

BOOL snlp::ssu::cache::SSUCacheObjectIntent::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v11 = v7 + 3;
  v9 = v7[3];
  v10 = v11[1];
  v13 = v6 + 3;
  v12 = v6[3];
  if (v10 - v9 != v13[1] - v12)
  {
    return 0;
  }

  if (v9 == v10)
  {
    return 1;
  }

  do
  {
    result = snlp::ssu::cache::SSUCacheObjectParameter::operator==(v9, v12);
    if (!result)
    {
      break;
    }

    v9 += 48;
    v12 += 6;
  }

  while (v9 != v10);
  return result;
}

BOOL snlp::ssu::cache::SSUCacheObjectIntentList::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if ((v3 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = snlp::ssu::cache::SSUCacheObjectIntent::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 6;
    v4 += 6;
  }

  while (v2 != v3);
  return result;
}

void snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex(snlp::ssu::cache::SSUCacheObjectIntentList *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4) <= a2)
  {
    v6 = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v4 = *this + 48 * a2;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      a3->__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&a3->__r_.__value_.__l.__data_ = v5;
    }

    a3[1].__r_.__value_.__r.__words[0] = 0;
    a3[1].__r_.__value_.__l.__size_ = 0;
    a3[1].__r_.__value_.__r.__words[2] = 0;
    std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::__init_with_size[abi:ne200100]<snlp::ssu::cache::SSUCacheObjectParameter*,snlp::ssu::cache::SSUCacheObjectParameter*>(&a3[1], *(v4 + 24), *(v4 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 32) - *(v4 + 24)) >> 4));
    v6 = 1;
  }

  a3[2].__r_.__value_.__s.__data_[0] = v6;
}

void sub_222912424(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::__init_with_size[abi:ne200100]<snlp::ssu::cache::SSUCacheObjectParameter*,snlp::ssu::cache::SSUCacheObjectParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive::getNumEncodings(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive *this)
{
  if (*(this + 1) == *this)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return **this;
}

uint64_t snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative::getNumEncodings(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative *this)
{
  if (*(this + 1) == *this)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return **this;
}

uint64_t std::default_delete<snlp::ssu::cache::SSUCacheDirectory>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::recursive_mutex::~recursive_mutex((result + 24));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(a1 + 96);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v4 = a1;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void snlp::ssu::matcher::SSURequestHandler::~SSURequestHandler(snlp::ssu::matcher::SSURequestHandler *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(this + 72);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void snlp::ssu::matcher::SSUPersister::~SSUPersister(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void snlp::ssu::matcher::SSUMatcherConfig::~SSUMatcherConfig(void **this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<snlp::ssu::similarity::SSUSimilarityScore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2835E4050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) < v2)
  {
    if (a2 == -1 || (*(a1 + 76) & 0x10) != 0)
    {
      v3 = (v2 - 1);
      *(a1 + 24) = v3;
      if (a2 == -1)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
LABEL_10:
      *v3 = a2;
      return a2;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (v1 < *(a1 + 32))
    {
      return *v1;
    }

    if ((*(a1 + 76) & 8) != 0)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(a1 + 64);
        if (v1 < v3 || v1 < v4)
        {
          if (v4 < v3)
          {
            *(a1 + 64) = v3;
            v4 = v3;
          }

          *(a1 + 32) = v4;
          return *v1;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (!a3)
        {
          v7 = 2;
LABEL_22:
          a2 = a2 - v6 + a1[v7];
LABEL_23:
          if (a1[2] > (v6 + a2) || (v6 + a2) > a1[8])
          {
            goto LABEL_25;
          }

          v11 = v6 + a2;
          a1[3] = v11;
          if ((a4 & 0x10) == 0 || !v5)
          {
LABEL_31:
            v8 = a2;
            goto LABEL_26;
          }

          LODWORD(v11) = v11 - v5;
LABEL_30:
          a1[6] = v5 + v11;
          goto LABEL_31;
        }

LABEL_25:
        v8 = -1;
        goto LABEL_26;
      }

      v7 = 8;
      goto LABEL_22;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v10 = a1[5];
      v9 = v10 - v5;
      goto LABEL_16;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5;
      v10 = a1[5];
LABEL_16:
      v11 = v9 + a2;
      if (v10 > v5 + v11)
      {
        goto LABEL_25;
      }

      a2 = v11;
      if (v5 + v11 > a1[8])
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

void boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::throw_exception<boost::io::too_few_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  *exception = &unk_2835E65A8;
  exception[1] = &unk_2835E65D8;
  *(exception + 1) = *(a1 + 8);
  exception[6] = 0;
  exception[7] = 0;
  *(exception + 16) = -1;
  *exception = &unk_2835E6530;
  exception[1] = &unk_2835E6560;
  exception[4] = &unk_2835E6588;
  exception[5] = 0;
}

uint64_t boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(void *a1)
{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x223DC4D00);
}

void boost::wrapexcept<boost::io::too_few_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::io::too_few_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E65A8;
  *(a1 + 8) = &unk_2835E65D8;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_2835E6600;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_2835E6530;
  *(a1 + 8) = &unk_2835E6560;
  *(a1 + 32) = &unk_2835E6588;
  return a1;
}

void sub_222913258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::io::too_few_args::~too_few_args(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x223DC4D00);
}

void boost::throw_exception<boost::io::too_many_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  *exception = &unk_2835E65A8;
  exception[1] = &unk_2835E6890;
  *(exception + 1) = *(a1 + 8);
  exception[6] = 0;
  exception[7] = 0;
  *(exception + 16) = -1;
  *exception = &unk_2835E6818;
  exception[1] = &unk_2835E6848;
  exception[4] = &unk_2835E6870;
  exception[5] = 0;
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = std::ostream::~ostream();
  boost::detail::shared_count::~shared_count((v2 + 16));
  MEMORY[0x223DC4C10](a1 + 24);
  return a1;
}

void virtual thunk toboost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  boost::detail::shared_count::~shared_count(v1 + 2);
  MEMORY[0x223DC4C10](v1 + 3);

  JUMPOUT(0x223DC4D00);
}

{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  boost::detail::shared_count::~shared_count(v1 + 2);

  JUMPOUT(0x223DC4C10);
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = std::ostream::~ostream();
  boost::detail::shared_count::~shared_count((v2 + 16));
  MEMORY[0x223DC4C10](a1 + 24);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::detail::sp_counted_impl_pd<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>> *,boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::No_Op>::get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(void *a1)
{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x223DC4D00);
}

void boost::wrapexcept<boost::io::too_many_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::io::too_many_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E65A8;
  *(a1 + 8) = &unk_2835E6890;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_2835E6600;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_2835E6818;
  *(a1 + 8) = &unk_2835E6848;
  *(a1 + 32) = &unk_2835E6870;
  return a1;
}

void sub_222913C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::io::too_many_args::~too_many_args(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x223DC4D00);
}

void boost::throw_exception<boost::io::bad_format_string>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  *exception = &unk_2835E65A8;
  exception[1] = &unk_2835E6790;
  *(exception + 1) = *(a1 + 8);
  exception[6] = 0;
  exception[7] = 0;
  *(exception + 16) = -1;
  *exception = &unk_2835E6718;
  exception[1] = &unk_2835E6748;
  exception[4] = &unk_2835E6770;
  exception[5] = 0;
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    std::locale::~locale((a1 + 96));
    *(a1 + 88) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 120;
    std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(v3 - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(void *a1)
{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x223DC4D00);
}

void boost::wrapexcept<boost::io::bad_format_string>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E65A8;
  *(a1 + 8) = &unk_2835E6790;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_2835E6600;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_2835E6718;
  *(a1 + 8) = &unk_2835E6748;
  *(a1 + 32) = &unk_2835E6770;
  return a1;
}

void sub_222914448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::io::bad_format_string::~bad_format_string(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::io::detail::maybe_throw_exception(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this)
  {
    v3[0] = &unk_2835E6790;
    v3[1] = a2;
    v3[2] = a3;
    boost::throw_exception<boost::io::bad_format_string>(v3);
  }

  return this;
}

char *boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(char *a1, char **a2, void *a3, void *a4)
{
  v4 = a1;
  for (*a3 = 0; v4 != *a2; ++v4)
  {
    v8 = *v4;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = 10 * *a3 + (*(*a4 + 72))(a4) - 48;
  }

  return v4;
}

uint64_t std::__shared_ptr_pointer<snlp::ssu::cache::SSUCacheDirectory  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<snlp::ssu::cache::SSUCacheDirectory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void std::__shared_ptr_emplace<snlp::ssu::encoder::SSUEncoderFactoryLazy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2835E3F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void std::__shared_ptr_emplace<snlp::ssu::encoder::SSUEncoderFactoryPreemptive>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2835E3FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::ssu::matcher::SSUMatcher::getLocale(snlp::ssu::matcher::SSUMatcher *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void snlp::ssu::matcher::SSUMatcher::performFullCacheUpdate(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 344));
  v8 = SNLPOSLoggerForCategory(8);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "Performing a full cache update for %lu apps", buf, 0xCu);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    do
    {
      if (snlp::ssu::matcher::SSUMatcher::appAssetDirectoryExists(v9, v11))
      {
        snlp::ssu::matcher::SSUPersister::updateCacheForAppIfRequired((a1 + 64), v11, buf);
        if (v36 == 1)
        {
          v13 = a4[1];
          if (v13 >= a4[2])
          {
            goto LABEL_26;
          }

LABEL_16:
          std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__construct_one_at_end[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const&>(a4, buf);
          updated = v13 + 56;
          goto LABEL_27;
        }

        v18 = SNLPOSLoggerForCategory(8);
        v9 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          v19 = v11;
          if (v11[23] < 0)
          {
            v19 = *v11;
          }

          *v29 = 136315138;
          v30 = v19;
          v20 = v18;
          v21 = "Cache update failed for app %s. Continuing with other apps.";
LABEL_25:
          _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_ERROR, v21, v29, 0xCu);
        }
      }

      else
      {
        v14 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = v11;
          if (v11[23] < 0)
          {
            v15 = *v11;
          }

          v16 = v11 + 24;
          if (v11[47] < 0)
          {
            v16 = *v16;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          v32 = 2080;
          v33 = v16;
          _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "Cannot find SSU app assets for given app: %s (tried %s). Cleaning up cache files for it and removing it from the registry.", buf, 0x16u);
        }

        snlp::ssu::matcher::SSUPersister::removeCacheFilesForApp(a1 + 64, v11, buf);
        if (v36 == 1)
        {
          v13 = a4[1];
          if (v13 < a4[2])
          {
            goto LABEL_16;
          }

LABEL_26:
          updated = std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__emplace_back_slow_path<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const&>(a4, buf);
LABEL_27:
          a4[1] = updated;
          v9 = __p;
          if (__p)
          {
            operator delete(__p);
          }

          if (v34 < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_31;
        }

        v22 = SNLPOSLoggerForCategory(8);
        v9 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          v23 = v11;
          if (v11[23] < 0)
          {
            v23 = *v11;
          }

          *v29 = 136315138;
          v30 = v23;
          v20 = v22;
          v21 = "Removing cache files failed for app %s.";
          goto LABEL_25;
        }
      }

LABEL_31:
      v11 += 48;
    }

    while (v11 != v12);
  }

  if (*(a3 + 24))
  {
    v24 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      if ((*(a3 + 24) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 4);
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "Performing a full cache update for %lu configured user shortcuts", buf, 0xCu);
    }

    if (*(a3 + 24))
    {
      snlp::ssu::matcher::SSUPersister::updateCacheForUserShortcutsIfRequired(a1 + 64, a3);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (!snlp::ssu::cache::SSUCacheDirectory::clearCacheFilesOutsideLocale(*(a1 + 96), a1 + 72))
  {
    v26 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, "Failed to clear cache files outside the current locale. Stale cache files will remain on disk.", buf, 2u);
    }
  }

  v27 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_DEBUG, "Completed full cache update", buf, 2u);
  }

  std::mutex::unlock((a1 + 344));
  v28 = *MEMORY[0x277D85DE8];
}

void sub_222914D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::optional<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~optional(va);
  std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__destroy_vector::operator()[abi:ne200100](va);
  std::mutex::unlock((v7 + 344));
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::matcher::SSUMatcher::appAssetDirectoryExists(snlp::ssu::matcher::SSUMatcher *this, const std::__fs::filesystem::path *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__status(a2 + 1, 0);
  result = v4 == 2;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__construct_one_at_end[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 6);
  *(v4 + 32) = 0;
  *(v4 + 24) = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(v4 + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__emplace_back_slow_path<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>>(v6);
  }

  v7 = 56 * v2;
  v20 = 0;
  v21 = v7;
  v22 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 6);
  *(v7 + 32) = 0;
  *(v7 + 24) = v9;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(v7 + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *&v22 = v22 + 56;
  v10 = *a1;
  v11 = a1[1];
  v12 = v21 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v21 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 0;
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 32) = 0;
      *(v14 + 32) = *(v13 + 32);
      *(v14 + 48) = *(v13 + 48);
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      v13 += 56;
      v14 += 56;
    }

    while (v13 != v11);
    do
    {
      std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::destroy[abi:ne200100](v10);
      v10 += 56;
    }

    while (v10 != v11);
  }

  v16 = *a1;
  *a1 = v12;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~__split_buffer(&v20);
  return v19;
}

void sub_2229150FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_222915310(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::destroy[abi:ne200100](i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void snlp::ssu::matcher::SSUMatcher::registerApp(snlp::ssu::matcher::SSUMatcher *this@<X0>, const snlp::ssu::matcher::SSUAppInfo *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 344));
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

    if (*(a2 + 47) >= 0)
    {
      v8 = a2 + 24;
    }

    else
    {
      v8 = *(a2 + 3);
    }

    v13 = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Handling app registration for app with bundle ID %s and asset path %s", &v13, 0x16u);
  }

  snlp::ssu::matcher::SSUPersister::updateCacheForAppIfRequired(this + 8, a2, a3);
  v9 = *(a3 + 56);
  v10 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "FALSE";
    if (v9)
    {
      v11 = "TRUE";
    }

    v13 = 136315138;
    v14 = v11;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "Completed app registration with isSuccess=%s", &v13, 0xCu);
  }

  std::mutex::unlock((this + 344));
  v12 = *MEMORY[0x277D85DE8];
}

void snlp::ssu::matcher::SSUMatcher::deregisterApp(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 344));
  v6 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v12 = 136315138;
    v13 = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Handling app deregistration for app with bundle ID %s", &v12, 0xCu);
  }

  snlp::ssu::matcher::SSUPersister::removeCacheFilesForApp(a1 + 64, a2, a3);
  if ((*(a3 + 56) & 1) == 0)
  {
    v8 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "Hit error when removing cache files for app %s. Returning false to signal that there was an error during de-registration.", &v12, 0xCu);
    }
  }

  v10 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "Completed app deregistration", &v12, 2u);
  }

  std::mutex::unlock((a1 + 344));
  v11 = *MEMORY[0x277D85DE8];
}

void snlp::ssu::matcher::SSUMatcher::handleUserRequest(std::string *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  *a2 = 0;
  v10 = v5;
  snlp::ssu::proto::SSUValidatedRequest::validateRequest(&a1->__r_.__value_.__l.__data_, &v10, &v11);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v12)
  {
    snlp::ssu::matcher::SSUMatcher::getTriggeredAppCategories(a1, v9);
    if (v9[0] != v9[1] || (_os_feature_enabled_impl() & 1) != 0)
    {
      snlp::ssu::matcher::SSURequestHandler::buildResponseForApps(&a1[7], v9, &v11);
    }

    v8 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315394;
      *&buf[1] = "SSU";
      v14 = 2080;
      v15 = "[insights-snlp-ssu]: ";
      _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sOutputting no SSU parses since there are no triggered (app, category) tuples", buf, 0x16u);
    }

    operator new();
  }

  v6 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "Request failed validation. Aborting handling.", v9, 2u);
  }

  *a3 = 0u;
  a3[1] = 0u;
  v7 = *MEMORY[0x277D85DE8];
}

void sub_222915928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (a14 == 1)
  {
    if (a13)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::matcher::SSUMatcher::getTriggeredAppCategories(std::string *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  v24 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForLocale(this[13].__r_.__value_.__r.__words[2], this, &v17);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v17.__r_.__value_.__r.__words[0];
  if (v17.__r_.__value_.__r.__words[0] != v17.__r_.__value_.__l.__size_)
  {
    if (!*v17.__r_.__value_.__l.__data_)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(v3[1].__r_.__value_.__r.__words, (v17.__r_.__value_.__r.__words[0] + 8));
      v6 = *v5;
    }

    snlp::ssu::trigger::buildTrigger();
  }

  v7 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "SSU";
    v19 = 2080;
    v20 = "[insights-snlp-ssu]: ";
    v21 = 2048;
    v22 = 0x4EC4EC4EC4EC4EC5 * ((v17.__r_.__value_.__l.__size_ - v17.__r_.__value_.__r.__words[0]) >> 3);
    v23[0] = 2080;
    *&v23[1] = v3;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] %sFound %lu cache files in total for locale %s. Each of these were tested for triggering against the input request.", buf, 0x2Au);
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = *a2;
  if (*a2 == v9)
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "SSU";
      v19 = 2080;
      v20 = "[insights-snlp-ssu]: ";
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] %sNo app experiences were triggered", buf, 0x16u);
    }
  }

  else
  {
    do
    {
      v11 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = (v10 + 8);
        if (*(v10 + 31) < 0)
        {
          v12 = *v12;
        }

        v13 = *(v10 + 32);
        v14 = "";
        if (v13 <= 3)
        {
          v14 = EnumNamesSSUCategoryType(void)::names[v13];
        }

        *buf = 136315906;
        *&buf[4] = "SSU";
        v19 = 2080;
        v20 = "[insights-snlp-ssu]: ";
        v21 = 2080;
        v22 = v12;
        v23[0] = 2080;
        *&v23[1] = v14;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] %sApp '%s' with category '%s' was triggered", buf, 0x2Au);
      }

      v10 += 40;
    }

    while (v10 != v9);
  }

  *buf = &v17;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](buf);
  v16 = *MEMORY[0x277D85DE8];
}

void std::vector<snlp::ssu::app::SSUAppCategory>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        if (*(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 73) < 0)
        {
          operator delete(*(v4 - 12));
        }

        v4 -= 13;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppCategory>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategory*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 4) = *(v6 + 4);
      *a4 = v7;
      v8 = *(v6 + 2);
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 8) = v8;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 10;
      a4 += 40;
    }

    while (v6 != a3);
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
      }

      v5 += 5;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::app::SSUAppCategory>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::forward(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Encoder Inference", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN Encoder Inference", buf, 2u);
  }

  snlp::common::espresso_inference::pre_e5ml::EspressoModule::buildPlan(*(a1 + 8));
  nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedEmbeddingsTensor(a1, a2, &v12);
  nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedSpansTensor(a1, a2, &v11);
  nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedContextTensor(a1, a2, &v10);
  nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddingMask(a1, a2, &v9);
}

void sub_22291738C(_Unwind_Exception *a1)
{
  v2 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v3;
    operator delete(v3);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&STACK[0x268]);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType::~TransformerDecoderInputType(&STACK[0x840]);
  STACK[0x840] = &STACK[0x328];
  std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::__destroy_vector::operator()[abi:ne200100](&STACK[0x840]);
  v4 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v6;
    operator delete(v6);
  }

  v7 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v7;
    operator delete(v7);
  }

  v8 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v8;
    operator delete(v8);
  }

  v9 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v9;
    operator delete(v9);
  }

  v10 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v11;
    operator delete(v11);
  }

  v12 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v12;
    operator delete(v12);
  }

  v13 = STACK[0x430];
  if (STACK[0x430])
  {
    STACK[0x438] = v13;
    operator delete(v13);
  }

  v14 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v14;
    operator delete(v14);
  }

  v15 = STACK[0x400];
  if (STACK[0x400])
  {
    STACK[0x408] = v15;
    operator delete(v15);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType::~TransformerEncoderModuleInputType(&STACK[0x460]);
  v16 = STACK[0x568];
  if (STACK[0x568])
  {
    STACK[0x570] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x550];
  if (STACK[0x550])
  {
    STACK[0x558] = v17;
    operator delete(v17);
  }

  v18 = STACK[0x598];
  if (STACK[0x598])
  {
    STACK[0x5A0] = v18;
    operator delete(v18);
  }

  v19 = STACK[0x580];
  if (STACK[0x580])
  {
    STACK[0x588] = v19;
    operator delete(v19);
  }

  v20 = STACK[0x5C8];
  if (STACK[0x5C8])
  {
    STACK[0x5D0] = v20;
    operator delete(v20);
  }

  v21 = STACK[0x5B0];
  if (STACK[0x5B0])
  {
    STACK[0x5B8] = v21;
    operator delete(v21);
  }

  v22 = STACK[0x5F8];
  if (STACK[0x5F8])
  {
    STACK[0x600] = v22;
    operator delete(v22);
  }

  v23 = STACK[0x5E0];
  if (STACK[0x5E0])
  {
    STACK[0x5E8] = v23;
    operator delete(v23);
  }

  v24 = STACK[0x628];
  if (STACK[0x628])
  {
    STACK[0x630] = v24;
    operator delete(v24);
  }

  v25 = STACK[0x610];
  if (STACK[0x610])
  {
    STACK[0x618] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedEmbeddingsTensor(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 64));
  v7 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 88));
  v8 = (a1 + 24);
  nlv4_inference_orchestrator::inference_engine::utils::padEmbeddingTensor(a2, NetworkConfig, v7, (a1 + 24), a3, *(a1 + 56));
  if (*a3 == a3[1])
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 47) < 0)
      {
        v8 = *v8;
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] Padding of the embeddings input is required to execute model inference", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedSpansTensor(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 64));
  v7 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 112));
  v8 = *(a1 + 56);
  v9 = (a1 + 24);
  nlv4_inference_orchestrator::inference_engine::utils::padSpanTensor(a2 + 48, NetworkConfig, v7, (a1 + 24), a3);
  if (*a3 == *(a3 + 8))
  {
    v10 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 47) < 0)
      {
        v9 = *v9;
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_ERROR, "[%s] Padding of the span input is required to execute model inference", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddedContextTensor(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 112));
  v7 = (a1 + 24);
  nlv4_inference_orchestrator::inference_engine::utils::padContextTensor(a2 + 96, NetworkConfig, (a1 + 24), a3, *(a1 + 56));
  if (*a3 == a3[1])
  {
    v8 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 47) < 0)
      {
        v7 = *v7;
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "[%s] Padding of the context input is required to execute model inference", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPaddingMask(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 64));
  v7 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 184));
  v8 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 160));
  v9 = v8;
  v10 = a2[21];
  if (v10 == a2[22] || (v11 = a2[12], (a2[13] - v11) >= 0x11))
  {
    v12 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] Invalid featurization input provided to the model.  Expected a non-empty utterance length tensor and a context tensor of at least two dimensions.", buf, 0xCu);
    }

    *buf = 1;
    *&buf[8] = v9 + NetworkConfig;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a3, buf, &buf[16], 2uLL);
  }

  v14 = *v10;
  v15 = *(v11 + 8);
  v16 = v8 + NetworkConfig;
  std::vector<float>::vector[abi:ne200100](&__b, v16);
  v17 = v14;
  v18 = __b;
  if (v14 >= 1)
  {
    memset_pattern16(__b, &unk_2229D2A40, 4 * v17);
  }

  if (NetworkConfig < v17)
  {
    v19 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v20 = *v20;
      }

      *buf = 136315650;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      v25 = 2048;
      v26 = NetworkConfig;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_ERROR, "[%s] The utterance length (%lu) exceeds the maximum utterance length (%lu).", buf, 0x20u);
    }

    *buf = 1;
    *&buf[8] = v16;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a3, buf, &buf[16], 2uLL);
  }

  if (v15)
  {
    v21 = a2[15];
    v22 = &v18[4 * NetworkConfig];
    do
    {
      if (*v21 != v7)
      {
        *v22 = 1065353216;
      }

      v22 += 4;
      ++v21;
      --v15;
    }

    while (v15);
  }

  *buf = 1;
  *&buf[8] = v16;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a3, buf, &buf[16], 2uLL);
}

void sub_222917FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::getPositionIds(nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel *this@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(this + 1), this + 8);
  std::vector<float>::vector[abi:ne200100](&__p, NetworkConfig);
  v4 = __p;
  v5 = v8;
  if (__p != v8)
  {
    v6 = 0.0;
    do
    {
      *v4++ = v6;
      v6 = v6 + 1.0;
    }

    while (v4 != v5);
  }

  v9[0] = 1;
  v9[1] = NetworkConfig;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a2, v9, &v10, 2uLL);
}

void sub_2229180EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::~EspressoTransformerModel(void **this)
{
  nlv4_inference_orchestrator::inference_engine::EspressoTransformerModel::~EspressoTransformerModel(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5C20;
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[1];
  this[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void snlp::ssu::encoder::SSUEncoderFactoryLazy::getEncoder(snlp::ssu::encoder::SSUEncoderFactoryLazy *this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 48));
  v4 = *(this + 4);
  if (!v4)
  {
    v5 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = (this + 8);
      if (*(this + 31) < 0)
      {
        v7 = *v7;
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[SSUEncoderFactoryLazy] Loading model from: %s", &v10, 0xCu);
    }

    snlp::ssu::encoder::buildEncoder((this + 8), v6);
  }

  v8 = *(this + 5);
  *a2 = v4;
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((this + 48));
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t *std::default_delete<snlp::ssu::encoder::SSUEncoder>::operator()[abi:ne200100](uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    result[1] = 0;
    if (v2)
    {
      std::mutex::~mutex((v2 + 528));
      std::mutex::~mutex((v2 + 464));
      if (*(v2 + 455) < 0)
      {
        operator delete(*(v2 + 432));
      }

      if (*(v2 + 431) < 0)
      {
        operator delete(*(v2 + 408));
      }

      if (*(v2 + 407) < 0)
      {
        operator delete(*(v2 + 384));
      }

      snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule((v2 + 32));
      MEMORY[0x223DC4D00](v2, 0x10B2C408DE8DB7FLL);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v4)
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4);
        }

        MEMORY[0x223DC4D00](v4, 0x1020C403A5D3213);
      }

      MEMORY[0x223DC4D00](v3, 0x1060C40832E3BDALL);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<snlp::ssu::encoder::SSUEncoder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<snlp::ssu::encoder::SSUEncoder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::ssu::encoder::SSUEncoderFactoryLazy::~SSUEncoderFactoryLazy(snlp::ssu::encoder::SSUEncoderFactoryLazy *this)
{
  *this = &unk_2835E40B8;
  std::mutex::~mutex((this + 48));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E40B8;
  std::mutex::~mutex((this + 48));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t snlp::ssu::encoder::SSUEncoderFactoryPreemptive::getEncoder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void snlp::ssu::encoder::SSUEncoderFactoryPreemptive::~SSUEncoderFactoryPreemptive(snlp::ssu::encoder::SSUEncoderFactoryPreemptive *this)
{
  *this = &unk_2835E40E0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E40E0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

snlp::ssu::encoder::SSUEncoderFactoryLazy *snlp::ssu::encoder::SSUEncoderFactoryLazy::SSUEncoderFactoryLazy(snlp::ssu::encoder::SSUEncoderFactoryLazy *this, const std::__fs::filesystem::path *a2)
{
  *this = &unk_2835E40B8;
  v3 = (this + 8);
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&a2->__pn_.__r_.__value_.__l.__data_;
    v3->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 850045863;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return this;
}

void snlp::ssu::encoder::SSUEncoderFactoryPreemptive::SSUEncoderFactoryPreemptive(snlp::ssu::encoder::SSUEncoderFactoryPreemptive *this, std::__fs::filesystem::path *a2)
{
  *this = &unk_2835E40E0;
  snlp::ssu::encoder::buildEncoder(a2, a2);
}

{
  *this = &unk_2835E40E0;
  snlp::ssu::encoder::buildEncoder(a2, a2);
}

void **nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack@<X0>(void **result@<X0>, char **a2@<X1>, _BYTE *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = **result;
  if (v4)
  {
    v5 = v4[3];
    if (v5)
    {
      v6 = *(v5 + 32);
      if (*(v5 + 24) != v6)
      {
        v7 = v4[2];
        if (v7)
        {
          if (v4[1])
          {
            v9 = result;
            v10 = *(*(v6 - 8) + 76);
            memset(v15, 0, sizeof(v15));
            if (*(v7 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v16, *v7, *(v7 + 1));
            }

            else
            {
              v11 = *v7;
              v16.__r_.__value_.__r.__words[2] = *(v7 + 2);
              *&v16.__r_.__value_.__l.__data_ = v11;
            }

            std::string::basic_string[abi:ne200100]<0>(&v17, *a2);
            v20 = 0u;
            v19 = 0u;
            v18 = 0u;
            v21 = v10;
            v22 = 0;
            UnicodeScalarAndUtf8Offsets = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(*(**v9 + 16), v10);
            std::string::basic_string[abi:ne200100]<0>(v13, a2[1]);
            memset(&v13[3], 0, 24);
            std::string::basic_string[abi:ne200100]<0>(v14, "target");
            v14[3] = 0;
            v14[4] = 0;
            nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v24, v15);
            memset(&v14[5], 0, 24);
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>();
          }
        }
      }
    }
  }

  *a3 = 0;
  a3[8] = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222919028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, boost::uuids::detail::random_provider_base *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v73 + 8))(v73);
  (*(*v72 + 8))(v72);
  (*(*v71 + 8))(v71);
  a52 = &a13;
  std::vector<std::unique_ptr<sirinluexternal::UserDialogAct const>>::__destroy_vector::operator()[abi:ne200100](&a52);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a71);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&STACK[0x280]);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode((v74 - 240));
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a16);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&__p);
  _Unwind_Resume(a1);
}

void sub_22291935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(void **this)
{
  v2 = this + 11;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

boost::uuids::detail::random_provider_base *boost::uuids::detail::random_provider_base::random_provider_base(boost::uuids::detail::random_provider_base *this)
{
  *this = -1;
  v2 = open("/dev/urandom", 0x1000000);
  *this = v2;
  if (v2 == -1)
  {
    v4 = *__error();
    std::string::basic_string[abi:ne200100]<0>(&v8, "open /dev/urandom");
    v5 = std::runtime_error::runtime_error(&v9, &v8);
    v9.__vftable = &unk_2835E6078;
    v10 = v4;
    v6.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_weugBc3faU9qG__BVfCroI22I8YaCRGgkvgL4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
    v6.i64[1] = "boost::uuids::detail::random_provider_base::random_provider_base()";
    v7 = 60;
    boost::throw_exception<boost::uuids::entropy_error>(v5, &v6);
  }

  return this;
}

void sub_2229195F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::uuids::random_generator_pure::operator()(int *a1)
{
  v2 = 0;
  v14 = *MEMORY[0x277D85DE8];
  do
  {
    v3 = read(*a1, &v12 + v2, 16 - v2);
    if (v3 < 0)
    {
      v4 = *__error();
      if (v4 != 4)
      {
        std::string::basic_string[abi:ne200100]<0>(&v9, "read");
        std::runtime_error::runtime_error(&v10, &v9);
        v10.__vftable = &unk_2835E6078;
        v11 = v4;
        v7.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_weugBc3faU9qG__BVfCroI22I8YaCRGgkvgL4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
        v7.i64[1] = "void boost::uuids::detail::random_provider_base::get_random_bytes(void *, std::size_t)";
        v8 = 98;
        boost::throw_exception<boost::uuids::entropy_error>(&v10, &v7);
      }
    }

    else
    {
      v2 += v3;
    }
  }

  while (v2 < 0x10);
  LOBYTE(v13) = v13 & 0x3F | 0x80;
  BYTE6(v12) = BYTE6(v12) & 0xF | 0x40;
  result = v12;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22291975C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::uuids::detail::random_provider_base::destroy(uint64_t this)
{
  if ((this & 0x80000000) == 0)
  {
    return close(this);
  }

  return this;
}

void boost::throw_exception<boost::uuids::entropy_error>(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  *exception = &unk_2835E65A8;
  std::runtime_error::runtime_error((exception + 8), a1);
  v5 = a1[1].__vftable;
  *(exception + 6) = 0;
  *(exception + 7) = 0;
  *(exception + 5) = 0;
  *exception = &unk_2835E5FF8;
  *(exception + 1) = &unk_2835E6028;
  *(exception + 3) = v5;
  *(exception + 4) = &unk_2835E6058;
  *(exception + 16) = a2[1].i32[0];
  *(exception + 3) = vextq_s8(*a2, *a2, 8uLL);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6600;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *(a1 + 24) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::runtime_error::~runtime_error(a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_2835E6600;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x223DC4D00);
}

void boost::wrapexcept<boost::uuids::entropy_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E65A8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2835E6078;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_2835E6600;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_2835E5FF8;
  *(a1 + 8) = &unk_2835E6028;
  *(a1 + 32) = &unk_2835E6058;
  return a1;
}

void sub_222919E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::uuids::entropy_error::~entropy_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const char *a1, void *a2)
{
  v4 = strlen(a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a2, a1, v4) == 0;
  }

  if (v4 == a2[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a2 = *a2;
    return memcmp(a2, a1, v4) == 0;
  }

  return 0;
}

uint64_t std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    MEMORY[0x223DC42A0]();

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t a1, nlv4_inference_orchestrator::trees::TreeNode *a2, nlv4_inference_orchestrator::trees::TreeNode *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v4, v6);
      v6 = (v6 + 144);
      v4 = v11 + 6;
      v11 += 6;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 7;
      do
      {
        v7 = v4;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
        }

        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        if (*(v4 - 65) < 0)
        {
          operator delete(*(v4 - 11));
        }

        v5 = v4 - 11;
        v4 -= 18;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t a1, nlv4_inference_orchestrator::trees::TreeNode *a2, nlv4_inference_orchestrator::trees::TreeNode *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v4, v6);
      v6 = (v6 + 144);
      v4 = v11 + 6;
      v11 += 6;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void **nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::runSystemPromptedMessageContentHack@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v3, off_2784B69A8, a2);
}

void **nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::runSystemPromptedAnnouncementContentHack@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v3, off_2784B69C0, a2);
}

void **nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::runSystemPromptedNoteContentHack@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v3, off_2784B69D8, a2);
}

void sub_22291A658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = UPDataDetectorSpan;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22291AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](&a13);
  MEMORY[0x223DC4D00](v18, 0xA1C4030951706);
  a13 = &a9;
  std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](&a13);
  v20 = 24;
  while (1)
  {
    v21 = *(&a17 + v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      (*(*v17 + 8))(v17);
      _Unwind_Resume(a1);
    }
  }
}

void std::vector<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<snlp::ssu::trigger::SSUTrigger>>,std::shared_ptr<snlp::ssu::trigger::SSUTrigger>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<snlp::ssu::trigger::SSUTrigger  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<snlp::ssu::trigger::SSUTrigger  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<snlp::ssu::trigger::SSUTrigger  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

BOOL snlp::common::text_uso_graph::isMessageContentPrompt(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1 || !*(v1 + 8))
  {
    return 0;
  }

  v2 = MEMORY[0x223DC3070](v47);
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v2);
  v5 = *SharedUsoVocabManager;
  v4 = SharedUsoVocabManager[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v45 = v5;
    v46 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v45 = v5;
    v46 = 0;
  }

  v41 = 0;
  LODWORD(v42) = 0;
  MEMORY[0x223DC4280](v43, &v41);
  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v45, v47, v43);
  v7 = v44;
  siri::ontology::UsoGraph::getSuccessors(&v41, v44->var1, v44);
  v8 = v41;
  if (v42 - v41 == 8)
  {
    siri::ontology::UsoGraph::getSuccessors(&__p, v7->var1, v7);
    v9 = *__p;
    v38 = __p;
    operator delete(__p);
    if ((*(*v9 + 2))(v9) == 1)
    {
      (*(*v9 + 6))(&__p, v9);
      if (v40 < 0)
      {
        v12 = v38 == 20 && *__p == 0x6F633A3A646E6573 && *(__p + 1) == 0x73654D5F6E6F6D6DLL && *(__p + 4) == 1701273971;
        operator delete(__p);
LABEL_39:
        siri::ontology::UsoGraph::getSuccessorsWithEdges(&__p, v9[1], v9);
        v16 = __p;
        if (!v12)
        {
          v6 = 0;
          goto LABEL_83;
        }

        if (v38 - __p != 16)
        {
          v6 = 1;
          goto LABEL_83;
        }

        (*(**__p + 48))(v35);
        v17 = *(__p + 1);
        if (*(v17 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v34, *(v17 + 32), *(v17 + 40));
        }

        else
        {
          v34 = *(v17 + 32);
        }

        siri::ontology::UsoGraph::getSuccessors(&v32, v9[1], v9);
        v18 = *v32;
        v33 = v32;
        operator delete(v32);
        if ((*(**__p + 16))() != 2)
        {
          goto LABEL_56;
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v34.__r_.__value_.__l.__size_ != 6)
          {
            goto LABEL_56;
          }

          v19 = v34.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) != 6)
          {
            goto LABEL_56;
          }

          v19 = &v34;
        }

        data = v19->__r_.__value_.__l.__data_;
        v21 = WORD2(v19->__r_.__value_.__r.__words[0]);
        if (data == 1735549300 && v21 == 29797)
        {
          v23 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v35, "common_Message");
          goto LABEL_57;
        }

LABEL_56:
        v23 = 0;
LABEL_57:
        siri::ontology::UsoGraph::getSuccessorsWithEdges(&v32, *(v18 + 8), v18);
        v24 = v32;
        if (v23)
        {
          if (v33 - v32 == 16)
          {
            (*(**v32 + 48))(__s);
            v25 = *(v32 + 1);
            if (*(v25 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(&v29, *(v25 + 32), *(v25 + 40));
            }

            else
            {
              v29 = *(v25 + 32);
            }

            siri::ontology::UsoGraph::getSuccessors(&v27, *(v18 + 8), v18);
            v26 = *v27;
            v28 = v27;
            operator delete(v27);
            if ((*(*v26 + 16))(v26) == 3 && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("stringContent", &v29) && std::string::find[abi:ne200100](__s) != -1)
            {
              siri::ontology::UsoGraph::getSuccessors(&v27, *(v26 + 8), v26);
              v6 = v28 == v27;
              if (v27)
              {
                v28 = v27;
                operator delete(v27);
              }
            }

            else
            {
              v6 = 0;
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (v31 < 0)
            {
              operator delete(__s[0]);
            }

            v24 = v32;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v6 = 0;
        }

        if (v24)
        {
          v33 = v24;
          operator delete(v24);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        v16 = __p;
LABEL_83:
        if (v16)
        {
          v38 = v16;
          operator delete(v16);
        }

        v8 = v41;
        if (!v41)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v40 == 20)
      {
        v12 = __p == 0x6F633A3A646E6573 && v38 == 0x73654D5F6E6F6D6DLL && v39 == 1701273971;
        goto LABEL_39;
      }
    }

    v12 = 0;
    goto LABEL_39;
  }

  v6 = 0;
  if (v41)
  {
LABEL_21:
    v42 = v8;
    operator delete(v8);
  }

LABEL_22:
  MEMORY[0x223DC42A0](v43);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  MEMORY[0x223DC3090](v47);
  return v6;
}

void sub_22291BBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  MEMORY[0x223DC42A0](&a48);
  v50 = *(v48 - 176);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  MEMORY[0x223DC3090](v48 - 168);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t std::string::find[abi:ne200100](void *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v1 = *__s;
    v2 = __s[1];
  }

  v3 = v1 + v2;
  if (v2 >= 16)
  {
    v6 = v1;
    do
    {
      if (v2 == 15)
      {
        break;
      }

      v4 = memchr(v6, 112, v2 - 15);
      if (!v4)
      {
        break;
      }

      if (*v4 == 0x766974696D697270 && *(v4 + 1) == 0x676E697274535F65)
      {
        goto LABEL_5;
      }

      v6 = v4 + 1;
      v2 = v3 - v6;
    }

    while (v3 - v6 > 15);
  }

  v4 = v3;
LABEL_5:
  if (v4 == v3)
  {
    return -1;
  }

  else
  {
    return v4 - v1;
  }
}

BOOL snlp::common::text_uso_graph::isIntercomPayloadPrompt(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1 || !*(v1 + 8))
  {
    return 0;
  }

  v2 = MEMORY[0x223DC3070](v46);
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v2);
  v5 = *SharedUsoVocabManager;
  v4 = SharedUsoVocabManager[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v44 = v5;
    v45 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v44 = v5;
    v45 = 0;
  }

  v40 = 0;
  LODWORD(v41) = 0;
  MEMORY[0x223DC4280](v42, &v40);
  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v44, v46, v42);
  v7 = v43;
  siri::ontology::UsoGraph::getSuccessors(&v40, v43->var1, v43);
  v8 = v40;
  if (v41 - v40 == 8)
  {
    siri::ontology::UsoGraph::getSuccessors(&__p, v7->var1, v7);
    v9 = *__p;
    v38 = __p;
    operator delete(__p);
    if ((*(*v9 + 2))(v9) != 1)
    {
      v14 = 0;
      goto LABEL_33;
    }

    (*(*v9 + 6))(&__p, v9);
    if (v39 < 0 && v38 == 25)
    {
      v10 = __p;
      v14 = *__p == 0x6F633A3A646E6573 && *(__p + 1) == 0x6E6E415F6E6F6D6DLL && *(__p + 2) == 0x6E656D65636E756FLL && *(__p + 24) == 116;
    }

    else
    {
      v14 = 0;
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      v10 = __p;
    }

    operator delete(v10);
LABEL_33:
    siri::ontology::UsoGraph::getSuccessorsWithEdges(&__p, v9[1], v9);
    v16 = __p;
    if (!v14)
    {
      v6 = 0;
      goto LABEL_77;
    }

    if (v38 - __p != 16)
    {
      v6 = 1;
      goto LABEL_77;
    }

    (*(**__p + 48))(v35);
    v17 = *(__p + 1);
    if (*(v17 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, *(v17 + 32), *(v17 + 40));
    }

    else
    {
      v34 = *(v17 + 32);
    }

    siri::ontology::UsoGraph::getSuccessors(&v32, v9[1], v9);
    v18 = *v32;
    v33 = v32;
    operator delete(v32);
    if ((*(**__p + 16))() != 2)
    {
      goto LABEL_50;
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v34.__r_.__value_.__l.__size_ != 6)
      {
        goto LABEL_50;
      }

      v19 = v34.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) != 6)
      {
        goto LABEL_50;
      }

      v19 = &v34;
    }

    data = v19->__r_.__value_.__l.__data_;
    v21 = WORD2(v19->__r_.__value_.__r.__words[0]);
    if (data == 1735549300 && v21 == 29797)
    {
      v23 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v35, "common_Announcement");
      goto LABEL_51;
    }

LABEL_50:
    v23 = 0;
LABEL_51:
    siri::ontology::UsoGraph::getSuccessorsWithEdges(&v32, *(v18 + 8), v18);
    v24 = v32;
    if (v23)
    {
      if (v33 - v32 == 16)
      {
        (*(**v32 + 48))(__s);
        v25 = *(v32 + 1);
        if (*(v25 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(v25 + 32), *(v25 + 40));
        }

        else
        {
          v29 = *(v25 + 32);
        }

        siri::ontology::UsoGraph::getSuccessors(&v27, *(v18 + 8), v18);
        v26 = *v27;
        v28 = v27;
        operator delete(v27);
        if ((*(*v26 + 16))(v26) == 3 && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("content", &v29) && std::string::find[abi:ne200100](__s) != -1)
        {
          siri::ontology::UsoGraph::getSuccessors(&v27, *(v26 + 8), v26);
          v6 = v28 == v27;
          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }
        }

        else
        {
          v6 = 0;
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v31 < 0)
        {
          operator delete(__s[0]);
        }

        v24 = v32;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v24)
    {
      v33 = v24;
      operator delete(v24);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v16 = __p;
LABEL_77:
    if (v16)
    {
      v38 = v16;
      operator delete(v16);
    }

    v8 = v40;
    if (!v40)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v6 = 0;
  if (v40)
  {
LABEL_24:
    v41 = v8;
    operator delete(v8);
  }

LABEL_25:
  MEMORY[0x223DC42A0](v42);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  MEMORY[0x223DC3090](v46);
  return v6;
}

void sub_22291C2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  MEMORY[0x223DC42A0](&a48);
  v50 = *(v48 - 176);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  MEMORY[0x223DC3090](v48 - 168);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUPersister::removeCacheFilesForApp(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = snlp::ssu::cache::SSUCacheDirectory::removeCacheFilesForApp(*(a1 + 32), a2);
  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
    snlp::ssu::selflogging::buildAppBundleIdSaltedHash(a2, &v8);
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v7;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v6;
}

void snlp::ssu::matcher::SSUPersister::updateCacheForAppIfRequired(std::__shared_weak_count **this@<X0>, const snlp::ssu::matcher::SSUAppInfo *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v48 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v6 != 53)
  {
    goto LABEL_7;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp("com.apple.SiriNaturalLanguageParsing.SSUUserShortcuts", a2, 0x35uLL))
  {
    v16 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v36.__r_.__value_.__l.__data_) = 136315138;
      *(v36.__r_.__value_.__r.__words + 4) = "com.apple.SiriNaturalLanguageParsing.SSUUserShortcuts";
      _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "Received an app bundle ID that clashes with the special user shortcuts one: %s. Call updateCacheForUserShortcutsIfRequired instead.", &v36, 0xCu);
    }

    *a3 = 0;
    *(a3 + 56) = 0;
  }

  else
  {
LABEL_7:
    if ((snlp::ssu::matcher::SSUPersister::appRequiresUpdate(this, v3) & 1) == 0)
    {
      snlp::ssu::selflogging::buildAppBundleIdSaltedHash(v3, &v36);
      v37 = 0;
      *__p = 0;
      *&__p[4] = 0;
      *&__p[8] = 0x100000000;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo const*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo const*>();
    }

    v8 = this[5];
    v26[0] = this[4];
    v26[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    snlp::ssu::app::SSUAppAssets::loadAssetsFromDirectory(v3, (this + 1), v26, &v36);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v37 == 1)
    {
      v9 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        if ((v37 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v10 = *(v3 + 23);
        v11 = *v3;
        v12 = *(v3 + 3);
        v13 = *(v3 + 47);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&buf, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = v36;
        }

        if (v13 >= 0)
        {
          v20 = v3 + 24;
        }

        else
        {
          v20 = v12;
        }

        if (v10 >= 0)
        {
          v21 = v3;
        }

        else
        {
          v21 = v11;
        }

        p_buf = &buf;
        *__p = 136315650;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *&__p[4] = v21;
        *&__p[12] = 2080;
        *&__p[14] = v20;
        *&__p[22] = 2080;
        v29 = p_buf;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Could not read app assets for %s (path %s): %s", __p, 0x20u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      *a3 = 0;
      *(a3 + 56) = 0;
    }

    else
    {
      if ((v47 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      snlp::ssu::app::SSUAppAssets::allSupportedCategories(v38, v25);
      v14 = v25[0];
      if (v25[0] == v25[1])
      {
        *a3 = *a3;
        if (v14)
        {
          operator delete(v14);
        }

        snlp::ssu::selflogging::buildAppBundleIdSaltedHash(v3, __p);
        LODWORD(v29) = 0;
        v30 = 0uLL;
        v31 = 0;
        std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(&v30, 0, 0, 0);
        *a3 = *__p;
        *(a3 + 16) = *&__p[16];
        *(a3 + 24) = v29;
        *(a3 + 32) = v30;
        *(a3 + 48) = v31;
        *(a3 + 56) = 1;
      }

      else
      {
        v24 = *(a3 + 56);
        v15 = *v25[0];
        snlp::ssu::matcher::SSUPersister::loadAppAssets(v3, v38, *v25[0], __p);
        if (v35)
        {
          snlp::ssu::matcher::SSUPersister::updateCacheForAppCategory(this, v3, __p);
        }

        v17 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (*(v3 + 23) >= 0)
          {
            v18 = v3;
          }

          else
          {
            v18 = *v3;
          }

          if (v15 <= 3)
          {
            v19 = EnumNamesSSUCategoryType(void)::names[v15];
          }

          else
          {
            v19 = "";
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
          _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Failed to load app assets for app %s and category %s", &buf, 0x16u);
        }

        *a3 = 0;
        *(a3 + 56) = 0;
        if (v35 == 1)
        {
          buf.__r_.__value_.__r.__words[0] = &v34;
          std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&buf);
          buf.__r_.__value_.__r.__words[0] = &v33;
          std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&buf);
          if (v32 < 0)
          {
            operator delete(*(&v30 + 1));
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*&__p[8]);
          }
        }

        if (v25[0])
        {
          operator delete(v25[0]);
        }
      }
    }

    if (v47 == 1)
    {
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (v37 == 1 && SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22291CBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  snlp::ssu::utilities::SSUResultOpt<snlp::ssu::app::SSUAppAssets>::~SSUResultOpt(v37 - 256);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::matcher::SSUPersister::appRequiresUpdate(snlp::ssu::matcher::SSUPersister *this, std::__fs::filesystem::path *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  snlp::ssu::matcher::SSUPersister::lookupExistingCacheVersion(this, a2, &v20);
  if (v23 != 1)
  {
LABEL_24:
    v16 = 1;
    goto LABEL_25;
  }

  v4 = (this + 80);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v6 = *(this + 103);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(this + 11);
  }

  if (size == v6)
  {
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v20;
    }

    else
    {
      v8 = v20.__r_.__value_.__r.__words[0];
    }

    v9 = *v4;
    if (v7 >= 0)
    {
      v10 = this + 80;
    }

    else
    {
      v10 = *v4;
    }

    v11 = memcmp(v8, v10, size) != 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 | ~snlp::ssu::app::SSUAppAssets::directoryHasAssetVersion(&a2[1], this + 1, &v21);
  v13 = SNLPOSLoggerForCategory(8);
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = a2->__pn_.__r_.__value_.__r.__words[0];
      }

      if (*(this + 103) < 0)
      {
        v15 = *v4;
      }

      if (v23)
      {
        snlp::ssu::cache::SSUCacheFileVersion::toString(&__p);
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    goto LABEL_24;
  }

  v16 = 0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = a2->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      snlp::ssu::cache::SSUCacheFileVersion::toString(buf);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

LABEL_25:
  if (v23 == 1)
  {
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_22291CF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<snlp::ssu::cache::SSUCacheFileVersion>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_22291CFC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::matcher::SSUPersister::loadAppAssets(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v17 = *(a2 + 72);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  v12 = a3;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  snlp::ssu::app::SSUAppAssets::loadNegativeExamples(a2, a3, &v14);
  snlp::ssu::app::SSUAppAssets::loadPositiveExamples(a2, a3, &v15);
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = v11;
  memset(&v11, 0, sizeof(v11));
  *(a4 + 32) = v12;
  *(a4 + 40) = __p;
  memset(&__p, 0, sizeof(__p));
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  begin = v14.__begin_;
  end = v14.__end_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v14.__end_ - v14.__begin_) >> 3);
  *(a4 + 80) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a4 + 64, begin, end, v10);
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppIntent*,snlp::ssu::app::SSUAppIntent*>(a4 + 88, v15, v16, 0x8E38E38E38E38E39 * ((v16 - v15) >> 3));
  *(a4 + 112) = 1;
  v18 = &v15;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = &v14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_22291D1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_22291D504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v24 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<snlp::ssu::app::SSULoadedAppAssets>::~optional(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v3 = (a1 + 88);
    std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 64);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t snlp::ssu::utilities::SSUResultOpt<snlp::ssu::app::SSUAppAssets>::~SSUResultOpt(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22291D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  a9 = v21 - 64;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::matcher::SSUPersister::cleanUpTemporaryCacheFile(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "Cleaning up by removing temporary file", buf, 2u);
  }

  result = std::__fs::filesystem::__status(this, 0);
  if (v6 && v6 != 255)
  {
    result = std::__fs::filesystem::__remove(this, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void snlp::ssu::matcher::SSUPersister::buildIntentList(snlp::ssu::matcher::SSUPersister *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(a2, 0x8E38E38E38E38E39 * ((*(this + 12) - *(this + 11)) >> 3));
  v5 = *(this + 11);
  for (i = *(this + 12); v5 != i; v5 = (v5 + 72))
  {
    v42 = 0;
    v43 = 0uLL;
    v6 = *(v5 + 3);
    v7 = *(v5 + 4);
    while (v6 != v7)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v40.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v40.__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v9 = *(v6 + 24);
        __p.__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      v10 = v43;
      if (v43 >= *(&v43 + 1))
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 4);
        v14 = v13 + 1;
        if (v13 + 1 > 0x555555555555555)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((*(&v43 + 1) - v42) >> 4) > v14)
        {
          v14 = 0x5555555555555556 * ((*(&v43 + 1) - v42) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v43 + 1) - v42) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v15 = 0x555555555555555;
        }

        else
        {
          v15 = v14;
        }

        v47 = &v42;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v15);
        }

        v16 = 16 * ((v43 - v42) >> 4);
        p_p = 0;
        v45 = v16;
        *(&v46 + 1) = 0;
        v17 = *&v40.__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v16 = v17;
        memset(&v40, 0, sizeof(v40));
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v16 + 40) = *(&__p.__r_.__value_.__l + 2);
        *(v16 + 24) = v18;
        memset(&__p, 0, sizeof(__p));
        *&v46 = 48 * v13 + 48;
        v19 = &v42[6 * v13] - v43;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(&v42, v42, v43, &v42[v16 / 8] - v43);
        v20 = v42;
        v21 = *(&v43 + 1);
        v42 = v19;
        v38 = v46;
        v43 = v46;
        *&v46 = v20;
        *(&v46 + 1) = v21;
        p_p = v20;
        v45 = v20;
        std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(&p_p);
        *&v43 = v38;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v11 = *&v40.__r_.__value_.__l.__data_;
        *(v43 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v10 = v11;
        memset(&v40, 0, sizeof(v40));
        v12 = __p.__r_.__value_.__r.__words[2];
        *(v10 + 24) = *&__p.__r_.__value_.__l.__data_;
        *(v10 + 40) = v12;
        memset(&__p, 0, sizeof(__p));
        *&v43 = v10 + 48;
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      v6 += 3;
    }

    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *v5, *(v5 + 1));
    }

    else
    {
      v22 = *v5;
      v40.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&v40.__r_.__value_.__l.__data_ = v22;
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::__init_with_size[abi:ne200100]<snlp::ssu::cache::SSUCacheObjectParameter*,snlp::ssu::cache::SSUCacheObjectParameter*>(&__p, v42, v43, 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 4));
    v24 = *(a2 + 8);
    v23 = *(a2 + 16);
    if (v24 >= v23)
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a2) >> 4);
      v27 = v26 + 1;
      if (v26 + 1 > 0x555555555555555)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a2) >> 4);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x2AAAAAAAAAAAAAALL)
      {
        v29 = 0x555555555555555;
      }

      else
      {
        v29 = v27;
      }

      v47 = a2;
      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(v29);
      }

      v31 = 48 * v26;
      p_p = 0;
      v45 = v31;
      v46 = v31;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v31, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v32 = *&v40.__r_.__value_.__l.__data_;
        *(v31 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v31 = v32;
      }

      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0;
      std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::__init_with_size[abi:ne200100]<snlp::ssu::cache::SSUCacheObjectParameter*,snlp::ssu::cache::SSUCacheObjectParameter*>(v31 + 24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4));
      *&v46 = v46 + 48;
      v33 = *(a2 + 8);
      v34 = v45 + *a2 - v33;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>,snlp::ssu::cache::SSUCacheObjectIntent*>(a2, *a2, v33, v34);
      v35 = *a2;
      *a2 = v34;
      v36 = *(a2 + 16);
      v39 = v46;
      *(a2 + 8) = v46;
      *&v46 = v35;
      *(&v46 + 1) = v36;
      p_p = v35;
      v45 = v35;
      std::__split_buffer<snlp::ssu::cache::SSUCacheObjectIntent>::~__split_buffer(&p_p);
      v30 = v39;
    }

    else
    {
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(a2 + 8), v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = *&v40.__r_.__value_.__l.__data_;
        *(v24 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v24 = v25;
      }

      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0;
      std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::__init_with_size[abi:ne200100]<snlp::ssu::cache::SSUCacheObjectParameter*,snlp::ssu::cache::SSUCacheObjectParameter*>(v24 + 24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4));
      v30 = v24 + 48;
    }

    *(a2 + 8) = v30;
    p_p = &__p;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v40.__r_.__value_.__r.__words[0] = &v42;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v40);
  }
}

void snlp::ssu::matcher::SSUPersister::writeTemporaryCacheFileInner(uint64_t *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3[11];
  v4 = a3[12];
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v5 -= 1431655765 * ((*(v3 + 56) - *(v3 + 48)) >> 3);
      v3 += 72;
    }

    while (v3 != v4);
  }

  v6 = *a1;
  v8 = a3[8];
  v7 = a3[9];
  v9 = 0;
  operator new();
}

void std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<snlp::ssu::cache::SSUCacheFileWriteStream>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_oarchive,boost::archive::text_oarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 592));
    v3 = MEMORY[0x277D82810];
    v4 = *MEMORY[0x277D82810];
    *(v2 + 24) = *MEMORY[0x277D82810];
    *(v2 + 24 + *(v4 - 24)) = *(v3 + 24);
    MEMORY[0x223DC47C0](v2 + 32);
    std::ostream::~ostream();
    MEMORY[0x223DC4C10](v2 + 440);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t snlp::ssu::matcher::SSUPersister::writeNegativeExamplesLoop(std::vector<std::string>::size_type *this, snlp::ssu::cache::SSUCacheFileWriteStream *a2, const snlp::ssu::app::SSULoadedAppAssets *a3)
{
  memset(&v12, 0, sizeof(v12));
  std::vector<std::string>::reserve(&v12, *this);
  v6 = *(a3 + 8);
  for (i = *(a3 + 9); v6 != i; v6 += 24)
  {
    end = v12.__end_;
    if (v12.__end_ >= v12.__end_cap_.__value_)
    {
      v10 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v12, v6);
    }

    else
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v12.__end_, *v6, *(v6 + 8));
      }

      else
      {
        v9 = *v6;
        v12.__end_->__r_.__value_.__r.__words[2] = *(v6 + 16);
        *&end->__r_.__value_.__l.__data_ = v9;
      }

      v10 = end + 1;
    }

    v12.__end_ = v10;
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v12.__begin_) >> 3) == *this)
    {
      snlp::ssu::matcher::SSUPersister::writeSingleBatchNegative(this, a2, &v12);
    }
  }

  if (v12.__end_ != v12.__begin_)
  {
    snlp::ssu::matcher::SSUPersister::writeSingleBatchNegative(this, a2, &v12);
  }

  v13 = &v12;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v13);
  return 0x100000000;
}

void sub_22291E4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::matcher::SSUPersister::writePositiveExamplesLoop(std::vector<std::string>::size_type *this, snlp::ssu::cache::SSUCacheFileWriteStream *a2, const snlp::ssu::app::SSULoadedAppAssets *a3)
{
  v5 = *(a3 + 11);
  v6 = *(a3 + 12);
  v35[0] = v5;
  v35[1] = v6;
  v35[2] = v5;
  if (v5 == v6)
  {
    v7 = 0;
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = *(v5 + 48);
    v7 = 1;
  }

  v37 = v7;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  std::vector<std::string>::reserve(v33, *this);
  std::vector<double>::reserve(&v33[24], *this);
  snlp::ssu::app::SSUAppExamplesPositiveIterable::getNext(v35, v32);
  if (v32[24] == 1)
  {
    do
    {
      v8 = *&v33[8];
      if (*&v33[8] >= *&v33[16])
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((*&v33[8] - *v33) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((*&v33[16] - *v33) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((*&v33[16] - *v33) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*&v33[16] - *v33) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v38.__end_cap_.__value_ = v33;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v33, v12);
        }

        begin = (8 * ((*&v33[8] - *v33) >> 3));
        v38.__first_ = 0;
        v38.__begin_ = begin;
        value = 0;
        v38.__end_ = begin;
        v38.__end_cap_.__value_ = 0;
        if (*(*&v32[16] + 23) < 0)
        {
          std::string::__init_copy_ctor_external(begin, **&v32[16], *(*&v32[16] + 8));
          begin = v38.__begin_;
          end = v38.__end_;
          value = v38.__end_cap_.__value_;
        }

        else
        {
          v15 = **&v32[16];
          *(8 * ((*&v33[8] - *v33) >> 3) + 0x10) = *(*&v32[16] + 16);
          *&begin->__r_.__value_.__l.__data_ = v15;
          end = (24 * v10);
        }

        v17 = end + 1;
        v18 = begin - (*&v33[8] - *v33);
        memcpy(v18, *v33, *&v33[8] - *v33);
        v19 = *v33;
        v20 = *&v33[16];
        *v33 = v18;
        *&v33[8] = v17;
        *&v33[16] = value;
        v38.__end_ = v19;
        v38.__end_cap_.__value_ = v20;
        v38.__first_ = v19;
        v38.__begin_ = v19;
        std::__split_buffer<std::string>::~__split_buffer(&v38);
        *&v33[8] = v17;
        if ((v32[24] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }

      else
      {
        if (*(*&v32[16] + 23) < 0)
        {
          std::string::__init_copy_ctor_external(*&v33[8], **&v32[16], *(*&v32[16] + 8));
        }

        else
        {
          v9 = **&v32[16];
          *(*&v33[8] + 16) = *(*&v32[16] + 16);
          *v8 = v9;
        }

        *&v33[8] = v8 + 24;
      }

      v21 = v34;
      if (v34 >= *(&v34 + 1))
      {
        v23 = *&v33[24];
        v24 = v34 - *&v33[24];
        v25 = (v34 - *&v33[24]) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v27 = *(&v34 + 1) - *&v33[24];
        if ((*(&v34 + 1) - *&v33[24]) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
        v29 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v29 = v26;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v33[24], v29);
        }

        *(8 * v25) = *v32;
        v22 = 8 * v25 + 8;
        memcpy(0, v23, v24);
        v30 = *&v33[24];
        *&v33[24] = 0;
        v34 = v22;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v34 = *v32;
        v22 = v21 + 8;
      }

      *&v34 = v22;
      if (0xAAAAAAAAAAAAAAABLL * ((*&v33[8] - *v33) >> 3) == *this)
      {
        snlp::ssu::matcher::SSUPersister::writeSingleBatchPositive(this, a2, v33);
      }

      snlp::ssu::app::SSUAppExamplesPositiveIterable::getNext(v35, &v38);
      *&v32[9] = *(&v38.__begin_ + 1);
      *v32 = *&v38.__first_;
    }

    while ((v38.__end_cap_.__value_ & 1) != 0);
  }

  if (*&v33[8] != *v33)
  {
    snlp::ssu::matcher::SSUPersister::writeSingleBatchPositive(this, a2, v33);
  }

  if (*&v33[24])
  {
    *&v34 = *&v33[24];
    operator delete(*&v33[24]);
  }

  v38.__first_ = v33;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v38);
  return 0x100000000;
}

BOOL snlp::ssu::matcher::SSUPersister::writeDebugInformation(snlp::ssu::matcher::SSUPersister *this, snlp::ssu::cache::SSUCacheFileWriteStream *a2, const snlp::ssu::app::SSULoadedAppAssets *a3)
{
  v48 = 0uLL;
  v49 = 0;
  v46 = 0uLL;
  v47 = 0;
  v5 = *(a3 + 11);
  v6 = *(a3 + 12);
  v43[0] = v5;
  v43[1] = v6;
  v43[2] = v5;
  if (v5 == v6)
  {
    v7 = 0;
    LOBYTE(v44) = 0;
  }

  else
  {
    v44 = *(v5 + 48);
    v7 = 1;
  }

  v45 = v7;
  snlp::ssu::app::SSUAppExamplesPositiveIterable::getNext(v43, v42);
  if (v42[24] == 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&v48 + 1);
      if (!(v8 % *this))
      {
        if (*(&v48 + 1) >= v49)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v48 + 1) - v48) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v49 - v48) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v49 - v48) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          *&v40[32] = &v48;
          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(v13);
          }

          v14 = (8 * ((*(&v48 + 1) - v48) >> 3));
          *v14 = 0;
          v14[1] = 0;
          v14[2] = 0;
          v10 = 24 * v11 + 24;
          v15 = 24 * v11 - (*(&v48 + 1) - v48);
          memcpy(v14 - (*(&v48 + 1) - v48), v48, *(&v48 + 1) - v48);
          v16 = v48;
          v17 = v49;
          *&v48 = v15;
          *(&v48 + 1) = v10;
          v49 = 0;
          *&v40[16] = v16;
          *&v40[24] = v17;
          *v40 = v16;
          *&v40[8] = v16;
          std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v40);
        }

        else
        {
          **(&v48 + 1) = 0;
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          v10 += 24;
        }

        v8 = 0;
        *(&v48 + 1) = v10;
      }

      v19 = *(v10 - 16);
      v18 = *(v10 - 8);
      if (v19 >= v18)
      {
        v21 = *(v10 - 24);
        v22 = v19 - v21;
        v23 = (v19 - v21) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v18 - v21;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v10 - 24, v26);
        }

        v27 = (v19 - v21) >> 3;
        v28 = (8 * v23);
        v29 = (8 * v23 - 8 * v27);
        *v28 = v9;
        v20 = v28 + 1;
        memcpy(v29, v21, v22);
        v30 = *(v10 - 24);
        *(v10 - 24) = v29;
        *(v10 - 16) = v20;
        *(v10 - 8) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v19 = v9;
        v20 = v19 + 8;
      }

      *(v10 - 16) = v20;
      if ((v42[24] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v31 = *(&v46 + 1);
      if (*(&v46 + 1) >= v47)
      {
        v33 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v46, *&v42[16]);
      }

      else
      {
        if (*(*&v42[16] + 23) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v46 + 1), **&v42[16], *(*&v42[16] + 8));
        }

        else
        {
          v32 = **&v42[16];
          *(*(&v46 + 1) + 16) = *(*&v42[16] + 16);
          *v31 = v32;
        }

        v33 = (v31 + 24);
      }

      *(&v46 + 1) = v33;
      snlp::ssu::app::SSUAppExamplesPositiveIterable::getNext(v43, v40);
      ++v9;
      ++v8;
      *&v42[9] = *&v40[9];
      *v42 = *v40;
    }

    while ((v40[24] & 1) != 0);
    v34 = v48;
    v35 = v49;
    v36 = v46;
    v37 = v47;
  }

  else
  {
    v37 = 0;
    v35 = 0;
    v36 = 0uLL;
    v34 = 0uLL;
  }

  *v40 = v34;
  *&v40[16] = v35;
  v49 = 0;
  v48 = 0uLL;
  *&v40[24] = v36;
  v41 = v37;
  v47 = 0;
  v46 = 0uLL;
  v38 = snlp::ssu::cache::SSUCacheFileWriteStream::writeDebugInformation(a2, v40);
  *v42 = &v40[24];
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v42);
  *v42 = v40;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v42);
  *v40 = &v46;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v40);
  *v40 = &v48;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v40);
  return v38;
}

void sub_22291ECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  snlp::ssu::cache::SSUCacheObjectDebugInformation::~SSUCacheObjectDebugInformation(&a11);
  a22 = &a27;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = (v27 - 112);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void snlp::ssu::cache::SSUCacheObjectDebugInformation::~SSUCacheObjectDebugInformation(void **this)
{
  v2 = this + 3;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void snlp::ssu::matcher::SSUPersister::writeSingleBatchPositive(snlp::ssu::matcher::SSUPersister *this, snlp::ssu::cache::SSUCacheFileWriteStream *a2, const snlp::ssu::matcher::BatchData *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  (*(**(this + 8) + 16))(&v4);
  snlp::ssu::encoder::SSUEncoder::computeEncodings(v4, a3);
}

void sub_22291F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive::~SSUCacheObjectEncodingsBatchPositive(&a9);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a19);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v6 = __sz - v5;
  if (__sz <= v5)
  {
    if (__sz < v5)
    {
      v11 = &begin[__sz];
      while (end != v11)
      {
        v12 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v12 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      this->__end_ = v11;
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v6)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v14.__end_cap_.__value_ = this;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(this->__end_, v13);
    this->__end_ = (end + v13);
  }
}

void snlp::ssu::matcher::BatchData::~BatchData(snlp::ssu::matcher::BatchData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive::~SSUCacheObjectEncodingsBatchPositive(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void snlp::ssu::matcher::SSUPersister::writeSingleBatchNegative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 64) + 16))(&v4);
  snlp::ssu::encoder::SSUEncoder::computeEncodings(v4, a3);
}

void sub_22291F608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::string *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_oarchive,boost::archive::text_oarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[32];
  if (v2 != -1)
  {
    result = off_2835E41F8[v2](&v3, result);
  }

  v1[32] = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_oarchiveENS9_13text_oarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  v3 = v2 + 48;

  return boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v3);
}

std::locale *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_oarchiveENS9_13text_oarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  v3 = v2 + 5;

  return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v3);
}

void *std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void snlp::ssu::cache::SSUCacheObjectIntent::~SSUCacheObjectIntent(void **this)
{
  v2 = this + 3;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>,snlp::ssu::cache::SSUCacheObjectIntent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    do
    {
      std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::cache::SSUCacheObjectIntent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<snlp::ssu::app::SSUAppIntent>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppIntent*,snlp::ssu::app::SSUAppIntent*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_22291FBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void snlp::ssu::app::SSULoadedAppAssets::~SSULoadedAppAssets(void **this)
{
  v2 = this + 11;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 8;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<snlp::ssu::app::SSUAppParameter>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppParameter*,snlp::ssu::app::SSUAppParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<snlp::ssu::app::SSUAppIntent>,snlp::ssu::app::SSUAppIntent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 3;
      do
      {
        v6 = v4;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v6);
        v6 = v4 - 3;
        std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        v4 -= 9;
      }

      while (v4 + 3 != v3);
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppIntent>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_22292003C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
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
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheFileVersion>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t snlp::ssu::matcher::SSUPersister::computeTotalNumExamples(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = result - 1431655765 * ((*(v1 + 56) - *(v1 + 48)) >> 3);
    v1 += 72;
  }

  while (v1 != v2);
  return result;
}

const void **nlv4_inference_orchestrator::vocabulary::Vocabulary::getTokenId(uint64_t a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 144), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

void std::ifstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromLegacyNlContext(const void **this@<X0>, const sirinluexternal::LegacyNLContext *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = *(a2 + 1);
  if (!v5)
  {
LABEL_35:
    v15 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(this + 14);
      if (v16 >= 8)
      {
        v21 = SNLPOSLoggerForCategory(4);
        v17 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          v33 = 2048;
          *v34 = v16;
          _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v17 = off_2784B6F30[v16];
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] Failed to featurize any labels from legacyNlContext", buf, 0xCu);
    }

    goto LABEL_54;
  }

  if ((*(v5 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v5 + 8))
    {
      goto LABEL_35;
    }
  }

  else if (!*(v5 + 23))
  {
    goto LABEL_35;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, this + 82, v5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, buf);
  v7 = *(a2 + 72);
  if ((v7 & 2) != 0)
  {
    if (*(a2 + 68))
    {
      v8 = "TRUE";
    }

    else
    {
      v8 = "FALSE";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v39, this + 76, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, v39);
    if (v42 < 0)
    {
      operator delete(*v39);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*__p);
    }

    v7 = *(a2 + 72);
  }

  if ((v7 & 8) != 0)
  {
    if (*(a2 + 70))
    {
      v9 = "TRUE";
    }

    else
    {
      v9 = "FALSE";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v9);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v39, this + 79, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, v39);
    if (v42 < 0)
    {
      operator delete(*v39);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*__p);
    }
  }

  if ((v34[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (!*(a3 + 24))
  {
    goto LABEL_35;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v10 = (a3 + 16);
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34[2], ", ", 2);
    v12 = *(v10 + 39);
    if (v12 >= 0)
    {
      v13 = (v10 + 2);
    }

    else
    {
      v13 = v10[2];
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 39);
    }

    else
    {
      v14 = v10[3];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  }

  v18 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(this + 14);
    if (v19 >= 8)
    {
      v22 = SNLPOSLoggerForCategory(4);
      v20 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v39 = 136315394;
        *&v39[4] = "<UNDEFINED_COMPONENT>";
        v40 = 2048;
        v41 = v19;
        _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v39, 0x16u);
      }
    }

    else
    {
      v20 = off_2784B6F30[v19];
    }

    v23 = *(a3 + 24);
    std::stringbuf::str();
    if (v42 >= 0)
    {
      v24 = v39;
    }

    else
    {
      v24 = *v39;
    }

    *__p = 136315650;
    *&__p[4] = v20;
    v28 = 2048;
    v29 = v23;
    v30 = 2080;
    v31 = v24;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] Featurized the following %lu LegacyNLContext features in ITFMParserRequest: %s", __p, 0x20u);
    if (v42 < 0)
    {
      operator delete(*v39);
    }
  }

  *buf = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v34[2] = v25;
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](&v38);
LABEL_54:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_222920768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v21);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](a1 + 128);
  return a1;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromNLContext(const void **this@<X0>, const sirinluexternal::NLContext *a2@<X1>, void *a3@<X8>)
{
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(this + 8, a2, a3);
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractSalientEntityContextLabels(this + 8, a2, &__p);
    v6 = v10;
    if (v10)
    {
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, v6 + 2);
        v6 = *v6;
      }

      while (v6);
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v7);
    v8 = __p;
    __p = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(void *a1, void **a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = v4[1];
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = v9[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void sub_222920F84(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x1012C40EC159624);
  MEMORY[0x223DC3560](v1);
  _Unwind_Resume(a1);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2, a1);
  v9 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2, a1))
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1);
        v15 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
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
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1);
  v21 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v38, v19))
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v45, v42 + 3))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void sub_222921748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x223DC4D00](v28, 0x1012C40071C2685);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_222921858(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x223DC4D00](v3, 0x20C4093837F09);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::app::SSUCompressedFileWrapper::decompressSSUFileToDisk(const void **a1, const void **a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  snlp::ssu::app::SSUCompressedFileWrapper::findCompressedSSUFileForAppLocale(a1, a2, &__p);
  snlp::ssu::app::SSUCompressedFileWrapper::buildDecompressedFilePath(a3, a2, a1);
}

void sub_2229219D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::string *a13, uint64_t a14, std::string *a15, __int128 __p, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__pa, uint64_t __p_8, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a27 < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::app::SSUCompressedFileWrapper::findCompressedSSUFileForAppLocale(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v27, &snlp::ssu::app::file_extensions::kCompressedSSUFile);
  std::__fs::filesystem::operator/[abi:ne200100](&v28.__pn_, a1 + 24, &v27);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v28, 0);
  if (v27.__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v28.__pn_.__r_.__value_.__l.__data_, v28.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *a3 = v28;
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v6 + 10);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(p_p, v8, v6);
    }

    strcpy(p_p + v6, ".nlu.lzfse");
    v27 = __p;
    memset(&__p, 0, sizeof(__p));
    std::__fs::filesystem::operator/[abi:ne200100](a3, a1 + 24, &v27);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(a3, 0);
    if (v27.__r_.__value_.__s.__data_[0] != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v10 = std::string::append(&v22, " not supported by assets directory since neither generic file (");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((v28.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28.__pn_.__r_.__value_.__r.__words[0];
      }

      v13 = std::string::append(&v23, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v24, " not locale-specific file (");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = *a3;
      }

      v18 = std::string::append(&v25, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&__p, ") is prsent.");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v27);
      exception->__vftable = &unk_2835E9238;
    }
  }

  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_222921EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v44 & 1) == 0)
    {
LABEL_16:
      if (*(v42 + 23) < 0)
      {
        operator delete(*v42);
      }

      if (*(v45 - 65) < 0)
      {
        operator delete(*(v45 - 88));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v43);
  goto LABEL_16;
}

void snlp::ssu::app::SSUCompressedFileWrapper::buildDecompressedFilePath(uint64_t a1, uint64_t a2, const void **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = 0;
  v5 = boost::uuids::detail::random_provider_base::random_provider_base(&v20);
  v21 = boost::uuids::random_generator_pure::operator()(v5);
  v22 = v6;
  boost::uuids::detail::random_provider_base::destroy(v20);
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = &v17;
  std::string::basic_string[abi:ne200100](&v17, v7 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v17.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(v8, v9, v7);
  }

  *(&v8->__r_.__value_.__l.__data_ + v7) = 95;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&v17, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v18, "_");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_2229222B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::uuids::to_chars<char *>(uint64_t result, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    if (*(result + i) >= 0xA0u)
    {
      v3 = (*(result + i) >> 4) + 87;
    }

    else
    {
      v3 = (*(result + i) >> 4) | 0x30;
    }

    *a2 = v3;
    v4 = *(result + i) & 0xF;
    if (v4 >= 0xA)
    {
      v5 = v4 + 87;
    }

    else
    {
      v5 = *(result + i) & 0xF | 0x30;
    }

    v6 = a2 + 2;
    a2[1] = v5;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      v6 = a2 + 3;
      a2[2] = 45;
    }

    a2 = v6;
  }

  return result;
}

void snlp::ssu::app::SSUCompressedFileWrapper::~SSUCompressedFileWrapper(snlp::ssu::app::SSUCompressedFileWrapper *this)
{
  v8 = *MEMORY[0x277D85DE8];
  std::unique_ptr<snlp::ssu::app::SSUFileWrapper const>::reset[abi:ne200100](this + 3);
  std::__fs::filesystem::__remove(this, 0);
  v2 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *this, *(this + 1));
    }

    else
    {
      __p = *this;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v7 = p_p;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "Temporary decompressed SSUFile removed at location: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::unique_ptr<snlp::ssu::app::SSUFileWrapper const>::reset[abi:ne200100](this + 3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_222922514(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

snlp::ssu::app::SSUFileWrapper *std::unique_ptr<snlp::ssu::app::SSUFileWrapper const>::reset[abi:ne200100](snlp::ssu::app::SSUFileWrapper **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    snlp::ssu::app::SSUFileWrapper::~SSUFileWrapper(result);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void sub_22292343C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::SpanUsoInserter::getInsertionPointLabel(nlv4_inference_orchestrator::trees::SpanUsoInserter *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void nlv4_inference_orchestrator::trees::SpanUsoInserter::findSpanEntity(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char **a6@<X5>, _BYTE *a7@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  std::to_string(&v37, *(a2 + 112));
  v14 = std::string::insert(&v37, 0, "Searching for span with UTF-16 indices (");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v38, ", ");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v36, *(a2 + 120));
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v36;
  }

  else
  {
    v18 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v39, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v42, ")");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v41 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v24 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = __p;
    if (v41 < 0)
    {
      v25 = __p[0];
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v25;
    _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "%s", &v42, 0xCu);
  }

  v26 = *(a1 + 23);
  if (v26 >= 0)
  {
    v27 = *(a1 + 23);
  }

  else
  {
    v27 = *(a1 + 8);
  }

  v28 = *(a2 + 71);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(a2 + 56);
  }

  if (v27 == v28)
  {
    v30 = v26 >= 0 ? a1 : *a1;
    v31 = v29 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (!memcmp(v30, v31, v27))
    {
      v33 = *a5;
      v34 = a5[1];
      v35[0] = v33;
      v35[1] = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      nlv4_inference_orchestrator::trees::SpanUsoInserter::findClosestSpan(a1, a3, a2, a4, v35, a6);
    }
  }

  *a7 = 0;
  a7[8] = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_222923A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::trees::SpanUsoInserter::findClosestSpan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char **a6)
{
  v31 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v29, "common_Date");
  std::string::basic_string[abi:ne200100]<0>(v27, "common_Timer");
  if ((v30 & 0x80u) == 0)
  {
    v9 = v30;
  }

  else
  {
    v9 = v29[1];
  }

  v10 = *(a4 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = a4[1];
  }

  if (v9 == v10)
  {
    v12 = (v30 & 0x80u) == 0 ? v29 : v29[0];
    v13 = *a4;
    v14 = v11 >= 0 ? a4 : *a4;
    if (!memcmp(v12, v14, v9))
    {
      v17 = *(a6 + 23);
      if (v17 >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      if (v17 < 0)
      {
        v17 = a6[1];
      }

      if ((v28 & 0x80u) == 0)
      {
        v19 = v27;
      }

      else
      {
        v19 = v27[0];
      }

      if ((v28 & 0x80u) == 0)
      {
        v20 = v28;
      }

      else
      {
        v20 = v27[1];
      }

      if (v20)
      {
        v21 = &v17[v18];
        if (v17 >= v20)
        {
          v22 = *v19;
          do
          {
            v23 = &v17[-v20];
            if (v23 == -1)
            {
              break;
            }

            v24 = memchr(v18, v22, (v23 + 1));
            if (!v24)
            {
              break;
            }

            v25 = v24;
            if (!memcmp(v24, v19, v20))
            {
              break;
            }

            v18 = v25 + 1;
            v17 = (v21 - (v25 + 1));
          }

          while (v17 >= v20);
        }
      }
    }
  }

  v16 = *a5;
  v15 = a5[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  else
  {
    v26 = *a5;
  }

  operator new();
}

void sub_222924864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v69 - 121) < 0)
  {
    operator delete(*(v69 - 144));
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100]((v69 - 224));
  std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100]((v69 - 216));
  v71 = *(v69 - 200);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (*(v69 - 169) < 0)
  {
    operator delete(*(v69 - 192));
  }

  if (*(v69 - 145) < 0)
  {
    operator delete(*(v69 - 168));
  }

  _Unwind_Resume(a1);
}

std::string *nlv4_inference_orchestrator::trees::SpanUsoInserter::getDomainFromOriginalParse@<X0>(nlv4_inference_orchestrator::trees::SpanUsoInserter *this@<X0>, std::string *__str@<X1>, std::string *a3@<X8>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(this + 8);
  v7 = this + 64;
  v8 = v9;
  v10 = v7[23];
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = v7[23];
  }

  else
  {
    v12 = *(v7 + 1);
  }

  if (v12)
  {
    v13 = v6 + size;
    if (size >= v12)
    {
      v17 = *v11;
      v18 = v6;
      do
      {
        v19 = size - v12;
        if (v19 == -1)
        {
          break;
        }

        v20 = memchr(v18, v17, v19 + 1);
        if (!v20)
        {
          break;
        }

        v14 = v20;
        if (!memcmp(v20, v11, v12))
        {
          goto LABEL_15;
        }

        v18 = (v14 + 1);
        size = v13 - (v14 + 1);
      }

      while (size >= v12);
    }

    v14 = v13;
LABEL_15:
    if (v14 == v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14 - v6;
    }
  }

  else
  {
    v15 = 0;
  }

  return std::string::basic_string(a3, __str, 0, v15, &v21);
}

BOOL nlv4_inference_orchestrator::trees::SpanUsoInserter::checkLabelMatch(nlv4_inference_orchestrator::trees::SpanUsoInserter *a1, uint64_t a2, siri::ontology::UsoGraph *a3, const void **a4)
{
  nlv4_inference_orchestrator::trees::SpanUsoInserter::getSpanLabelFromGraph(a1, a3, &__p);
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = a4[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = v8 == size && (v7 >= 0 ? (v10 = a4) : (v10 = *a4), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), !memcmp(v10, p_p, v8)) || (nlv4_inference_orchestrator::trees::SpanUsoInserter::checkTimeLabelMatch(a1, a4, &__p.__r_.__value_.__l.__data_) & 1) != 0 || nlv4_inference_orchestrator::trees::SpanUsoInserter::checkTimerDateLabelMatch(a1, a2, a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_222924CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t nlv4_inference_orchestrator::trees::SpanUsoInserter::findUtteranceAlignments(nlv4_inference_orchestrator::trees::SpanUsoInserter *this, const siri::ontology::UsoGraph *a2, const sirinluexternal::UsoGraph *a3)
{
  v5 = *(a2 + 11);
  siri::ontology::oname::graph::ontology_init::Argument_entity(this);
  v6 = *(v5 + 8);
  siri::ontology::UsoGraph::getSuccessors();
  {
    v9 = v28[0];
    v3 = v28[2];
    v10 = v28[0] & 0xFFFFFF00;
  }

  else
  {
    v11 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "No utterance alignments found in the entity node; searching the descendant nodes for utterance alignments instead.", v28, 2u);
    }

    v12 = *(a3 + 1);
    v13 = *(a3 + 2);
    if (v12 == v13)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v14 = 0;
      v15 = -1;
      do
      {
        v16 = *v12;
        if ((*(*v12 + 40) & 2) != 0)
        {
          v17 = *(v16 + 8);
          if (v17 != *(v16 + 16))
          {
            v18 = *v17;
            v19 = *(*v17 + 20);
            if (v19 < v15)
            {
              v15 = v19;
            }

            v20 = *(v18 + 8);
            if (v14 <= v20)
            {
              v14 = v20;
            }
          }
        }

        ++v12;
      }

      while (v12 != v13);
      v21 = v15 & 0xFFFFFF00;
      if (v15 <= v14)
      {
        v22 = v14;
      }

      else
      {
        v22 = v15;
      }

      if (v15 <= v14)
      {
        v23 = v15;
      }

      else
      {
        v23 = 0;
      }

      if (v15 > v14)
      {
        v21 = 0;
      }

      v24 = v14 == 0;
      if (v14)
      {
        v25 = v22;
      }

      else
      {
        v25 = v15;
      }

      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23;
      }

      if (v24)
      {
        v21 = 0;
      }

      if (v15 == -1)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = v25;
      }

      if (v15 == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v26;
      }

      if (v15 == -1)
      {
        v10 = 0;
      }

      else
      {
        v10 = v21;
      }
    }
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v10 | v9 | (v3 << 32);
}

void nlv4_inference_orchestrator::trees::SpanUsoInserter::getSpanLabelFromGraph(nlv4_inference_orchestrator::trees::SpanUsoInserter *this@<X0>, const siri::ontology::UsoGraph *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 11);
  siri::ontology::oname::graph::ontology_init::Argument_entity(this);
  v5 = *(v4 + 8);
  siri::ontology::UsoGraph::getSuccessors();
  if (__p == v15)
  {
    v6 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      v7 = "Found no entities in the uso graph of matching span, skipping...";
      goto LABEL_7;
    }
  }

  else if ((v15 - __p) < 9)
  {
    if (v15 - __p != 8)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = ***__p;
    if (v9)
    {
      v10 = v9[3];
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        a3->__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&a3->__r_.__value_.__l.__data_ = v11;
      }

      goto LABEL_9;
    }

    v12 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "The first level entity is not of entity node type, skipping...", v13, 2u);
    }
  }

  else
  {
    v6 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      v7 = "There is more than one entity in the USO graph of matching span, skipping...";
LABEL_7:
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, v7, v13, 2u);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
LABEL_9:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

const void **nlv4_inference_orchestrator::trees::SpanUsoInserter::checkTimeLabelMatch(uint64_t a1, const void **a2, const void **a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 24), a2);
  if (result)
  {
    return (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 24), a3) != 0);
  }

  return result;
}

BOOL nlv4_inference_orchestrator::trees::SpanUsoInserter::checkTimerDateLabelMatch(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  std::string::basic_string[abi:ne200100]<0>(v22, "common_Timer");
  std::string::basic_string[abi:ne200100]<0>(__p, "common_Date");
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v10 = v22[1];
  }

  if (v9 != v10)
  {
    goto LABEL_27;
  }

  v11 = v8 >= 0 ? a2 : *a2;
  v12 = (v23 & 0x80u) == 0 ? v22 : v22[0];
  if (memcmp(v11, v12, v9))
  {
    goto LABEL_27;
  }

  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = a3[1];
  }

  v15 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v15 = __p[1];
  }

  if (v14 == v15 && (v13 >= 0 ? (v16 = a3) : (v16 = *a3), (v21 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), !memcmp(v16, v17, v14)))
  {
    v18 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 24), a4) != 0;
  }

  else
  {
LABEL_27:
    v18 = 0;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  return v18;
}

void sub_2229252C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_222925930(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 buf)
{
  v26 = v25;

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&__p);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = (*(*v29 + 16))(v29);
      LODWORD(buf) = 136642819;
      *(&buf + 4) = v31;
      _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_ERROR, "Error predicting utterance: %{sensitive}s", &buf, 0xCu);
    }

    if (v24)
    {
      *v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:0 userInfo:0];
    }

    __cxa_end_catch();
    JUMPOUT(0x222925830);
  }

  _Unwind_Resume(a1);
}

void UPInferenceResult::~UPInferenceResult(UPInferenceResult *this)
{
  begin = this->var2.data.__begin_;
  if (begin)
  {
    this->var2.data.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->var2.shape.__begin_;
  if (v3)
  {
    this->var2.shape.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->var1.data.__begin_;
  if (v4)
  {
    this->var1.data.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->var1.shape.__begin_;
  if (v5)
  {
    this->var1.shape.__end_ = v5;
    operator delete(v5);
  }

  v6 = this->var0.data.__begin_;
  if (v6)
  {
    this->var0.data.__end_ = v6;
    operator delete(v6);
  }

  v7 = this->var0.shape.__begin_;
  if (this->var0.shape.__begin_)
  {
    this->var0.shape.__end_ = v7;
    operator delete(v7);
  }
}

void sub_222926098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  a15 = &a28;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](&a15);
  nl_featurization::postprocessing::PostProcessingOutput::~PostProcessingOutput(&a31);
  nl_featurization::postprocessing::base::BaseModelOutput::~BaseModelOutput(&a37);
  nl_featurization::postprocessing::base::BaseModelQueryContext::~BaseModelQueryContext(&a44);

  _Unwind_Resume(a1);
}

uint64_t std::vector<nl_featurization::Token>::__init_with_size[abi:ne200100]<nl_featurization::Token*,nl_featurization::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nl_featurization::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_222926254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::optional<unsigned long>>::__init_with_size[abi:ne200100]<std::optional<unsigned long>*,std::optional<unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::optional<unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2229262D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void nl_featurization::postprocessing::LabelledSpan::~LabelledSpan(void **this)
{
  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

__n128 std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::construct[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,nl_featurization::postprocessing::LabelledSpan const&,0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (*(a2 + 55) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100]((a1 + 56), (a2 + 56));
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

void sub_22292643C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::destroy[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,0>(i))
    {
      i -= 104;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nl_featurization::Token>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void nl_featurization::postprocessing::PostProcessingOutput::~PostProcessingOutput(void **this)
{
  v2 = this + 3;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nl_featurization::postprocessing::base::BaseModelOutput::~BaseModelOutput(nl_featurization::postprocessing::base::BaseModelOutput *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void nl_featurization::postprocessing::base::BaseModelQueryContext::~BaseModelQueryContext(void **this)
{
  v2 = this + 6;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nl_featurization::Token>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::destroy[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,0>(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>,nl_featurization::postprocessing::LabelledSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v8 = a2;
    do
    {
      std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::construct[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,nl_featurization::postprocessing::LabelledSpan const&,0>(a4, v8);
      v8 += 104;
      a4 += 104;
      v6 -= 104;
    }

    while (v8 != a3);
    do
    {
      std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::destroy[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,0>(v5);
      v5 += 104;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<nl_featurization::postprocessing::LabelledSpan>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 104;
    std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::destroy[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,0>(v3 - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::basic_string<char16_t> *std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](std::basic_string<char16_t> *this, __int128 *a2)
{
  LOBYTE(this->__r_.__value_.__l.__data_) = 0;
  LOBYTE(this[1].__r_.__value_.__l.__data_) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    LOBYTE(this[1].__r_.__value_.__l.__data_) = 1;
  }

  return this;
}

void sub_22292688C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<nl_featurization::postprocessing::LabelledSpan>::__construct_one_at_end[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  if (*(a2 + 55) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v6 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v6;
  }

  std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100]((v4 + 56), (a2 + 56));
  result = *(a2 + 88);
  *(v4 + 88) = result;
  *(a1 + 8) = v4 + 104;
  return result;
}

uint64_t std::vector<nl_featurization::postprocessing::LabelledSpan>::__emplace_back_slow_path<nl_featurization::postprocessing::LabelledSpan>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>>(v6);
  }

  v7 = 104 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  if (*(a2 + 55) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v9 = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 32) = v9;
  }

  std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100]((v7 + 56), (a2 + 56));
  *(v7 + 88) = *(a2 + 88);
  *&v18 = v18 + 104;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>,nl_featurization::postprocessing::LabelledSpan*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nl_featurization::postprocessing::LabelledSpan>::~__split_buffer(&v16);
  return v15;
}

void sub_222926AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 55) < 0)
  {
    operator delete(*(v4 + 32));
  }

  std::__split_buffer<nl_featurization::postprocessing::LabelledSpan>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::optional<unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<unsigned long>>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<nl_featurization::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nl_featurization::Token>,nl_featurization::Token*,nl_featurization::Token*,nl_featurization::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      *v4 = *(v6 - 1);
      if (*(v6 + 23) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external((v4 + 16), *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v7;
        v8 = v4;
      }

      v9 = v6 - 1;
      *(v4 + 40) = *(v6 + 24);
      v4 = v8 + 48;
      v14 = v8 + 48;
      v6 += 3;
    }

    while (v9 + 3 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::Token>,nl_featurization::Token*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::Token>,nl_featurization::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_222927564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v41 - 160) = &a25;
  std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100]((v41 - 160));
  v43 = *(v41 - 208);
  if (v43)
  {
    *(v41 - 200) = v43;
    operator delete(v43);
  }

  a25 = &a28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}