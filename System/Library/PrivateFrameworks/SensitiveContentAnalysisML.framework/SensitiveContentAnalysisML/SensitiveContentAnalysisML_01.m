void sub_1B8A53D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::E5BufferTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ik6TensorEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  ik::Tensor::Tensor(&this[1]);
  return this;
}

void sub_1B8A53E60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A53F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::default_delete<ik::E5Op>::operator()[abi:ne200100](uint64_t a1, ik::core::E5OpImpl **a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      ik::core::E5OpImpl::~E5OpImpl(v2);
      MEMORY[0x1B8CC7230]();
    }

    JUMPOUT(0x1B8CC7230);
  }
}

void ik::core::E5OpImpl::~E5OpImpl(ik::core::E5OpImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table(this + 24);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t scml::scml_impl::strCat<char const(&)[27],std::string_view &>(void *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, *a3, a3[1]);

  return scml::scml_impl::strCat<>(a1);
}

uint64_t scml::Config::as<std::unordered_map<std::string,scml::Config>>(uint64_t result)
{
  if (*(result + 40) != 5)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(v1, "unexpected type", 15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t scml::strCat<std::string_view const&,char const(&)[11]>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, *a1, a1[1]);
  scml::scml_impl::strCat<char const(&)[11]>(&v7, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v11);
}

void sub_1B8A54378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t scml::Config::as<std::string>(uint64_t result)
{
  if (*(result + 40) != 3)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(v1, "unexpected type", 15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t scml::scml_impl::strCat<char const(&)[11]>(void *a1, char *__s)
{
  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);

  return scml::scml_impl::strCat<>(a1);
}

uint64_t scml::Config::as<std::vector<scml::Config>>(uint64_t result)
{
  if (*(result + 40) != 4)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(v1, "unexpected type", 15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

float scml::Config::as<float>(_DWORD *a1)
{
  v1 = a1[10];
  if (v1 == 1)
  {
    return *a1;
  }

  if (v1 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(a1, "not a float", 11, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1;
}

uint64_t scml::scml_impl::strCat<char const(&)[16],unsigned long,char const(&)[12],unsigned long &>(void *a1, char *__s, void *a3, char *a4, void *a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);
  MEMORY[0x1B8CC70E0](a1, *a3);

  return scml::scml_impl::strCat<char const(&)[12],unsigned long &>(a1, a4, a5);
}

uint64_t scml::scml_impl::strCat<char const(&)[12],unsigned long &>(void *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  MEMORY[0x1B8CC70E0](a1, *a3);

  return scml::scml_impl::strCat<>(a1);
}

uint64_t ik::ArrayView<float,-1>::IndexOf<int,unsigned long>(uint64_t a1, int *a2, void *a3)
{
  if (*(a1 + 40) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid number of indices provided.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return **(a1 + 16) * *a2 + *a3 * *(*(a1 + 16) + 8);
}

void scml::ClipEmbeddingClassifier::Impl::~Impl(void **this)
{
  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::~__hash_table((this + 24));
  v2 = this[23];
  this[23] = 0;
  if (v2)
  {
    std::default_delete<ik::E5Op>::operator()[abi:ne200100]((this + 23), v2);
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

  v3 = this[11];
  if (v3)
  {
    this[12] = v3;
    operator delete(v3);
  }

  v4 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::mutex::~mutex(this);
}

const void **std::__hash_table<std::__hash_value_type<std::string,ik::E5BufferTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::E5BufferTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::E5BufferTensor>>>::find<std::string>(void *a1, const void **a2)
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

uint64_t ik::ArrayView<float,-1>::IndexOf<int,int>(uint64_t a1, int *a2, int *a3)
{
  if (*(a1 + 40) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid number of indices provided.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return **(a1 + 16) * *a2 + *(*(a1 + 16) + 8) * *a3;
}

void scml::ClipImageEncoder::~ClipImageEncoder(scml::ClipImageEncoder *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<scml::ClipImageEncoder::Impl>::operator()[abi:ne200100](this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<scml::ClipImageEncoder::Impl>::operator()[abi:ne200100](this, v1);
  }
}

id scml::ClipImageEncoder::getEmbeddingObservation(scml::ClipImageEncoder *this, CVPixelBufferRef pixelBuffer)
{
  v2 = pixelBuffer;
  v38[2] = *MEMORY[0x1E69E9840];
  v36 = 0;
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v5 = *(*this + 72);
  if (Width != v5)
  {
    v8 = *(*this + 80);
LABEL_6:
    v38[0] = v5;
    v38[1] = v8;
    v10 = scaleCVPixelBuffer(v2, v38);
    v9 = v10;
    v36 = v10;
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Failed to resize pixel buffer");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = *this;
    v2 = v10;
    goto LABEL_8;
  }

  Height = CVPixelBufferGetHeight(v2);
  v7 = *this;
  v8 = *(*this + 80);
  if (Height != v8)
  {
    v5 = *(v7 + 72);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:
  std::mutex::lock(v7);
  v11 = *(*this + 64);
  v35 = 0;
  v30 = v11;
  v12 = [v11 processImage:v2 withOptions:MEMORY[0x1E695E0F8] error:&v35];
  v13 = v35;
  v29 = v13;
  if (!v12)
  {
    v27 = v13;
    v21 = __cxa_allocate_exception(0x18uLL);
    v22 = scml::Exception::~Exception;
    scml::makeException("Embedding query failed", 0x16uLL, v27, v21);
LABEL_24:
    __cxa_throw(v21, v23, v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = *v32;
LABEL_11:
  v17 = 0;
  while (1)
  {
    if (*v32 != v16)
    {
      objc_enumerationMutation(v14);
    }

    v18 = *(*(&v31 + 1) + 8 * v17);
    v19 = [v18 data];
    v20 = [v19 length] == 0;

    if (!v20)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (!v15)
      {
LABEL_17:

        v21 = __cxa_allocate_exception(0x10uLL);
        v22 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(v21, "Embedding query failed: no embedding in result");
        v23 = MEMORY[0x1E69E5408];
        goto LABEL_24;
      }

      goto LABEL_11;
    }
  }

  v24 = v18;

  std::mutex::unlock(v7);
  v36 = 0;
  if (v9)
  {
    CVPixelBufferRelease(v9);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void sub_1B8A54CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __CVBuffer *a20)
{
  __cxa_free_exception(v20);
  std::unique_ptr<__CVBuffer,scml::NonNullDeleter<&(CVPixelBufferRelease)>>::reset[abi:ne200100](&a20, 0);
  _Unwind_Resume(a1);
}

void std::unique_ptr<__CVBuffer,scml::NonNullDeleter<&(CVPixelBufferRelease)>>::reset[abi:ne200100](__CVBuffer **a1, __CVBuffer *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CVPixelBufferRelease(v3);
  }
}

void scml::ClipImageEncoder::getEmbedding(scml::ClipImageEncoder *this@<X0>, __CVBuffer *a2@<X1>, const void **a3@<X8>)
{
  v4 = scml::ClipImageEncoder::getEmbeddingObservation(this, a2);
  scml::ClipImageEncoder::toEmbeddingVec(v4, a3);
}

void scml::ClipImageEncoder::toEmbeddingVec(void *a1@<X0>, const void **a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v45 = v3;
  std::vector<float>::reserve(a2, [v3 count]);
  v4 = [v45 type];
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v46 = [v45 type];
      scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("Unhandled VCPImageEmbeddingObservation type: ", &v46, &v47);
      std::runtime_error::runtime_error(exception, &v47);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = [v45 data];
    v6 = [v5 length];
    v7 = [v45 count];

    if (v6 == 4 * v7)
    {
      v8 = [v45 data];
      v9 = [v8 bytes];

      for (i = 0; i < [v45 count]; ++i)
      {
        v12 = a2[1];
        v11 = a2[2];
        if (v12 >= v11)
        {
          v14 = *a2;
          v15 = v12 - *a2;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v19);
          }

          *(4 * v16) = *(v9 + 4 * i);
          v13 = 4 * v16 + 4;
          memcpy(0, v14, v15);
          v20 = *a2;
          *a2 = 0;
          a2[1] = v13;
          a2[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = *(v9 + 4 * i);
          v13 = (v12 + 4);
        }

        a2[1] = v13;
      }

      goto LABEL_35;
    }

LABEL_41:
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Unexpected embedding length");
    __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v21 = [v45 data];
  v22 = [v21 length];
  v23 = [v45 count];

  if (v22 != 2 * v23)
  {
    goto LABEL_41;
  }

  v24 = [v45 data];
  v25 = [v24 bytes];

  for (j = 0; j < [v45 count]; ++j)
  {
    _H0 = *(v25 + 2 * j);
    __asm { FCVT            S8, H0 }

    v34 = a2[1];
    v33 = a2[2];
    if (v34 >= v33)
    {
      v36 = *a2;
      v37 = v34 - *a2;
      v38 = v37 >> 2;
      v39 = (v37 >> 2) + 1;
      if (v39 >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v40 = v33 - v36;
      if (v40 >> 1 > v39)
      {
        v39 = v40 >> 1;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v41 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v39;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v41);
      }

      *(4 * v38) = _S8;
      v35 = 4 * v38 + 4;
      memcpy(0, v36, v37);
      v42 = *a2;
      *a2 = 0;
      a2[1] = v35;
      a2[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      *v34 = _S8;
      v35 = (v34 + 4);
    }

    a2[1] = v35;
  }

LABEL_35:
}

void sub_1B8A551C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      v21 = *v17;
      if (*v17)
      {
        *(v17 + 8) = v21;
        operator delete(v21);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t scml::ClipImageEncoder::embeddingVersion(void *__s1, size_t __n)
{
  v9[0] = __s1;
  v9[1] = __n;
  v4 = &qword_1E7EB3AC8;
  v5 = 128;
  while (__n != *v4 || memcmp(__s1, *(v4 - 1), __n))
  {
    v4 += 4;
    v5 -= 32;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      scml::strCat<char const(&)[27],std::string_view &>("Unsupported embedding version: ", v9, &v8);
      std::runtime_error::runtime_error(exception, &v8);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return *(v4 - 2);
}

void sub_1B8A55328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

char *scml::ClipImageEncoder::embeddingVersionString@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v9 = result;
  v3 = &off_1E7EB3AC0;
  v4 = 128;
  while (*(v3 - 1) != result)
  {
    v3 += 4;
    v4 -= 32;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("Unsupported embedding version: ", &v9, &v8);
      std::runtime_error::runtime_error(exception, &v8);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v6 = v3[1];
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = *v3;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a2[23] = v6;
  if (v6)
  {
    result = memmove(a2, v7, v6);
  }

  a2[v6] = 0;
  return result;
}

void sub_1B8A55488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  scml::scml_impl::strCat<char const(&)[12],unsigned long &>(&v7, a1, a2);
  std::ostringstream::str[abi:ne200100](&v7, a3);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v11);
}

void sub_1B8A55618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t scml::ClipImageEncoder::imageWidth(uint64_t a1)
{
  v6 = a1;
  v2 = 128;
  while (*v1 != a1)
  {
    v1 += 4;
    v2 -= 32;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("Unsupported embedding version: ", &v6, &v5);
      std::runtime_error::runtime_error(exception, &v5);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return *(v1 + 6);
}

void sub_1B8A556DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t scml::ClipImageEncoder::imageHeight(uint64_t a1)
{
  v6 = a1;
  v2 = 128;
  while (*v1 != a1)
  {
    v1 += 4;
    v2 -= 32;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("Unsupported embedding version: ", &v6, &v5);
      std::runtime_error::runtime_error(exception, &v5);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return *(v1 + 7);
}

void sub_1B8A557C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t scml::ClipImageEncoder::Impl::Impl(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  if (!getVCPImageEmbeddingRequestClass())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get class VCPImageEmbeddingRequest");
    goto LABEL_11;
  }

  v4 = objc_alloc(getVCPImageEmbeddingRequestClass());
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;

  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create VCPImageEmbeddingRequest");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v6 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
  v20 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr)
  {
    v7 = MediaAnalysisLibrary();
    v18[3] = dlsym(v7, "VCPRequestRevisionPropertyKey");
    getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = v18[3];
    v6 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v8 = *v6;
  v21 = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v22[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v11 = [*(a1 + 64) initWithOptions:v10];
  v12 = *(a1 + 64);
  *(a1 + 64) = v11;

  if (!*(a1 + 64))
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Failed to init VCPImageEmbeddingRequest");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 72) = scml::ClipImageEncoder::imageWidth(a2);
  *(a1 + 80) = scml::ClipImageEncoder::imageHeight(a2);

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B8A55B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v18);

  std::mutex::~mutex(v16);
  _Unwind_Resume(a1);
}

id getVCPImageEmbeddingRequestClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPImageEmbeddingRequestClass(void)::softClass;
  v7 = getVCPImageEmbeddingRequestClass(void)::softClass;
  if (!getVCPImageEmbeddingRequestClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL32getVCPImageEmbeddingRequestClassv_block_invoke;
    v3[3] = &unk_1E7EB3B40;
    v3[4] = &v4;
    ___ZL32getVCPImageEmbeddingRequestClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B8A55C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL32getVCPImageEmbeddingRequestClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPImageEmbeddingRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPImageEmbeddingRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL32getVCPImageEmbeddingRequestClassv_block_invoke_cold_1();
    return MediaAnalysisLibrary();
  }

  return result;
}

uint64_t MediaAnalysisLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL24MediaAnalysisLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7EB3B60;
    v6 = 0;
    MediaAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL24MediaAnalysisLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL41getVCPRequestRevisionPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestRevisionPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::default_delete<scml::ClipImageEncoder::Impl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    std::mutex::~mutex(a2);

    JUMPOUT(0x1B8CC7230);
  }
}

void sub_1B8A58564(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  a45 = &a37;
  std::vector<std::pair<unsigned long,std::string>>::__destroy_vector::operator()[abi:ne200100](&a45);
  scml::SignpostInterval::~SignpostInterval(&STACK[0x2B0]);
  scml::Config::~Config(&STACK[0x220]);
  if (a2 == 2)
  {
    v48 = __cxa_begin_catch(a1);
    if (a10)
    {
      *a10 = scml::error(0x10u, v48);
    }

    v49 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [SCMLImageSanitizer initWithConfiguration:v48 error:v49];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A583F0);
  }

  scml::SignpostInterval::~SignpostInterval(&STACK[0x280]);

  _Unwind_Resume(a1);
}

uint64_t scml::Config::get<BOOL>(uint64_t a1, const void *a2, size_t a3, char *a4)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v18 = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  *(__dst + a3) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v9, __dst);
  v11 = v10;
  if (v18 < 0)
  {
    operator delete(__dst[0]);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if (v10)
  {
LABEL_9:
    v12 = scml::Config::as<BOOL>((v11 + 5));
    return v12 & 1;
  }

  if (a4[1] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::strCat<std::string_view const&,char const(&)[11]>(v19, " not found", __dst);
    if ((v18 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = __dst[1];
    }

    scml::Config::error(a1, v15, v16, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = *a4;
  return v12 & 1;
}

void sub_1B8A58E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

id anonymous namespace::significantEventRequest(_anonymous_namespace_ *this)
{
  v1 = objc_alloc_init(MEMORY[0x1E69843F0]);
  [v1 setRevision:2];

  return v1;
}

scml::ClipEmbeddingClassifier **std::unique_ptr<scml::ClipEmbeddingClassifier>::~unique_ptr[abi:ne200100](scml::ClipEmbeddingClassifier **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    scml::ClipEmbeddingClassifier::~ClipEmbeddingClassifier(v2);
    MEMORY[0x1B8CC7230]();
  }

  return a1;
}

scml::ClipImageEncoder **std::unique_ptr<scml::ClipImageEncoder>::~unique_ptr[abi:ne200100](scml::ClipImageEncoder **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    scml::ClipImageEncoder::~ClipImageEncoder(v2);
    MEMORY[0x1B8CC7230]();
  }

  return a1;
}

void sub_1B8A592C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{

  _Unwind_Resume(a1);
}

void sub_1B8A5A2A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  __cxa_free_exception(v59);

  scml::SignpostInterval::~SignpostInterval(&a59);
  JUMPOUT(0x1B8A5A5B8);
}

void sub_1B8A5A3F0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, scml::ClipEmbeddingClassifier *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  scml::ClipEmbeddingClassifier::PredictResult::~PredictResult(&a59);
  if (a2 != 1)
  {

    JUMPOUT(0x1B8A5A48CLL);
  }

  v70 = __cxa_begin_catch(a1);
  exception = __cxa_allocate_exception(0x18uLL);
  v72 = scml::ClipEmbeddingClassifier::name(a14);
  scml::strCat<char const(&)[47],std::string const&>("Failed to compute ", v72, &a59);
  if (a64 >= 0)
  {
    v73 = &a59;
  }

  else
  {
    v73 = a59;
  }

  if (a64 >= 0)
  {
    v74 = a64;
  }

  else
  {
    v74 = a60;
  }

  scml::makeException(v73, v74, v70, exception);
}

void sub_1B8A5A40C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A5A41C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  scml::ClipEmbeddingClassifier::PredictResult::~PredictResult(&a59);
  if (a2 != 1)
  {

    JUMPOUT(0x1B8A5A48CLL);
  }

  JUMPOUT(0x1B8A5A4A8);
}

void sub_1B8A5A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  scml::SignpostInterval::~SignpostInterval((v14 - 160));
  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(va);
  JUMPOUT(0x1B8A5A5B0);
}

void sub_1B8A5A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
    if ((v65 & 1) == 0)
    {
LABEL_6:
      __cxa_end_catch();
      JUMPOUT(0x1B8A5A484);
    }
  }

  else if (!v65)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v64);
  goto LABEL_6;
}

