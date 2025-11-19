void sub_22286FDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  operator delete(v22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
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
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::readPositionEmbeddings@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v27[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v25, a2);
  if (*&v26[*(v25[0] - 24) + 16])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__src, "Error reading position embeddings file!");
    std::runtime_error::runtime_error(exception, &__src);
    exception->__vftable = &unk_2835E9238;
  }

  v5 = MEMORY[0x223DC4830](v25, &v22);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v25;
  }

  memset(&__src, 0, sizeof(__src));
  buf.__r_.__value_.__r.__words[0] = v6;
  buf.__r_.__value_.__l.__size_ = v22;
  while (v6)
  {
    size = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
    {
      v9 = __src.__r_.__value_.__r.__words[0];
      v10 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
      v11 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
      v12 = v11 + 1;
      if ((v11 + 1) >> 62)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
      if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v14);
      }

      *(4 * v11) = buf.__r_.__value_.__r.__words[1];
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = __src.__r_.__value_.__r.__words[0];
      __src.__r_.__value_.__r.__words[0] = 0;
      *&__src.__r_.__value_.__r.__words[1] = v8;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *__src.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[1];
      v8 = size + 4;
    }

    __src.__r_.__value_.__l.__size_ = v8;
    v16 = MEMORY[0x223DC4830](buf.__r_.__value_.__r.__words[0], &buf.__r_.__value_.__r.__words[1]);
    if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0)
    {
      v6 = 0;
      buf.__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      v6 = buf.__r_.__value_.__r.__words[0];
    }
  }

  if (__src.__r_.__value_.__l.__size_ == __src.__r_.__value_.__r.__words[0])
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Error reading OWL position embeddings!");
    std::runtime_error::runtime_error(v21, &buf);
    v21->__vftable = &unk_2835E9238;
  }

  v17 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
    _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEFAULT, "Position Embeddings size = %lu", &buf, 0xCu);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, *(a1 + 136), *(a1 + 144), (*(a1 + 144) - *(a1 + 136)) >> 3);
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a3 + 3), __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2);
  if (__src.__r_.__value_.__r.__words[0])
  {
    __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v25[0] = *MEMORY[0x277D82808];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v26);
  std::istream::~istream();
  result = MEMORY[0x223DC4C10](v27);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222870374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v73 & 1) == 0)
    {
LABEL_6:
      if (a12)
      {
        operator delete(a12);
      }

      std::ifstream::~ifstream(&a24, MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](&a72);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v72);
  goto LABEL_6;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2228708B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemoryToPorts(E5RT::ExecutionStreamOperation **this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[22]);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[22]);
  for (i = *(InputPorts + 16); i; i = *i)
  {
    snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemory(this, i[5], i + 2);
  }

  for (j = *(OutputPorts + 16); j; j = *j)
  {
    snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemory(this, j[5], j + 2);
  }
}

void sub_222870D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::util::Status::~Status(&a15);
  _Unwind_Resume(a1);
}

double sentencepiece::SentencePieceProcessor::SentencePieceProcessor(sentencepiece::SentencePieceProcessor *this)
{
  *this = &unk_2835E2A90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

uint64_t sentencepiece::IsMMappableFile()
{
  v4[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x277D82808];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v3);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v4);
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_222870FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&a63);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::Load(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sentencepiece::IsMMappableFile())
  {
    absl::make_unique<sentencepiece::ModelProto>();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_2228710E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL snlp::common::espresso_inference::e5ml::EspressoE5MLModule::modelIsE5Format(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, ".e5");
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

void sub_222871370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  operator delete(v22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::common::espresso_inference::e5ml::WeightsHandler::WeightsHandler(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v18[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(v19, "FP32");
  v20 = 0;
  std::string::basic_string[abi:ne200100]<0>(v21, "FP16");
  v16 = a2;
  v22 = 2;
  std::string::basic_string[abi:ne200100]<0>(v23, "UINT8");
  v4 = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  do
  {
    v5 = v18[v4];
    v6 = *(a1 + 48);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v18[v4];
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*(a1 + 40) + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }

    v4 += 8;
  }

  while (v4 != 24);
  for (i = 0; i != -96; i -= 32)
  {
    if (v23[i + 23] < 0)
    {
      operator delete(*&v23[i]);
    }
  }

  v13 = *(v16 + 8);
  v17[0] = *v16;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  snlp::common::espresso_inference::e5ml::WeightsHandler::recordPortDataTypes(a1, v17);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2228718EC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(v1 + 40);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_222871A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void uaap::DDUsoMapper::DDUsoMapper(uaap::DDUsoMapper *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_2228722D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = v6;
  (*(*v7 + 8))(v7);
  std::vector<std::unique_ptr<uaap::AbstractDateTimeHandler>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<uaap::AbstractDateTimeHandler>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uaap::UPDataDetector **std::unique_ptr<uaap::UPDataDetector>::~unique_ptr[abi:ne200100](uaap::UPDataDetector **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    uaap::UPDataDetector::~UPDataDetector(v2);
    MEMORY[0x223DC4D00]();
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, (i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4 != -1)
  {
    v6 = a1;
    (off_2835E4330[v4])(&v6, a2);
    *(a1 + 24) = v4;
  }

  return a1;
}

float std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,int,unsigned int,float,BOOL,std::string> &&>(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::EspressoTransformerE5MLModel(uint64_t a1)
{
  *a1 = &unk_2835E9128;
  v2 = (a1 + 32);
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), "max_num_utterance_embeddings");
  std::string::basic_string[abi:ne200100]<0>(v2, "utterance_tokens_embedder_emb_dim");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "max_num_spans_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "spans_pad_symbol_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "max_num_context_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 128), "context_pad_symbol_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 152), "start_symbol_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 176), "end_symbol_index");
  operator new();
}

void sub_222872988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 208);
  *(v15 + 208) = 0;
  if (v18)
  {
    nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::~TransformerDecoderE5MLModule(v18);
    MEMORY[0x223DC4D00]();
  }

  v19 = *(v15 + 200);
  *(v15 + 200) = 0;
  if (v19)
  {
    nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::~TransformerEncoderE5MLModule(v19);
    MEMORY[0x223DC4D00]();
  }

  if (*(v15 + 199) < 0)
  {
    operator delete(*(v15 + 176));
  }

  if (*(v15 + 175) < 0)
  {
    operator delete(*(v15 + 152));
  }

  if (*(v15 + 151) < 0)
  {
    operator delete(*(v15 + 128));
  }

  if (*(v15 + 127) < 0)
  {
    operator delete(*(v15 + 104));
  }

  if (*(v15 + 103) < 0)
  {
    operator delete(*(v15 + 80));
  }

  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  if (*(v15 + 55) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::MILCompiler::createCompilerBaseOptions(snlp::common::espresso_inference::e5ml::MILCompiler *this@<X0>, uint64_t *a2@<X8>)
{
  E5RT::E5CompilerOptions::Create(this);
  v3 = *a2;
  operator new();
}

void sub_222872BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  *v15 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

E5RT::ProgramLibrary *snlp::common::espresso_inference::e5ml::MILCompiler::compileMilWithCompilerOptions(E5RT::E5Compiler *a1, uint64_t a2, const void **a3)
{
  E5RT::E5Compiler::GetCompiler(a1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  E5RT::E5Compiler::Compile();
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v18);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(ExportedFunctions, a3))
  {
    std::operator+<char>();
    v10 = std::string::append(&v16, " function could not be found in the E5-ML program.");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v17;
    }

    else
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, v13);
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_2835E6B78;
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(ExportedFunctions, a3);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6[6];
  v14 = v6[5];
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  v8 = v17.__r_.__value_.__r.__words[0];
  v17.__r_.__value_.__r.__words[0] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_222872E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      if (a23 < 0)
      {
        operator delete(a18);
      }

      v27 = *(v25 - 56);
      *(v25 - 56) = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

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

void sub_222872F48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x222872F40);
}

double nlv4_inference_orchestrator::inference_engine::BertModule::initInputOutput(nlv4_inference_orchestrator::inference_engine::BertModule *this)
{
  *(this + 2) = (*(*this + 152))(this);
  (*(*this + 128))(&v3, this);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 1) = v3;
  *(this + 4) = v4;
  (*(*this + 120))(&v3, this);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *(this + 40) = v3;
  *(this + 7) = v4;
  (*(*this + 136))(&v3, this);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  *(this + 4) = v3;
  *(this + 10) = v4;
  (*(*this + 144))(&v3, this);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  result = *&v3;
  *(this + 88) = v3;
  *(this + 13) = v4;
  return result;
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::assertAssetVersionValid(nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NLv4");
  SNLPAssetVersionChecks::assertAssetVersionValid(__p, this + 432, *(this + 53), this + 32, this + 72);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_222873140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void snlp::common::espresso_inference::e5ml::MILCompiler::compileMilForceCache(int *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  v3 = std::string::insert(&v13, 0, "Attempting E5RT cache lookup for model at ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v12 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v5 = SNLPOSLoggerForCategory(4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    v7 = *a1;
    if (v7 >= 8)
    {
      v9 = SNLPOSLoggerForCategory(4);
      v8 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v13.__r_.__value_.__l.__data_) = 136315394;
        *(v13.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
        WORD2(v13.__r_.__value_.__r.__words[1]) = 2048;
        *(&v13.__r_.__value_.__r.__words[1] + 6) = v7;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v13, 0x16u);
      }
    }

    else
    {
      v8 = off_2784B6F30[v7];
    }

    v10 = __p;
    if (v12 < 0)
    {
      v10 = __p[0];
    }

    LODWORD(v13.__r_.__value_.__l.__data_) = 136315394;
    *(v13.__r_.__value_.__r.__words + 4) = v8;
    WORD2(v13.__r_.__value_.__r.__words[1]) = 2080;
    *(&v13.__r_.__value_.__r.__words[1] + 6) = v10;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[%s] %s", &v13, 0x16u);
  }

  snlp::common::espresso_inference::e5ml::MILCompiler::createCompilerBaseOptions(v6, &v13);
}

uint64_t nlv4_inference_orchestrator::inference_engine::assertValidFeaturePoolingRank(uint64_t result)
{
  if ((result & 0xFFFFFFFE) != 2)
  {
    v1 = result;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v6);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Invalid feature pooling rank: ", 30);
    v3 = MEMORY[0x223DC4920](v2, v1);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v3);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v5);
    exception->__vftable = &unk_2835E6260;
  }

  return result;
}

void sub_222873BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
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

BOOL nlv4_inference_orchestrator::inference_engine::BertModule::isFeatureExtractionOutputTensorNameValid(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 255);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 240);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 232) : *(a1 + 232);
    if (!memcmp(v8, v9, v5))
    {
      return 1;
    }
  }

  v10 = *(a1 + 279);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 264);
  }

  if (v5 != v10)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = (a1 + 256);
  }

  else
  {
    v13 = *(a1 + 256);
  }

  return memcmp(v12, v13, v5) == 0;
}

std::string *nlv4_inference_orchestrator::inference_engine::BertE5MLModule::extractSubwordFeaturesOutputName@<X0>(E5RT::ExecutionStreamOperation **this@<X0>, std::string *a2@<X8>)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[76]);
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  v5 = (this + 35);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 35))
  {
    return std::string::operator=(a2, v5);
  }

  v5 = (this + 38);
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 38);
  if (result)
  {
    return std::string::operator=(a2, v5);
  }

  return result;
}

void sub_222873D68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::Mmap<char>::open(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sentencepiece::Mmap<char>::close(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    v11 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x223DC4920](&__p.__r_.__value_.__r.__words[1], 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x223DC4C10](v30);
    return;
  }

  std::__fs::filesystem::path::parent_path[abi:ne200100](a2, &v32);
  std::__fs::filesystem::path::filename[abi:ne200100](a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32.__pn_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x223DC4920](&__p.__r_.__value_.__r.__words[1], 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x223DC4920](&__p.__r_.__value_.__r.__words[1], 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sentencepiece::util::Status::Status(a4);
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v23 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x223DC4920](&__p.__r_.__value_.__r.__words[1], 78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x223DC4920](&__p.__r_.__value_.__r.__words[1], 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "fd >= 0", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
  __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
  *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2228746F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::SentencePieceProcessor::LoadFromMemoryMappedFile@<X0>(const char *a1@<X1>, unint64_t a2@<X2>, sentencepiece::util::Status *a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v10) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x223DC4920](&v11, 1230);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(size) >= (sizeof(MMapHeader))", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else if (*a1)
  {
    LODWORD(v10) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x223DC4920](&v11, 1233);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "header->sentinel == 0", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "This file format is not for mmap-based loading.", 47);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else
  {
    result = sentencepiece::mmap_util::RemovePrefix(&v16, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sentencepiece::util::Status::~Status(a3);
    if (v17 >= *(a1 + 1))
    {
      operator new();
    }

    LODWORD(v10) = 13;
    v9 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x223DC4920](&v11, 1238);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(blob.size()) >= (header->model_proto_size)", 43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v15);
}

void sub_222875328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::MemoryMappedModelProto::Init@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(a2, a3, &v12, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v11, a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v10, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sentencepiece::mmap_util::DecodePrefix<int>(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sentencepiece::util::Status::~Status(a4);
                result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sentencepiece::util::Status::~Status(a4);
                  *(a1 + 56) = v13;
                  v8 = sentencepiece::mmap_util::RoundUp(*(a1 + 48), 4uLL);
                  result = sentencepiece::mmap_util::RemovePrefix(&v13, v8, a4);
                  if (!*a4)
                  {
                    sentencepiece::util::Status::~Status(a4);
                    *(a1 + 64) = v13;
                    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sentencepiece::util::Status::~Status(a4);
                      *(a1 + 72) = v13;
                      result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        sentencepiece::util::Status::~Status(a4);
                        *(a1 + 80) = v13;
                        return sentencepiece::util::Status::Status(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sentencepiece::mmap_util::DecodePrefix<int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x223DC4920](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x223DC4C10](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationStarted(snlp::common::espresso_inference::e5ml::selflogging *this@<X0>, const snlp::common::selflogging::NLXSchemaNLXClientEventMetadata *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = snlp::common::espresso_inference::e5ml::selflogging::convertMetadata(this, a2);
  v4 = [E5MLModuleSELFLoggingUtils logMilCompilationStartedWithMetadata:?];
  snlp::common::espresso_inference::e5ml::selflogging::cppUUIDFromObjCSISUUID(v4, a3);
}

BOOL nlv4_inference_orchestrator::inference_engine::BertE5MLModule::extractTokenFeaturesOutputName@<W0>(E5RT::ExecutionStreamOperation **this@<X0>, std::string *a2@<X8>)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[76]);
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  v5 = (this + 29);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 29) || (v5 = (this + 32), std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 32)))
  {
    std::string::operator=(a2, v5);
  }

  return nlv4_inference_orchestrator::inference_engine::BertModule::assertValidFeatureExtractionOutputTensorName(this, &a2->__r_.__value_.__l.__data_);
}