void sub_1B8A5A574(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(&a23);

  scml::SignpostInterval::~SignpostInterval(&a49);
  if (a2 == 1)
  {
    v52 = __cxa_begin_catch(a1);
    if (a12)
    {
      *a12 = scml::error(0x11u, v52);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A5A1ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A5A580(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(&a17);
  scml::SignpostInterval::~SignpostInterval(va);

  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    if (a6)
    {
      *a6 = scml::error(0x11u, v45);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A5A1ACLL);
  }

  JUMPOUT(0x1B8A5A610);
}

void sub_1B8A5A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  __cxa_end_catch();

  JUMPOUT(0x1B8A5A620);
}

uint64_t anonymous namespace::resolveBackends(int a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a1 != 3)
  {
    if ((a1 | 2) == 6)
    {
      return 1;
    }

    a2 = +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolveViolenceAndGoreBackend]| 3;
    if (a5)
    {
      if ((a3 & 0x100000000) == 0)
      {
        a2 |= +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolvePrepubescentBackend];
        goto LABEL_9;
      }

      if (a3 <= 9 && ((1 << a3) & 0x31E) != 0)
      {
        a2 |= +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolvePrepubescentBackend];
      }
    }

    else if ((a3 & 0x100000000) == 0)
    {
LABEL_9:
      a2 |= +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolveFlagsAndMapsBackend];
      if ((a4 & 1) == 0)
      {
        return a2;
      }

LABEL_21:
      a2 |= +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolveStructuralIntegrityBackend];
      return a2;
    }

    if (a3 <= 9 && ((1 << a3) & 0x31E) != 0)
    {
      a2 |= +[_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend resolveFlagsAndMapsBackend];
      if ((a4 & 1) == 0)
      {
        return a2;
      }

      if ((a3 - 5) > 0xFFFFFFFD)
      {
        goto LABEL_21;
      }
    }

    else if ((a4 & 1) == 0)
    {
      return a2;
    }

    if (a3 != 9)
    {
      return a2;
    }

    goto LABEL_21;
  }

  return a2;
}

void sub_1B8A5ACEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  __p = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned long,std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<unsigned long,std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<unsigned long,std::string>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::pair<unsigned long,std::string>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,std::string> const*,std::pair<unsigned long,std::string> const*>(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<unsigned long,std::string>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<unsigned long,std::string>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v17 = a2;
      v18 = *a1;
      do
      {
        v19 = *v17;
        v17 += 4;
        *v18 = v19;
        v18 += 4;
        std::string::operator=((v8 + 8), (v6 + 1));
        v8 = v18;
        v6 = v17;
      }

      while (v17 != a3);
      v12 = a1[1];
      v8 = v18;
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
      }

      v12 -= 4;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = v12 + a2 - v8;
    if (v12 != v8)
    {
      v14 = a2;
      v15 = *a1;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
        std::string::operator=((v8 + 8), (v6 + 1));
        v8 = v15;
        v6 = v14;
      }

      while (v14 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string> const*,std::pair<unsigned long,std::string> const*,std::pair<unsigned long,std::string>*>(a1, v13, a3, v12);
  }
}

void std::vector<std::pair<unsigned long,std::string>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<unsigned long,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string> const*,std::pair<unsigned long,std::string> const*,std::pair<unsigned long,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = (v4 + 1);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        v4[3] = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 4;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

void std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::unique_ptr<scml::ClipEmbeddingClassifier>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned long,std::unique_ptr<scml::ClipEmbeddingClassifier>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::unique_ptr<scml::ClipEmbeddingClassifier>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned long,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t anonymous namespace::getIvsThresholdValue(_anonymous_namespace_ *this, const scml::Config *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v19 = 1;
  v3 = scml::Config::get<std::string>(this, "classification_mode", 0x13uLL, &__p);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v20.__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&v20.__r_.__value_.__l.__data_ = v4;
  }

  if (v19 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v20.__r_.__value_.__l.__size_ > 10)
    {
      if (v20.__r_.__value_.__l.__size_ != 11)
      {
        if (v20.__r_.__value_.__l.__size_ == 14)
        {
          if (*v20.__r_.__value_.__l.__data_ != 0x6572705F68676968 || *(v20.__r_.__value_.__r.__words[0] + 6) != 0x6E6F697369636572)
          {
            goto LABEL_67;
          }

          v7 = 1;
        }

        else
        {
          if (v20.__r_.__value_.__l.__size_ != 20)
          {
            goto LABEL_67;
          }

          v8 = *v20.__r_.__value_.__l.__data_ == 0x69685F7265707573 && *(v20.__r_.__value_.__r.__words[0] + 8) == 0x69636572705F6867;
          if (!v8 || *(v20.__r_.__value_.__r.__words[0] + 16) != 1852795251)
          {
            goto LABEL_67;
          }

          v7 = 0;
        }

LABEL_65:
        operator delete(v20.__r_.__value_.__l.__data_);
        return v7;
      }

      v10 = v20.__r_.__value_.__r.__words[0];
LABEL_52:
      v12 = v10->__r_.__value_.__r.__words[0];
      v13 = *(v10->__r_.__value_.__r.__words + 3);
      if (v12 != 0x6365725F68676968 || v13 != 0x6C6C616365725F68)
      {
        goto LABEL_67;
      }

      v7 = 3;
      if ((*(&v20.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v7;
      }

      goto LABEL_65;
    }

    if (v20.__r_.__value_.__l.__size_)
    {
      if (v20.__r_.__value_.__l.__size_ != 8 || *v20.__r_.__value_.__l.__data_ != 0x6465636E616C6162)
      {
        goto LABEL_67;
      }

      v7 = 2;
      goto LABEL_65;
    }

LABEL_42:
    __p.__r_.__value_.__s.__data_[0] = 0;
    __p.__r_.__value_.__s.__data_[8] = 0;
    v7 = scml::Config::get<double>(this, "threshold", 9uLL, &__p);
    if ((*(&v20.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v7;
    }

    goto LABEL_65;
  }

  if (HIBYTE(v20.__r_.__value_.__r.__words[2]) <= 0xAu)
  {
    if (*(&v20.__r_.__value_.__s + 23))
    {
      if (HIBYTE(v20.__r_.__value_.__r.__words[2]) != 8 || v20.__r_.__value_.__r.__words[0] != 0x6465636E616C6162)
      {
        goto LABEL_67;
      }

      return 2;
    }

    goto LABEL_42;
  }

  if (HIBYTE(v20.__r_.__value_.__r.__words[2]) == 11)
  {
    v10 = &v20;
    goto LABEL_52;
  }

  if (HIBYTE(v20.__r_.__value_.__r.__words[2]) == 14)
  {
    if (v20.__r_.__value_.__r.__words[0] == 0x6572705F68676968 && *(v20.__r_.__value_.__r.__words + 6) == 0x6E6F697369636572)
    {
      return 1;
    }

LABEL_67:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (HIBYTE(v20.__r_.__value_.__r.__words[2]) != 20)
  {
    goto LABEL_67;
  }

  v5 = v20.__r_.__value_.__r.__words[0] == 0x69685F7265707573 && v20.__r_.__value_.__l.__size_ == 0x69636572705F6867;
  if (!v5 || LODWORD(v20.__r_.__value_.__r.__words[2]) != 1852795251)
  {
    goto LABEL_67;
  }

  return 0;
}

void sub_1B8A5BE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double scml::Config::get<double>(uint64_t a1, const void *a2, size_t a3, _BYTE *a4)
{
  v18[0] = a2;
  v18[1] = a3;
  v8 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v17 = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  *(__dst + a3) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v9, __dst);
  v11 = v10;
  if (v17 < 0)
  {
    operator delete(__dst[0]);
    if (v11)
    {
      return scml::Config::as<double>(v11 + 10);
    }
  }

  else if (v10)
  {
    return scml::Config::as<double>(v11 + 10);
  }

  if (a4[8] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::strCat<std::string_view const&,char const(&)[11]>(v18, " not found", __dst);
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    scml::Config::error(a1, v14, v15, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a4;
}

void sub_1B8A5C090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

double scml::Config::as<double>(_DWORD *a1)
{
  v1 = a1[10];
  if (v1 == 1)
  {
    return *a1;
  }

  if (v1 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(a1, "not a float", 11, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1;
}

uint64_t std::unordered_map<std::string,SCMLImageSanitizerImageStyle>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SCMLImageSanitizerImageStyle> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SCMLImageSanitizerImageStyle> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__construct_node_hash<std::pair<std::string const,SCMLImageSanitizerImageStyle> const&>();
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

void sub_1B8A5C430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A5C4F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__emplace_unique_key_args<MADUnifiedEmbeddingVersion,std::piecewise_construct_t const&,std::tuple<MADUnifiedEmbeddingVersion const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__function::__func<scml::SignpostInterval::createAsync(void)::{lambda(void)#1},std::allocator<scml::SignpostInterval::createAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Async SignpostInterval deleted without using SCML_SIGNPOST_ASYNC_END");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

uint64_t std::__function::__func<scml::SignpostInterval::createAsync(void)::{lambda(void)#1},std::allocator<scml::SignpostInterval::createAsync(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::pair<unsigned long,std::unique_ptr<scml::ClipEmbeddingClassifier>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        std::unique_ptr<scml::ClipEmbeddingClassifier>::~unique_ptr[abi:ne200100](v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL scml::Config::as<BOOL>(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    scml::Config::error(a1, "not an integer", 14, exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1 != 0;
}

uint64_t std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t scml::Hasher::combineRecursive<BOOL &,SCMLImageSanitizerGranularity &,NSString * {__strong}&,SCMLImageSanitizerMode &,unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, unsigned __int8 *a2, unsigned int *a3, id *a4, unsigned int *a5, void *a6, unsigned int *a7, id *a8, int *a9)
{
  v9 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a1 >> 33) ^ *a1);
  v10 = 0xFF51AFD7ED558CCDLL * ((0xC4CEB9FE1A85EC53 * (v9 ^ (v9 >> 33))) ^ *a3);
  *a1 = (0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) >> 33);
  return scml::Hasher::combineRecursive<NSString * {__strong}&,SCMLImageSanitizerMode &,unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(a1, a4, a5, a6, a7, a8, a9);
}

uint64_t scml::Hasher::combineRecursive<NSString * {__strong}&,SCMLImageSanitizerMode &,unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, id *a2, unsigned int *a3, void *a4, unsigned int *a5, id *a6, int *a7)
{
  v13 = [*a2 hash];
  v14 = 0xFF51AFD7ED558CCDLL * (*a1 ^ v13 ^ ((*a1 ^ v13) >> 33));
  v15 = 0xFF51AFD7ED558CCDLL * ((0xC4CEB9FE1A85EC53 * (v14 ^ (v14 >> 33))) ^ *a3);
  *a1 = (0xC4CEB9FE1A85EC53 * (v15 ^ (v15 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v15 ^ (v15 >> 33))) >> 33);

  return scml::Hasher::combineRecursive<unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(a1, a4, a5, a6, a7);
}

uint64_t scml::Hasher::combineRecursive<unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, void *a2, unsigned int *a3, id *a4, int *a5)
{
  v5 = 0xFF51AFD7ED558CCDLL * (*a1 ^ *a2 ^ ((*a1 ^ *a2) >> 33));
  v6 = 0xFF51AFD7ED558CCDLL * ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ *a3);
  *a1 = (0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33);
  return scml::Hasher::combineRecursive<NSString * {__strong}&,int &>(a1, a4, a5);
}

uint64_t scml::Hasher::combineRecursive<NSString * {__strong}&,int &>(unint64_t *a1, id *a2, int *a3)
{
  result = [*a2 hash];
  v6 = 0xFF51AFD7ED558CCDLL * (*a1 ^ result ^ ((*a1 ^ result) >> 33));
  v7 = 0xFF51AFD7ED558CCDLL * (*a3 ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33) ^ (0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((*a3 ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33) ^ (0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33)))) >> 33));
  *a1 = (0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) >> 33);
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B8A5D2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A5D394(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::find<MADUnifiedEmbeddingVersion>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
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

void *std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::__emplace_unique_key_args<MADUnifiedEmbeddingVersion,std::pair<MADUnifiedEmbeddingVersion const,std::unique_ptr<scml::ClipImageEncoder>>>(void *a1, unint64_t *a2)
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

void sub_1B8A5DB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<scml::ClipImageEncoder>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,anonymous namespace::IVSThresholdInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,anonymous namespace::IVSThresholdInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,anonymous namespace::IVSThresholdInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,anonymous namespace::IVSThresholdInfo>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::vector<float>>>>::__emplace_unique_key_args<MADUnifiedEmbeddingVersion,MADUnifiedEmbeddingVersion const&,std::vector<float>>(void *a1, unint64_t *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZZ70__SCMLImageSanitizer_sanitizeRequestAsynchronously_completionHandler__EUb_E4__12NS_9allocatorIS2_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ70__SCMLImageSanitizer_sanitizeRequestAsynchronously_completionHandler__EUb_E4__12))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::__unordered_map_hasher<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::hash<MADUnifiedEmbeddingVersion>,std::equal_to<MADUnifiedEmbeddingVersion>,true>,std::__unordered_map_equal<MADUnifiedEmbeddingVersion,std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>,std::equal_to<MADUnifiedEmbeddingVersion>,std::hash<MADUnifiedEmbeddingVersion>,true>,std::allocator<std::__hash_value_type<MADUnifiedEmbeddingVersion,std::unique_ptr<scml::ClipImageEncoder>>>>::__deallocate_node(uint64_t a1, scml::ClipImageEncoder **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<scml::ClipImageEncoder>::~unique_ptr[abi:ne200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id getMADImageEmbeddingRequestClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADImageEmbeddingRequestClass(void)::softClass;
  v7 = getMADImageEmbeddingRequestClass(void)::softClass;
  if (!getMADImageEmbeddingRequestClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL32getMADImageEmbeddingRequestClassv_block_invoke;
    v3[3] = &unk_1E7EB3B40;
    v3[4] = &v4;
    ___ZL32getMADImageEmbeddingRequestClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B8A5EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADServiceClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADServiceClass(void)::softClass;
  v7 = getMADServiceClass(void)::softClass;
  if (!getMADServiceClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL18getMADServiceClassv_block_invoke;
    v3[3] = &unk_1E7EB3B40;
    v3[4] = &v4;
    ___ZL18getMADServiceClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADServiceClass(void)::softClass;
  v7 = getMADServiceClass(void)::softClass;
  if (!getMADServiceClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL18getMADServiceClassv_block_invoke_0;
    v3[3] = &unk_1E7EB3B40;
    v3[4] = &v4;
    ___ZL18getMADServiceClassv_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B8A5ED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL32getMADImageEmbeddingRequestClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADImageEmbeddingRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADImageEmbeddingRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL32getMADImageEmbeddingRequestClassv_block_invoke_cold_1();
    MediaAnalysisLibrary();
  }
}

void MediaAnalysisLibrary(void)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL24MediaAnalysisLibraryCorePPc_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7EB3BF0;
    v4 = 0;
    MediaAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL24MediaAnalysisLibraryCorePPc_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7EB3C08;
    v4 = 0;
    MediaAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL24MediaAnalysisLibraryCorePPc_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

SCMLMADEmbeddingResult *___ZL18getMADServiceClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL18getMADServiceClassv_block_invoke_cold_1();
    return [(SCMLMADEmbeddingResult *)v3 initWithType:v4 data:v5 shape:v6 bias:v7 scale:v8, v9];
  }

  return result;
}

void sub_1B8A5F73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t toSCMLMADEmbeddingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t toMADUnifiedEmbeddingVersion(uint64_t a1)
{
  if (a1 == 7)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

id getMADTextEmbeddingRequestClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADTextEmbeddingRequestClass(void)::softClass;
  v7 = getMADTextEmbeddingRequestClass(void)::softClass;
  if (!getMADTextEmbeddingRequestClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL31getMADTextEmbeddingRequestClassv_block_invoke;
    v3[3] = &unk_1E7EB3B40;
    v3[4] = &v4;
    ___ZL31getMADTextEmbeddingRequestClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B8A5FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8A6003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL31getMADTextEmbeddingRequestClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADTextEmbeddingRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADTextEmbeddingRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL31getMADTextEmbeddingRequestClassv_block_invoke_cold_1();
    MediaAnalysisLibrary();
  }
}

uint64_t ___ZL24MediaAnalysisLibraryCorePPc_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

SCMLPeopleDetectionAttributeSpan *___ZL18getMADServiceClassv_block_invoke_0(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL18getMADServiceClassv_block_invoke_cold_1();
    return [(SCMLPeopleDetectionAttributeSpan *)v3 init];
  }

  return result;
}

void sub_1B8A610BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v21);

  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(a1);
    if (v19)
    {
      *v19 = scml::error(0x12u, v25);
    }

    v26 = [*(v22 + 672) textAnalyzer];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SCMLPeopleDetector initWithConfiguration:v25 error:v26];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A61024);
  }

  scml::SignpostInterval::~SignpostInterval(&a17);

  _Unwind_Resume(a1);
}

void sub_1B8A620E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