void sub_2228758B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::util::Status::~Status(sentencepiece::util::Status *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](this, v1);
  }
}

void sub_222875A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_2835E3D98;
  *(a1 + 16) = &unk_2835E3D58;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_2835E3D58;
  *(a1 + 40) = 0;
  sentencepiece::util::Status::Status((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_222875B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v2 + 88));
  _Unwind_Resume(a1);
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJijfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJijfbSD_EEEEEEDcSN_DpT0_(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t nlv4_inference_orchestrator::context::ContextLabelsExtractor::ContextLabelsExtractor(uint64_t a1, void *a2, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v10, "SystemGaveOptions");
  std::string::basic_string[abi:ne200100]<0>(v11, "SystemOffered");
  std::unordered_set<std::string>::unordered_set(a1, v10, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (v11[i * 8 + 23] < 0)
    {
      operator delete(v10[i + 3]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 40), "sda");
  std::string::basic_string[abi:ne200100]<0>((a1 + 64), "executed_task");
  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "salient_entity");
  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "active_task");
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "sdas");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "executed_tasks");
  std::string::basic_string[abi:ne200100]<0>((a1 + 184), "salient_entities");
  std::string::basic_string[abi:ne200100]<0>((a1 + 208), "active_tasks");
  std::string::basic_string[abi:ne200100]<0>((a1 + 232), "_type=");
  std::string::basic_string[abi:ne200100]<0>((a1 + 256), "_full_path=");
  std::string::basic_string[abi:ne200100]<0>((a1 + 280), "_verb_entity=");
  std::string::basic_string[abi:ne200100]<0>((a1 + 304), "_verb=");
  std::string::basic_string[abi:ne200100]<0>((a1 + 328), "_below_verb=");
  std::string::basic_string[abi:ne200100]<0>((a1 + 352), "_are_present");
  std::string::basic_string[abi:ne200100]<0>((a1 + 376), "_are_absent");
  std::string::basic_string[abi:ne200100]<0>((a1 + 400), "[NO_SDAS]");
  v7 = a2[1];
  *(a1 + 424) = *a2;
  *(a1 + 432) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 440) = *a3;
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_222875D44(_Unwind_Exception *a1)
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

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
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

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void sub_222875EC0()
{
  v1 = (v0 + 47);
  v2 = -48;
  v3 = (v0 + 47);
  while (1)
  {
    v4 = *v3;
    v3 -= 24;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 24;
    if (!v2)
    {
      JUMPOUT(0x222875E80);
    }
  }
}

void sub_222875EF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x222875E80);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJijfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJijfbSD_EEEEEEDcSN_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void bundleInfoForAssetsDirectory(int *a1@<X0>, std::string *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  MEMORY[0x223DC33E0](a5 + 8, a4);
  getBoltTaskId(a3, a1, (a5 + 40));
  shaHashForRecursivePath(a2, a1, (a5 + 72));
}

void sub_222875FB0(_Unwind_Exception *a1)
{
  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  MEMORY[0x223DC3400](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t itfm_inference_orchestrator::inference_engine::ITFME5MLModule::ITFME5MLModule(uint64_t a1, std::string *a2, uint64_t a3, int *a4)
{
  LOBYTE(v8[0]) = 0;
  v9 = 0;
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, a4, a1, v8);
  *(a1 + 352) = *a4;
  std::string::basic_string[abi:ne200100]<0>((a1 + 360), "source_tokens_embeddings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 384), "matched_spans");
  std::string::basic_string[abi:ne200100]<0>((a1 + 408), "context");
  std::string::basic_string[abi:ne200100]<0>((a1 + 432), "source_mask");
  std::string::basic_string[abi:ne200100]<0>((a1 + 456), "class_probabilities");
  v6 = *(a1 + 184);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _os_feature_enabled_impl();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemoryToPorts(a1);
  return a1;
}

void sub_2228760C0(_Unwind_Exception *a1)
{
  if (*(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  if (*(v1 + 455) < 0)
  {
    operator delete(*(v1 + 432));
  }

  if (*(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  if (*(v1 + 407) < 0)
  {
    operator delete(*(v1 + 384));
  }

  if (*(v1 + 383) < 0)
  {
    operator delete(*(v1 + 360));
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule(v1);
  _Unwind_Resume(a1);
}

void sub_222876164(uint64_t a1, ...)
{
  va_start(va, a1);
  std::optional<snlp::common::selflogging::NLXSchemaNLXClientEventMetadata>::~optional(va);
  JUMPOUT(0x22287615CLL);
}

nlv4_inference_orchestrator::trees::UsoGraphBuilder *nlv4_inference_orchestrator::trees::UsoGraphBuilder::UsoGraphBuilder(nlv4_inference_orchestrator::trees::UsoGraphBuilder *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "time");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "date");
  std::string::basic_string[abi:ne200100]<0>(__p, "common_Time");
  std::string::basic_string[abi:ne200100]<0>(v9, "common_Time12HourClock");
  std::string::basic_string[abi:ne200100]<0>(v10, "common_Time24HourClock");
  std::unordered_set<std::string>::unordered_set(this + 48, __p, 3);
  for (i = 0; i != -72; i -= 24)
  {
    if (v10[i + 23] < 0)
    {
      operator delete(*&v10[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(this + 88, "ROOT");
  std::string::basic_string[abi:ne200100]<0>(this + 112, ".");
  std::string::basic_string[abi:ne200100]<0>(this + 136, "task");
  std::string::basic_string[abi:ne200100]<0>(__p, "common_Integer");
  std::unordered_set<std::string>::unordered_set(this + 160, __p, 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "integerValue");
  std::string::basic_string[abi:ne200100]<0>(v9, "denominatorValue");
  std::string::basic_string[abi:ne200100]<0>(v10, "numeratorValue");
  std::string::basic_string[abi:ne200100]<0>(v11, "wholeValue");
  std::unordered_set<std::string>::unordered_set(this + 200, __p, 4);
  for (j = 0; j != -96; j -= 24)
  {
    if (v11[j + 23] < 0)
    {
      operator delete(*&v11[j]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(this + 240, "common_Integer");
  std::string::basic_string[abi:ne200100]<0>(this + 264, "integerValue");
  v5 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_222876374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 263) < 0)
  {
    operator delete(*(v15 + 240));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 200);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 160);
  if (*(v15 + 159) < 0)
  {
    operator delete(*(v15 + 136));
  }

  if (*(v15 + 135) < 0)
  {
    operator delete(*(v15 + 112));
  }

  if (*(v15 + 111) < 0)
  {
    operator delete(*(v15 + 88));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 48);
  if (*(v15 + 47) < 0)
  {
    operator delete(*(v15 + 24));
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [36],void>(std::string *this, std::string *a2)
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

void sub_222876550(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [27],void>(std::string *this, std::string *a2)
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

void sub_2228765AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [86],void>(std::string *this, std::string *a2)
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

void sub_222876608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::logAssetInfo(nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator *this)
{
  v17[3] = *MEMORY[0x277D85DE8];
  snlp::common::asset_logger::SNLPAssetLogger::toStringStream((this + 2128), v12);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v1 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v12 + *(v12[0] - 24)));
    v2 = std::locale::use_facet(v17, v1);
    v3 = (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(v17);
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, __p, v3);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v5 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      LODWORD(v17[0].__locale_) = 136315138;
      *(&v17[0].__locale_ + 4) = v6;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEFAULT, "[SNLPAssetLogger] %s", v17, 0xCu);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v12[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12[2] = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC4C10](&v16);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::unique_ptr<nlv4_inference_orchestrator::vocabulary::Vocabulary>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 184);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v2 + 144);
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

    return MEMORY[0x223DC4D00](v2, 0x10B2C40E7B24F67);
  }

  return result;
}

void nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder::buildModel(nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder *this@<X0>, void *a2@<X8>)
{
  nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder::setupEspressoV2E5MLModel(this, &v4);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {

    nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder::setupEspressoV1Model(this, a2);
  }
}

void nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder::setupEspressoV2E5MLModel(nlv4_inference_orchestrator::inference_engine::TransformerModelBuilder *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 160));
  std::__fs::filesystem::__status(&v11, 0);
  v3 = 0;
  if (v10.__pn_.__r_.__value_.__s.__data_[0] && v10.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, this, (this + 184));
    std::__fs::filesystem::__status(&v10, 0);
    v4 = !v9.__r_.__value_.__s.__data_[0] || v9.__r_.__value_.__s.__data_[0] == 255;
    v3 = !v4;
    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    if (v3)
    {
LABEL_13:
      std::__fs::filesystem::operator/[abi:ne200100](&v9, this, (this + 160));
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v10.__pn_, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      }

      else
      {
        v10.__pn_ = v9;
      }

      std::__fs::filesystem::operator/[abi:ne200100](&__p, this, (this + 184));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v8 = __p;
      }

      operator new();
    }
  }

  else if (v3)
  {
    goto LABEL_13;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v11.__pn_, this, (this + 136));
  std::__fs::filesystem::__status(&v11, 0);
  v5 = 0;
  if (v10.__pn_.__r_.__value_.__s.__data_[0] && v10.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, this, (this + 112));
    std::__fs::filesystem::__status(&v10, 0);
    v6 = !v9.__r_.__value_.__s.__data_[0] || v9.__r_.__value_.__s.__data_[0] == 255;
    v5 = !v6;
    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    if (!v5)
    {
      return;
    }

LABEL_35:
    std::__fs::filesystem::operator/[abi:ne200100](&v10.__pn_, this, (this + 136));
    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11.__pn_, v10.__pn_.__r_.__value_.__l.__data_, v10.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v10;
    }

    std::__fs::filesystem::operator/[abi:ne200100](&v8, this, (this + 112));
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = v8;
    }

    operator new();
  }

  if (v5)
  {
    goto LABEL_35;
  }
}

void sub_222876DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  *v42 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::e5ml::WeightsHandler::recordDataTypeForPort(void *a1, const void **a2, E5RT::IOPort **a3)
{
  E5RT::IOPort::GetPortDescriptor(&v41, *a3);
  v6 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v41.__r_.__value_.__l.__data_);
  E5RT::TensorDescriptor::GetTensorDataType(&v42, v6);
  ComponentDataType = E5RT::TensorDataType::GetComponentDataType(&v42);
  E5RT::TensorDataType::~TensorDataType(&v42);
  if (v41.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41.__r_.__value_.__l.__size_);
  }

  E5RT::IOPort::GetPortDescriptor(&v41, *a3);
  v8 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v41.__r_.__value_.__l.__data_);
  E5RT::TensorDescriptor::GetTensorDataType(&v42, v8);
  ComponentPack = E5RT::TensorDataType::GetComponentPack(&v42);
  E5RT::TensorDataType::~TensorDataType(&v42);
  if (v41.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41.__r_.__value_.__l.__size_);
  }

  if (ComponentDataType == 1)
  {
    if (!ComponentPack)
    {
      if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2))
      {
        v13 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
        if (!v13)
        {
          goto LABEL_59;
        }

        v14 = *(v13 + 10);
        result = 2;
        if (v14 != 2)
        {
          goto LABEL_17;
        }

        return result;
      }

      *&v42 = a2;
      v16 = std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
      result = 2;
LABEL_25:
      *(v16 + 10) = result;
      return result;
    }

LABEL_27:
    std::operator+<char>();
    v18 = std::string::append(&v37, ". The component data type was ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v36, ComponentDataType);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v36;
    }

    else
    {
      v20 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v38, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v39, " and the component pack was ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v35, ComponentPack);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v35.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v40, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v41, ".");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v43 = v30->__r_.__value_.__r.__words[2];
    v42 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (v43 >= 0)
    {
      v33 = &v42;
    }

    else
    {
      v33 = v42;
    }

    std::string::basic_string[abi:ne200100]<0>(&v41, v33);
    std::runtime_error::runtime_error(exception, &v41);
    exception->__vftable = &unk_2835E9238;
  }

  if (ComponentDataType != 4)
  {
    goto LABEL_27;
  }

  if (ComponentPack == 3)
  {
    if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2))
    {
      v15 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
      if (!v15)
      {
        goto LABEL_59;
      }

      if (*(v15 + 10))
      {
        LODWORD(v42) = 0;
LABEL_58:
        v34 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
        if (v34)
        {
          snlp::common::espresso_inference::e5ml::WeightsHandler::throwInconsistentPortDataTypeError(a1, a2, &v42, v34 + 10);
        }

LABEL_59:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      return 0;
    }

    else
    {
      *&v42 = a2;
      v17 = std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
      result = 0;
      *(v17 + 10) = 0;
    }

    return result;
  }

  if (ComponentPack != 6)
  {
    goto LABEL_27;
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2))
  {
    *&v42 = a2;
    v16 = std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    result = 1;
    goto LABEL_25;
  }

  v10 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (!v10)
  {
    goto LABEL_59;
  }

  v11 = *(v10 + 10);
  result = 1;
  if (v11 != 1)
  {
LABEL_17:
    LODWORD(v42) = result;
    goto LABEL_58;
  }

  return result;
}