id scml::anonymous namespace::findAttributeSpans(void *a1, void *a2, NSString *a3, NSUInteger a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v18 = a2;
  v19 = [MEMORY[0x1E695E0F0] mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v18;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v8.location = a4;
        if (AttributeSpan != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v12;
          v15 = objc_opt_new();
          [v15 setRange:{AttributeSpan, v14}];
          [v19 addObject:v15];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t ___ZN4scml12_GLOBAL__N_117toPeopleDetectionEPNS_18MultiwordGazetteerEP8NSStringP28SCMLPeopleDetectorImplResult_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 range];
  if (v8 == [v7 range])
  {
    [v6 range];
    v10 = v9;
    [v7 range];
    if (v10 == v11)
    {
      v12 = 0;
      goto LABEL_9;
    }

    [v6 range];
    v16 = v15;
    [v7 range];
    v14 = v16 >= v17;
  }

  else
  {
    v13 = [v6 range];
    v14 = v13 >= [v7 range];
  }

  if (v14)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

LABEL_9:

  return v12;
}

void scml::anonymous namespace::findCandidateWordRanges(scml::_anonymous_namespace_ *this@<X0>, NSString *a2@<X1>, const void **a3@<X8>)
{
  v26 = this;
  v25 = a2;
  v24 = [MEMORY[0x1E696AE70] escapedPatternForString:v25];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b%@\\b", v24];
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v23 options:65 error:0];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v6 rangeOfFirstMatchInString:v26 options:0 range:{v7, -[scml::_anonymous_namespace_ length](v26, "length") - v7}];
      v10 = v8;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v11 = v9;
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        v17 = v16 >> 4;
        v18 = (v16 >> 4) + 1;
        if (v18 >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a3, v20);
        }

        v21 = (16 * v17);
        *v21 = v8;
        v21[1] = v11;
        v14 = 16 * v17 + 16;
        memcpy(0, v15, v16);
        v22 = *a3;
        *a3 = 0;
        a3[1] = v14;
        a3[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v8;
        v13[1] = v9;
        v14 = (v13 + 2);
      }

      a3[1] = v14;
      v7 = v10 + v11;
    }

    while (v7 < [(scml::_anonymous_namespace_ *)v26 length]);
  }
}

uint64_t scml::anonymous namespace::findAttributeSpan(scml::_anonymous_namespace_ *this, NSString *a2, NSString *a3, _NSRange a4)
{
  location = a4.location;
  v7 = this;
  v8 = a2;
  if (v20 == v21)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = a3 + location;
  v10 = -1;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = v20;
  do
  {
    v13 = *v12;
    v14 = v12[1];
    v12 += 2;
    v15 = v14 + v13;
    v16 = a3 - v13;
    if (a3 < v13)
    {
      v16 = 0;
    }

    v17 = v15 >= v9;
    v18 = (v15 - v9);
    if (!v17)
    {
      v18 = 0;
    }

    if (v16 > v18)
    {
      v18 = v16;
    }

    if (v18 < v10)
    {
      v10 = v18;
      v11 = v13;
    }
  }

  while (v12 != v21);
  if (v20)
  {
LABEL_13:
    v21 = v20;
    operator delete(v20);
  }

LABEL_14:

  return v11;
}

scml::MultiwordGazetteer *std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100](scml::MultiwordGazetteer **a1, scml::MultiwordGazetteer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    scml::MultiwordGazetteer::~MultiwordGazetteer(result);

    JUMPOUT(0x1B8CC7230);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ67__SCMLPeopleDetector_detectPeopleAsynchronously_completionHandler__EUb_E3__1NS_9allocatorIS2_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ67__SCMLPeopleDetector_detectPeopleAsynchronously_completionHandler__EUb_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B8A62BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8A62D90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void scml::Config::fromJson(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v9))
  {
    *&v36 = 0;
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

    scml::Config::Config<decltype(nullptr)>(a4, &v36, v11, v12, a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    v36 = 0u;
    v37 = 0u;
    v38 = 1065353216;
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    if (v14 >= 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = *(a2 + 8);
    }

    scml::Config::Config<std::unordered_map<std::string,scml::Config>>(a4, &v36, v15, v16, a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v7;
    v36 = 0uLL;
    *&v37 = 0;
    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    scml::Config::Config<std::vector<scml::Config>>(a4, &v36, v19, v20, a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v36 = [v7 UTF8String];
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 8);
    }

    scml::Config::Config<char const*>(a4, &v36, v22, v23, a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    {
      operator new();
    }

    v24 = v7;
    LODWORD(v36) = CFNumberGetType(v24);
    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(scml::Config::fromJson(objc_object *,std::string const&,scml::Config*)::kFloatTypes, &v36))
    {
      [(__CFNumber *)v24 doubleValue];
      *&v36 = v25;
      v26 = *(a2 + 23);
      if (v26 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      if (v26 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      scml::Config::Config<double>(a4, &v36, v27, v28, a3);
    }

    *&v36 = [(__CFNumber *)v24 longValue];
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v29 >= 0)
    {
      v31 = *(a2 + 23);
    }

    else
    {
      v31 = *(a2 + 8);
    }

    scml::Config::Config<long>(a4, &v36, v30, v31, a3);
  }

  __p = 0;
  v32 = *(a2 + 23);
  if (v32 >= 0)
  {
    v33 = a2;
  }

  else
  {
    v33 = *a2;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = *(a2 + 8);
  }

  scml::Config::Config<decltype(nullptr)>(&v36, &__p, v33, v34, a3);
}

void sub_1B8A6436C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x1B8CC7230](v25, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

void scml::Config::error(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::runtime_error *a4@<X8>)
{
  v7[0] = a2;
  v7[1] = a3;
  scml::Config::PathInfo::path(*(a1 + 48), &__p);
  scml::strCat<std::string_view &,char const(&)[3],std::string>(v7, ": ", &__p, &v6);
  std::runtime_error::runtime_error(a4, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B8A64568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *scml::Config::PathInfo::PathInfo(_BYTE *__dst, void *__src, size_t __len, void *a4)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  v8 = a4[1];
  *(__dst + 3) = *a4;
  *(__dst + 4) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void scml::Config::PathInfo::path(scml::Config::PathInfo *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4)
  {
    scml::Config::PathInfo::path(__p, v4);
    if (std::string::ends_with[abi:ne200100](__p, "/"))
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this, a2);
    }

    else
    {
      if ((v17 & 0x80u) == 0)
      {
        v5 = v17;
      }

      else
      {
        v5 = __p[1];
      }

      v6 = &v15;
      std::string::basic_string[abi:ne200100](&v15, v5 + 1);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v15.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if ((v17 & 0x80u) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        memmove(v6, v7, v5);
      }

      *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
      v8 = *(this + 23);
      if (v8 >= 0)
      {
        v9 = this;
      }

      else
      {
        v9 = *this;
      }

      if (v8 >= 0)
      {
        v10 = *(this + 23);
      }

      else
      {
        v10 = *(this + 1);
      }

      v11 = std::string::append(&v15, v9, v10);
      v12 = *&v11->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(this + 23) < 0)
  {
    v13 = *this;
    v14 = *(this + 1);

    std::string::__init_copy_ctor_external(a2, v13, v14);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void sub_1B8A647DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void scml::Config::loadJson(const void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  scml::strToNSString(a1, a2);
  v12 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:objc_claimAutoreleasedReturnValue() options:0 error:&v12];
  v7 = v12;
  if (v6)
  {
    scml::Config::fromJsonContent([v6 bytes], objc_msgSend(v6, "length"), a1, a2, a3);
  }

  scml::strCat<char const(&)[27],std::string_view &>("Failed to read json ", v13, v10);
  if ((v11 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = v10[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v9 = v11;
  }

  else
  {
    v9 = v10[1];
  }
}

void sub_1B8A649E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void scml::anonymous namespace::throwNSError(const void *a1, size_t a2, void *a3)
{
  v5 = a3;
  exception = __cxa_allocate_exception(0x18uLL);
  scml::makeException(a1, a2, v5, exception);
}

void scml::Config::fromJsonContent(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, _BYTE *a5@<X8>)
{
  v18[0] = a3;
  v18[1] = a4;
  [MEMORY[0x1E695DEF0] dataWithBytes:a1 length:a2];
  v17 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:objc_claimAutoreleasedReturnValue() options:0 error:&v17];
  v9 = v17;
  if (v8)
  {
    if (a4 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a4 < 0x17)
      {
        *(&__dst.__r_.__value_.__s + 23) = a4;
        if (a4)
        {
          memmove(&__dst, a3, a4);
        }

        __dst.__r_.__value_.__s.__data_[a4] = 0;
        v10 = std::string::append(&__dst, ":/", 2uLL);
        v11 = *&v10->__r_.__value_.__l.__data_;
        v16 = v10->__r_.__value_.__r.__words[2];
        *__p = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        scml::Config::fromJson(v8, __p, 0, a5);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  scml::strCat<char const(&)[27],std::string_view &>("Failed to read json ", v18, __p);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v16 >= 0)
  {
    v13 = HIBYTE(v16);
  }

  else
  {
    v13 = __p[1];
  }
}

void sub_1B8A64C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t scml::Config::isNull(uint64_t a1, const void *a2, size_t a3)
{
  v5 = scml::Config::as<std::unordered_map<std::string,scml::Config>>(a1);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (a3 >= 0x17)
  {
    operator new();
  }

  v11 = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v6, &__dst);
  v8 = v7;
  if (v11 < 0)
  {
    operator delete(__dst);
    if (v8)
    {
      return *(v8 + 20) == 0;
    }
  }

  else if (v7)
  {
    return *(v8 + 20) == 0;
  }

  return 1;
}

void sub_1B8A64DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::strCat<std::string_view &,char const(&)[3],std::string>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, *a1, a1[1]);
  scml::scml_impl::strCat<char const(&)[38],std::string>(&v9, a2, a3);
  std::ostringstream::str[abi:ne200100](&v9, a4);
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v13);
}

void sub_1B8A64F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<scml::Config>::__emplace_back_slow_path<scml::Config>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<scml::Config>>(a1, v7);
  }

  v8 = v2 << 6;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v8, a2);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *&v17 = v8 + 64;
  v9 = a1[1];
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<scml::Config>,scml::Config*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<scml::Config>::~__split_buffer(&v15);
  return v14;
}

void sub_1B8A65080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<scml::Config>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 40);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F3746058[v5])(&v6, a2);
    *(a1 + 40) = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>> &&>(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>> &&>(__n128 **a1, __n128 *a2)
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

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__hash_table(uint64_t result, uint64_t *a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<scml::Config>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<scml::Config>,scml::Config*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a4, v7);
      *(v8 + 48) = *(v7 + 48);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v7 += 64;
      a4 = v8 + 64;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<scml::Config,0>(v6);
      v6 += 64;
    }
  }
}

uint64_t std::__split_buffer<scml::Config>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<scml::Config,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void scml::Config::Config<decltype(nullptr)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (a5)
  {
    v5 = *(a5 + 56);
    v6 = *(a5 + 48);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A653AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<scml::Config::PathInfo>::__shared_ptr_emplace[abi:ne200100]<std::string_view &,std::shared_ptr<scml::Config::PathInfo>,std::allocator<scml::Config::PathInfo>,0>(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F3746098;
  std::construct_at[abi:ne200100]<scml::Config::PathInfo,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,scml::Config::PathInfo*>((a1 + 24), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<scml::Config::PathInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3746098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

_BYTE *std::construct_at[abi:ne200100]<scml::Config::PathInfo,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,scml::Config::PathInfo*>(_BYTE *a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  *a3 = 0;
  a3[1] = 0;
  scml::Config::PathInfo::PathInfo(a1, v4, v5, v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1B8A65574(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void scml::Config::Config<std::unordered_map<std::string,scml::Config>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__hash_table(a1, a2) + 40) = 5;
  if (a5)
  {
    v6 = *(a5 + 56);
    v7 = *(a5 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A65610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__emplace_unique_key_args<std::string,std::string&,scml::Config>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,scml::Config>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,scml::Config>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,scml::Config>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,scml::Config>>>::__construct_node_hash<std::string&,scml::Config>();
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

void sub_1B8A65874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,scml::Config>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A65924(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,scml::Config>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,scml::Config>::pair[abi:ne200100]<std::string&,scml::Config,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](&this[1], a3);
  *&this[3].__r_.__value_.__l.__data_ = *(a3 + 48);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,scml::Config>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 96);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 40);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void scml::Config::Config<std::vector<scml::Config>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = 4;
  if (a5)
  {
    v5 = *(a5 + 56);
    v6 = *(a5 + 48);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A65AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void scml::Config::Config<char const*>(_BYTE *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(std::string::basic_string[abi:ne200100]<0>(a1, *a2) + 10) = 3;
  if (a5)
  {
    v6 = *(a5 + 56);
    v7 = *(a5 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A65B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
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

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void scml::Config::Config<double>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  *(a1 + 40) = 2;
  if (a5)
  {
    v5 = *(a5 + 56);
    v6 = *(a5 + 48);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A65FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void scml::Config::Config<long>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  *(a1 + 40) = 1;
  if (a5)
  {
    v5 = *(a5 + 56);
    v6 = *(a5 + 48);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::allocate_shared[abi:ne200100]<scml::Config::PathInfo,std::allocator<scml::Config::PathInfo>,std::string_view &,std::shared_ptr<scml::Config::PathInfo>,0>();
}

void sub_1B8A66054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<decltype(nullptr),long long,double,std::string,std::vector<scml::Config>,std::unordered_map<std::string,scml::Config>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void scml::Deferred::~Deferred(scml::Deferred *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

CGImageRef createScaledCGImageFromCGImage(CGImage *a1, unint64_t *a2, CGInterpolationQuality a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = 4 * *a2;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, v5, v6, 8uLL, v7, DeviceRGB, 0x4005u);
  CGContextSetInterpolationQuality(v9, a3);
  v12.size.width = v5;
  v12.size.height = v6;
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  CGContextDrawImage(v9, v12, a1);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceRGB);
  return Image;
}

__CVBuffer *scaleCVPixelBuffer(CVPixelBufferRef pixelBuffer, size_t *a2)
{
  v2 = pixelBuffer;
  v11[1] = *MEMORY[0x1E69E9840];
  if (pixelBuffer)
  {
    if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369 && CVPixelBufferGetWidth(v2) == *a2 && CVPixelBufferGetHeight(v2) == a2[1])
    {
      CVPixelBufferRetain(v2);
    }

    else
    {
      pixelTransferSessionOut = 0;
      v4 = *MEMORY[0x1E695E480];
      if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
      {
        v2 = 0;
      }

      else
      {
        pixelBufferOut = 0;
        v10 = *MEMORY[0x1E69660D8];
        v11[0] = MEMORY[0x1E695E0F8];
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
        if (CVPixelBufferCreate(v4, *a2, a2[1], 0x42475241u, v5, &pixelBufferOut) || VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v2, pixelBufferOut))
        {
          CVPixelBufferRelease(pixelBufferOut);
          CFRelease(pixelTransferSessionOut);
          v2 = 0;
        }

        else
        {
          CFRelease(pixelTransferSessionOut);
          v2 = pixelBufferOut;
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

CVPixelBufferRef scaledPixelBuffer32BGRAFromCGImage(CGImage *a1, size_t a2, size_t a3, CGInterpolationQuality a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E6966030];
  v21[0] = *MEMORY[0x1E69660D8];
  v21[1] = v8;
  v22[0] = MEMORY[0x1E695E0F8];
  v22[1] = MEMORY[0x1E695E118];
  v21[2] = *MEMORY[0x1E6966028];
  v22[2] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  pixelBuffer = 0;
  CVPixelBufferCreate(*MEMORY[0x1E695E480], a2, a3, 0x42475241u, v9, &pixelBuffer);
  if (!pixelBuffer)
  {
    v10 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      scaledPixelBuffer32BGRAFromCGImage_cold_3();
    }

    goto LABEL_8;
  }

  if (CVPixelBufferLockBaseAddress(pixelBuffer, 0))
  {
    CVPixelBufferRelease(pixelBuffer);
    v10 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      scaledPixelBuffer32BGRAFromCGImage_cold_1();
    }

LABEL_8:

    goto LABEL_9;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v17 = CGBitmapContextCreate(BaseAddress, a2, a3, 8uLL, BytesPerRow, DeviceRGB, 0x2006u);
  v18 = v17;
  if (v17)
  {
    CGContextSetInterpolationQuality(v17, a4);
    v23.size.width = a2;
    v23.size.height = a3;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    CGContextDrawImage(v18, v23, a1);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CGContextRelease(v18);
    CGColorSpaceRelease(DeviceRGB);
    v11 = pixelBuffer;
    goto LABEL_10;
  }

  v19 = +[SCMLLog imageAnalyzer];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    scaledPixelBuffer32BGRAFromCGImage_cold_2();
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CGColorSpaceRelease(DeviceRGB);
  CVPixelBufferRelease(pixelBuffer);
LABEL_9:
  v11 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t pixelBufferFromCGImage(CGImage *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    if (v3)
    {
      v6 = [v3 unsignedIntegerValue];
    }

    else
    {
      v6 = 1111970369;
    }

    v8 = objc_alloc_init(MEMORY[0x1E6984688]);
    v9 = objc_alloc(MEMORY[0x1E69845A8]);
    v10 = [v9 initWithCGImage:a1 orientation:1 options:MEMORY[0x1E695E0F8] session:v8];
    v7 = [v10 bufferWithWidth:Width height:Height format:v6 options:MEMORY[0x1E695E0F8] error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t interpolationForScaleMethod(void *a1, int *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:SCMLImageScaleMethodCGInterpolationNone[0]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SCMLImageScaleMethodCGInterpolationLow[0]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SCMLImageScaleMethodCGInterpolationMedium[0]])
  {
    v4 = 4;
  }

  else
  {
    if (![v3 isEqualToString:SCMLImageScaleMethodCGInterpolationHigh[0]])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = 3;
  }

  *a2 = v4;
  v5 = 1;
LABEL_10:

  return v5;
}

uint64_t saveCGImageToPng(CGImage *a1, void *a2)
{
  v3 = a2;
  v4 = CGImageDestinationCreateWithURL(v3, @"public.png", 1uLL, 0);
  v5 = v4;
  if (!v4)
  {
    v7 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      saveCGImageToPng_cold_2();
    }

    goto LABEL_10;
  }

  CGImageDestinationAddImage(v4, a1, 0);
  if (!CGImageDestinationFinalize(v5))
  {
    v8 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      saveCGImageToPng_cold_1();
    }

    CFRelease(v5);
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  CFRelease(v5);
  v6 = 1;
LABEL_11:

  return v6;
}

uint64_t saveCVPixelBufferToPng(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  imageOut = 0;
  if (VTCreateCGImageFromCVPixelBuffer(a1, 0, &imageOut))
  {
    v4 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      saveCVPixelBufferToPng_cold_1();
    }
  }

  else if (imageOut)
  {
    v5 = saveCGImageToPng(imageOut, v3);
    CGImageRelease(imageOut);
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

uint64_t scml::ImageUtil::toPixelBuffer@<X0>(scml::ImageUtil *this@<X0>, void *a2@<X8>)
{
  result = pixelBufferFromCGImage(this, 0);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::Exception::Exception(exception, "Failed to convert CGImage to CVPixelBuffer", 42, 0);
  }

  return result;
}

void scml::ImageUtil::loadPixelBuffer(scml::ImageUtil *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  scml::ImageUtil::loadCGImage(v4, &image);
  scml::ImageUtil::toPixelBuffer(image, a2);
  v5 = image;
  image = 0;
  if (v5)
  {
    CGImageRelease(v5);
  }
}

void sub_1B8A66B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CGImage,scml::NonNullDeleter<&(CGImageRelease)>>::reset[abi:ne200100](va, 0);

  _Unwind_Resume(a1);
}

void scml::ImageUtil::loadCGImage(scml::ImageUtil *this@<X0>, CGImageRef *a2@<X8>)
{
  v14 = this;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v5 = CGImageSourceCreateWithURL(v4, 0);
  v6 = v5;
  v19 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::strFromNSString(v14, v15);
    scml::strCat<char const(&)[47],std::string const&>("Failed to open ", v15, &v16);
    if ((v18 & 0x80u) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16;
    }

    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v17;
    }

    scml::Exception::Exception(exception, v9, v10, 0);
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
  *a2 = ImageAtIndex;
  if (!ImageAtIndex)
  {
    v11 = __cxa_allocate_exception(0x18uLL);
    scml::strFromNSString(v14, v15);
    scml::strCat<char const(&)[47],std::string const&>("Failed to decode ", v15, &v16);
    if ((v18 & 0x80u) == 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16;
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }

    scml::Exception::Exception(v11, v12, v13, 0);
  }

  CFRelease(v6);
}

void sub_1B8A66CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v25 & 1) == 0)
    {
LABEL_8:
      std::unique_ptr<CGImage,scml::NonNullDeleter<&(CGImageRelease)>>::reset[abi:ne200100](v23, 0);
      std::unique_ptr<CGImageSource,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](&a22, 0);

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v24);
  goto LABEL_8;
}

void std::unique_ptr<CGImage,scml::NonNullDeleter<&(CGImageRelease)>>::reset[abi:ne200100](CGImage **a1, CGImage *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CGImageRelease(v3);
  }
}

void std::unique_ptr<CGImageSource,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

std::string *scml::typeStr@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  switch(a1)
  {
    case 4:
      v2 = "FLOAT_32";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    case 2:
      v2 = "INT_32";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    case 0:
      v2 = "UINT_8";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  return std::to_string(a2, a1);
}

void scml::TensorSpec::throwBadShape(uint64_t a1, uint64_t **a2)
{
  scml::strCat<char const(&)[8],std::string const&,char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>("tensor ", a1, " shape ", a2, " does not match spec ", (a1 + 24), &v3);
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v3);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A66EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::strCat<char const(&)[8],std::string const&,char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t **a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>(&v15, a1, a2, a3, a4, a5, a6);
  std::ostringstream::str[abi:ne200100](&v15, a7);
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v19);
}

void sub_1B8A670A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::TensorSpec::throwBadType(uint64_t a1, int a2)
{
  scml::typeStr(a2, &v5);
  scml::typeStr(*(a1 + 48), &__p);
  scml::strCat<char const(&)[8],std::string const&,char const(&)[7],std::string,char const(&)[22],std::string>("tensor ", a1, " type ", &v5, " does not match spec ", &__p, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v6);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A67168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::strCat<char const(&)[8],std::string const&,char const(&)[7],std::string,char const(&)[22],std::string>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[7],std::string,char const(&)[22],std::string>(&v15, a1, a2, a3, a4, a5, a6);
  std::ostringstream::str[abi:ne200100](&v15, a7);
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v19);
}

void sub_1B8A67348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::TensorSpec::throwUnhandledPortType(scml::TensorSpec *this)
{
  scml::strCat<char const(&)[8],std::string const&,char const(&)[21]>("tensor ", this, " unhandled port type", &v2);
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v2);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A673C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::strCat<char const(&)[8],std::string const&,char const(&)[21]>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[21]>(&v9, a1, a2, a3);
  std::ostringstream::str[abi:ne200100](&v9, a4);
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v13);
}

void sub_1B8A67558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::TensorSpec::validate(uint64_t a1, E5RT::OperandDescriptor *this, uint64_t a3)
{
  v18 = a3;
  v4 = E5RT::OperandDescriptor::TryAsTensorDescriptor(this);
  if (!v4)
  {
    scml::TensorSpec::throwUnhandledPortType(a1);
  }

  v5 = v4;
  E5RT::TensorDescriptor::GetTensorDataType(v14, v4);
  v7 = ik::core::AsDataType(v14, v6);
  E5RT::TensorDataType::~TensorDataType(v14);
  if (*(a1 + 48) != v7)
  {
    scml::TensorSpec::throwBadType(a1, v7);
  }

  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v5);
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v15, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  v9 = v15;
  if (v16 - v15 != (*(a1 + 32) - *(a1 + 24)) >> 5)
  {
    scml::TensorSpec::throwBadShape(a1, &v15);
  }

  if (v16 != v15)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v9[v11];
      v14[0] = a1;
      v14[1] = &v15;
      v14[2] = v12;
      v14[3] = a1;
      v14[4] = &v15;
      v14[5] = &v18;
      v14[6] = v12;
      v13 = *(*(a1 + 24) + v10 + 24);
      if (v13 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v19 = v14;
      (off_1F37460D8[v13])(&v19);
      ++v11;
      v9 = v15;
      v10 += 32;
    }

    while (v11 < v16 - v15);
  }

  if (v9)
  {
    v16 = v9;
    operator delete(v9);
  }
}