uint64_t nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::TransformerEncoderE5MLModule(uint64_t a1, std::string *a2, uint64_t a3, __int128 *a4)
{
  v8 = 0;
  v5 = snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, &v8, a1, a4);
  std::string::basic_string[abi:ne200100]<0>((v5 + 352), "utterance_tokens_embeddings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 376), "padding_mask");
  std::string::basic_string[abi:ne200100]<0>((a1 + 400), "span_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 424), "context");
  std::string::basic_string[abi:ne200100]<0>((a1 + 448), "position_ids");
  std::string::basic_string[abi:ne200100]<0>((a1 + 472), "out_init_decoder_hidden");
  std::string::basic_string[abi:ne200100]<0>((a1 + 496), "out_encodings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 520), "max_num_context_tokens");
  *(a1 + 544) = nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::determineWeightType(a1);
  v6 = *(a1 + 184);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _os_feature_enabled_impl();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemoryToPorts(a1);
  return a1;
}

void sub_222877578(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 543) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  if (*(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 471) < 0)
  {
    operator delete(*(v1 + 448));
  }

  if (*(v1 + 447) < 0)
  {
    operator delete(*(v1 + 424));
  }

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

void sub_2228776DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, uint64_t a10, uint64_t a11, __int128 a12, std::string *a13, void *a14, __int128 a15, int64_t a16, void *a17, std::string::size_type a18, int a19, __int16 a20, char a21, unsigned __int8 a22)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v25 = __cxa_begin_catch(exception_object);
      v26 = (*(*v25 + 16))(v25);
      std::string::basic_string[abi:ne200100]<0>(&a17, v26);
      if (*(v22 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v22, *(v22 + 1));
      }

      else
      {
        __p = *v22;
        a10 = *(v22 + 2);
      }

      v27 = std::string::insert(&__p, 0, "Failed to find or load cached E5RT bundle for the model mil file at ");
      v28 = *&v27->__r_.__value_.__l.__data_;
      a13 = v27->__r_.__value_.__r.__words[2];
      a12 = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&a12, ".  Cache lookup failed because the following error was encountered during cache lookup: ");
      v30 = *&v29->__r_.__value_.__l.__data_;
      *(v24 - 64) = *(&v29->__r_.__value_.__l + 2);
      *(v24 - 80) = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((a22 & 0x80u) == 0)
      {
        v31 = &a17;
      }

      else
      {
        v31 = a17;
      }

      if ((a22 & 0x80u) == 0)
      {
        v32 = a22;
      }

      else
      {
        v32 = a18;
      }

      v33 = std::string::append((v24 - 80), v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      a16 = v33->__r_.__value_.__r.__words[2];
      a15 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (*(v24 - 57) < 0)
      {
        operator delete(*(v24 - 80));
      }

      if (SHIBYTE(a13) < 0)
      {
        operator delete(a12);
      }

      if (SHIBYTE(a10) < 0)
      {
        operator delete(__p);
      }

      v35 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        ComponentString = snlp::common::logging::getComponentString(*v23);
        v37 = &a15;
        if (a16 < 0)
        {
          v37 = a15;
        }

        *(v24 - 80) = 136315394;
        *(v24 - 76) = ComponentString;
        *(v24 - 68) = 2080;
        *(v24 - 66) = v37;
        _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_DEBUG, "[%s] %s", (v24 - 80), 0x16u);
      }

      snlp::common::espresso_inference::e5ml::MILCompiler::compileMilForceRecompilation(v23);
    }

    if (a2 == 1)
    {
      v38 = __cxa_begin_catch(exception_object);
      v39 = (*(*v38 + 16))(v38);
      std::string::basic_string[abi:ne200100]<0>(&a17, v39);
      std::operator+<char>();
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, &a15);
      exception->__vftable = &unk_2835E9238;
    }
  }

  _Unwind_Resume(exception_object);
}

id snlp::common::espresso_inference::e5ml::selflogging::convertMetadata(snlp::common::espresso_inference::e5ml::selflogging *this, const snlp::common::selflogging::NLXSchemaNLXClientEventMetadata *a2)
{
  v3 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(this);
  v4 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(this + 3);
  if (*(this + 71) >= 0)
  {
    v5 = this + 48;
  }

  else
  {
    v5 = *(this + 6);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v7 = v6;
  v8 = *(this + 71);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(this + 7);
  }

  if (!v8)
  {

    v7 = 0;
  }

  v9 = *(this + 18);
  v10 = objc_alloc_init(MEMORY[0x277D590F8]);
  [v10 setNlId:v4];
  [v10 setTrpId:v3];
  [v10 setResultCandidateId:v7];
  [v10 setComponentInvocationSource:v9];

  return v10;
}

double snlp::common::espresso_inference::e5ml::MILSELFLogger::logSELFStart(void **this, const snlp::common::selflogging::NLXSchemaNLXClientEventMetadata *a2)
{
  if (*(this + 80) == 1)
  {
    snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationStarted(this, a2, &v4);
  }

  else
  {
    snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationStarted(&v4);
  }

  if (*(this + 112) == 1)
  {
    if (*(this + 111) < 0)
    {
      operator delete(this[11]);
    }

    result = *&v4;
    *(this + 11) = v4;
    this[13] = v5;
  }

  else
  {
    result = *&v4;
    *(this + 11) = v4;
    this[13] = v5;
    *(this + 112) = 1;
  }

  return result;
}

id snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
    v4 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v3];

    goto LABEL_8;
  }

  if (a1[1])
  {
    v1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v4 = 0;
LABEL_8:

  return v4;
}

uint64_t nlv4_inference_orchestrator::inference_engine::BertE5MLModule::extractFeaturePoolingRank(nlv4_inference_orchestrator::inference_engine::BertE5MLModule *this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*(this + 76));
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(InputPorts, this + 26))
  {
    return 0;
  }

  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(InputPorts, this + 26);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v7, v3[5]);
  v4 = E5RT::OperandDescriptor::TensorDescriptor(v7);
  Rank = E5RT::TensorDescriptor::GetRank(v4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  nlv4_inference_orchestrator::inference_engine::assertValidFeaturePoolingRank(Rank);
  return Rank;
}

void sub_222877E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::BertE5MLModule::extractRequiresSubwordEmbeddingsOutputName(nlv4_inference_orchestrator::inference_engine::BertE5MLModule *this@<X0>, std::string *a2@<X8>)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(this + 76));
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 20))
  {
    if ((*(this + 183) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 10);
      v5 = *(this + 22);
LABEL_7:
      a2->__r_.__value_.__r.__words[2] = v5;
      return;
    }

    v6 = *(this + 20);
    v7 = *(this + 21);
LABEL_13:

    std::string::__init_copy_ctor_external(a2, v6, v7);
    return;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 23))
  {
    if ((*(this + 207) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 184);
      v5 = *(this + 25);
      goto LABEL_7;
    }

    v6 = *(this + 23);
    v7 = *(this + 24);
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

BOOL nlv4_inference_orchestrator::inference_engine::BertModule::assertValidFeatureExtractionOutputTensorName(uint64_t a1, const void **a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = nlv4_inference_orchestrator::inference_engine::BertModule::isFeatureExtractionOutputTensorNameValid(a1, a2);
  if (!result)
  {
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222878144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *nlv4_inference_orchestrator::inference_engine::BertE5MLModule::extractSentenceFeaturesOutputName@<X0>(E5RT::ExecutionStreamOperation **this@<X0>, std::string *a2@<X8>)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[76]);
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  v5 = (this + 41);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 41))
  {
    return std::string::operator=(a2, v5);
  }

  v5 = (this + 44);
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 44);
  if (result)
  {
    return std::string::operator=(a2, v5);
  }

  return result;
}

void sub_22287825C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::Mmap<char>::close(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

unint64_t sentencepiece::mmap_util::RoundUp(sentencepiece::mmap_util *this, unint64_t a2)
{
  if (!a2)
  {
    sentencepiece::mmap_util::RoundUp();
  }

  return (this + a2 - 1) / a2 * a2;
}

void shaHashForFileContent(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, _BYTE *a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 fileExistsAtPath:v11 isDirectory:0];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v11];
    v15 = v14;
    if (v14)
    {
      [v14 open];
      CC_SHA1_Init(&c);
      v16 = 0;
      while (1)
      {
        v17 = [v15 read:a2 maxLength:a3];
        v18 = v17;
        if (v17 < 1)
        {
          break;
        }

        CC_SHA1_Update(&c, a2, v17);
        v16 += v18;
        if (v16 >= 0x80000)
        {
          goto LABEL_27;
        }
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_27:
        CC_SHA1_Final(buf, &c);
        v27 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
        for (i = 0; i != 20; ++i)
        {
          [v27 appendFormat:@"%02x", buf[i]];
        }

        v29 = v27;
        std::string::basic_string[abi:ne200100]<0>(a5, [v27 UTF8String]);
        a5[24] = 1;

        goto LABEL_57;
      }

      v35 = *a4;
      if (v35 >= 8)
      {
        v37 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v47 = 136315394;
          v48 = "<UNDEFINED_COMPONENT>";
          v49 = 2048;
          v50 = v35;
          _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v47, 0x16u);
        }

        v36 = "<UNDEFINED_COMPONENT>";
      }

      else
      {
        v36 = off_2784B6F30[v35];
      }

      std::string::basic_string[abi:ne200100]<0>(buf, v36);
      v38 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = buf;
        if (v46 < 0)
        {
          v39 = *buf;
        }

        if (*(a1 + 23) >= 0)
        {
          v40 = a1;
        }

        else
        {
          v40 = *a1;
        }

        *v47 = 136315394;
        v48 = v39;
        v49 = 2080;
        v50 = v40;
        _os_log_impl(&dword_22284A000, v38, OS_LOG_TYPE_DEBUG, "[%s] Error, input stream for file could not be read. Hash for file content cannot be calculated: %s", v47, 0x16u);
      }

      *a5 = 0;
      a5[24] = 0;
      if (v46 < 0)
      {
        v34 = *buf;
        goto LABEL_56;
      }
    }

    else
    {
      v25 = *a4;
      if (v25 >= 8)
      {
        v30 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          v44 = 2048;
          v45 = v25;
          _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }

        v26 = "<UNDEFINED_COMPONENT>";
      }

      else
      {
        v26 = off_2784B6F30[v25];
      }

      std::string::basic_string[abi:ne200100]<0>(&c, v26);
      v31 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        p_c = &c;
        if ((c.Nl & 0x80000000) != 0)
        {
          p_c = *&c.h0;
        }

        if (*(a1 + 23) >= 0)
        {
          v33 = a1;
        }

        else
        {
          v33 = *a1;
        }

        *buf = 136315394;
        *&buf[4] = p_c;
        v44 = 2080;
        v45 = v33;
        _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] Error, input stream for file could not be created. Hash for file content cannot be calculated: %s", buf, 0x16u);
      }

      *a5 = 0;
      a5[24] = 0;
      if (SHIBYTE(c.Nl) < 0)
      {
        v34 = *&c.h0;
LABEL_56:
        operator delete(v34);
      }
    }

LABEL_57:
  }

  else
  {
    v19 = *a4;
    if (v19 >= 8)
    {
      v21 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v44 = 2048;
        v45 = v19;
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }

      v20 = "<UNDEFINED_COMPONENT>";
    }

    else
    {
      v20 = off_2784B6F30[v19];
    }

    std::string::basic_string[abi:ne200100]<0>(&c, v20);
    v22 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = &c;
      if ((c.Nl & 0x80000000) != 0)
      {
        v23 = *&c.h0;
      }

      if (*(a1 + 23) >= 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = *a1;
      }

      *buf = 136315394;
      *&buf[4] = v23;
      v44 = 2080;
      v45 = v24;
      _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "[%s] Error, file doesn't exist. Hash for file content cannot be calculated: %s", buf, 0x16u);
    }

    *a5 = 0;
    a5[24] = 0;
    if (SHIBYTE(c.Nl) < 0)
    {
      operator delete(*&c.h0);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void getBoltTaskId(void *a1@<X0>, int *a2@<X1>, std::string *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "bolt_task_id");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  if (v7 >= 8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "<UNDEFINED_COMPONENT>";
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }

    v8 = "<UNDEFINED_COMPONENT>";
  }

  else
  {
    v8 = off_2784B6F30[v7];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v8);
  if (v6)
  {
    if (*(v6 + 16) == 4)
    {
      if (*(v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(a3, v6[5], v6[6]);
      }

      else
      {
        v10 = *(v6 + 5);
        a3->__r_.__value_.__r.__words[2] = v6[7];
        *&a3->__r_.__value_.__l.__data_ = v10;
      }

      v14 = 1;
      goto LABEL_24;
    }

    v11 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = __p;
      if (v17 < 0)
      {
        v13 = __p[0];
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] Warning: config Bolt task ID is not a string", buf, 0xCu);
    }
  }

  else
  {
    v11 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      *buf = 136315138;
      v19 = v12;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] Warning: config missing Bolt task ID", buf, 0xCu);
    }
  }

  v14 = 0;
  a3->__r_.__value_.__s.__data_[0] = 0;
LABEL_24:
  a3[1].__r_.__value_.__s.__data_[0] = v14;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_222878B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [60],void>(std::string *this, std::string *a2)
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

void sub_222878B74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::mmap_util::RemovePrefix@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sentencepiece::util::Status::Status(a3);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x223DC4920](&v10, 287);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "string.size() >= size", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a3);
    v10 = *MEMORY[0x277D82828];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x223DC4C10](&v14);
  }
}

void *sentencepiece::mmap_util::DecodePrefix<unsigned int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x223DC4920](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x223DC4C10](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void sentencepiece::util::Status::operator=(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](a1, v3);
    }
  }
}

void sub_222879C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
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

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a28, a27);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::ifstream::~ifstream(&a47, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x278]);

  if (a22 < 0)
  {
    operator delete(a17);
  }

  MEMORY[0x223DC3400](&a23);
  _Unwind_Resume(a1);
}