void sub_1B8A676D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ik::core::AsDataType(ik::core *this, const E5RT::TensorDataType *a2)
{
  ComponentSize = E5RT::TensorDataType::GetComponentSize(this);
  ComponentDataType = E5RT::TensorDataType::GetComponentDataType(this);
  if (ComponentDataType == 4)
  {
    if (ComponentSize == 2)
    {
      return 3;
    }

    else
    {
      if (ComponentSize != 4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for float.");
        goto LABEL_18;
      }

      return 4;
    }
  }

  else
  {
    if (ComponentDataType != 1)
    {
      if (ComponentDataType)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported e5rt component type.");
      }

      else
      {
        if (ComponentSize == 1)
        {
          return 0;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for uint.");
      }

LABEL_18:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (ComponentSize == 2)
    {
      return 1;
    }

    else
    {
      if (ComponentSize != 4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported component size for int.");
        goto LABEL_18;
      }

      return 2;
    }
  }
}

void scml::TensorSpec::createTensor(void *a1, E5RT::TensorDescriptor *this, uint64_t a3)
{
  __src = 0;
  v33 = 0;
  v34 = 0;
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(this);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v29, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  v6 = v29;
  if (v30 != v29)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[v8];
      __p = a1;
      v26 = &v29;
      v27 = a3;
      v28 = v9;
      v10 = *(a1[3] + v7 + 24);
      if (v10 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      p_p = &__p;
      v11 = (off_1F37460E8[v10])(&p_p);
      v12 = v33;
      if (v33 >= v34)
      {
        v14 = __src;
        v15 = v33 - __src;
        v16 = (v33 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v18 = v34 - __src;
        if ((v34 - __src) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
        v20 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<E5RT::ComputeDeviceType>>(&__src, v20);
        }

        *(8 * v16) = v11;
        v13 = (8 * v16 + 8);
        memcpy(0, v14, v15);
        v21 = __src;
        __src = 0;
        v33 = v13;
        v34 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v33 = v11;
        v13 = v12 + 1;
      }

      v33 = v13;
      ++v8;
      v6 = v29;
      v7 += 32;
    }

    while (v8 < (v30 - v29) >> 3);
  }

  E5RT::TensorDescriptor::GetTensorDataType(&__p, this);
  v23 = ik::core::AsDataType(&__p, v22);
  E5RT::TensorDataType::~TensorDataType(&__p);
  LODWORD(p_p) = v23;
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v33, (v33 - __src) >> 3);
  ik::E5BufferTensor::E5BufferTensor();
}

void sub_1B8A67A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
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

  _Unwind_Resume(exception_object);
}

void scml::validateTensorNames(uint64_t a1, void ***a2)
{
  v20 = 0;
  v21 = 0;
  v19 = &v20;
  for (i = (a1 + 16); ; std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v19, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v5 = *a2;
  v4 = a2[1];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v16, v5);
      v5 += 7;
    }

    while (v5 != v4);
    v6 = v18;
  }

  if (v21 != v6)
  {
    goto LABEL_24;
  }

  v7 = v19;
  if (v19 != &v20)
  {
    v8 = v16;
    while (std::equal_to<std::string>::operator()[abi:ne200100](&v15, v7 + 4, v8 + 4))
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (!v11);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
      if (v7 == &v20)
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    scml::strCat<char const(&)[20],std::set<std::string> &,char const(&)[12],std::set<std::string> &>("tensor names found=", &v19, ", expected=", &v16, &v15);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v15);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_23:
  std::__tree<std::string>::destroy(&v16, v17);
  std::__tree<std::string>::destroy(&v19, v20);
}

void sub_1B8A67C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, char *a17, uint64_t a18, char a19, char *a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a16, a17);
  std::__tree<std::string>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t scml::strCat<char const(&)[20],std::set<std::string> &,char const(&)[12],std::set<std::string> &>@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  scml::scml_impl::strCat<char const(&)[20],std::set<std::string> &,char const(&)[12],std::set<std::string> &>(&v11, a1, a2, a3, a4);
  std::ostringstream::str[abi:ne200100](&v11, a5);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v15);
}

void sub_1B8A67E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::setZero(scml *this, ik::Tensor *a2)
{
  v2 = (*(**(this + 5) + 24))(*(this + 5), a2);

  bzero(v2, v3);
}

void scml::validateTensors(void *a1@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  scml::validateTensorNames(a1, a2);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(a1, v6);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(v8[5]);
    scml::TensorSpec::validate(v6, PortDescriptorRef, a3);
    v6 += 7;
  }
}

uint64_t scml::validateInputs(E5RT::ExecutionStreamOperation *a1, void ***a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  scml::validateTensors(InputPorts, a2, v5);
  return std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::~__hash_table(v5);
}

uint64_t scml::validateOutputs(E5RT::ExecutionStreamOperation *a1, void ***a2)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(a1);
  scml::validateTensors(OutputPorts, a2, v5);
  return std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::~__hash_table(v5);
}

void scml::loadModelWithFallback(std::string *this, std::string *a2, const ik::core::E5LoadMILConfig *a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((v5 & 0x80u) != 0)
    {
      v5 = a2->__r_.__value_.__l.__size_;
    }

    if (v5)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12.__pn_, this);
      std::__fs::filesystem::__status(&v12, 0);
      if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__pn_.__r_.__value_.__l.__data_);
      }

      if (!v11[0] || v11[0] == 255)
      {
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12.__pn_, a2);
        std::__fs::filesystem::__status(&v12, 0);
        if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__pn_.__r_.__value_.__l.__data_);
        }

        if (v11[0] && v11[0] != 255)
        {
          operator new();
        }

        v8 = v13;
        v9 = v14;
        exception = __cxa_allocate_exception(0x10uLL);
        if (v8 == v9)
        {
          scml::strCat<char const(&)[37],std::string const&,char const(&)[5],std::string const&>("Model load failed: no file found at ", this, " or ", a2, &v12);
          std::runtime_error::runtime_error(exception, &v12.__pn_);
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        scml::strJoin<std::vector<std::string>>(&v13, ", fallback failed with: ", 24, v11);
        scml::strCat<char const(&)[47],std::string const&>("Model load failed: ", v11, &v12);
        std::runtime_error::runtime_error(exception, &v12.__pn_);
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      operator new();
    }
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "loadModelWithFallback requires precompiled path and mil path");
  __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A68394(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B8A68454);
}

void sub_1B8A683F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x1B8A68408);
  }

  JUMPOUT(0x1B8A68414);
}

void sub_1B8A68430(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B8A68454);
}

void sub_1B8A68450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t scml::strCat<char const(&)[37],std::string const&,char const(&)[5],std::string const&>@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  scml::scml_impl::strCat<char const(&)[7],std::string,char const(&)[22],std::string>(&v11, a1, a2, a3, a4);
  std::ostringstream::str[abi:ne200100](&v11, a5);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v15);
}

void sub_1B8A685EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<scml::Overloaded<scml::TensorSpec::validate(E5RT::OperandDescriptor const&,std::unordered_map<std::string,unsigned long> *)::$_0,scml::TensorSpec::validate(E5RT::OperandDescriptor const&,std::unordered_map<std::string,unsigned long> *)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,int,std::string> const&>(uint64_t **result, _DWORD *a2)
{
  v2 = (*result)[2];
  if (v2 != -1 && v2 != *a2)
  {
    scml::TensorSpec::throwBadShape(**result, (*result)[1]);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<scml::Overloaded<scml::TensorSpec::validate(E5RT::OperandDescriptor const&,std::unordered_map<std::string,unsigned long> *)::$_0,scml::TensorSpec::validate(E5RT::OperandDescriptor const&,std::unordered_map<std::string,unsigned long> *)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,int,std::string> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  if (v4 == -1)
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v7 = *(a2 + 8);
    if (v7 == 1)
    {
      v8 = *a2;
      if (*v8 == 63)
      {
        return;
      }

      v6 = **(v2 + 40);
    }

    else
    {
      v6 = **(v2 + 40);
      v8 = *a2;
    }

    std::string::__init_copy_ctor_external(&__p, v8, v7);
    v4 = *(v2 + 48);
  }

  else
  {
    if (v5 == 1 && *a2 == 63)
    {
      return;
    }

    v6 = **(v2 + 40);
    __p = *a2;
  }

  v13 = v4;
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned long>>(v6, &__p.__r_.__value_.__l.__data_);
  v11 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      return;
    }
  }

  else if (v9)
  {
    return;
  }

  if (v10[5] != *(v2 + 48))
  {
LABEL_17:
    scml::TensorSpec::throwBadShape(v3, *(v2 + 32));
  }
}

void sub_1B8A6873C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned long>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::pair<std::string const,unsigned long>>();
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

void sub_1B8A68994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A68A5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<scml::Overloaded<scml::TensorSpec::createTensor(E5RT::TensorDescriptor const&,std::unordered_map<std::string,unsigned long> const&)::$_0,scml::TensorSpec::createTensor(E5RT::TensorDescriptor const&,std::unordered_map<std::string,unsigned long> const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,int,std::string> const&>(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>((*a1)[2], a2);
  if (v4)
  {
    return v4[5];
  }

  result = v2[3];
  if (result == -1)
  {
    scml::TensorSpec::throwBadShape(v3, v2[1]);
  }

  return result;
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

void sub_1B8A68B1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>(void *a1, char *__s, uint64_t a3, char *a4, uint64_t **a5, char *a6, uint64_t *a7)
{
  v14 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v14);
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v16, v17);

  return scml::scml_impl::strCat<char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>(a1, a4, a5, a6, a7);
}

void *scml::scml_impl::writeStream<std::string>(void *a1, const char *a2, int a3)
{
  v3 = a2;
  v4 = a1;
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
    v5 = v3[23];
    if (v5 >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *v3;
    }

    if (v5 >= 0)
    {
      v7 = v3[23];
    }

    else
    {
      v7 = *(v3 + 1);
    }

    scml::scml_impl::escapeAndWriteStream(v4, v6, v7);
    a1 = v4;
    a2 = "";
    v8 = 1;
  }

  else if (a2[23] >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = *(v3 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v8);
  return v4;
}

uint64_t scml::scml_impl::strCat<char const(&)[8],std::vector<unsigned long> const&,char const(&)[22],std::vector<std::variant<int,std::string>> const&>(void *a1, char *__s, uint64_t **a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);
  scml::scml_impl::writeStream<std::vector<unsigned long>>(a1, a3);

  return scml::scml_impl::strCat<char const(&)[22],std::vector<std::variant<int,std::string>> const&>(a1, a4, a5);
}

void *scml::scml_impl::writeStream<std::vector<unsigned long>>(void *a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{", 1);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      }

      v6 = *v3++;
      MEMORY[0x1B8CC70E0](a1, v6);
      --v5;
    }

    while (v3 != v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "}", 1);
  return a1;
}

uint64_t scml::scml_impl::strCat<char const(&)[22],std::vector<std::variant<int,std::string>> const&>(void *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  scml::scml_impl::writeStream<std::vector<std::variant<int,std::string>>>(a1, a3);

  return scml::scml_impl::strCat<>(a1);
}

void *scml::scml_impl::writeStream<std::vector<std::variant<int,std::string>>>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{", 1);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      }

      scml::scml_impl::writeStream<int,std::string>(a1, v3, 1);
      v3 += 32;
      --v5;
    }

    while (v3 != v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "}", 1);
  return a1;
}

uint64_t scml::scml_impl::writeStream<int,std::string>(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3;
  v6[0] = a1;
  v6[1] = &v7;
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = v6;
  (*(&off_1F37460F8 + v3))(&v8);
  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN4scml9scml_impl11writeStreamIJiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEERNS_13basic_ostreamIcSD_EESJ_RKNS_7variantIJDpT_EEEbEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJiSG_EEEEEEDcSQ_DpT0_(uint64_t **a1, unsigned int *a2)
{
  v2 = **a1;
  v3 = *a2;
  JUMPOUT(0x1B8CC70D0);
}

uint64_t scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[7],std::string,char const(&)[22],std::string>(void *a1, char *__s, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v14 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v14);
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v16, v17);

  return scml::scml_impl::strCat<char const(&)[7],std::string,char const(&)[22],std::string>(a1, a4, a5, a6, a7);
}

uint64_t scml::scml_impl::strCat<char const(&)[7],std::string,char const(&)[22],std::string>(void *a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v12, v13);

  return scml::scml_impl::strCat<char const(&)[38],std::string>(a1, a4, a5);
}

uint64_t scml::scml_impl::strCat<char const(&)[8],std::string const&,char const(&)[21]>(void *a1, char *__s, uint64_t a3, char *a4)
{
  v8 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v8);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v10, v11);

  return scml::scml_impl::strCat<char const(&)[11]>(a1, a4);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1B8A692F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
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

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t scml::scml_impl::strCat<char const(&)[20],std::set<std::string> &,char const(&)[12],std::set<std::string> &>(void *a1, char *__s, void *a3, char *a4, void *a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);
  scml::scml_impl::writeStream<std::set<std::string>>(a1, a3);

  return scml::scml_impl::strCat<char const(&)[12],std::set<std::string> &>(a1, a4, a5);
}

void *scml::scml_impl::writeStream<std::set<std::string>>(void *a1, void *a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{", 1);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      }

      scml::scml_impl::writeStream<std::string>(a1, v4 + 32, 1);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      ++v5;
      v4 = v7;
    }

    while (v7 != v3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "}", 1);
  return a1;
}

uint64_t scml::scml_impl::strCat<char const(&)[12],std::set<std::string> &>(void *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  scml::scml_impl::writeStream<std::set<std::string>>(a1, a3);

  return scml::scml_impl::strCat<>(a1);
}

void ik::E5Op::E5Op(ik::E5Op *this, const ik::core::E5LoadPreCompiledConfig *a2)
{
  if (*(a2 + 72) == 1)
  {
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v15 = *(a2 + 2);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v11, a2);
    std::__fs::filesystem::path::stem[abi:ne200100](&v11, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = __p;
    }

    v3 = std::string::append(&v13, "_", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = *(a2 + 47);
    if (v5 >= 0)
    {
      v6 = a2 + 24;
    }

    else
    {
      v6 = *(a2 + 3);
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 47);
    }

    else
    {
      v7 = *(a2 + 4);
    }

    v8 = std::string::append(&v14, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    operator new();
  }

  operator new();
}

void sub_1B8A69A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::stem[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
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

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8CC7230);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ik::E5Op::E5Op(ik::E5Op *this, const ik::core::E5LoadMILConfig *a2)
{
  Compiler = E5RT::E5Compiler::GetCompiler(this);
  E5RT::E5CompilerOptions::Create(&v39, Compiler);
  if (*(a2 + 10) != *(a2 + 11))
  {
    E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  }

  if (*(a2 + 128) == 1)
  {
    E5RT::E5CompilerOptions::SetForceRecompilation(v39);
  }

  if (*(a2 + 13) != *(a2 + 14))
  {
    E5RT::E5CompilerOptions::SetPreferredCpuBackends();
  }

  E5RT::E5Compiler::Compile();
  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v38);
  v5 = std::unordered_map<std::string,std::shared_ptr<E5RT::ProgramFunction>>::unordered_map(v36, ExportedFunctions);
  if (std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v5, a2 + 3))
  {
    v7 = *(v37 + 40);
    v6 = *(v37 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v31 = 0;
    }

    v30 = v7;
    E5RT::PrecompiledComputeOpCreateOptions::Create();
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (*(a2 + 72) == 1)
    {
      if (*(a2 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(a2 + 6), *(a2 + 7));
      }

      else
      {
        v35 = *(a2 + 2);
      }
    }

    else
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v28, a2);
      std::__fs::filesystem::path::stem[abi:ne200100](&v28, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v33 = __p;
      }

      v8 = std::string::append(&v33, "_", 1uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = *(a2 + 47);
      if (v10 >= 0)
      {
        v11 = a2 + 24;
      }

      else
      {
        v11 = *(a2 + 3);
      }

      if (v10 >= 0)
      {
        v12 = *(a2 + 47);
      }

      else
      {
        v12 = *(a2 + 4);
      }

      v13 = std::string::append(&v34, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    v34.__r_.__value_.__r.__words[0] = v7;
    v34.__r_.__value_.__l.__size_ = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::PrecompiledComputeOpCreateOptions::Create();
    v15 = v33.__r_.__value_.__r.__words[0];
    v33.__r_.__value_.__r.__words[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v34.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34.__r_.__value_.__l.__size_);
    }

    E5RT::PrecompiledComputeOpCreateOptions::SetOperationName();
    if (*(a2 + 17))
    {
      E5RT::ComputeGPUDevice::GetComputeGPUDeviceForMTLDevice();
      E5RT::PrecompiledComputeOpCreateOptions::SetOverrideComputeGPUDevice();
    }

    E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v16 = v32;
    v32 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v36);
    v17 = v38;
    v38 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v39;
    v39 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v27)
    {
      operator new();
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v20 = std::string::append(&v33, " not found in ", 0xEuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a2 + 23);
  if (v22 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = *a2;
  }

  if (v22 >= 0)
  {
    v24 = *(a2 + 23);
  }

  else
  {
    v24 = *(a2 + 1);
  }

  v25 = std::string::append(&v34, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v35);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1B8A6A194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    if ((v38 & 1) == 0)
    {
LABEL_10:
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v39 - 104);
      v41 = *(v39 - 64);
      *(v39 - 64) = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      v42 = *(v39 - 56);
      *(v39 - 56) = 0;
      if (v42)
      {
        (*(*v42 + 8))(v42);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v37);
  goto LABEL_10;
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::ProgramFunction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<ik::E5BufferTensor,ik::PixelBufferTensor>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(a1, i + 2);
  }

  return a1;
}

id scml::strToNSString(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:a2 encoding:4];

  return v2;
}

uint64_t scml::strMul@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  for (; a3; --a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, a1, a2);
  }

  std::ostringstream::str[abi:ne200100](&v9, a4);
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v13);
}

void sub_1B8A6A604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::strFromNSError(scml *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = [(scml *)this localizedDescription];
  scml::strFromNSString(v4, a2);
}

id scml::regexMake(scml *this, NSString *a2)
{
  v2 = this;
  v6 = 0;
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v2 options:0 error:&v6];
  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "bad regex");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v3;
}

id scml::strSplitByRegex(scml *this, NSString *a2, NSRegularExpression *a3)
{
  v3 = a3;
  v5 = this;
  v6 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = [MEMORY[0x1E695E0F0] mutableCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v7 = [(scml *)v5 length];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = ___ZN4scml15strSplitByRegexEP8NSStringP19NSRegularExpressionb_block_invoke;
  v18 = &unk_1E7EB3CC0;
  v20 = &v27;
  v8 = v5;
  v19 = v8;
  v21 = &v23;
  v22 = v3;
  [(NSString *)v6 enumerateMatchesInString:v8 options:0 range:0 usingBlock:v7, &v15];
  v9 = v28[5];
  v10 = v24[3];
  v11 = [(scml *)v8 length:v15];
  v12 = [(scml *)v8 substringWithRange:v10, v11 - v24[3]];
  [v9 addObject:v12];

  v13 = v28[5];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void sub_1B8A6A944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN4scml15strSplitByRegexEP8NSStringP19NSRegularExpressionb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v13 = v3;
  v5 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 48) + 8) + 24), objc_msgSend(v3, "range") - *(*(*(a1 + 48) + 8) + 24)}];
  [v4 addObject:v5];

  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v13 range];
    v10 = [v6 substringWithRange:{v8, v9}];
    [v7 addObject:v10];
  }

  v11 = [v13 range];
  [v13 range];
  *(*(*(a1 + 48) + 8) + 24) = v12 + v11;
}

id scml::strSplit(scml *this, NSString *a2)
{
  v2 = this;
  {
    scml::strSplit(NSString *)::regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:0 error:0];
  }

  v3 = scml::strSplitByRegex(v2, scml::strSplit(NSString *)::regex, 0);

  return v3;
}

void sub_1B8A6AB9C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id scml::strTokenizeWords(scml *this, NSString *a2)
  v2 = {;

  return v2;
}