void shaHashForRecursivePath(std::string *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&p.__pn_, a1);
  std::__fs::filesystem::__status(&p, 0);
  if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(p.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__pn_.__r_.__value_.__s.__data_[0] == 2)
  {
    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x40000];
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&p.__pn_, a1);
    MEMORY[0x223DC4AA0](&v40, &p, 0, 0);
    if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(p.__pn_.__r_.__value_.__l.__data_);
    }

    v6 = v40;
    v7 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v41;
      v39.__imp_.__ptr_ = v6;
      v39.__imp_.__cntrl_ = v7;
      v39.__rec_ = v42;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      v39.__imp_.__ptr_ = v40;
      v39.__imp_.__cntrl_ = 0;
      v39.__rec_ = v42;
    }

    while (v39.__imp_.__ptr_)
    {
      v9 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v39);
      std::__fs::filesystem::path::filename[abi:ne200100](&v9->__p_, &__p);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&p.__pn_, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        p = __p;
      }

      if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        v11 = p.__pn_.__r_.__value_.__l.__size_ == 11 && *p.__pn_.__r_.__value_.__l.__data_ == 0x6A2E6769666E6F63 && *(p.__pn_.__r_.__value_.__r.__words[0] + 3) == 0x6E6F736A2E676966;
        operator delete(p.__pn_.__r_.__value_.__l.__data_);
      }

      else if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) == 11)
      {
        v10 = p.__pn_.__r_.__value_.__r.__words[0] == 0x6A2E6769666E6F63 && *(p.__pn_.__r_.__value_.__r.__words + 3) == 0x6E6F736A2E676966;
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::path::filename[abi:ne200100](&v9->__p_, &buf);
      std::__fs::filesystem::path::extension[abi:ne200100](&__p, &buf);
      v13 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&p.__pn_, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        p = __p;
      }

      if ((SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) == 8)
        {
          v14 = p.__pn_.__r_.__value_.__r.__words[0] == 0x737468676965772ELL;
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v14 = 0;
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_49;
          }
        }

LABEL_48:
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        goto LABEL_49;
      }

      v14 = p.__pn_.__r_.__value_.__l.__size_ == 8 && *p.__pn_.__r_.__value_.__l.__data_ == 0x737468676965772ELL;
      operator delete(p.__pn_.__r_.__value_.__l.__data_);
      if (v13 < 0)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__pn_.__r_.__value_.__l.__data_);
      }

      if (v11 || v14)
      {
        if (SHIBYTE(v9->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&p.__pn_, v9->__p_.__pn_.__r_.__value_.__l.__data_, v9->__p_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          p = v9->__p_;
        }

        v15 = v5;
        shaHashForFileContent(&p, [v5 mutableBytes], objc_msgSend(v5, "length"), a2, &__p);
        if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(p.__pn_.__r_.__value_.__l.__data_);
        }

        if (v38 == 1)
        {
          if (SHIBYTE(v9->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&p.__pn_, v9->__p_.__pn_.__r_.__value_.__l.__data_, v9->__p_.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            p = v9->__p_;
          }

          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v49.__pn_, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v49 = __p;
          }

          v52.__data_ = v45;
          v52.__size_ = &p;
          if (!*std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::__find_equal<std::__fs::filesystem::path>(&v43, v52))
          {
            operator new();
          }

          if (SHIBYTE(v49.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v16 = *a2;
          if (v16 >= 8)
          {
            v18 = SNLPOSLoggerForCategory(4);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__pn_.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
              WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2048;
              *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v16;
              _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &buf, 0x16u);
            }

            v17 = "<UNDEFINED_COMPONENT>";
          }

          else
          {
            v17 = off_2784B6F30[v16];
          }

          std::string::basic_string[abi:ne200100]<0>(&p, v17);
          v19 = SNLPOSLoggerForCategory(4);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if ((p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &p;
            }

            else
            {
              p_p = p.__pn_.__r_.__value_.__r.__words[0];
            }

            if (SHIBYTE(v9->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf.__pn_, v9->__p_.__pn_.__r_.__value_.__l.__data_, v9->__p_.__pn_.__r_.__value_.__l.__size_);
            }

            else
            {
              buf.__pn_ = v9->__p_;
            }

            p_buf = &buf;
            if ((buf.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_buf = buf.__pn_.__r_.__value_.__r.__words[0];
            }

            v45[0] = 136315394;
            *&v45[1] = p_p;
            v46 = 2080;
            v47 = p_buf;
            _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_ERROR, "[%s] Error while calculating hash of file %s", v45, 0x16u);
            if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__pn_.__r_.__value_.__l.__data_);
            }
          }
        }

        if (SHIBYTE(p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(p.__pn_.__r_.__value_.__l.__data_);
        }

        if (v38 == 1 && SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }
      }

      std::__fs::filesystem::recursive_directory_iterator::__increment(&v39, 0);
    }

    if (v39.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39.__imp_.__cntrl_);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    v23 = v43;
    if (v43 == v44)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = std::__string_hash<char>::operator()[abi:ne200100](&p, (v23 + 7));
        v26 = v23[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v23[2];
            v10 = *v27 == v23;
            v23 = v27;
          }

          while (!v10);
        }

        v24 ^= v25;
        v23 = v27;
      }

      while (v27 != v44);
      v23 = v43;
    }

    a3[1] = 0;
    v28 = a3 + 1;
    a3[2] = 0;
    *a3 = a3 + 1;
    if (v23 != v44)
    {
      do
      {
        v29 = a3[1];
        if (*a3 == v28)
        {
          v31 = (a3 + 1);
          if (!v29)
          {
LABEL_113:
            __p.__pn_.__r_.__value_.__r.__words[0] = (a3 + 1);
LABEL_118:
            operator new();
          }
        }

        else
        {
          v30 = a3 + 1;
          if (v29)
          {
            do
            {
              v31 = v29;
              v29 = *(v29 + 8);
            }

            while (v29);
          }

          else
          {
            do
            {
              v31 = v30[2];
              v10 = *v31 == v30;
              v30 = v31;
            }

            while (v10);
          }

          v22.__data_ = (v23 + 4);
          if (!std::__fs::filesystem::operator<[abi:ne200100]((v31 + 32), v22))
          {
            v53.__data_ = &__p;
            v53.__size_ = (v23 + 4);
            v32 = std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::__find_equal<std::__fs::filesystem::path>(a3, v53);
            goto LABEL_117;
          }

          if (!*v28)
          {
            goto LABEL_113;
          }
        }

        __p.__pn_.__r_.__value_.__r.__words[0] = v31;
        v32 = (v31 + 8);
LABEL_117:
        if (!*v32)
        {
          goto LABEL_118;
        }

        v33 = v23[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v23[2];
            v10 = *v34 == v23;
            v23 = v34;
          }

          while (!v10);
        }

        v23 = v34;
      }

      while (v34 != v44);
    }

    a3[3] = v24;
    std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::destroy(v44[0]);
  }

  else
  {
    a3[1] = 0;
    *a3 = a3 + 1;
    a3[2] = 0;
    a3[3] = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22287A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, int a35, __int16 a36, int a37, __int16 a38, __int16 a39, uint64_t a40)
{
  if (SHIBYTE(a39) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v46 = __cxa_begin_catch(a1);
    ComponentString = snlp::common::logging::getComponentString(*v41);
    std::string::basic_string[abi:ne200100]<0>(&a14, ComponentString);
    v48 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      if (a19 >= 0)
      {
        v49 = &a14;
      }

      else
      {
        v49 = a14;
      }

      if (*(a10 + 23) >= 0)
      {
        v50 = a10;
      }

      else
      {
        v50 = *a10;
      }

      v51 = (*(*v46 + 16))(v46);
      LODWORD(__p) = 136315650;
      *(v43 + 4) = v49;
      a36 = 2080;
      *(v43 + 14) = v50;
      a39 = 2080;
      a40 = v51;
      _os_log_impl(&dword_22284A000, v48, OS_LOG_TYPE_ERROR, "[%s] Error iterating over directory %s: %s", &__p, 0x20u);
    }

    v40[1] = 0;
    *v40 = v40 + 1;
    v40[2] = 0;
    v40[3] = 0;
    if (a19 < 0)
    {
      operator delete(a14);
    }

    __cxa_end_catch();
    JUMPOUT(0x22287A724);
  }

  std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::destroy(a28);
  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
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

uint64_t snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getNetworkConfig(uint64_t a1, const void **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 272), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 272), a2);
    if (!v4)
    {
      goto LABEL_27;
    }

    if (*(v4 + 16) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 272), a2);
      if (v5)
      {
        if (*(v5 + 16) != 1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        result = *(v5 + 10);
        goto LABEL_26;
      }

LABEL_27:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  v7 = *(a1 + 32);
  if (v7 >= 8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    v8 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v8 = off_2784B6F30[v7];
  }

  std::string::basic_string[abi:ne200100]<0>(v19, v8);
  std::operator+<char>();
  v10 = std::string::append(&__p, ".\n");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v21, "Note that only parameters of unsigned integer type are currently expected by SiriNaturalLanguageParsing.  This issue will likely cause SiriNaturalLanguageParsing to fail.");
  v13 = *&v12->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v12->__r_.__value_.__l + 2);
  *buf = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = v19;
    if (v20 < 0)
    {
      v15 = v19[0];
    }

    v16 = buf;
    if (buf[23] < 0)
    {
      v16 = *buf;
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = 136315394;
    *(v21.__r_.__value_.__r.__words + 4) = v15;
    WORD2(v21.__r_.__value_.__r.__words[1]) = 2080;
    *(&v21.__r_.__value_.__r.__words[1] + 6) = v16;
    _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "[%s] %s", &v21, 0x16u);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  result = 0;
LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22287AD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::assertAssetVersionValid(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ITFM");
  SNLPAssetVersionChecks::assertAssetVersionValid(__p, this + 52, *(this + 10), this + 88, this + 128);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22287AE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::ModelInterface::ModelInterface(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_2835E2868;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2835E2988;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2835E2988;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sentencepiece::util::Status::Status((a1 + 96));
  sentencepiece::ModelInterface::InitFromMMappedFile(a1, a3, a4, &v8);
  sentencepiece::util::Status::operator=((a1 + 96), &v8);
  sentencepiece::util::Status::~Status(&v8);
  return a1;
}

void sub_22287AF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v4 + 96));
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v5);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_22287B050(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_2835E39F0;
  return result;
}

void *sentencepiece::ModelInterface::InitFromMMappedFile@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sentencepiece::mmap_util::DecodePrefix<int>(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      result = sentencepiece::mmap_util::DecodePrefix<int>(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          v7 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v8, v9, &v7, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v8, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::string_view>();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22287B70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::normalizer::Normalizer::Normalizer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2835E29F8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sentencepiece::util::Status::Status((a1 + 56));
  v10 = 0;
  sentencepiece::mmap_util::DecodePrefix<unsigned int>(a3, a4, &v10, &v9);
  sentencepiece::util::Status::operator=((a1 + 56), &v9);
  sentencepiece::util::Status::~Status(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sentencepiece::util::Status::~Status(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sentencepiece::normalizer::Normalizer::Init(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_22287B850(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::Init(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap(a2, a3, v6, &v5, &v4);
    sentencepiece::util::Status::operator=((a1 + 56), &v4);
    sentencepiece::util::Status::~Status(&v4);
    if (!*(a1 + 56))
    {
      operator new();
    }
  }
}

void sub_22287BA10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::GetPieceSize(sentencepiece::SentencePieceProcessor *this)
{
  (*(*this + 88))(&v17);
  v2 = v17;
  sentencepiece::util::Status::~Status(&v17);
  if (!v2)
  {
    return (*(**(this + 1) + 128))(*(this + 1));
  }

  if (sentencepiece::logging::GetMinLogLevel(v3) <= 2)
  {
    v16 = 0;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x223DC4920](v5, 961);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    (*(*this + 88))(&v17, this);
    v11 = sentencepiece::util::Status::error_message(&v17);
    v12 = strlen(v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nReturns default value ", 23);
    MEMORY[0x223DC4920](v14, 0);
    sentencepiece::util::Status::~Status(&v17);
    sentencepiece::error::Die::~Die(&v16);
  }

  return 0;
}

void sentencepiece::ModelFactory::Create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16[1] = a2;
  v16[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    absl::make_unique<sentencepiece::bpe::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (!v6)
  {
    absl::make_unique<sentencepiece::unigram::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (sentencepiece::logging::GetMinLogLevel(v6) <= 2)
  {
    LOBYTE(v16[0]) = 0;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_factory.cc", 16);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x223DC4920](v8, 61);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "LOG(", 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ERROR", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown model_type: ", 20);
    v15 = (*(*a1 + 80))(a1);
    MEMORY[0x223DC4930](v14, v15);
    sentencepiece::error::Die::~Die(v16);
  }

  *a4 = 0;
}

void sub_22287BDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::error::Die::~Die(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::SentencePieceProcessor::status@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 2))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sentencepiece::util::Status::~Status(a2);
        result = (*(**(this + 2) + 24))(*(this + 2));
        if (!*a2)
        {
          sentencepiece::util::Status::~Status(a2);

          return sentencepiece::util::Status::Status(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x223DC4920](&v10, 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "normalizer_", 11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Normalizer is not initialized.", 30);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x223DC4920](&v10, 319);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "model_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Model is not initialized.", 25);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v14);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DC4B90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_22287C2C8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
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
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
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

void sub_22287C56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *std::unique_ptr<nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 240));
    v4 = (v2 + 216);
    std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 215) < 0)
    {
      operator delete(*(v2 + 192));
    }

    v3 = *(v2 + 184);
    *(v2 + 184) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v2 + 144);
    if (*(v2 + 143) < 0)
    {
      operator delete(*(v2 + 120));
    }

    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

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

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t SNLPAssetVersionChecks::isAssetVersionValid(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 4);
  if (v10 == 1 && std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(*a4, *(a4 + 8), *a2) || std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(*a5, *(a5 + 8), *(a3 + 16)))
  {
    result = 1;
  }

  else
  {
    if (v10)
    {
      std::to_string(&v56, *a2);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v56, "unknown");
    }

    v12 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      std::operator+<char>();
      v14 = std::string::append(&v45, " asset (generation: ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v56;
      }

      else
      {
        v16 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v46, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v47, ", NCV: ");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v44, *(a3 + 16));
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v44;
      }

      else
      {
        v22 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v44.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&v48, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = std::string::append(&v49, ") is incompatible with the inference runtime (compatible generations: [");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      uint32SetAsString(a4, &v43);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v43;
      }

      else
      {
        v28 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v43.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v50, v28, v29);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v51, "], compatible NCV numbers: [");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      uint32SetAsString(a5, &__p);
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
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __p.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v52, p_p, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v53, "])");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v55 = v38->__r_.__value_.__r.__words[2];
      v54 = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = &v54;
      if (v55 < 0)
      {
        v40 = v54;
      }

      *buf = 136315394;
      v58 = v13;
      v59 = 2080;
      v60 = v40;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", buf, 0x16u);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    result = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22287CE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (*(v67 - 153) < 0)
  {
    operator delete(*(v67 - 176));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v67 - 185) < 0)
  {
    operator delete(*(v67 - 208));
  }

  if (*(v67 - 217) < 0)
  {
    operator delete(*(v67 - 240));
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
  }

  if (*(v67 - 97) < 0)
  {
    operator delete(*(v67 - 120));
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<nl_sentencepiece::SentencepieceModel>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
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

uint64_t *std::__tree<std::__value_type<std::__fs::filesystem::path,std::string>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::string>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::string>>>::__find_equal<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    size = a2.__size_;
    do
    {
      while (1)
      {
        v6 = v3;
        a2.__data_ = (v3 + 4);
        if (!std::__fs::filesystem::operator<[abi:ne200100](size, a2))
        {
          break;
        }

        v3 = *v6;
        v4 = v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      a2.__data_ = size;
      if (!std::__fs::filesystem::operator<[abi:ne200100]((v6 + 4), a2))
      {
        break;
      }

      v4 = v6 + 1;
      v3 = v6[1];
    }

    while (v3);
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_10:
  *data = v6;
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::__fs::filesystem::path,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::__fs::filesystem::path,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void itfm_inference_orchestrator::vocabulary::Vocabulary::initializeFromStream(uint64_t a1, void *a2)
{
  v4 = 0;
  __p = 0;
  v11 = 0;
  v12 = 0;
  v5 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v6 = std::locale::use_facet(&v13, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v13);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, v7);
    v9 = HIBYTE(v12);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v12 < 0)
    {
      v9 = v11;
    }

    if (v9)
    {
      itfm_inference_orchestrator::vocabulary::Vocabulary::insertToken(a1, &__p, v4++);
    }
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_22287D2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *itfm_inference_orchestrator::vocabulary::Vocabulary::insertToken(uint64_t a1, const void **a2, unint64_t a3)
{
  result = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(a1 + 96, &v9, a2);
  if (!*result)
  {
    operator new();
  }

  v6 = *(a1 + 128);
  if (!v6)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (v8 <= a3)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_9;
      }
    }

    if (v8 >= a3)
    {
      return result;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }
}