id scml::anonymous namespace::strTokenizeWords(scml::_anonymous_namespace_ *this, NSString *a2)
{
  v2 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v33 = this;
  {
    [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b" options:64 error:0];
  }

  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = objc_claimAutoreleasedReturnValue();
  v5 = v4;
  if (v2)
  {
    v6 = v4;
    {
      [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\p{Letter}$" options:64 error:0];
    }

    {
      [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\p{Letter}" options:64 error:0];
    }

    v38 = 0;
    std::vector<BOOL>::vector(&__p, [v6 count]);
    for (i = 0; i < [v6 count]; ++i)
    {
      v8 = [v6 objectAtIndexedSubscript:i];
      v9 = [v8 isEqualToString:@":"];

      if (v9)
      {
        if (i)
        {
          v11 = [v6 objectAtIndexedSubscript:i - 1];
          v13 = scml::regexSearch(v10, v11, v12);
        }

        else
        {
          v13 = 1;
        }

        if (i == [v6 count] - 1)
        {
          v14 = 1;
        }

        else
        {
          v16 = [v6 objectAtIndexedSubscript:i + 1];
          v14 = scml::regexSearch(v15, v16, v17);
        }

        if (v13 && v14)
        {
          v18 = __p;
          if (i)
          {
            *(__p + (((i - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (i - 1);
          }

          v18[i >> 6] |= 1 << i;
          if (i >= [v6 count] - 1)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p;
            *(__p + (((i + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (i + 1);
          }

          v19[i >> 6] |= 1 << i;
        }

        else
        {
          *(__p + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << i);
        }
      }
    }

    v5 = [MEMORY[0x1E695E0F0] mutableCopy];
    for (j = 0; j < [v6 count]; ++j)
    {
      v21 = [v6 objectAtIndexedSubscript:j];
      [v5 addObject:v21];

      if ((*(__p + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j))
      {
        while (j < [v6 count] - 1 && ((*(__p + (((j + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (j + 1)) & 1) != 0)
        {
          v22 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];
          v23 = [v6 objectAtIndexedSubscript:j + 1];
          v24 = [v22 stringByAppendingString:v23];
          [v5 setObject:v24 atIndexedSubscript:{objc_msgSend(v5, "count") - 1}];

          ++j;
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  v25 = [MEMORY[0x1E695E0F0] mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v5;
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v27)
  {
    v28 = *v35;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v34 + 1) + 8 * k) stringByTrimmingCharactersInSet:v3];
        if ([v30 length])
        {
          [v25 addObject:v30];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v25;
}

void sub_1B8A6B14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{

  _Unwind_Resume(a1);
}

id scml::strTokenizeWordsForNLP(scml *this, NSString *a2)
  v2 = {;

  return v2;
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::unordered_map<char,std::string>::unordered_map(uint64_t a1, char *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::__emplace_unique_key_args<char,std::pair<char const,std::string> const&>(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::__emplace_unique_key_args<char,std::pair<char const,std::string> const&>(void *a1, char *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::__construct_node_hash<std::pair<char const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1B8A6B564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<char,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B8A6B62C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<char,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<char,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<char,std::string>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::string>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::string>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1B8A6B79C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8CC7230](v2, 0x1080C405728B793);

  _Unwind_Resume(a1);
}

void scml::MultiwordGazetteer::~MultiwordGazetteer(scml::MultiwordGazetteer *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<scml::MultiwordGazetteer::Impl>::operator()[abi:ne200100](this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<scml::MultiwordGazetteer::Impl>::operator()[abi:ne200100](this, v1);
  }
}

uint64_t scml::MultiwordGazetteer::Impl::hasGazetteerMatch(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v9 = scml::MultiwordGazetteer::Impl::fullMatchString(a1, v7, v8);

  if (v9)
  {
    if (a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a4;
    }

    v11 = a3 + 32 * a4 - 32;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      v14 = *(a1 + 64);
      if (v12 >= v14)
      {
LABEL_15:
        v25 = 0;
        goto LABEL_17;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", "startsentinel", v7];
      v17 = scml::MultiwordGazetteer::Impl::fullMatchString(a1, v15, v16);

      if (v17)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_15;
      }

      v18 = *(v11 + 23);
      if (v18 < 0)
      {
        v19 = *v11;
        v18 = *(v11 + 8);
      }

      else
      {
        v19 = v11;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = scml::strToNSString(v19, v18);
      v22 = [v20 stringWithFormat:@"%@ %@", v21, v7];

      v24 = scml::MultiwordGazetteer::Impl::fullMatchString(a1, v22, v23);
      v11 -= 32;
      ++v12;

      v7 = v22;
      if (!v24)
      {
        v25 = 0;
        v7 = v22;
        goto LABEL_17;
      }
    }

    v25 = 1;
LABEL_17:
    if (v13 >= v14)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t scml::MultiwordGazetteer::Impl::hasGazetteerMatch(std::mutex *this, NSString *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  std::mutex::lock(this);
  v5 = scml::strTokenizeWordsForNLP(v3, v4);
  language_modeling::v1::LinguisticContext::LinguisticContext(v22);
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v21 = 1;
  MEMORY[0x1B8CC6C90](v22, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = language_modeling::v1::LinguisticContext::tokenSpan(v22);
        if (scml::MultiwordGazetteer::Impl::hasGazetteerMatch(this, v10, v11, v12))
        {

          v7 = 1;
          goto LABEL_20;
        }

        scml::strFromNSString(v10, &v15);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v15;
        }

        v21 = 0;
        MEMORY[0x1B8CC6C90](v22, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  language_modeling::v1::LinguisticContext::~LinguisticContext(v22);
  std::mutex::unlock(this);

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B8A6BC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  language_modeling::v1::LinguisticContext::~LinguisticContext(&a28);

  std::mutex::unlock(v29);
  _Unwind_Resume(a1);
}

id scml::MultiwordGazetteer::preprocess(void *a1, int a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v28 = a1;
  v27 = [MEMORY[0x1E695E0F8] mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v28 allKeys];
  v26 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v26)
  {
    v25 = *v43;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v42 + 1) + 8 * i);
        v34 = [MEMORY[0x1E695E0F0] mutableCopy];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v3 = [v28 objectForKeyedSubscript:v2];
        v4 = [v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
        v29 = v2;
        if (v4)
        {
          v33 = *v39;
          v31 = v3;
          do
          {
            v35 = v4;
            for (j = 0; j != v35; ++j)
            {
              if (*v39 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v6 = *(*(&v38 + 1) + 8 * j);
              v37 = 0;
              v7 = [_TtC26SensitiveContentAnalysisML14SCMLNormalizer normalizeText:v6 lite:0 error:&v37];
              v36 = v37;
              if (!v7)
              {
                exception = __cxa_allocate_exception(0x18uLL);
                scml::makeException("failed to normalize text", 0x18uLL, v36, exception);
              }

              v9 = v34;
              if (a2)
              {
                v10 = scml::strTokenizeWordsForNLP(v7, v8);
                v11 = [v10 count];
                v12 = &stru_1F374C020;
                while (v11 > 0)
                {
                  --v11;
                  if ([(__CFString *)v12 length])
                  {
                    v13 = MEMORY[0x1E696AEC0];
                    v14 = [v10 objectAtIndexedSubscript:v11];
                    v15 = [v13 stringWithFormat:@"%@ %@", v14, v12];

                    v12 = v15;
                  }

                  else
                  {
                    [v10 objectAtIndexedSubscript:v11];
                    v12 = v14 = v12;
                  }

                  [v9 addObject:v12];
                }

                v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", "startsentinel", v12];
                [v9 addObject:v16];
              }

              else
              {
                v10 = scml::strTokenizeWordsForNLP(v7, v8);
                v12 = [v10 componentsJoinedByString:@" "];
                [v9 addObject:v12];
              }
            }

            v3 = v31;
            v4 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v4);
        }

        v17 = [v34 valueForKeyPath:@"@distinctUnionOfObjects.self"];
        v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1];
        v48[0] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
        v20 = [v17 sortedArrayUsingDescriptors:v19];

        [v27 setObject:v20 forKeyedSubscript:v29];
      }

      v26 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v26);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v27;
}

void scml::MultiwordGazetteer::writePreprocessed(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v22 = v4;
  v5 = v3;
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*MEMORY[0x1E69778B0]];
  v7 = *MEMORY[0x1E6998158];
  v24[0] = *MEMORY[0x1E6998148];
  v24[1] = v7;
  v25 = v5;
  v26 = MEMORY[0x1E695E118];
  v24[2] = *MEMORY[0x1E6998150];
  v27 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:v24 count:3];
  v23 = 0;
  cf = NLGazetteerCreate();
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::makeException("failed to init gazetteer", 0x18uLL, v23, exception);
  }

  v9 = NLGazetteerCopyCompressedModel();
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v20 = 0;
  v11 = [v9 writeToURL:v10 options:1 error:&v20];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v16 = v12;
    v17 = __cxa_allocate_exception(0x18uLL);
    scml::strCat<char const(&)[30],NSString * {__strong}&>("Failed to write gazetteer to ", &v22, &v25);
    if (SHIBYTE(v27) >= 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25;
    }

    if (SHIBYTE(v27) >= 0)
    {
      v19 = HIBYTE(v27);
    }

    else
    {
      v19 = v26;
    }

    scml::makeException(v18, v19, v16, v17);
  }

  v13 = cf;
  cf = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B8A6C474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:

      std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](&a11, 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t scml::strCat<char const(&)[30],NSString * {__strong}&>@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  scml::scml_impl::strCat<char const(&)[30],NSString * {__strong}&>(&v10, a1, a2);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      a3[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a3[23] = v6;
  if (v6)
  {
    memmove(a3, locale, v6);
  }

LABEL_14:
  a3[v6] = 0;
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v18);
}

void sub_1B8A6C760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8CC71A0](v2 + 112);
  _Unwind_Resume(a1);
}

void scml::MultiwordGazetteer::loadGazetteer(scml::MultiwordGazetteer *this@<X0>, const void **a2@<X8>)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v6 = *MEMORY[0x1E6998158];
  v11[0] = *MEMORY[0x1E6998140];
  v11[1] = v6;
  v12[0] = v5;
  v12[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  *a2 = 0;
  v8 = NLGazetteerCreate();
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](a2, v8);
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::makeException("failed to init gazetteer", 0x18uLL, 0, exception);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B8A6C8D4(_Unwind_Exception *a1)
{
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](v3, 0);

  _Unwind_Resume(a1);
}

void std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

id scml::MultiwordGazetteer::fullMatchString(scml::MultiwordGazetteer *this, void *a2, NSString *a3)
{
  v3 = a2;
  v9 = 0;
  v4 = [_TtC26SensitiveContentAnalysisML14SCMLNormalizer normalizeText:v3 lite:0 error:&v9];
  v5 = v9;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::makeException("failed to normalize text", 0x18uLL, v5, exception);
  }

  v6 = NLGazetteerCopyLabel();

  return v6;
}

void sub_1B8A6CA44(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);

  _Unwind_Resume(a1);
}

id scml::MultiwordGazetteer::Impl::fullMatchString(scml::MultiwordGazetteer **this, NSString *a2, NSString *a3)
{
  v3 = scml::MultiwordGazetteer::fullMatchString(this[9], a2, a3);

  return v3;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] <= a1->n128_u64[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] > a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] > a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 > a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] > a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 > *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 <= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 <= *(a2 - 2))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v3 <= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[2];
      v4 += 2;
    }

    while (v3 <= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 > v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[2];
      v4 += 2;
    }

    while (v3 <= v8);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 > v9);
  }

  if (v4 - 2 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,_NSRange *,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = *&a1[++v2];
  }

  while (v5 > v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 2);
    }

    while (v9 <= v4);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 2);
    }

    while (v8 <= v4);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 2);
      }

      while (v13 > v4);
      do
      {
        v14 = *(v11-- - 2);
      }

      while (v14 <= v4);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] <= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] <= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] > v11->n128_u64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 <= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*,_NSRange*>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 > *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (*(v19 - 2) <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[2 * v24];
            v26 = *v17;
            if (*v25 > *v17)
            {
              v27 = v17[1];
              do
              {
                v28 = v17;
                v17 = v25;
                *v28 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[2 * v24];
              }

              while (*v25 > v26);
              *v17 = v26;
              v17[1] = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,scml::MultiwordGazetteer::Impl::replaceMatches(NSString *,NSString *)::{lambda(_NSRange const&,_NSRange const&)#1} &,_NSRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[2];
        if (*v8 >= v11)
        {
          v10 = v8[2];
        }

        if (*v8 > v11)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        v13 = a4[1];
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 16 * v15);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v16 = *v8;
            v7 = v15;
          }

          else
          {
            v16 = *v8;
            v17 = v8[2];
            if (*v8 >= v17)
            {
              v16 = v8[2];
            }

            if (*v8 <= v17)
            {
              v7 = v15;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v16 <= v12);
        *a4 = v12;
        a4[1] = v13;
      }
    }
  }

  return result;
}

scml::MultiwordGazetteer::Impl *scml::MultiwordGazetteer::Impl::Impl(scml::MultiwordGazetteer::Impl *this, NSString *a2, uint64_t a3)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = a3;
  scml::MultiwordGazetteer::loadGazetteer(a2, this + 9);
  return this;
}

void std::default_delete<scml::MultiwordGazetteer::Impl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((a2 + 72), 0);
    std::mutex::~mutex(a2);

    JUMPOUT(0x1B8CC7230);
  }
}

uint64_t scml::scml_impl::strCat<char const(&)[30],NSString * {__strong}&>(void *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  MEMORY[0x1B8CC70C0](a1, *a3 != 0);

  return scml::scml_impl::strCat<>(a1);
}

void sub_1B8A6E940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, scml::MultiwordGazetteer **a11, scml::MultiwordGazetteer **a12, scml::MultiwordGazetteer **a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset(&a29, 0);
  scml::SignpostInterval::~SignpostInterval(&a47);
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v48 + 88), 0);
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](v50, 0);
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v48 + 72), 0);
  std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100](a10, 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v48 + 56), 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100](a11, 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v48 + 40), 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100](a12, 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v48 + 24), 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100](a13, 0);
  std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v48 + 8), 0);
  nlp::CFScopedPtr<_LXLexicon const*>::reset(v48, 0);

  MEMORY[0x1B8CC7230](v48, 0x10E0C4067ACB241);
  scml::SignpostInterval::~SignpostInterval(&a38);
  if (a2 == 2)
  {
    v55 = __cxa_begin_catch(a1);
    if (a14)
    {
      *a14 = scml::error(0xEu, v55);
    }

    v56 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [SCMLTextSanitizer initWithConfiguration:v55 error:v56];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A6E7C8);
  }

  scml::SignpostInterval::~SignpostInterval((v52 - 256));

  _Unwind_Resume(a1);
}

id scml::anonymous namespace::RuleBasedTextSanitizer::toGazetteerPath(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = scml::strToNSString(a1, a2);
  v4 = [v2 stringWithFormat:@"%@.gaze", v3];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 resourcePath];
  v12[0] = v7;
  v12[1] = @"gaze";
  v12[2] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v6 pathWithComponents:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1B8A6F35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B8A6F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v27 = v26;

  if (a2 == 2)
  {
    v30 = __cxa_begin_catch(a1);
    scml::strCat<char const(&)[47],std::string const&>("Failed ", v25 + 56, &__p);
    v31 = *(v25 + 40);
    if ((a14 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((a14 & 0x80u) == 0)
    {
      v33 = a14;
    }

    else
    {
      v33 = a10;
    }

    v34 = scml::error(0xFu, p_p, v33, v30);
    v35 = *(v31 + 24);
    *(v31 + 24) = v34;

    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B8A6F710);
  }

  scml::Deferred::~Deferred(&a23);

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v2 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v2;
  }
}