void *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
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

void snlp::common::espresso_inference::e5ml::WeightsHandler::recordPortDataTypes(void *a1, E5RT::ExecutionStreamOperation **a2)
{
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "The espresso assets need to be deserialised before the data type of the weights can be determined.");
    exception = __cxa_allocate_exception(0x10uLL);
    if (v15 >= 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13;
    }

    std::string::basic_string[abi:ne200100]<0>(&v12, v11);
    std::runtime_error::runtime_error(exception, &v12);
    exception->__vftable = &unk_2835E9238;
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a2);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a2);
  for (i = *(InputPorts + 16); i; i = *i)
  {
    v7 = i[6];
    v13 = i[5];
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    snlp::common::espresso_inference::e5ml::WeightsHandler::recordDataTypeForPort(a1, i + 2, &v13);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  for (j = *(OutputPorts + 16); j; j = *j)
  {
    v9 = j[6];
    v13 = j[5];
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    snlp::common::espresso_inference::e5ml::WeightsHandler::recordDataTypeForPort(a1, j + 2, &v13);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_22287D74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void snlp::common::asset_logger::SNLPAssetLogger::toStringStream(snlp::common::asset_logger::SNLPAssetLogger *this@<X0>, uint64_t *a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](a2);
  v4 = *this;
  if (v4 >= 8)
  {
    v6 = SNLPOSLoggerForCategory(4);
    v5 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &buf, 0x16u);
    }
  }

  else
  {
    v5 = off_2784B6F30[v4];
  }

  v7 = strlen(v5);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v41 = v7;
  if (v7)
  {
    memcpy(__dst, v5, v7);
  }

  *(__dst + v8) = 0;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "Component: ", 11);
  if ((v41 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v11 = v41;
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "Version: SNLPVersionInfo[train=", 31);
  v14 = MEMORY[0x223DC4930](v13, *(this + 7));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", majorVersion=", 15);
  v16 = MEMORY[0x223DC4930](v15, *(this + 6));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", minorVersion=", 15);
  v18 = MEMORY[0x223DC4930](v17, *(this + 8));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "]\n", 2);
  if (*(this + 64) == 1)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "Bolt task ID: ", 14);
    if ((*(this + 64) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v20 = *(this + 63);
    if (v20 >= 0)
    {
      v21 = this + 40;
    }

    else
    {
      v21 = *(this + 5);
    }

    if (v20 >= 0)
    {
      v22 = *(this + 63);
    }

    else
    {
      v22 = *(this + 6);
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
    v24 = "\n";
    v25 = 1;
  }

  else
  {
    v24 = "Bolt task ID: <missing>";
    v25 = 23;
    v23 = a2 + 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
  if (*(this + 11))
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "Combined Hash: ", 15);
    v27 = MEMORY[0x223DC4940](v26, *(this + 12));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
    v28 = *(this + 9);
    if (v28 != (this + 80))
    {
      do
      {
        if (*(v28 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&buf, *(v28 + 4), *(v28 + 5));
        }

        else
        {
          buf = *(v28 + 32);
        }

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

        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, p_buf, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "=", 1);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v32 = *(v28 + 79);
        if (v32 < 0)
        {
          v33 = *(v28 + 8);
          if (v33)
          {
            goto LABEL_44;
          }
        }

        else if (*(v28 + 79))
        {
          v33 = *(v28 + 8);
LABEL_44:
          if (v32 >= 0)
          {
            v34 = v28 + 56;
          }

          else
          {
            v34 = *(v28 + 7);
          }

          if (v32 >= 0)
          {
            v35 = *(v28 + 79);
          }

          else
          {
            v35 = v33;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, v34, v35);
          goto LABEL_52;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "asset could not be read", 23);
LABEL_52:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "\n", 1);
        v36 = *(v28 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v28 + 2);
            v38 = *v37 == v28;
            v28 = v37;
          }

          while (!v38);
        }

        v28 = v37;
      }

      while (v37 != (this + 80));
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2 + 2, "No assets provided", 18);
  }

  if (v41 < 0)
  {
    operator delete(__dst[0]);
  }

  v39 = *MEMORY[0x277D85DE8];
}

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

uint64_t snlp::common::asset_logger::SNLPAssetLogger::toString(snlp::common::asset_logger::SNLPAssetLogger *this)
{
  snlp::common::asset_logger::SNLPAssetLogger::toStringStream(this, v3);
  std::stringbuf::str();
  v3[0] = *MEMORY[0x277D82818];
  v1 = *(MEMORY[0x277D82818] + 72);
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v3[2] = v1;
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v7);
}

void sub_22287DDD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::encoder::SSUPreprocessor::buildFromAssetsDirectory(snlp::ssu::encoder::SSUPreprocessor *this, const std::__fs::filesystem::path *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 23) >= 0)
    {
      v4 = this;
    }

    else
    {
      v4 = *this;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "Building SSUPreprocessor from assets directory: %s", &buf, 0xCu);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&buf, "spiece.model");
  std::__fs::filesystem::operator/[abi:ne200100](&v8, this, &buf);
  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v8;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v9 = 136315138;
    *&v9[4] = p_p;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Building preprocessor dependency: SentencePiece model using path: %s", v9, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  operator new();
}

void sub_22287E014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModule::reshapeInputDescriptors(snlp::ssu::espresso::SSUNessieModule *this, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  v6 = 0u;
  v7 = 0u;
  v8 = 1065353216;
  v4 = *(this + 53);
  *buf = a2;
  v10 = v4;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, buf, v11, 2uLL);
}

void sub_22287E3E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 - 41) < 0)
  {
    operator delete(*(v16 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v15)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x22287E498);
  }

  __cxa_free_exception(v14);
  goto LABEL_8;
}

void sub_22287E444(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x22287E4C0);
}

void sub_22287E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    operator delete(a12);
  }

  JUMPOUT(0x22287E4B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22287E93C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>((v2 + 2));
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

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void *sentencepiece::util::Status::Status(void *this, const sentencepiece::util::Status *a2)
{
  if (*a2)
  {
    operator new();
  }

  *this = 0;
  return this;
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getPadTokenId(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  v2 = *(this + 1);
  if (v2 && (*(*v2 + 16))(v2))
  {
    v3 = *(this + 2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "[PAD]");
    v4 = (*(**v3 + 504))();
    if (v9 < 0)
    {
      operator delete(__p);
    }

    return v4;
  }

  else
  {
    v6 = *(this + 10);
    result = *(v6 + 112);
    v7 = *(v6 + 120);
  }

  return result;
}

void sub_22287EB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<unsigned long>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t sentencepiece::ModelInterface::PieceToId(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

uint64_t sentencepiece::SentencePieceProcessor::PieceToId(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v21);
  v6 = v21;
  sentencepiece::util::Status::~Status(&v21);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sentencepiece::logging::GetMinLogLevel(v7) <= 2)
  {
    v20 = 0;
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
    v10 = MEMORY[0x223DC4920](v9, 966);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ") ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "LOG(", 4);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ERROR", 5);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") ", 2);
    ((*a1)[11])(&v21, a1);
    v15 = sentencepiece::util::Status::error_message(&v21);
    v16 = strlen(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\nReturns default value ", 23);
    MEMORY[0x223DC4920](v18, 0);
    sentencepiece::util::Status::~Status(&v21);
    sentencepiece::error::Die::~Die(&v20);
  }

  return 0;
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getUnknownTokenId(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  v2 = *(this + 1);
  if (v2 && (*(*v2 + 16))(v2))
  {
    return (*(***(this + 2) + 560))(**(this + 2));
  }

  v4 = *(this + 10);
  result = *(v4 + 96);
  v5 = *(v4 + 104);
  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::unk_id(sentencepiece::ModelInterface **this)
{
  v2 = sentencepiece::ModelInterface::unk_piece(this[1]);
  v3 = strlen(v2);
  v4 = (*(*this + 63))(this, v2, v3);
  if ((*(*this + 66))(this, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

const char *sentencepiece::ModelInterface::unk_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 32))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 32))(*(this + 1));
  }

  else
  {
    return "<unk>";
  }
}

uint64_t sentencepiece::SentencePieceProcessor::IsUnknown(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 144))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x223DC4920](v7, 986);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    MEMORY[0x223DC4920](v16, 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return 0;
}

uint64_t nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::validateBertModelLoading(nlv4_inference_orchestrator::inference_engine::EspressoBertModel **this)
{
  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getUnknownTokenId(this[23]);
  if ((v2 & 1) == 0 || (result = nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getPadTokenId(this[23]), (v4 & 1) == 0))
  {
    v5 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "OWL assets not identified.  If this is a unit test, have you pulled all git lfs assets?  If this is a user request, have you ensured the assets are available on the device?", &v7, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(&v7, "Vocabulary special tokens not properly defined");
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v7);
    exception->__vftable = &unk_2835E6220;
  }

  return result;
}

void sub_22287F4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::ModelInterface::GetPieceSize(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

const char *sentencepiece::SentencePieceProcessor::IdToPiece(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 120))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x223DC4920](v7, 971);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "", 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return "";
}

void *sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sentencepiece::util::Status::Status(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sentencepiece::util::Status::Status(a5, 13, v10, v11);
}

uint64_t sentencepiece::MemoryMappedModelProto::IdToPiece(sentencepiece::MemoryMappedModelProto *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(*(this + 9) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

void **std::unique_ptr<nl_sentencepiece::SentencepieceModel const>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x223DC4D00](v2, 0x1020C403A5D3213);
  }

  return a1;
}

uint64_t *std::unique_ptr<snlp::ssu::espresso::SSUNessieModel const>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
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

  return a1;
}

uint64_t *std::unique_ptr<snlp::ssu::encoder::SSUPreprocessor const>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x223DC4D00](v3, 0x1020C403A5D3213);
    }

    MEMORY[0x223DC4D00](v2, 0x1060C40832E3BDALL);
  }

  return a1;
}

void snlp::ssu::matcher::SSUMatcher::buildFromPaths(char *a1@<X1>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    snlp::ssu::matcher::SSUMatcherDirectories::toString(__p, a1);
    v5 = v11 >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Building an SSUMatcher instance with directories %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(*__p);
    }
  }

  snlp::ssu::cache::SSUCacheDirectory::withDirectory(a1, __p);
  if (*__p)
  {
    operator new();
  }

  v6 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (a1[23] >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    *__p = 136315138;
    *&__p[4] = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "Failed to build cache directory instance using root path: %s", __p, 0xCu);
  }

  *a2 = 0;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_222880040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  snlp::ssu::matcher::SSUMatcherConfig::~SSUMatcherConfig(&a37);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC3400](&a51);
  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::matcher::SSUMatcherDirectories::toString(snlp::ssu::matcher::SSUMatcherDirectories *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "SSUMatcherDirectories[", 22);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "cacheDirectoryPath=", 19);
  v3 = *(this + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = this;
  }

  else
  {
    v4 = *this;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 1);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v4 + v3, 0x22u, 0x5Cu);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", modelAssetsPath=", 18);
  v6 = *(this + 47);
  if (v6 >= 0)
  {
    v7 = this + 24;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 47);
  }

  else
  {
    v8 = *(this + 4);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v5, v7, &v7[v8], 0x22u, 0x5Cu);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", datasetAssetsPath=", 20);
  v12 = *(this + 6);
  v11 = this + 48;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v9, v14, &v14[v15], 0x22u, 0x5Cu);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "]", 1);
  std::stringbuf::str();
  v18[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v16;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v23);
}

void sub_222880440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](v2 + 128);
  _Unwind_Resume(a1);
}

void *std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_222880548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::cache::SSUCacheDirectory::withDirectory(std::__fs::filesystem::path *this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ((this->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    v10 = 136315138;
    v11 = v7;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Creating a cache directory instance with root directory: %s", &v10, 0xCu);
  }

  if (snlp::ssu::cache::initializeDirectoryV3(this, v6))
  {
    operator new();
  }

  v8 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "Failed to initialize cache directory with v3 format", &v10, 2u);
  }

  *a2 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

BOOL snlp::ssu::cache::initializeDirectoryV3(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__status(this, 0);
  if (__p.__r_.__value_.__s.__data_[0] == 2)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::kFormatVersionV3Name);
    std::__fs::filesystem::operator/[abi:ne200100](&v20.__pn_, this, &__p);
    std::__fs::filesystem::__status(&v20, 0);
    v3 = v19;
    if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v3 && v3 != 255)
    {
      v10 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20.__pn_.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "Using existing v3 format directory", &v20, 2u);
      }
    }

    else
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::kFormatVersionV2Name);
      std::__fs::filesystem::operator/[abi:ne200100](&v20.__pn_, this, &__p);
      std::__fs::filesystem::__status(&v20, 0);
      v4 = v19;
      if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v4 && v4 != 255)
      {
        v11 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          if ((this->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = this;
          }

          else
          {
            v13 = this->__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(v20.__pn_.__r_.__value_.__l.__data_) = 136315138;
          *(v20.__pn_.__r_.__value_.__r.__words + 4) = v13;
          _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Migrating existing v2 directory: %s", &v20, 0xCu);
        }

        snlp::ssu::cache::migrateDirectoryV2ToV3(this, v12);
      }

      else
      {
        std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::kFormatVersionV1Name);
        std::__fs::filesystem::operator/[abi:ne200100](&v20.__pn_, this, &__p);
        std::__fs::filesystem::__status(&v20, 0);
        v6 = v19;
        if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v6 && v6 != 255)
        {
          v14 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            if ((this->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = this;
            }

            else
            {
              v16 = this->__pn_.__r_.__value_.__r.__words[0];
            }

            LODWORD(v20.__pn_.__r_.__value_.__l.__data_) = 136315138;
            *(v20.__pn_.__r_.__value_.__r.__words + 4) = v16;
            _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "Migrating existing v1 directory: %s", &v20, 0xCu);
          }

          snlp::ssu::cache::migrateDirectoryV1ToV3(this, v15);
        }

        else
        {
          snlp::ssu::cache::initializeEmptyDirectoryV3(this, v5);
        }
      }
    }

    result = 1;
  }

  else
  {
    v7 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      if ((this->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = this;
      }

      else
      {
        v9 = this->__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(v20.__pn_.__r_.__value_.__l.__data_) = 136315138;
      *(v20.__pn_.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "Not a directory: %s", &v20, 0xCu);
      result = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228809E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 __p, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a2 == 1)
  {
    v22 = __cxa_begin_catch(exception_object);
    v23 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = (*(*v22 + 16))(v22);
      LODWORD(__p) = 136315138;
      *(&__p + 4) = v24;
      _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_ERROR, "Hit filesystem during cache directory initialization with error: %s)", &__p, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x222880898);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_222880B20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *snlp::ssu::cache::SSUCacheDirectory::SSUCacheDirectory(std::string *this, const std::__fs::filesystem::path *a2)
{
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&a2->__pn_.__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  MEMORY[0x223DC49E0](&this[1]);
  return this;
}

void sub_222880B94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::~ContextFeaturizer(void **this)
{
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::~ContextLabelsExtractor((this + 38));
  if (*(this + 303) < 0)
  {
    operator delete(this[35]);
  }

  v2 = this + 32;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table((this + 27));
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

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

void std::vector<std::basic_string<char16_t>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<std::unique_ptr<uaap::AbstractDateTimeHandler>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void uaap::UPDataDetector::~UPDataDetector(uaap::UPDataDetector *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    CFRelease(v7);
  }
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void std::vector<std::pair<float,std::vector<unsigned long>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::pbhandle(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v51 = v2;
  v55 = v1;
  v76 = *MEMORY[0x277D85DE8];
  v3 = SNLPOSLoggerForCategory(7);
  v4 = os_signpost_id_generate(v3);
  v5 = SNLPOSLoggerForCategory(7);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "NLv4 Request Validation", "", &buf, 2u);
    }
  }

  v7 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN NLv4 Request Validation", &buf, 2u);
  }

  nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::assertAssetVersionValid(v55);
  if (!*v51)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "NLv4 request is null");
    std::runtime_error::runtime_error(exception, &buf);
    exception->__vftable = &unk_2835E9238;
  }

  nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::validateRequest(*v51);
  nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::logAssetInfo(v55);
  v65.__r_.__value_.__s.__data_[0] = 0;
  v66 = 0;
  v8 = (*v51)[6];
  if (v8 && (v9 = *(v8 + 16)) != 0 && (std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v65, v9), (v66 & 1) != 0))
  {
    if (_os_feature_enabled_impl())
    {
      if (v66)
      {
        snlp::common::logging::feature_store_utilities::insertNLv4AssetVersionToFeatureStore();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    v10 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "nlu_request_id not found so skipping insertion of asset version into FeatureStore", &buf, 2u);
    }
  }

  v11 = SNLPOSLoggerForCategory(7);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v11))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v12, OS_SIGNPOST_INTERVAL_END, v4, "NLv4 Request Validation", "", &buf, 2u);
    }
  }

  v13 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "END NLv4 Request Validation", &buf, 2u);
  }

  v14 = SNLPOSLoggerForCategory(7);
  v15 = os_signpost_id_generate(v14);
  v16 = SNLPOSLoggerForCategory(7);
  v53 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "NLv4 Reindexation", "", &buf, 2u);
    }
  }

  spid = v15;
  v18 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN NLv4 Reindexation", &buf, 2u);
  }

  v19 = (*v51)[8];
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v54 = v19;
  v20 = *(v19 + 24);
  if (!v20 || (v21 = *(v20 + 24), v22 = *(v20 + 32), v21 == v22))
  {
LABEL_43:
    v39 = SNLPOSLoggerForCategory(7);
    if (v53 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v40 = v39;
      if (os_signpost_enabled(v39))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_signpost_emit_with_name_impl(&dword_22284A000, v40, OS_SIGNPOST_INTERVAL_END, spid, "NLv4 Reindexation", "", &buf, 2u);
      }
    }

    v41 = SNLPOSLoggerForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v41, OS_LOG_TYPE_DEFAULT, "END NLv4 Reindexation", &buf, 2u);
    }

    v42 = SNLPOSLoggerForCategory(7);
    v43 = os_signpost_id_generate(v42);
    v44 = SNLPOSLoggerForCategory(7);
    if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = v44;
      if (os_signpost_enabled(v44))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_signpost_emit_with_name_impl(&dword_22284A000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v43, "NLv4 Matched Span Featurization", "", &buf, 2u);
      }
    }

    v46 = SNLPOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v46, OS_LOG_TYPE_DEFAULT, "BEGIN NLv4 Matched Span Featurization", &buf, 2u);
    }

    v61 = 0;
    v60 = 0;
    v59 = 0;
    v47 = (*v51)[2];
    v48 = (*v51)[3];
    if (v47 != v48)
    {
      v49 = 0;
      do
      {
        if (v49 >= v61)
        {
          v49 = std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(&v59, *v47);
        }

        else
        {
          v49 = MEMORY[0x223DC3160]() + 88;
        }

        v60 = v49;
        ++v47;
      }

      while (v47 != v48);
    }

    (*(**(v55 + 279) + 16))(v58);
    memset(v56, 0, sizeof(v56));
    std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>(v56, v62, v63, 0x8E38E38E38E38E39 * ((v63 - v62) >> 4));
    nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::featurizeSpans(v55, v58, v56, &v65, &v57);
  }

  while (1)
  {
    v23 = *v21;
    if ((~*(*v21 + 92) & 3) != 0)
    {
      break;
    }

    v24 = *(v23 + 72);
    v25 = *(v23 + 76);
    if (v24 > v25 || ((v25 | v24) & 0x80000000) != 0)
    {
      break;
    }

    v26 = *(v54 + 16);
    UnicodeScalarAndUtf8Offsets = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(v26, *(v23 + 72));
    v29 = v28;
    v30 = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(v26, v25);
    v32 = v31;
    MEMORY[0x223DC3240](v72, v23);
    *&v73 = v29;
    *(&v73 + 1) = v32;
    *&v74 = v24;
    *(&v74 + 1) = v25;
    *&v75 = UnicodeScalarAndUtf8Offsets;
    *(&v75 + 1) = v30;
    MEMORY[0x223DC3240](&buf, v72);
    v68 = v73;
    v69 = v74;
    v70 = v75;
    v71 = 1;
    MEMORY[0x223DC3250](v72);
    if ((v71 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v63 >= v64)
    {
      v36 = std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::IndexedToken const&>(&v62, &buf);
    }

    else
    {
      v33 = MEMORY[0x223DC3240]();
      v34 = v68;
      v35 = v70;
      v33[7] = v69;
      v33[8] = v35;
      v33[6] = v34;
      v36 = (v33 + 9);
    }

    v63 = v36;
LABEL_40:
    if (v71 == 1)
    {
      MEMORY[0x223DC3250](&buf);
    }

    if (++v21 == v22)
    {
      goto LABEL_43;
    }
  }

  buf.__r_.__value_.__s.__data_[0] = 0;
  v71 = 0;
LABEL_36:
  v37 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = *(v23 + 64);
    if (*(v38 + 23) < 0)
    {
      v38 = *v38;
    }

    *v72 = 136642819;
    *&v72[4] = v38;
    _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_ERROR, "A token could not be reindexed; %{sensitive}s", v72, 0xCu);
  }

  goto LABEL_40;
}

void sub_222885F58(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x222886444);
}

void sub_222885FE0()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(STACK[0x1240]);
  }

  JUMPOUT(0x222885FFCLL);
}

void sub_222886040()
{
  v2 = STACK[0x440];
  if (STACK[0x440])
  {
    STACK[0x448] = v2;
    operator delete(v2);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v1 + 96));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v0 + 48));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&STACK[0x3B0]);
  JUMPOUT(0x2228863CCLL);
}

void sub_2228860B8()
{
  v0 = STACK[0x3B0];
  if (STACK[0x3B0])
  {
    STACK[0x3B8] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2228863CCLL);
}

void sub_2228860D8()
{
  v0 = STACK[0x478];
  if (STACK[0x478])
  {
    STACK[0x480] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2228863D4);
}

void sub_2228860F8()
{
  v0 = STACK[0x4A8];
  if (STACK[0x4A8])
  {
    STACK[0x4B0] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2228863DCLL);
}

void sub_222886120()
{
  STACK[0x950] = v0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&STACK[0x950]);
  JUMPOUT(0x2228863ECLL);
}

void sub_222886158()
{
  STACK[0x240] = v0;
  if (SLOBYTE(STACK[0x1527]) < 0)
  {
    operator delete(*(v1 - 256));
  }

  if (SLOBYTE(STACK[0x1257]) < 0)
  {
    operator delete(STACK[0x1240]);
  }

  if (LOBYTE(STACK[0x1318]) == 1 && SLOBYTE(STACK[0x1317]) < 0)
  {
    operator delete(STACK[0x1300]);
  }

  JUMPOUT(0x222886330);
}

void sub_222886164()
{
  STACK[0x1300] = v0;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1300]);
  *(v1 - 256) = &STACK[0x1240];
  JUMPOUT(0x22288637CLL);
}

void sub_2228861C8()
{
  v0 = *v1;
  *v1 = 0;
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  v4 = &v2;
  std::vector<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = &v3;
  JUMPOUT(0x22288637CLL);
}

void sub_2228861E8()
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<float,std::vector<unsigned long>>>,std::pair<float,std::vector<unsigned long>>*>>::~__exception_guard_exceptions[abi:ne200100](&STACK[0x950]);
  STACK[0x270] = v0;
  JUMPOUT(0x2228861F8);
}

void sub_222886208()
{
  if (SLOBYTE(STACK[0x13D7]) < 0)
  {
    operator delete(STACK[0x13C0]);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x950]);
  JUMPOUT(0x22288623CLL);
}

void sub_222886228()
{
  if (SLOBYTE(STACK[0x1527]) < 0)
  {
    operator delete(*(v0 - 256));
  }

  if (SLOBYTE(STACK[0x1257]) < 0)
  {
    operator delete(STACK[0x1240]);
  }

  JUMPOUT(0x22288626CLL);
}

void sub_2228862A0()
{
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  JUMPOUT(0x2228863B0);
}

void sub_2228862C0()
{
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  JUMPOUT(0x2228863B8);
}

void sub_222886344()
{
  if (SLOBYTE(STACK[0x1317]) < 0)
  {
    operator delete(STACK[0x1300]);
  }

  *(v0 - 256) = &STACK[0x1240];
  JUMPOUT(0x22288637CLL);
}

void std::vector<std::pair<float,std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<float,std::vector<unsigned long>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void psc_inference_orchestrator::orchestration::PSCOrchestrator::~PSCOrchestrator(psc_inference_orchestrator::orchestration::PSCOrchestrator *this)
{
  *this = &unk_2835E6B00;
  v2 = *(this + 209);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::~ITFMOrchestrator(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E6B00;
  v2 = *(this + 209);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::~ITFMOrchestrator(this);
}

void snlp::common::espresso_inference::e5ml::MILSELFLogger::logSELFSuccess(uint64_t a1, int *a2)
{
  if (!snlp::common::espresso_inference::e5ml::MILSELFLogger::checkContextId(a1))
  {
    return;
  }

  v4 = *(a1 + 112);
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 112))
    {
      snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationEnded(a1, (a1 + 88), a2);
      goto LABEL_7;
    }

LABEL_12:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationEnded((a1 + 88), a2);
LABEL_7:
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 112) = 0;
  }
}

void snlp::common::espresso_inference::e5ml::selflogging::logMilCompilationEnded(snlp::common::espresso_inference::e5ml::selflogging *a1, uint64_t *a2, int *a3)
{
  v4 = *a3;
  v8 = snlp::common::espresso_inference::e5ml::selflogging::objcSISUUIDFromCppUUID(a2);
  v6 = snlp::common::espresso_inference::e5ml::selflogging::convertMetadata(a1, v5);
  if (v4 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v4 == 2);
  }

  [E5MLModuleSELFLoggingUtils logMilCompilationEndedWithMetadata:v6 contextId:v8 acquisitionType:v7];
}

uint64_t snlp::common::espresso_inference::e5ml::MILSELFLogger::checkContextId(snlp::common::espresso_inference::e5ml::MILSELFLogger *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(this + 112);
  if ((v1 & 1) == 0)
  {
    v3 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(this + 30);
      if (v4 >= 8)
      {
        v6 = SNLPOSLoggerForCategory(4);
        v5 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315394;
          v10 = "<UNDEFINED_COMPONENT>";
          v11 = 2048;
          v12 = v4;
          _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v9, 0x16u);
        }
      }

      else
      {
        v5 = off_2784B6F30[v4];
      }

      v9 = 136315138;
      v10 = v5;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "[%s] No context ID was provided for MIL compilation SELF logs.  This will prevent any MIL-related SELF logs from being emitted from SiriNaturalLanguageParsing.", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort(void *a1, const void **a2)
{
  if (!a1[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "The weights handler must be set up before querying port weights.");
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_2835E6B78;
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1, a2))
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v8 = std::string::append(&v12, ")");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v13, " does not have a valid data type.");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v7, &v14);
    v7->__vftable = &unk_2835E6B78;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return *(v4 + 10);
}

void sub_222886A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
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

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::determineWeightType(nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule *this)
{
  v2 = *(this + 22);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "The inference operation must be set up before querying its ports.");
    exception = __cxa_allocate_exception(0x10uLL);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, v14);
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2835E6B78;
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v2);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(this + 22));
  if (!*(InputPorts + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "No input ports found for the NLv4 encoder.");
    v15 = __cxa_allocate_exception(0x10uLL);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v18;
    }

    else
    {
      v16 = v18.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, v16);
    std::runtime_error::runtime_error(v15, &v17);
    v15->__vftable = &unk_2835E6B78;
  }

  v5 = OutputPorts;
  DataTypeForPort = snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort(this + 24, (*(InputPorts + 16) + 16));
  v7 = *(InputPorts + 16);
  if (v7)
  {
    while (1)
    {
      v8 = snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort(this + 24, v7 + 2);
      v9 = v8 != DataTypeForPort;
      if (v8 != DataTypeForPort)
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    while (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort(this + 24, v10 + 2) == DataTypeForPort)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v12 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "The input and output ports do not all expose the same data type. Mixed-type NLv4 encoders are not yet supported.");
    std::runtime_error::runtime_error(v12, &v18);
    v12->__vftable = &unk_2835E9238;
  }

LABEL_10:
  if (v9)
  {
    goto LABEL_12;
  }

  return DataTypeForPort;
}

void sub_222886CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::TransformerDecoderE5MLModule(uint64_t a1, std::string *a2, uint64_t a3, __int128 *a4)
{
  v8 = 0;
  v5 = snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, &v8, a1, a4);
  std::string::basic_string[abi:ne200100]<0>((v5 + 352), "old_prediction");
  std::string::basic_string[abi:ne200100]<0>((a1 + 376), "hidden");
  std::string::basic_string[abi:ne200100]<0>((a1 + 400), "memory");
  std::string::basic_string[abi:ne200100]<0>((a1 + 424), "encodings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 448), "num_of_utterance_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 472), "attention_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 496), "out_predictions");
  std::string::basic_string[abi:ne200100]<0>((a1 + 520), "out_new_hidden");
  std::string::basic_string[abi:ne200100]<0>((a1 + 544), "out_new_memory");
  std::string::basic_string[abi:ne200100]<0>((a1 + 568), "out_new_attention_index");
  v6 = *(a1 + 184);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _os_feature_enabled_impl();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::allocateMemoryToPorts(a1);
  return a1;
}

void sub_222886E98(_Unwind_Exception *a1)
{
  if (*(v1 + 591) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 543) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  if (*(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 471) < 0)
  {
    operator delete(*(v1 + 448));
  }

  if (*(v1 + 447) < 0)
  {
    operator delete(*(v1 + 424));
  }

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

nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator *std::unique_ptr<nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator>::reset[abi:ne200100](nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator **a1, nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::~NLv4InferenceOrchestrator(result);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784B6768, MEMORY[0x277D825F0]);
}

void uaap::UPDataDetector::matchSpans(void *a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v5 = CFStringCreateWithCString(0, a2, 0x8000100u);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = a1[1];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&__dst, L"ADDRESS");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v6, &__dst);
  if (v23 < 0)
  {
    operator delete(__dst);
  }

  v7 = a1[2];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&v20, L"DATE_TIME");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v7, &v20);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  v8 = a1[3];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__p, L"FLIGHT");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v8, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a1[4];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v16, "M");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v9, v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v10 = a1[5];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v14, "N");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v10, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v11 = a1[6];
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v12, L"PHONE_NUMBER");
  uaap::UPDataDetector::matchSpansInner(a1, a3, v11, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v5)
  {
LABEL_17:
    CFRelease(v5);
  }
}

void sub_222887244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v35 - 40) = v34;
  std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100]((v35 - 40));
  if (v33)
  {
    CFRelease(v33);
  }

  _Unwind_Resume(a1);
}

void std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(i))
    {
      i -= 40;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v9 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        std::string::append(this, __str);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_222887430(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(char **a1, char *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  a1[8] = 0;
  v108 = (a1 + 8);
  a1[9] = 0;
  a1[10] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  a1[12] = (MEMORY[0x277D82868] + 16);
  MEMORY[0x223DC4B90](a1 + 13);
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 7) = 0u;
  a1[12] = &unk_2835E6620;
  a1[20] = 0;
  *(a1 + 168) = 0;
  *(a1 + 43) = 24;
  *(a1 + 184) = 0;
  if (!a2)
  {
    goto LABEL_280;
  }

  std::string::basic_string[abi:ne200100]<0>(&v110, a2);
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v112, a1 + 24);
  }

  else
  {
    MEMORY[0x223DC4B90](&v112);
  }

  v4 = std::locale::use_facet(&v112, MEMORY[0x277D82680]);
  std::locale::~locale(&v112);
  __c = (v4->__vftable[2].~facet_0)(v4, 37);
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 88);
  while (1)
  {
    v8 = std::string::find(&v110, __c, v6);
    if (v8 == -1)
    {
      break;
    }

    v9 = v8 + 1;
    v10 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v110.__r_.__value_.__l.__size_;
    }

    if (v9 >= size)
    {
      if (v7)
      {
        v112.__locale_ = &unk_2835E6790;
        v113[0] = v8;
        v113[1] = size;
        boost::throw_exception<boost::io::bad_format_string>(&v112);
      }

      ++v5;
      break;
    }

    v12 = v110.__r_.__value_.__r.__words[0];
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v110;
    }

    else
    {
      v13 = v110.__r_.__value_.__r.__words[0];
    }

    v14 = v13->__r_.__value_.__s.__data_[v9];
    if ((*(&v110.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v14 != *(v110.__r_.__value_.__r.__words[0] + v8))
      {
        v10 = v110.__r_.__value_.__l.__size_;
        goto LABEL_20;
      }

LABEL_18:
      v6 = v8 + 2;
    }

    else
    {
      v12 = &v110;
      if (v14 == v110.__r_.__value_.__s.__data_[v8])
      {
        goto LABEL_18;
      }

LABEL_20:
      v15 = v12 + v9;
      if (v9 != v10)
      {
        v16 = v12 + v10;
        while (1)
        {
          v17 = *v15;
          if (v17 < 0 || (*(&v4[1].~facet + v17) & 0x400) == 0)
          {
            break;
          }

          if (++v15 == v16)
          {
            v15 = v16;
            break;
          }
        }
      }

      v6 = v15 - v13;
      if (v15 - v13 < size && *v15 == __c)
      {
        ++v6;
      }

      ++v5;
    }
  }

  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v112, a1 + 24);
  }

  else
  {
    MEMORY[0x223DC4B90](&v112);
  }

  v18 = std::locale::use_facet(&v112, MEMORY[0x277D82680]);
  v19 = (v18->__vftable[2].~facet_0)(v18, 32);
  v20 = v5;
  std::locale::~locale(&v112);
  v21 = *a1;
  v22 = a1[1];
  if (v22 == *a1)
  {
    LODWORD(v112.__locale_) = -1;
    v117 = 0;
    *v113 = 0u;
    memset(__p, 0, sizeof(__p));
    *&v115 = 0;
    *(&v115 + 1) = 6;
    LOBYTE(v116) = v19;
    HIDWORD(v116) = 0;
    *(&v116 + 4) = 4098;
    v119 = 0x7FFFFFFFFFFFFFFFLL;
    v120 = 0;
    v23 = a1[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v23 - v22) >> 3) < v5)
    {
      if (v22)
      {
        a1[1] = v21;
        operator delete(*a1);
        v23 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      v24 = 0xEEEEEEEEEEEEEEEFLL * (v23 >> 3);
      v25 = 0xDDDDDDDDDDDDDDDELL * (v23 >> 3);
      if (v25 <= v5)
      {
        v25 = v5;
      }

      if (v24 >= 0x111111111111111)
      {
        v26 = 0x222222222222222;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0x222222222222222)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(v26);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    if (v5)
    {
      v31 = 0;
      do
      {
        *(v22 + v31) = v112.__locale_;
        if (SHIBYTE(__p[0]) < 0)
        {
          std::string::__init_copy_ctor_external((v22 + v31 + 8), v113[0], v113[1]);
        }

        else
        {
          v32 = *v113;
          *(v22 + v31 + 24) = __p[0];
          *(v22 + v31 + 8) = v32;
        }

        v33 = v22 + v31;
        if (SHIBYTE(__p[3]) < 0)
        {
          std::string::__init_copy_ctor_external((v33 + 32), __p[1], __p[2]);
        }

        else
        {
          v34 = *&__p[1];
          *(v33 + 48) = __p[3];
          *(v33 + 32) = v34;
        }

        v35 = v22 + v31;
        v36 = v115;
        *(v35 + 72) = v116;
        *(v35 + 56) = v36;
        *(v35 + 88) = 0;
        if (v117 == 1)
        {
          std::locale::locale((v35 + 96), &v118);
          *(v35 + 88) = 1;
        }

        v37 = v119;
        *(v35 + 112) = v120;
        *(v35 + 104) = v37;
        v31 += 120;
      }

      while (120 * v5 != v31);
      v38 = v22 + 120 * v5;
    }

    else
    {
      v38 = v21;
      while (v22 != v38)
      {
        v22 -= 120;
        std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(v22);
      }
    }

    a1[1] = v38;
    if (v117 == 1)
    {
      std::locale::~locale(&v118);
      v117 = 0;
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v113[0]);
    }
  }

  else if (0xEEEEEEEEEEEEEEEFLL * ((v22 - *a1) >> 3) >= v5)
  {
    a1[4] = 0;
    if (v5)
    {
      goto LABEL_55;
    }
  }

  else
  {
    LODWORD(v112.__locale_) = -1;
    v117 = 0;
    *v113 = 0u;
    memset(__p, 0, sizeof(__p));
    *&v115 = 0;
    *(&v115 + 1) = 6;
    LOBYTE(v116) = v19;
    HIDWORD(v116) = 0;
    *(&v116 + 4) = 4098;
    v119 = 0x7FFFFFFFFFFFFFFFLL;
    v120 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(a1, v5, &v112);
    if (v117 == 1)
    {
      std::locale::~locale(&v118);
      v117 = 0;
    }

    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v113[0]);
    }

    a1[4] = 0;
LABEL_55:
    v27 = 0;
    do
    {
      v28 = *a1;
      v29 = &(*a1)[v27];
      *v29 = -1;
      *(v29 + 13) = 0x7FFFFFFFFFFFFFFFLL;
      *(v29 + 28) = 0;
      std::string::resize((v29 + 8), 0, 0);
      std::string::resize((v29 + 32), 0, 0);
      v30 = &v28[v27];
      *(v30 + 56) = xmmword_2229D2980;
      v30[72] = v19;
      *(v30 + 21) = 0;
      *(v30 + 76) = 4098;
      v27 += 120;
      --v20;
    }

    while (v20);
  }

  std::string::resize(v108, 0, 0);
  v39 = 0;
  v40 = 0;
  v102 = 0;
  v103 = -1;
  v100 = 0;
  v101 = 1;
  while (2)
  {
    v41 = v40;
LABEL_78:
    v42 = std::string::find(&v110, __c, v41);
    if (v42 != -1)
    {
      v43 = v42;
      v44 = v108;
      if (v39)
      {
        v44 = &(*a1)[120 * v39 - 88];
      }

      v45 = (v43 + 1);
      v46 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      v47 = &v110;
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v110.__r_.__value_.__r.__words[0];
      }

      if (v45[v47] == v47->__r_.__value_.__s.__data_[v43])
      {
        std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v44, (v47 + v40), (v47 + v45));
        v40 = v43 + 2;
        continue;
      }

      if (v43 != v40)
      {
        std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v44, (v47 + v40), (v47 + v43));
        v46 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        v40 = v43;
      }

      if ((v46 & 0x80) != 0)
      {
        v46 = v110.__r_.__value_.__l.__size_;
        v48 = v110.__r_.__value_.__r.__words[0];
      }

      else
      {
        v48 = &v110;
      }

      v49 = v48 + v45;
      v50 = v48 + v46;
      v111 = v48 + v46;
      v51 = &(*a1)[120 * v39];
      v52 = *(a1 + 88);
      *v51 = -1;
      v104 = v46;
      if (v46 == v45 || (v48 + v46) < (v48 + v45))
      {
        if (v52)
        {
          v112.__locale_ = &unk_2835E6790;
          v113[0] = v45;
          v113[1] = v46;
          boost::throw_exception<boost::io::bad_format_string>(&v112);
        }

LABEL_130:
        v63 = &v110;
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v63 = v110.__r_.__value_.__r.__words[0];
        }

        v41 = v49 - v63;
        goto LABEL_78;
      }

      v105 = v52;
      v107 = *v49;
      v106 = (v4->__vftable[2].~facet_0)(v4, 124);
      v53 = v48 + v45;
      if (v107 == v106)
      {
        if (++v49 >= v50)
        {
          if (v105)
          {
            v112.__locale_ = &unk_2835E6790;
            v113[0] = (v49 - v48);
            v113[1] = v46;
            boost::throw_exception<boost::io::bad_format_string>(&v112);
          }

          goto LABEL_130;
        }

        v53 = v49;
      }

      v54 = *v53;
      if (v54 != (v4->__vftable[2].~facet_0)(v4, 48))
      {
        v55 = *v53;
        if ((v55 & 0x8000000000000000) == 0 && (*(&v4[1].~facet + v55) & 0x400) != 0)
        {
          if (v50 == v53)
          {
            v65 = 0;
LABEL_147:
            if (v50 > v53)
            {
              v98 = *v53;
              if (v98 == (v4->__vftable[2].~facet_0)(v4, 37))
              {
                *v51 = v65 - 1;
                v49 = v53 + 1;
                if (v107 == v106 && (v105 & 1) != 0)
                {
                  v112.__locale_ = &unk_2835E6790;
                  v113[0] = (v49 - v48);
                  v113[1] = v46;
                  boost::throw_exception<boost::io::bad_format_string>(&v112);
                }

                goto LABEL_121;
              }

              v99 = *v53;
              if (v99 != (v4->__vftable[2].~facet_0)(v4, 36))
              {
                *(v51 + 56) = v65;
                *v51 = -1;
                goto LABEL_163;
              }

              *v51 = v65 - 1;
              ++v53;
              goto LABEL_97;
            }
          }

          else
          {
            v65 = 0;
            do
            {
              v66 = *v53;
              if (v66 < 0 || (*(&v4[1].~facet + v66) & 0x400) == 0)
              {
                goto LABEL_147;
              }

              v65 = (v4->__vftable[3].~facet)(v4) + 10 * v65 - 48;
              ++v53;
            }

            while (v53 != v50);
            v53 = v48 + v46;
          }

          if (v105)
          {
            v112.__locale_ = &unk_2835E6790;
            v113[0] = (v53 - v48);
            v113[1] = v46;
            boost::throw_exception<boost::io::bad_format_string>(&v112);
          }

          v68 = &v110;
          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v68 = v110.__r_.__value_.__r.__words[0];
          }

          v41 = v53 - v68;
          goto LABEL_78;
        }
      }

LABEL_97:
      if (v53 == v50)
      {
        goto LABEL_120;
      }

LABEL_98:
      v56 = (v4->__vftable[3].~facet)(v4, *v53, 0);
      if (v56 > 0x2C)
      {
        if (v56 <= 60)
        {
          if (v56 == 45)
          {
            v57 = *(v51 + 76) | 0x20;
            goto LABEL_115;
          }

          if (v56 != 48)
          {
            goto LABEL_144;
          }

          v58 = *(v51 + 112) | 1;
          goto LABEL_117;
        }

        if (v56 == 61)
        {
          v58 = *(v51 + 112) | 4;
          goto LABEL_117;
        }

        if (v56 != 95)
        {
LABEL_144:
          v67 = *v53;
          if (v67 == (v4->__vftable[2].~facet_0)(v4, 42))
          {
            ++v53;
          }

          else if (v53 != v50)
          {
            v69 = *v53;
            if ((v69 & 0x8000000000000000) == 0 && (*(&v4[1].~facet + v69) & 0x400) != 0)
            {
              v53 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(v53, &v111, (v51 + 56), v4);
            }
          }

LABEL_163:
          if (v53 < v50)
          {
            v70 = *v53;
            if (v70 == (v4->__vftable[2].~facet_0)(v4, 46))
            {
              v49 = v53 + 1;
              if (v53 + 1 == v50)
              {
                goto LABEL_173;
              }

              v71 = *v49;
              if (v71 == (v4->__vftable[2].~facet_0)(v4, 42))
              {
                v72 = 0;
                v49 = v53 + 2;
                goto LABEL_174;
              }

              v73 = *v49;
              if (v73 < 0 || (*(&v4[1].~facet + v73) & 0x400) == 0)
              {
LABEL_173:
                v72 = 0;
                *(v51 + 64) = 0;
              }

              else
              {
                v49 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(v53 + 1, &v111, (v51 + 64), v4);
                v72 = 1;
              }
            }

            else
            {
              v72 = 0;
              v49 = v53;
            }

LABEL_174:
            if (v49 == v50)
            {
              goto LABEL_195;
            }

            v74 = 0;
            while (2)
            {
              v75 = (v4->__vftable[3].~facet)(v4, *v49, 0);
              if (v75 <= 0x35)
              {
                switch(v75)
                {
                  case '2':
                    if (v74 != 51)
                    {
                      goto LABEL_197;
                    }

                    break;
                  case '3':
                    if (v74 != 73)
                    {
                      goto LABEL_197;
                    }

                    v74 = 51;
                    goto LABEL_193;
                  case '4':
                    if (v74 != 54)
                    {
LABEL_197:
                      boost::io::detail::maybe_throw_exception(v105, v49 - v48, v104);
                      goto LABEL_121;
                    }

                    break;
                  default:
                    goto LABEL_199;
                }

                v74 = 0;
              }

              else
              {
                if (v75 - 73 > 0x31)
                {
                  goto LABEL_190;
                }

                if (((1 << (v75 - 73)) & 0x2400A80000008) != 0)
                {
                  goto LABEL_193;
                }

                if (v75 != 73)
                {
LABEL_190:
                  if (v75 != 54)
                  {
LABEL_199:
                    v77 = v74 != 73 && v74 != 0;
                    if (v49 < v50 && !v77)
                    {
                      if (v107 == v106 && (v78 = *v49, v78 == (v4->__vftable[2].~facet_0)(v4, 124)))
                      {
                        ++v49;
                      }

                      else
                      {
                        switch((v4->__vftable[3].~facet)(v4, *v49, 0))
                        {
                          case 'A':
                            v82 = *(v51 + 76) | 0x4000;
                            *(v51 + 76) = v82;
                            goto LABEL_232;
                          case 'C':
                          case 'c':
                            *(v51 + 104) = 1;
                            goto LABEL_238;
                          case 'E':
                            v83 = *(v51 + 76) | 0x4000;
                            *(v51 + 76) = v83;
                            goto LABEL_236;
                          case 'F':
                            v81 = *(v51 + 76) | 0x4000;
                            *(v51 + 76) = v81;
                            goto LABEL_229;
                          case 'G':
                            v79 = *(v51 + 76) | 0x4000;
                            goto LABEL_237;
                          case 'S':
                          case 's':
                            if (v72)
                            {
                              *(v51 + 104) = *(v51 + 64);
                            }

                            *(v51 + 64) = 6;
                            goto LABEL_238;
                          case 'T':
                            if (++v49 >= v50)
                            {
                              boost::io::detail::maybe_throw_exception(v105, v49 - v48, v104);
                              goto LABEL_130;
                            }

                            *(v51 + 72) = *v49;
LABEL_220:
                            *(v51 + 112) |= 8u;
                            v80 = -2;
LABEL_234:
                            *v51 = v80;
LABEL_238:
                            v84 = (v49 + 1);
                            if (v107 != v106)
                            {
                              ++v49;
                              goto LABEL_121;
                            }

                            if (v84 != v50)
                            {
                              v85 = *v84;
                              if (v85 == (v4->__vftable[2].~facet_0)(v4, 124))
                              {
                                v49 += 2;
                                goto LABEL_121;
                              }

                              v50 = v49 + 1;
                            }

                            boost::io::detail::maybe_throw_exception(v105, v50 - v48, v104);
                            ++v49;
                            break;
                          case 'X':
                            *(v51 + 76) |= 0x4000u;
                            goto LABEL_223;
                          case 'a':
                            v82 = *(v51 + 76);
LABEL_232:
                            v79 = v82 & 0xFFFFFEB1 | 0x104;
                            goto LABEL_237;
                          case 'b':
                            v79 = *(v51 + 76) | 1;
                            goto LABEL_237;
                          case 'd':
                          case 'g':
                          case 'i':
                          case 'u':
                            goto LABEL_238;
                          case 'e':
                            v83 = *(v51 + 76);
LABEL_236:
                            v79 = v83 | 0x100;
                            goto LABEL_237;
                          case 'f':
                            v81 = *(v51 + 76);
LABEL_229:
                            v79 = v81 | 4;
                            goto LABEL_237;
                          case 'n':
                            v80 = -3;
                            goto LABEL_234;
                          case 'o':
                            v79 = *(v51 + 76) & 0xFFFFFFB5 | 0x40;
                            goto LABEL_237;
                          case 'p':
                          case 'x':
LABEL_223:
                            v79 = *(v51 + 76) & 0xFFFFFFB5 | 8;
LABEL_237:
                            *(v51 + 76) = v79;
                            goto LABEL_238;
                          case 't':
                            *(v51 + 72) = (v4->__vftable[2].~facet_0)(v4, 32);
                            goto LABEL_220;
                          default:
                            boost::io::detail::maybe_throw_exception(v105, v49 - v48, v104);
                            goto LABEL_238;
                        }
                      }

                      goto LABEL_121;
                    }

                    v50 = v49;
LABEL_195:
                    if (v105)
                    {
                      v112.__locale_ = &unk_2835E6790;
                      v113[0] = (v50 - v48);
                      v113[1] = v104;
                      boost::throw_exception<boost::io::bad_format_string>(&v112);
                    }

                    goto LABEL_121;
                  }

                  if (v74 != 73)
                  {
                    goto LABEL_197;
                  }

                  v74 = 54;
                  goto LABEL_193;
                }

                v74 = 73;
              }

LABEL_193:
              if (++v49 == v50)
              {
                v49 = v50;
                goto LABEL_195;
              }

              continue;
            }
          }

          if (v105)
          {
            v112.__locale_ = &unk_2835E6790;
            v113[0] = (v53 - v48);
            v113[1] = v46;
            boost::throw_exception<boost::io::bad_format_string>(&v112);
          }

          v49 = v53;
LABEL_121:
          v59 = &v110;
          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v110.__r_.__value_.__r.__words[0];
          }

          v60 = &(*a1)[120 * v39];
          v61 = *(v60 + 112);
          if ((v61 & 1) == 0)
          {
LABEL_126:
            if ((v61 & 2) == 0)
            {
              goto LABEL_136;
            }

LABEL_127:
            if ((*(v60 + 77) & 8) != 0)
            {
              *(v60 + 112) = v61 & 0xFFFFFFFD;
            }

            goto LABEL_136;
          }

          v62 = *(v60 + 76);
          if ((v62 & 0x20) == 0)
          {
            v61 &= ~2u;
            *(v60 + 112) = v61;
            *(v60 + 72) = 48;
            *(v60 + 76) = v62 & 0xFFFFFF4F | 0x10;
            goto LABEL_126;
          }

          v61 &= ~1u;
          *(v60 + 112) = v61;
          if ((v61 & 2) != 0)
          {
            goto LABEL_127;
          }

LABEL_136:
          v40 = v49 - v59;
          v64 = *v60;
          v41 = v40;
          if (*v60 != -3)
          {
            if (v64 == -2)
            {
              v100 = 1;
              v87 = v102;
              v86 = v103;
            }

            else
            {
              v87 = v102;
              v86 = v103;
              if (v64 == -1)
              {
                v101 = 0;
              }

              else if (v64 > v103)
              {
                v86 = v64;
              }
            }

            v102 = v87 + 1;
            v103 = v86;
            ++v39;
            continue;
          }

          goto LABEL_78;
        }

        v57 = *(v51 + 76) | 0x10;
      }

      else
      {
        if (v56 <= 38)
        {
          if (v56 != 32)
          {
            if (v56 != 35)
            {
              goto LABEL_144;
            }

            v57 = *(v51 + 76) | 0x600;
            goto LABEL_115;
          }

          v58 = *(v51 + 112) | 2;
LABEL_117:
          *(v51 + 112) = v58;
LABEL_118:
          if (++v53 == v50)
          {
            v53 = v48 + v46;
LABEL_120:
            v49 = v53;
            if (v105)
            {
              v112.__locale_ = &unk_2835E6790;
              v113[0] = v46;
              v113[1] = v46;
              boost::throw_exception<boost::io::bad_format_string>(&v112);
            }

            goto LABEL_121;
          }

          goto LABEL_98;
        }

        if (v56 == 39)
        {
          goto LABEL_118;
        }

        if (v56 != 43)
        {
          goto LABEL_144;
        }

        v57 = *(v51 + 76) | 0x800;
      }

LABEL_115:
      *(v51 + 76) = v57;
      goto LABEL_118;
    }

    break;
  }

  v88 = v108;
  if (v39)
  {
    v88 = &(*a1)[120 * v39 - 88];
  }

  v89 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v89 = v110.__r_.__value_.__l.__size_;
  }

  v90 = &v110;
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = v110.__r_.__value_.__r.__words[0];
  }

  std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v88, (v90 + v40), (v90 + v89));
  v91 = v103;
  if ((v101 & 1) == 0)
  {
    if (v103 & 0x80000000) == 0 && (a1[11])
    {
      v112.__locale_ = &unk_2835E6790;
      v113[0] = v103;
      v113[1] = 0;
      boost::throw_exception<boost::io::bad_format_string>(&v112);
    }

    if (v102)
    {
      v92 = 0;
      v93 = *a1;
      do
      {
        if (*v93 == -1)
        {
          *v93 = v92++;
        }

        v93 += 30;
        --v39;
      }

      while (v39);
      v91 = v92 - 1;
    }

    else
    {
      v91 = -1;
    }
  }

  v94 = (v4->__vftable[2].~facet_0)(v4, 32);
  LODWORD(v112.__locale_) = -1;
  v117 = 0;
  *v113 = 0u;
  memset(__p, 0, sizeof(__p));
  *&v115 = 0;
  *(&v115 + 1) = 6;
  LOBYTE(v116) = v94;
  HIDWORD(v116) = 0;
  *(&v116 + 4) = 4098;
  v119 = 0x7FFFFFFFFFFFFFFFLL;
  v120 = 0;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(a1, v102, &v112);
  if (v117 == 1)
  {
    std::locale::~locale(&v118);
    v117 = 0;
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v113[0]);
  }

  v95 = *(a1 + 12);
  if (v100)
  {
    v95 |= 4u;
    *(a1 + 12) = v95;
  }

  *(a1 + 14) = v91 + 1;
  *(a1 + 12) = v95 & 0xFFFFFFFE | v101 & 1;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

LABEL_280:
  v96 = *MEMORY[0x277D85DE8];
  return a1;
}