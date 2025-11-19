void TGITextGenerationInferenceModelConfiguration::~TGITextGenerationInferenceModelConfiguration(void **this)
{
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

void sub_26D3C3538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  _Unwind_Resume(a1);
}

BOOL TGITextGenerationInferenceModelConfiguration::operator==(void *a1, void *a2)
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

  v13 = v9 >= 0 ? v7 + 3 : v7[3];
  v14 = v12 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(v7 + 71);
  if (v15 >= 0)
  {
    v16 = *(v7 + 71);
  }

  else
  {
    v16 = v7[7];
  }

  v17 = *(v6 + 71);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[7];
  }

  if (v16 != v17)
  {
    return 0;
  }

  v21 = v7[6];
  v20 = v7 + 6;
  v19 = v21;
  if (v15 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  v25 = v6[6];
  v24 = v6 + 6;
  v23 = v25;
  if (v18 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  return memcmp(v22, v26, v16) == 0;
}

uint64_t TGITextGenerationInferenceUtils::spanForVector<int>(uint64_t *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = *a1;
    if (a2 > (a1[1] - *a1) >> 2)
    {
      TGITextGenerationInferenceUtils::spanForVector<int>();
    }
  }

  else
  {
    v3 = *a1;
    a2 = (a1[1] - *a1) >> 2;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_26D3C3E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D3C400C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_atomic_property__11(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D9C620, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
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

void std::vector<TGITextGenerationInferenceWordFragment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TGITextGenerationInferenceWordFragment>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TGITextGenerationInferenceWordFragment>::clear[abi:ne200100](uint64_t *a1)
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_26D3C4610(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *__copy_helper_atomic_property__0(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __assign_helper_atomic_property__0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void TGITextGenerationInferenceModel::createWithConfiguration(TGITextGenerationInferenceModel *this, const TGITextGenerationInferenceModelConfiguration *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, *(this + 3), *(this + 4));
  }

  else
  {
    v2 = *(this + 1);
  }

  operator new();
}

void sub_26D3C555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sentencepiece::util::Status::~Status(&a10);
  (*(*v30 + 8))(v30);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26D3C5734()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x26D3C5608);
}

void sub_26D3C5754(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x26D3C56A4);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void TGITextGenerationInferenceModel::alloc(E5RT::ExecutionStreamOperation **this)
{
  for (i = *(E5RT::ExecutionStreamOperation::GetInputPorts(this[1]) + 16); i; i = *i)
  {
    allocPort((i + 2), i[5], this + 4);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[1]);
  for (j = *(OutputPorts + 2); j; j = *j)
  {
    allocPort((j + 2), j[5], this + 4);
  }

  E5RT::ExecutionStream::CreateExecutionStream(&v12, OutputPorts);
  v5 = v12;
  v12 = 0;
  v6 = this[3];
  this[3] = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v9 = this[2];
  v8 = this[3];
  v10 = this[1];
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26D3C593C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void TGITextGenerationInferenceModel::init(TGITextGenerationInferenceModel *this)
{
  v64 = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  v2 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v59, "in_new_token_mask");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
  v5 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  *(this + 10) = E5RT::TensorDescriptor::GetNumElements(v5);
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
  }

  v6 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_mask");
  v7 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x26D6BEA90](v51, v58);
  v59 = vdupq_n_s64(1uLL);
  v8 = *(this + 10);
  v60.i64[0] = 1;
  v60.i64[1] = v8;
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v61, 4uLL);
  checkTensorType(v7, v51, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v51);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "in_new_token_id_2U8LE");
  v9 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, &v59);
  v10 = v9;
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else if (v9)
  {
LABEL_9:
    v11 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v59, "in_new_token_id_2U8LE");
    v12 = E5RT::ExecutionStreamOperation::GetInputPortRef();
    MEMORY[0x26D6BEA90](v50, v55);
    *v63 = xmmword_26D448260;
    *&v63[16] = 2;
    v53 = 0;
    v54 = 0;
    __p = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v63, &v64, 3uLL);
    checkTensorType(v12, v50, &__p);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    v13 = v50;
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "in_new_token_id");
  v14 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, &v59);
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
  }

  if (!v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "One of in_new_token_id_2U8LE or in_new_token_id should be present");
    goto LABEL_61;
  }

  v15 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v59, "in_new_token_id");
  v16 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x26D6BEA90](v49, v56);
  *v63 = vdupq_n_s64(1uLL);
  v53 = 0;
  v54 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v63, &v63[16], 2uLL);
  checkTensorType(v16, v49, &__p);
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  v13 = v49;
LABEL_19:
  E5RT::TensorDataType::~TensorDataType(v13);
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "in_relative_positions");
  v17 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, &v59);
  v18 = v17;
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
    if (v18)
    {
LABEL_23:
      v19 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions");
      v20 = E5RT::ExecutionStreamOperation::GetInputPortRef();
      MEMORY[0x26D6BEA90](v48, v58);
      v21 = *(this + 10);
      v59.i64[0] = 1;
      v59.i64[1] = v21;
      v60 = vdupq_n_s64(1uLL);
      memset(v63, 0, sizeof(v63));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v61, 4uLL);
      checkTensorType(v20, v48, v63);
      if (*v63)
      {
        *&v63[8] = *v63;
        operator delete(*v63);
      }

      E5RT::TensorDataType::~TensorDataType(v48);
      if (SHIBYTE(v54) < 0)
      {
        v22 = __p;
LABEL_37:
        operator delete(v22);
        goto LABEL_38;
      }

      goto LABEL_38;
    }
  }

  else if (v17)
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "in_self_attention_logit_biases");
  v23 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, &v59);
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
  }

  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Either of in_relative_positions or in_self_attention_logit_biases should be present");
LABEL_61:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v24 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v59, "in_self_attention_logit_biases");
  v25 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  v26 = E5RT::IOPort::GetPortDescriptorRef(v25);
  v27 = E5RT::OperandDescriptor::TensorDescriptor(v26);
  *(this + 9) = E5RT::TensorDescriptor::GetNumElements(v27) / *(this + 10);
  if (v60.i8[7] < 0)
  {
    operator delete(v59.i64[0]);
  }

  v28 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v59, "in_self_attention_logit_biases");
  v29 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x26D6BEA90](v47, v58);
  *v63 = 1;
  *&v63[8] = *(this + 72);
  v53 = 0;
  v54 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v63, &v64, 3uLL);
  checkTensorType(v29, v47, &__p);
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v47);
  if (v60.i8[7] < 0)
  {
    v22 = v59.i64[0];
    goto LABEL_37;
  }

LABEL_38:
  v30 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys");
  v31 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x26D6BEA90](v46, v58);
  v59 = xmmword_26D448200;
  v60 = xmmword_26D448200;
  v61 = *(this + 10);
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v62, 5uLL);
  checkTensorType(v31, v46, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v46);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  v32 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values");
  v33 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x26D6BEA90](v45, v58);
  v59 = xmmword_26D448200;
  v60 = xmmword_26D448200;
  v61 = *(this + 10);
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v62, 5uLL);
  checkTensorType(v33, v45, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v45);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  v34 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x26D6BEA90](v44, v58);
  v59 = xmmword_26D448278;
  v60 = unk_26D448288;
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v61, 4uLL);
  checkTensorType(OutputPortRef, v44, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v44);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  v36 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_cached_keys");
  v37 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x26D6BEA90](v43, v58);
  v59 = xmmword_26D448298;
  v60 = unk_26D4482A8;
  v61 = 1;
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v62, 5uLL);
  checkTensorType(v37, v43, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v43);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  v38 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_cached_values");
  v39 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x26D6BEA90](v42, v58);
  v59 = xmmword_26D448298;
  v60 = unk_26D4482A8;
  v61 = 1;
  memset(v63, 0, sizeof(v63));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v63, &v59, &v62, 5uLL);
  checkTensorType(v39, v42, v63);
  if (*v63)
  {
    *&v63[8] = *v63;
    operator delete(*v63);
  }

  E5RT::TensorDataType::~TensorDataType(v42);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  (**this)(this, 0, 0, 0);
  E5RT::TensorDataType::~TensorDataType(v55);
  E5RT::TensorDataType::~TensorDataType(v56);
  E5RT::TensorDataType::~TensorDataType(v57);
  E5RT::TensorDataType::~TensorDataType(v58);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_26D3C6200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_free_exception(v39);
  E5RT::TensorDataType::~TensorDataType((v40 - 176));
  E5RT::TensorDataType::~TensorDataType((v40 - 160));
  E5RT::TensorDataType::~TensorDataType((v40 - 144));
  E5RT::TensorDataType::~TensorDataType((v40 - 128));
  _Unwind_Resume(a1);
}

void allocPort(uint64_t a1, E5RT::IOPort *this, void *a3)
{
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(this);
  E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  E5RT::TensorDescriptor::AllocateMemory();
  if (v9.__r_.__value_.__r.__words[0])
  {
    operator new();
  }

  DataSpan = E5RT::BufferObject::GetDataSpan(0);
  v8 = v7;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a1, *(a1 + 8));
  }

  else
  {
    v9 = *a1;
  }

  v10 = DataSpan;
  v11 = v8;
  std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,E5RT::Span<unsigned char,18446744073709551615ul>>>(a3, &v9.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  E5RT::IOPort::BindMemoryObject();
}

void sub_26D3C65BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (__p)
  {
    allocPort(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGITextGenerationInferenceModel::setInputTokenID(TGITextGenerationInferenceModel *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_id_2U8LE");
  v4 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, __p);
  v5 = v4;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_id_2U8LE");
    v6 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, __p);
    if (!v6)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v6[6] >= 2)
    {
      v7 = v6[5];
    }

    else
    {
      v7 = 0;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    *v7 = a2;
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_id");
  v8 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v8[6] >= 4)
  {
    v9 = v8[5];
  }

  else
  {
    v9 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  *v9 = a2;
}

void sub_26D3C6728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t checkTensorType(E5RT::IOPort *a1, uint64_t a2, uint64_t a3)
{
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1);
  v5 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  E5RT::TensorDescriptor::GetTensorDataTypeRef(v5);
  if (E5RT::operator!=())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "I/O has invalid dtype");
    goto LABEL_11;
  }

  result = E5RT::TensorDescriptor::GetTensorShape(v5);
  v7 = *a3;
  v8 = *result;
  v9 = *(result + 8);
  v10 = v9 - *result;
  if (*(a3 + 8) - *a3 != v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "I/O has invalid rank");
    goto LABEL_11;
  }

  if (v9 != v8)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *v7++;
      v12 = v13;
      if (v13 != -1 && v12 != *v8)
      {
        break;
      }

      ++v8;
      if (!--v11)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "I/O has invalid shape");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void TGITextGenerationInferenceModel::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v10, "reset");
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN31TGITextGenerationInferenceModel5resetEmNSt3__18optionalImEE_block_invoke;
  v9[3] = &__block_descriptor_tmp;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  TGITextGenerationInferenceUtils::executeBlockWithReason(v8, v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_26D3C6928(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN31TGITextGenerationInferenceModel5resetEmNSt3__18optionalImEE_block_invoke(void *a1)
{
  v2 = a1[4];
  TGITextGenerationInferenceModel::setInputTokenID(v2, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_mask");
  v40[0] = __p;
  v3 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v4 = v3[5];
  v5 = v3[6];
  LOWORD(v40[0]) = 0;
  if (v5 >= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE(v6, v5 >> 1, v40, 1uLL, 0, 0, 0);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *(v2 + 88) = a1[5];
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_keys");
  v40[0] = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v8 = v7[5];
  v9 = v7[6];
  v11 = (v2 + 80);
  v10 = *(v2 + 80);
  v12 = a1[6];
  LOWORD(v40[0]) = 0;
  if (v9 >= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE(v13, v9 >> 1, v40, v10, a1[5], v12, a1[7]);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values");
  v40[0] = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v15 = v14[5];
  v16 = v14[6];
  LOWORD(v40[0]) = 0;
  if (v16 >= 2)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE(v17, v16 >> 1, v40, *v11, a1[5], a1[6], a1[7]);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
  v18 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>((v2 + 32), __p);
  v19 = v18;
  if (v43 < 0)
  {
    operator delete(__p[0]);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else if (v18)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
    v40[0] = __p;
    v20 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
    if (v20[6] >= 2)
    {
      v21 = v20[5];
    }

    else
    {
      v21 = 0;
    }

    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 56))
    {
      v22 = a1 + 6;
    }

    else
    {
      v22 = (v2 + 80);
    }

    v23 = *v22;
    v24 = a1[5];
    v25 = v23 > v24;
    v26 = v23 - v24;
    if (v25)
    {
      memset_pattern16(&v21[2 * v24], &unk_26D448250, 2 * v26);
    }

    goto LABEL_36;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_self_attention_logit_biases");
  v40[0] = __p;
  v27 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v28 = v27[5];
  v29 = v27[6];
  LOWORD(v40[0]) = -1822;
  if (v29 >= 2)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE(v30, v29 >> 1, v40, *v11, a1[5], a1[6], a1[7]);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = a1[5];
LABEL_36:
  std::vector<int>::resize((v2 + 168), v24);
  if (*(v2 + 272) == 1)
  {
    *(v2 + 272) = 0;
  }

  if (a1[5])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_keys");
    v40[0] = __p;
    v31 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
    v32 = TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>(v31 + 5, a1[5] - 1, *v11);
    v34 = v33;
    std::string::basic_string[abi:ne200100]<0>(v40, "in_cached_values");
    v44 = v40;
    v35 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), v40);
    v36 = TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>(v35 + 5, a1[5] - 1, *v11);
    v38 = *(v2 + 168);
    v39 = (*(v2 + 176) - v38) >> 2;
    if (*(v2 + 176) == v38)
    {
      v38 = 0;
    }

    *(v2 + 192) = v32;
    *(v2 + 200) = v34;
    *(v2 + 208) = v36;
    *(v2 + 216) = v37;
    *(v2 + 224) = v38;
    *(v2 + 232) = v39;
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    if (v43 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_26D3C6D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
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
    std::vector<int>::__append(this, __sz - v2);
  }
}

unint64_t TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a3 || (v3 = a1[1]) == 0 || v3 % a3)
  {
    TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>();
  }

  if (a2 >= a3)
  {
    TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>();
  }

  if (v3 >= a3)
  {
    return *a1 + v3 / a3 * a2;
  }

  else
  {
    return 0;
  }
}

void TGITextGenerationInferenceModel::tokenIDsForText(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  __p = 0;
  v28 = 0;
  v29 = 0;
  v5 = *(a1 + 240);
  v6 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  (*(*v5 + 144))(&v26);
  if (sentencepiece::util::Status::code(&v26))
  {
    v8 = _nlpDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a2 + 23);
      v23 = *a2;
      v24 = sentencepiece::util::Status::code(&v26);
      if (v22 >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = v23;
      }

      *buf = 136315394;
      v31 = v25;
      v32 = 1024;
      v33 = v24;
      _os_log_error_impl(&dword_26D3C1000, v8, OS_LOG_TYPE_ERROR, "Sentence piece failed to convert text: %s to tokenIDs with status: %d", buf, 0x12u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = __p;
    v10 = v28;
    if (__p != v28)
    {
      v11 = 0;
      do
      {
        v12 = *v9;
        v13 = a3[2];
        if (v11 >= v13)
        {
          v14 = *a3;
          v15 = v11 - *a3;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v18 = v13 - v14;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v19);
          }

          *(4 * v16) = v12;
          v11 = (4 * v16 + 4);
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v11;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v12;
          v11 += 4;
        }

        a3[1] = v11;
        ++v9;
      }

      while (v9 != v10);
    }
  }

  sentencepiece::util::Status::~Status(&v26);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_26D3C7040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sentencepiece::util::Status::~Status(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *TGITextGenerationInferenceModel::textForTokenID@<X0>(TGITextGenerationInferenceModel *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**(this + 30) + 512))(*(this + 30));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void TGITextGenerationInferenceModel::textForTokenIDs(uint64_t a1@<X0>, unsigned int **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = a2[1];
  if (v4)
  {
    v6 = *a2;
    v7 = 4 * v4;
    do
    {
      (*(*a1 + 64))(__p, a1, *v6);
      if ((v11 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a3, v8, v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v6;
      v7 -= 4;
    }

    while (v7);
  }
}

void sub_26D3C7224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 TGITextGenerationInferenceModel::setModelStepStateForIndex(uint64_t a1, uint64_t a2, __int16 **a3)
{
  if (*(a1 + 88) >= *(a1 + 80))
  {
    TGITextGenerationInferenceModel::setModelStepStateForIndex();
  }

  v5 = a3[5] - 1;
  v6 = *(a1 + 168);
  v7 = (a1 + 168);
  if (v5 != (*(a1 + 176) - v6) >> 2 || ((v8 = a3[4], a3[5] != 1) ? (v9 = a3[4]) : (v9 = 0), memcmp(v9, v6, 4 * v5)))
  {
    TGITextGenerationInferenceModel::setModelStepStateForIndex();
  }

  v50 = *E5RT::Span<int,18446744073709551615ul>::At(a3 + 4, v5);
  std::vector<int>::push_back[abi:ne200100](v7, &v50);
  v10 = *a3;
  v11 = a3[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_keys");
  v51 = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 32), __p);
  v13 = v12[5];
  v14 = v12[6];
  if (v11 >= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (v14 >= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES4_mm(v15, v11 >> 1, v16, v14 >> 1, *(a1 + 80), *(a1 + 88));
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = a3[2];
  v18 = a3[3];
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values");
  v51 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 32), __p);
  v20 = v19[5];
  v21 = v19[6];
  if (v18 >= 2)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  if (v21 >= 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES4_mm(v22, v18 >> 1, v23, v21 >> 1, *(a1 + 80), *(a1 + 88));
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
  v24 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>((a1 + 32), __p);
  v25 = v24;
  if (v49 < 0)
  {
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_25;
    }
  }

  else if (v24)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
    v26 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>((a1 + 32), __p);
    if (!v26)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v26[6] >= 2)
    {
      v28 = v26[5];
    }

    else
    {
      v28 = 0;
    }

    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = *(a1 + 88);
    *v27.i16 = v29;
    if (v29 + 1 > 1)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = 1;
    }

    v31 = vdupq_n_s64(v30 - 1);
    v32 = -((v30 + 7) & 0xFFFFFFFFFFFFFFF8);
    v33 = xmmword_26D448210;
    v34 = xmmword_26D448220;
    v35 = xmmword_26D448230;
    v36 = xmmword_26D448240;
    v37 = (v28 + 8);
    v38 = 7;
    v39 = vdupq_n_s64(8uLL);
    do
    {
      v40 = vmovn_s64(vcgeq_u64(v31, v36));
      if (vuzp1_s8(vuzp1_s16(v40, v27), v27).u8[0])
      {
        *(v37 - 4) = (v38 - 7) - *v27.i16;
      }

      if (vuzp1_s8(vuzp1_s16(v40, v27), *&v27).i8[1])
      {
        *(v37 - 3) = (v38 - 6) - *v27.i16;
      }

      if (vuzp1_s8(vuzp1_s16(v27, vmovn_s64(vcgeq_u64(v31, *&v35))), *&v27).i8[2])
      {
        *(v37 - 2) = (v38 - 5) - *v27.i16;
        *(v37 - 1) = (v38 - 4) - *v27.i16;
      }

      v41 = vmovn_s64(vcgeq_u64(v31, v34));
      if (vuzp1_s8(*&v27, vuzp1_s16(v41, v27)).i32[1])
      {
        *v37 = (v38 - 3) - *v27.i16;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v41, v27)).i8[5])
      {
        v37[1] = (v38 - 2) - *v27.i16;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v27, vmovn_s64(vcgeq_u64(v31, *&v33)))).i8[6])
      {
        v37[2] = (v38 - 1) - *v27.i16;
        v37[3] = v38 - *v27.i16;
      }

      v34 = vaddq_s64(v34, v39);
      v35 = vaddq_s64(v35, v39);
      v36 = vaddq_s64(v36, v39);
      v33 = vaddq_s64(v33, v39);
      v38 += 8;
      v37 += 8;
    }

    while (v32 + v38 != 7);
    goto LABEL_55;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_self_attention_logit_biases");
  v51 = __p;
  v42 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 32), __p);
  v43 = v42[5];
  v44 = v42[6];
  if (v44 >= 2)
  {
    v45 = v42[5];
  }

  else
  {
    v45 = 0;
  }

  fillWithALiBi(v45, v44 >> 1, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_55:
  if (*(a1 + 272) == 1)
  {
    *(a1 + 272) = 0;
  }

  result = *a3;
  v47 = *(a3 + 2);
  *(a1 + 208) = *(a3 + 1);
  *(a1 + 224) = v47;
  *(a1 + 192) = result;
  ++*(a1 + 88);
  return result;
}

void sub_26D3C7684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t E5RT::Span<int,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    E5RT::Span<int,18446744073709551615ul>::At();
  }

  return *a1 + 4 * a2;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

void fillWithALiBi(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v41[0] = a1;
  v41[1] = a2;
  v8 = 1 << log2(a3);
  v9 = exp2(-8.0 / v8);
  if (a3)
  {
    v10 = v9;
    v11 = 0;
    v12 = a4 - 1;
    if (a5 < a4 - 1)
    {
      v12 = a5;
    }

    v13 = ~v12 & 0xFFFFFFFFFFFFFFF8;
    v14 = a5 - 7;
    v39 = vdupq_n_s64(8uLL);
    v40 = vdupq_n_s64(v12);
    do
    {
      if (v11 >= v8)
      {
        v15 = 0.5;
      }

      else
      {
        v15 = 1.0;
      }

      v16 = pow(v10, v15 + (v11 % v8));
      v17 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(v41, v11 * a4, a4);
      if (a4)
      {
        v18 = v14;
        v19 = 7;
        v20 = -v16;
        v21 = xmmword_26D448240;
        v22 = xmmword_26D448230;
        v23 = xmmword_26D448220;
        v24 = xmmword_26D448210;
        do
        {
          v25 = vmovn_s64(vcgeq_u64(v40, v21));
          if (vuzp1_s8(vuzp1_s16(v25, *&v20), *&v20).u8[0])
          {
            _D6 = v20 * (v19 - 7);
            __asm { FCVT            H6, D6 }

            *(v17 + 2 * ((v18 + 7) % a4)) = LOWORD(_D6);
          }

          if (vuzp1_s8(vuzp1_s16(v25, *&v20), *&v20).i8[1])
          {
            _D5 = v20 * (v19 - 6);
            __asm { FCVT            H5, D5 }

            *(v17 + 2 * ((v18 + 6) % a4)) = LOWORD(_D5);
          }

          if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v40, *&v22))), *&v20).i8[2])
          {
            _D6 = v20 * (v19 - 5);
            __asm { FCVT            H6, D6 }

            *(v17 + 2 * ((v18 + 5) % a4)) = LOWORD(_D6);
            _D5 = v20 * (v19 - 4);
            __asm { FCVT            H5, D5 }

            *(v17 + 2 * ((v18 + 4) % a4)) = LOWORD(_D5);
          }

          v34 = vmovn_s64(vcgeq_u64(v40, v23));
          if (vuzp1_s8(*&v20, vuzp1_s16(v34, *&v20)).i32[1])
          {
            _D6 = v20 * (v19 - 3);
            __asm { FCVT            H6, D6 }

            *(v17 + 2 * ((v18 + 3) % a4)) = LOWORD(_D6);
          }

          if (vuzp1_s8(*&v20, vuzp1_s16(v34, *&v20)).i8[5])
          {
            _D5 = v20 * (v19 - 2);
            __asm { FCVT            H5, D5 }

            *(v17 + 2 * ((v18 + 2) % a4)) = LOWORD(_D5);
          }

          if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v40, *&v24)))).i8[6])
          {
            _D6 = v20 * (v19 - 1);
            __asm { FCVT            H6, D6 }

            *(v17 + 2 * ((v18 + 1) % a4)) = LOWORD(_D6);
            _D5 = v20 * v19;
            __asm { FCVT            H5, D5 }

            *(v17 + 2 * (v18 % a4)) = LOWORD(_D5);
          }

          v23 = vaddq_s64(v23, v39);
          v22 = vaddq_s64(v22, v39);
          v21 = vaddq_s64(v21, v39);
          v24 = vaddq_s64(v24, v39);
          v19 += 8;
          v18 -= 8;
        }

        while (v13 + v19 != 7);
      }

      ++v11;
    }

    while (v11 != a3);
  }
}

void TGITextGenerationInferenceModel::run(TGITextGenerationInferenceModel *this, int a2)
{
  v51 = a2;
  if (*(this + 11) >= *(this + 10))
  {
    TGITextGenerationInferenceModel::run();
  }

  std::vector<int>::push_back[abi:ne200100](this + 21, &v51);
  v4 = *(this + 10);
  v3 = *(this + 11);
  TGITextGenerationInferenceModel::setInputTokenID(this, v51);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_mask");
  v45[0] = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, __p);
  v6 = v3 % v4;
  v7 = v5[5];
  if (v5[6] < 2)
  {
    v7 = 0;
  }

  v7[v6] = COERCE_UNSIGNED_INT(1.0);
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
  v8 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(this + 4, __p);
  v9 = v8;
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
    v45[0] = __p;
    v10 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, __p);
    if (v10[6] >= 2)
    {
      v12 = v10[5];
    }

    else
    {
      v12 = 0;
    }

    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(this + 11);
    *v11.i16 = v13;
    if (v13 + 1 > 1)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = vdupq_n_s64(v14 - 1);
    v16 = -((v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = xmmword_26D448210;
    v18 = xmmword_26D448220;
    v19 = xmmword_26D448230;
    v20 = xmmword_26D448240;
    v21 = (v12 + 8);
    v22 = 7;
    v23 = vdupq_n_s64(8uLL);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v15, v20));
      if (vuzp1_s8(vuzp1_s16(v24, v11), v11).u8[0])
      {
        *(v21 - 4) = (v22 - 7) - *v11.i16;
      }

      if (vuzp1_s8(vuzp1_s16(v24, v11), *&v11).i8[1])
      {
        *(v21 - 3) = (v22 - 6) - *v11.i16;
      }

      if (vuzp1_s8(vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v15, *&v19))), *&v11).i8[2])
      {
        *(v21 - 2) = (v22 - 5) - *v11.i16;
        *(v21 - 1) = (v22 - 4) - *v11.i16;
      }

      v25 = vmovn_s64(vcgeq_u64(v15, v18));
      if (vuzp1_s8(*&v11, vuzp1_s16(v25, v11)).i32[1])
      {
        *v21 = (v22 - 3) - *v11.i16;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v25, v11)).i8[5])
      {
        v21[1] = (v22 - 2) - *v11.i16;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v15, *&v17)))).i8[6])
      {
        v21[2] = (v22 - 1) - *v11.i16;
        v21[3] = v22 - *v11.i16;
      }

      v18 = vaddq_s64(v18, v23);
      v19 = vaddq_s64(v19, v23);
      v20 = vaddq_s64(v20, v23);
      v17 = vaddq_s64(v17, v23);
      v22 += 8;
      v21 += 8;
    }

    while (v16 + v22 != 7);
    goto LABEL_37;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_self_attention_logit_biases");
  v45[0] = __p;
  v26 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, __p);
  v27 = v26[5];
  v28 = v26[6];
  if (v28 >= 2)
  {
    v29 = v26[5];
  }

  else
  {
    v29 = 0;
  }

  fillWithALiBi(v29, v28 >> 1, *(this + 9), *(this + 10), *(this + 11));
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  std::string::basic_string[abi:ne200100]<0>(__p, "inference");
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 0x40000000;
  v50[2] = ___ZN31TGITextGenerationInferenceModel3runEi_block_invoke;
  v50[3] = &__block_descriptor_tmp_22;
  v50[4] = this;
  TGITextGenerationInferenceUtils::executeBlockWithReason(__p, v50);
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_mask");
  v45[0] = __p;
  v30 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, __p);
  v31 = v30[5];
  if (v30[6] < 2)
  {
    v31 = 0;
  }

  v31[v6] = 0;
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "copy buffers");
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 0x40000000;
  v49[2] = ___ZN31TGITextGenerationInferenceModel3runEi_block_invoke_2;
  v49[3] = &__block_descriptor_tmp_24;
  v49[4] = this;
  v49[5] = v6;
  TGITextGenerationInferenceUtils::executeBlockWithReason(__p, v49);
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  ++*(this + 11);
  std::string::basic_string[abi:ne200100]<0>(v45, "out_cached_keys");
  v43[0] = v45;
  *__p = *(std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, v45) + 5);
  std::string::basic_string[abi:ne200100]<0>(v43, "out_cached_values");
  v52 = v43;
  v48 = *(std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, v43) + 5);
  v32 = *(this + 21);
  v33 = *(this + 22);
  v34 = v33 - v32;
  if (v33 == v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(this + 21);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  v36 = v34 >> 2;
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v37 = v48;
  *(this + 12) = *__p;
  *(this + 13) = v37;
  *(this + 28) = v35;
  *(this + 29) = v36;
  std::string::basic_string[abi:ne200100]<0>(v45, "out_logits");
  v43[0] = v45;
  v38 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 4, v45);
  v39 = v38[5];
  v40 = v38[6];
  v41 = v40 >> 1;
  if (v40 < 2)
  {
    v39 = 0;
  }

  v42 = *(this + 272);
  *(this + 32) = v39;
  *(this + 33) = v41;
  if ((v42 & 1) == 0)
  {
    *(this + 272) = 1;
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_26D3C80B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN31TGITextGenerationInferenceModel3runEi_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v21, "out_cached_keys");
  __p[0] = v21;
  v3 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), v21);
  v4 = v3[5];
  v5 = v3[6];
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_keys");
  v23 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v7 = v6[5];
  v8 = v6[6];
  if (v5 >= 2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES4_mm(v9, v5 >> 1, v10, v8 >> 1, *(v2 + 80), *(a1 + 40));
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "out_cached_values");
  __p[0] = v21;
  v11 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), v21);
  v12 = v11[5];
  v13 = v11[6];
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values");
  v23 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 32), __p);
  v15 = v14[5];
  v16 = v14[6];
  if (v13 >= 2)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if (v16 >= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  _ZN31TGITextGenerationInferenceUtils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES4_mm(v17, v13 >> 1, v18, v16 >> 1, *(v2 + 80), *(a1 + 40));
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

void sub_26D3C82CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGITextGenerationInferenceModel::dumpBuffers(uint64_t a1, const void **a2)
{
  v39[20] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v5 = *MEMORY[0x277D82810];
    v6 = *(MEMORY[0x277D82810] + 24);
    do
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        v7 = a2[1];
      }

      std::string::basic_string[abi:ne200100](&v32, v7 + 1);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v32;
      }

      else
      {
        v8 = v32.__r_.__value_.__r.__words[0];
      }

      if (v7)
      {
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        memmove(v8, v9, v7);
      }

      *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
      std::to_string(&__p, *(a1 + 88));
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

      v12 = std::string::append(&v32, p_p, size);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v33, "_", 1uLL);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = *(v2 + 39);
      if (v16 >= 0)
      {
        v17 = (v2 + 2);
      }

      else
      {
        v17 = v2[2];
      }

      if (v16 >= 0)
      {
        v18 = *(v2 + 39);
      }

      else
      {
        v18 = v2[3];
      }

      v19 = std::string::append(&v34, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v37, ".bin", 4uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v36 = v21->__r_.__value_.__r.__words[2];
      *v35 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

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

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      std::ofstream::basic_ofstream(&v37, v35);
      if ((v38[*(v37.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Cannot open file for writing: ", 30);
        if (v36 >= 0)
        {
          v24 = v35;
        }

        else
        {
          v24 = v35[0];
        }

        if (v36 >= 0)
        {
          v25 = HIBYTE(v36);
        }

        else
        {
          v25 = v35[1];
        }

        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v34);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        v28 = v2[5];
        if (v2[6])
        {
          v29 = v2[5];
        }

        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v37 + *(v37.__r_.__value_.__r.__words[0] - 24)), *&v38[*(v37.__r_.__value_.__r.__words[0] - 24)] | 4);
        }
      }

      v37.__r_.__value_.__r.__words[0] = v5;
      *(v37.__r_.__value_.__r.__words + *(v5 - 24)) = v6;
      MEMORY[0x26D6BEDA0](&v37.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x26D6BEFC0](v39);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }

      v2 = *v2;
    }

    while (v2);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_26D3C8724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::locale a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::ofstream::~ofstream(&a42, MEMORY[0x277D82810]);
  MEMORY[0x26D6BEFC0](v47 + 416);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x26D6BED90](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26D3C8984(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](v1);
  _Unwind_Resume(a1);
}

__n128 TGITextGenerationInferenceModel::lastModelStepState@<Q0>(TGITextGenerationInferenceModel *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(this + 12);
  *(a2 + 16) = v2;
  result = *(this + 14);
  *(a2 + 32) = result;
  return result;
}

__n128 TGITextGenerationInferenceModel::logits@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[16];
  *a2 = result;
  a2[1].n128_u64[0] = this[17].n128_u64[0];
  return result;
}

void TGITextGenerationInferenceModel::configuration(TGITextGenerationInferenceModel *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 12), *(this + 13));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 6);
    a2->__r_.__value_.__r.__words[2] = *(this + 14);
  }

  if (*(this + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(this + 15), *(this + 16));
  }

  else
  {
    *&a2[1].__r_.__value_.__l.__data_ = *(this + 120);
    a2[1].__r_.__value_.__r.__words[2] = *(this + 17);
  }

  if (*(this + 167) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 2, *(this + 18), *(this + 19));
  }

  else
  {
    *&a2[2].__r_.__value_.__l.__data_ = *(this + 9);
    a2[2].__r_.__value_.__r.__words[2] = *(this + 20);
  }
}

void sub_26D3C8A88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__deallocate_node(int a1, void **__p)
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

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,E5RT::Span<unsigned char,18446744073709551615ul>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__construct_node_hash<std::pair<std::string const,E5RT::Span<unsigned char,18446744073709551615ul>>>();
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

void sub_26D3C8E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D3C8F48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
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

void std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3C9798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
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

uint64_t _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    E5RT::Span<int,18446744073709551615ul>::At();
  }

  return *a1 + 2 * a2;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x26D6BEDA0](a1 + 1);

  return std::ostream::~ostream();
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
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

void std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

uint64_t std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<TGITextGenerationInferenceModel>::shared_ptr[abi:ne200100]<TGITextGenerationInferenceModel,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26D3C9D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TGITextGenerationInferenceModel>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

TGITextGenerationInferenceModel **std::unique_ptr<TGITextGenerationInferenceModel>::~unique_ptr[abi:ne200100](TGITextGenerationInferenceModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TGITextGenerationInferenceModel::~TGITextGenerationInferenceModel(v2);
    MEMORY[0x26D6BF040]();
  }

  return a1;
}

void std::__shared_ptr_pointer<TGITextGenerationInferenceModel *,std::shared_ptr<TGITextGenerationInferenceModel>::__shared_ptr_default_delete<TGITextGenerationInferenceModel,TGITextGenerationInferenceModel>,std::allocator<TGITextGenerationInferenceModel>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

TGITextGenerationInferenceModel *std::__shared_ptr_pointer<TGITextGenerationInferenceModel *,std::shared_ptr<TGITextGenerationInferenceModel>::__shared_ptr_default_delete<TGITextGenerationInferenceModel,TGITextGenerationInferenceModel>,std::allocator<TGITextGenerationInferenceModel>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TGITextGenerationInferenceModel::~TGITextGenerationInferenceModel(result);

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TGITextGenerationInferenceModel *,std::shared_ptr<TGITextGenerationInferenceModel>::__shared_ptr_default_delete<TGITextGenerationInferenceModel,TGITextGenerationInferenceModel>,std::allocator<TGITextGenerationInferenceModel>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TGITextGenerationInferenceModel::~TGITextGenerationInferenceModel(TGITextGenerationInferenceModel *this)
{
  *this = &unk_287EBB148;
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::~__hash_table(this + 32);
  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(void *a1, const void **a2)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D9C628, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

unint64_t _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE(uint64_t a1, unint64_t a2, __int16 *a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  v7 = a4;
  if (a7)
  {
    if (a6 > a4)
    {
      _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE_cold_2();
    }

    v7 = a6;
  }

  if (v7 <= a5)
  {
    _ZN31TGITextGenerationInferenceUtils4fillIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS3_mmNSt3__18optionalImEE_cold_1();
  }

  if (a2 / a4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2 / a4;
  }

  v9 = vdupq_n_s64(v8 - 1);
  v10 = (a1 + 2 * a5);
  result = 8;
  v12 = vdupq_n_s64(8uLL);
  do
  {
    if (a2 >= a4)
    {
      result = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = v10;
      v14 = *a3;
      v15 = xmmword_26D448240;
      v16 = xmmword_26D448230;
      v17 = xmmword_26D448220;
      v18 = xmmword_26D448210;
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v9, v15));
        if (vuzp1_s8(vuzp1_s16(v19, *v9.i8), *v9.i8).u8[0])
        {
          *v13 = v14;
        }

        if (vuzp1_s8(vuzp1_s16(v19, *&v9), *&v9).i8[1])
        {
          v13[a4] = v14;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v16))), *&v9).i8[2])
        {
          v13[2 * a4] = v14;
          v13[3 * a4] = v14;
        }

        v20 = vmovn_s64(vcgeq_u64(v9, v17));
        if (vuzp1_s8(*&v9, vuzp1_s16(v20, *&v9)).i32[1])
        {
          v13[4 * a4] = v14;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v20, *&v9)).i8[5])
        {
          v13[5 * a4] = v14;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v18)))).i8[6])
        {
          v13[6 * a4] = v14;
          v13[7 * a4] = v14;
        }

        v17 = vaddq_s64(v17, v12);
        v16 = vaddq_s64(v16, v12);
        v15 = vaddq_s64(v15, v12);
        v13 += 8 * a4;
        v18 = vaddq_s64(v18, v12);
        result -= 8;
      }

      while (result);
    }

    ++a5;
    ++v10;
  }

  while (a5 != v7);
  return result;
}

__int16 _ZN31TGITextGenerationInferenceUtils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES4_mm@<H0>(__int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>)
{
  if (a2 * a5 != a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "dimensions mismatch");
    goto LABEL_8;
  }

  if (a2 <= a6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "offset out of bounds");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = (a3 + 2 * a6);
  do
  {
    v7 = *a1++;
    result = v7;
    *v6 = v7;
    v6 += a5;
    --a2;
  }

  while (a2);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D6BEE20](v13, a1);
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

  MEMORY[0x26D6BEE30](v13);
  return a1;
}

void sub_26D3CA7DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26D6BEE30](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26D3CA7BCLL);
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
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

void sub_26D3CAA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.TextGenerationInference", "TextGenerationInferenceDefaultLog");
  _nlpDefaultLog::log = result;
  return result;
}

uint64_t _nlpSignpostLog()
{
  if (_nlpSignpostLog::token != -1)
  {
    _nlpSignpostLog_cold_1();
  }

  return _nlpSignpostLog::log;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.TextGenerationInference", "TextGenerationInferenceSignposts");
  _nlpSignpostLog::log = result;
  return result;
}

void TGITextGenerationInferenceSessionStateCache::TGITextGenerationInferenceSessionStateCache(TGITextGenerationInferenceSessionStateCache *this, unint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::resize(this, a2);
  if (*this != *(this + 1))
  {
    operator new();
  }
}

void sub_26D3CABEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__append(a1, v5);
  }
}

TGITextGenerationInferenceSessionStateCache *TGITextGenerationInferenceSessionStateCache::create@<X0>(TGITextGenerationInferenceSessionStateCache *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

const void ****TGITextGenerationInferenceSessionStateCache::incrementUsageCountForSubSequences(const void ****result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    do
    {
      ++v4;
      v7 = v5;
      if (v5 != v6)
      {
        v8 = *a2;
        v7 = v5;
        while (1)
        {
          v9 = **v7;
          if (v4 == ((*v7)[1] - v9) >> 2)
          {
            result = memcmp(v8, v9, 4 * v4);
            if (!result)
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v6)
          {
            return result;
          }
        }
      }

      if (v7 == v6)
      {
        break;
      }

      (*v7)[15] = (*v7)[15] + 1;
    }

    while (v4 != v2);
  }

  return result;
}

const void ****TGITextGenerationInferenceSessionStateCache::addCacheEntryForStepState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *a1 + 16;
  if (*a1 != v6 && v8 != v6)
  {
    v10 = *v7;
    v11 = (*a1 + 16);
    do
    {
      v13 = *v11;
      v11 += 2;
      v12 = v13;
      if (*(v13 + 120) < *(v10 + 120))
      {
        v10 = v12;
        v7 = v8;
      }

      v8 = v11;
    }

    while (v11 != v6);
  }

  v14 = *v7;
  result = TGITextGenerationInferenceUtils::isSpanEqualToVector<int>(a2 + 32, *v7);
  if (result)
  {
    goto LABEL_19;
  }

  v16 = v14[1];
  v17 = *(a2 + 40);
  if (*v14 == v16 || v17 == 0)
  {
    v24 = *v14;
  }

  else
  {
    v22 = *(a2 + 32);
    v23 = 4 * v17 - 4;
    v24 = *v14;
    do
    {
      if (*v24 != *v22)
      {
        break;
      }

      if (++v24 == v16)
      {
        break;
      }

      ++v22;
      v25 = v23;
      v23 -= 4;
    }

    while (v25);
  }

  if (*v14 == v16 || v24 != v16)
  {
    v19 = *v7;
    std::vector<int>::resize(*v7, v17);
    memcpy(*v19, *(a2 + 32), *(v19 + 8) - *v19);
    TGITextGenerationInferenceUtils::copySpanContentsIntoVector<unsigned char>(a2 + 16, *v7 + 6);
    TGITextGenerationInferenceUtils::copySpanContentsIntoVector<unsigned char>(a2, *v7 + 3);
    v20 = *v7;
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(*v7 + 12, *(a3 + 24));
    memcpy(*(v20 + 96), *(a3 + 16), *(v20 + 104) - *(v20 + 96));
    v21 = *v7;
    std::vector<int>::resize(*v7 + 3, *(a3 + 8));
    memcpy(*(v21 + 72), *a3, *(v21 + 80) - *(v21 + 72));
LABEL_19:

    return TGITextGenerationInferenceSessionStateCache::incrementUsageCountForSubSequences(a1, a2 + 32);
  }

  return result;
}

BOOL TGITextGenerationInferenceUtils::isSpanEqualToVector<int>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  return v2 == (*(a2 + 8) - v3) >> 2 && memcmp(*a1, v3, 4 * v2) == 0;
}

void *TGITextGenerationInferenceUtils::copySpanContentsIntoVector<unsigned char>(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = (v6 - *a2);
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v6 = &v5[v4];
      a2[1] = &v5[v4];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v4 - v7);
    v5 = *a2;
    v6 = a2[1];
  }

  v8 = *a1;

  return memcpy(v5, v8, v6 - v5);
}

double TGITextGenerationInferenceSessionStateCache::cacheEntryForTokenIDs@<D0>(const void ****a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (!TGITextGenerationInferenceUtils::isSpanEqualToVector<int>(a2, *v7))
    {
      v7 += 2;
      if (v7 == v6)
      {
        v7 = v6;
        break;
      }
    }

    v6 = a1[1];
  }

  if (v7 == v6)
  {
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    TGITextGenerationInferenceSessionStateCache::incrementUsageCountForSubSequences(a1, a2);
    v8 = TGITextGenerationInferenceUtils::spanForVector<unsigned char>(*v7 + 3, 0, 0);
    v10 = v9;
    v11 = TGITextGenerationInferenceUtils::spanForVector<unsigned char>(*v7 + 6, 0, 0);
    v13 = v12;
    v14 = TGITextGenerationInferenceUtils::spanForVector<int>(*v7, 0, 0);
    v16 = v15;
    v17 = TGITextGenerationInferenceUtils::spanForVector<int>(*v7 + 9, 0, 0);
    v19 = v18;
    v20 = _ZN31TGITextGenerationInferenceUtils13spanForVectorIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNSt3__16vectorIS3_NS5_9allocatorIS3_EEEENS5_8optionalImEE(*v7 + 12, 0, 0);
    *a3 = v8;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v16;
    *(a3 + 48) = v17;
    *(a3 + 56) = v19;
    *(a3 + 64) = v20;
    *(a3 + 72) = v22;
  }

  return result;
}

uint64_t TGITextGenerationInferenceUtils::spanForVector<unsigned char>(uint64_t *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = *a1;
    if (a2 > a1[1] - *a1)
    {
      TGITextGenerationInferenceUtils::spanForVector<int>();
    }
  }

  else
  {
    v3 = *a1;
    a2 = a1[1] - *a1;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN31TGITextGenerationInferenceUtils13spanForVectorIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNSt3__16vectorIS3_NS5_9allocatorIS3_EEEENS5_8optionalImEE(uint64_t *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = *a1;
    if (a2 > (a1[1] - *a1) >> 1)
    {
      TGITextGenerationInferenceUtils::spanForVector<int>();
    }
  }

  else
  {
    v3 = *a1;
    a2 = (a1[1] - *a1) >> 1;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::~__split_buffer(v16);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::clear[abi:ne200100](uint64_t *a1)
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

void std::__shared_ptr_emplace<TGITextGenerationInferenceSessionStateCacheEntry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287EBB3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

void std::__shared_ptr_emplace<TGITextGenerationInferenceSessionStateCacheEntry>::__on_zero_shared(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;

    operator delete(v6);
  }
}

void std::shared_ptr<TGITextGenerationInferenceSessionStateCache>::shared_ptr[abi:ne200100]<TGITextGenerationInferenceSessionStateCache,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26D3CB5E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TGITextGenerationInferenceSessionStateCache>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<TGITextGenerationInferenceSessionStateCache>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x26D6BF040](v2, 0x20C40960023A9);
  }

  return a1;
}

void std::__shared_ptr_pointer<TGITextGenerationInferenceSessionStateCache *,std::shared_ptr<TGITextGenerationInferenceSessionStateCache>::__shared_ptr_default_delete<TGITextGenerationInferenceSessionStateCache,TGITextGenerationInferenceSessionStateCache>,std::allocator<TGITextGenerationInferenceSessionStateCache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

uint64_t std::__shared_ptr_pointer<TGITextGenerationInferenceSessionStateCache *,std::shared_ptr<TGITextGenerationInferenceSessionStateCache>::__shared_ptr_default_delete<TGITextGenerationInferenceSessionStateCache,TGITextGenerationInferenceSessionStateCache>,std::allocator<TGITextGenerationInferenceSessionStateCache>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<TGITextGenerationInferenceSessionStateCache>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<TGITextGenerationInferenceSessionStateCacheEntry>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x26D6BF040](a2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDF16_EEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDF16_EEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t TGITextGenerationInferenceDecodingPolicy::stateWithLogits@<X0>(uint64_t *a1@<X0>, short float *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2;
  if (a3 >= 2)
  {
    v7 = a2 + 1;
    v8 = *a2;
    v9 = 2 * a3 - 2;
    v6 = a2;
    v10 = a2 + 1;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v8 < v11)
      {
        v8 = v12;
        v6 = v7;
      }

      v7 = v10;
      v9 -= 2;
    }

    while (v9);
  }

  __src = (v6 - a2) >> 1;
  std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(a1, &__src, &v18, 1uLL);
  v16 = *v6;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE18__assign_with_sizeB8ne200100IPKDF16_S6_EEvT_T0_l(a1 + 3, &v16, &__src, 1uLL);
  *a4 = TGITextGenerationInferenceUtils::spanForVector<int>(a1, 0, 0);
  a4[1] = v13;
  result = _ZN31TGITextGenerationInferenceUtils13spanForVectorIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNSt3__16vectorIS3_NS5_9allocatorIS3_EEEENS5_8optionalImEE(a1 + 3, 0, 0);
  a4[2] = result;
  a4[3] = v15;
  return result;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
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
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE18__assign_with_sizeB8ne200100IPKDF16_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
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

      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
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

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDF16_EEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_26D3CBE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<TGITextGenerationInferenceDecodingPolicy>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TGITextGenerationInferenceDecodingPolicy *,std::shared_ptr<TGITextGenerationInferenceDecodingPolicy>::__shared_ptr_default_delete<TGITextGenerationInferenceDecodingPolicy,TGITextGenerationInferenceDecodingPolicy>,std::allocator<TGITextGenerationInferenceDecodingPolicy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
}

uint64_t std::__shared_ptr_pointer<TGITextGenerationInferenceDecodingPolicy *,std::shared_ptr<TGITextGenerationInferenceDecodingPolicy>::__shared_ptr_default_delete<TGITextGenerationInferenceDecodingPolicy,TGITextGenerationInferenceDecodingPolicy>,std::allocator<TGITextGenerationInferenceDecodingPolicy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<TGITextGenerationInferenceDecodingPolicy>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      *(a2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x26D6BF040);
  }
}

void TGITextGenerationInferenceUtils::executeBlockWithReason(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  (*(a2 + 16))(a2);
  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v6 = _nlpDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 2048;
    v12 = (v5.__d_.__rep_ - v4.__d_.__rep_) / 1000000;
    _os_log_debug_impl(&dword_26D3C1000, v6, OS_LOG_TYPE_DEBUG, "Time to execute block with reason %s:%llums", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

std::string *TGITextGenerationInferenceUtils::trim@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v7 = (v5 + size);
    v8 = v5;
    while (v8->__r_.__value_.__s.__data_[0] == 32)
    {
      v8 = (v8 + 1);
      if (!--size)
      {
        v8 = v7;
        break;
      }
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::string::erase(a2, 0, v8 - v5);
  v10 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    v13 = a2->__r_.__value_.__l.__size_;
    if (v13)
    {
      v12 = a2->__r_.__value_.__r.__words[0];
      v11 = (a2->__r_.__value_.__r.__words[0] + v13);
LABEL_21:
      while (v11 != v12)
      {
        v14 = *(v11 - 1);
        v11 = (v11 - 1);
        if (v14 != 32)
        {
          v12 = v11 + 1;
          break;
        }
      }

      v15 = a2->__r_.__value_.__r.__words[0];
      v16 = v10 < 0;
      if (v10 >= 0)
      {
        v17 = a2 + v10;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
      }

      if (!v16)
      {
        v15 = a2;
      }

      return std::string::erase(a2, v12 - v15, v17 - v12);
    }
  }

  else if (*(&a2->__r_.__value_.__s + 23))
  {
    v11 = (a2 + v10);
    v12 = a2;
    goto LABEL_21;
  }

  return result;
}

void sub_26D3CC1A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void TGITextGenerationInferenceUtils::removePrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  v5 = a2[23];
  v7 = *a2;
  v6 = *(a2 + 1);
  if ((v5 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v5 & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v12 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v15 = v10 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v24 = v10 - 1;
    v25 = v9 - 1;
    do
    {
      if (*v8 != p_str->__r_.__value_.__s.__data_[0])
      {
        break;
      }

      ++v8;
      if (!v25)
      {
        break;
      }

      p_str = (p_str + 1);
      v26 = v24--;
      --v25;
    }

    while (v26);
  }

  v16 = 0;
LABEL_21:
  while ((v5 & 0x80) == 0)
  {
    if (v8 != &a2[v5])
    {
      goto LABEL_48;
    }

    v6 = v5;
LABEL_25:
    std::string::basic_string(&v28, &__str, v6, 0xFFFFFFFFFFFFFFFFLL, &v30);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v28;
    v5 = a2[23];
    v7 = *a2;
    v6 = *(a2 + 1);
    if ((v5 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if ((v5 & 0x80u) == 0)
    {
      v17 = a2[23];
    }

    else
    {
      v17 = *(a2 + 1);
    }

    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v12 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__str;
    }

    else
    {
      v19 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __str.__r_.__value_.__l.__size_;
    }

    v16 = 1;
    if (v17)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = v18 - 1;
      v22 = v17 - 1;
      while (*v8 == v19->__r_.__value_.__s.__data_[0])
      {
        ++v8;
        v19 = (v19 + 1);
        v16 = 1;
        if (v22)
        {
          v23 = v21;
          --v22;
          --v21;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v16 = 1;
    }
  }

  if (v8 == (v7 + v6))
  {
    goto LABEL_25;
  }

LABEL_48:
  if (v11 < 0)
  {
    std::string::__init_copy_ctor_external(a3, v12, size);
    v27 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    a3[1].__r_.__value_.__s.__data_[0] = v16;
    if (v27 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __str;
    a3[1].__r_.__value_.__s.__data_[0] = v16;
  }
}

void sub_26D3CC3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_atomic_property__1(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TGITextGenerationInferenceWordQueue::popWords(TGITextGenerationInferenceWordQueue *this@<X0>, void *a2@<X8>)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = *this;
  v36 = *(this + 1);
  if (*this == v36)
  {
    v33 = 0;
    goto LABEL_85;
  }

  v34 = this;
  v3 = 0;
  do
  {
    v5 = v2 + 8;
    v4 = *(v2 + 8);
    v6 = *(v2 + 31);
    v7 = *(v2 + 16);
    v8 = 232;
    v9 = &kfragmentPunctuationSymbols;
    do
    {
      v10 = strlen(*v9);
      v11 = v10;
      if ((v6 & 0x80) != 0)
      {
        if (v10 != v7)
        {
          goto LABEL_10;
        }

        v12 = v4;
        if (v7 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        v12 = (v2 + 8);
        if (v11 != v6)
        {
          goto LABEL_10;
        }
      }

      if (!memcmp(v12, *v9, v11))
      {
        goto LABEL_12;
      }

LABEL_10:
      ++v9;
      v8 -= 8;
    }

    while (v8);
    v9 = &xmmword_279D9C808;
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(&__p, "▁");
    TGITextGenerationInferenceUtils::removePrefix(v2 + 8, &__p, &v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(v2 + 31) < 0)
    {
      v16 = *(v2 + 16);
      v13 = v16 == 3 && **v5 == 28220 && *(*v5 + 2) == 62;
      if (v16 == 5)
      {
        v15 = *v5;
        goto LABEL_34;
      }

      v14 = 0;
    }

    else if (*(v2 + 31) == 3)
    {
      v14 = 0;
      v13 = *v5 == 28220 && *(v2 + 10) == 62;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v2 + 8;
      if (*(v2 + 31) != 5)
      {
        goto LABEL_41;
      }

LABEL_34:
      v19 = *v15;
      v20 = *(v15 + 4);
      v14 = v19 == 1651467580 && v20 == 62;
    }

LABEL_41:
    if (v9 == &xmmword_279D9C808 && ((v41 | (v13 || v14)) & 1) == 0)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v42, (v2 + 8));
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      if (v14 && (std::string::basic_string[abi:ne200100]<0>(v37, &unk_26D454396), std::vector<std::string>::push_back[abi:ne200100](&v42, v37), v38 < 0))
      {
        operator delete(v37[0]);
        if (v13)
        {
          goto LABEL_46;
        }
      }

      else if (v13)
      {
LABEL_46:
        std::string::basic_string[abi:ne200100]<0>(v37, "\n");
        std::vector<std::string>::push_back[abi:ne200100](&v42, v37);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }
      }

      if (v9 != &xmmword_279D9C808)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v42, (v2 + 8));
      }

      v22 = v42;
      v23 = v43;
      while (v22 != v23)
      {
        v24 = *(v22 + 23);
        if (v24 >= 0)
        {
          v25 = v22;
        }

        else
        {
          v25 = *v22;
        }

        if (v24 >= 0)
        {
          v26 = *(v22 + 23);
        }

        else
        {
          v26 = v22[1];
        }

        std::string::append(&__p, v25, v26);
        v22 += 3;
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      }

      v28 = v42;
      v29 = v43;
      v30 = v43 - v42;
      while (v29 != v28)
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      v43 = v28;
      if (v41 == 1)
      {
        v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v40.__r_.__value_.__l.__size_;
        }

        if (v32)
        {
          std::operator+<char>();
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v37, " ");
        }

        std::vector<std::string>::push_back[abi:ne200100](&v42, v37);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 -= 0x5555555555555555 * (v30 >> 3);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v2 += 32;
  }

  while (v2 != v36);
  this = v34;
  v2 = *v34;
  v33 = 32 * v3;
LABEL_85:
  std::vector<TGITextGenerationInferenceWordFragment>::erase(this, v2, v33 + v2);
  v40.__r_.__value_.__r.__words[0] = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
}

void sub_26D3CCB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  a24 = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  a24 = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<TGITextGenerationInferenceWordFragment>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TGITextGenerationInferenceWordFragment *,TGITextGenerationInferenceWordFragment *,TGITextGenerationInferenceWordFragment *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 24));
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t std::vector<TGITextGenerationInferenceWordFragment>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TGITextGenerationInferenceWordFragment>::__emplace_back_slow_path<TGITextGenerationInferenceWordFragment const&>(a1, a2);
  }

  else
  {
    std::vector<TGITextGenerationInferenceWordFragment>::__construct_one_at_end[abi:ne200100]<TGITextGenerationInferenceWordFragment const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
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

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TGITextGenerationInferenceWordFragment *,TGITextGenerationInferenceWordFragment *,TGITextGenerationInferenceWordFragment *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<TGITextGenerationInferenceWordFragment>::__construct_one_at_end[abi:ne200100]<TGITextGenerationInferenceWordFragment const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<TGITextGenerationInferenceWordFragment>::__emplace_back_slow_path<TGITextGenerationInferenceWordFragment const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TGITextGenerationInferenceWordFragment>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TGITextGenerationInferenceWordFragment>::~__split_buffer(&v17);
  return v16;
}

void sub_26D3CD2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TGITextGenerationInferenceWordFragment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGITextGenerationInferenceWordFragment>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TGITextGenerationInferenceWordFragment>,TGITextGenerationInferenceWordFragment*>::operator()[abi:ne200100](uint64_t a1)
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

uint64_t std::__split_buffer<TGITextGenerationInferenceWordFragment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TGITextGenerationInferenceWordFragment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TGITextGenerationInferenceWordFragment>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

sentencepiece::ModelInterface *sentencepiece::ModelInterface::ModelInterface(sentencepiece::ModelInterface *this, const sentencepiece::ModelProto *a2)
{
  *this = &unk_287EBB4E8;
  *(this + 1) = a2 + 16;
  *(this + 2) = 0;
  *(this + 3) = &unk_287EBB608;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = &unk_287EBB608;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  sentencepiece::util::Status::Status(this + 12);
  return this;
}

void sub_26D3CD588(_Unwind_Exception *a1)
{
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v1, v5);
  }

  _Unwind_Resume(a1);
}

void *Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287EBB608;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x26D6BF010](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sentencepiece::ModelInterface::ModelInterface(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_287EBB4E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_287EBB608;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_287EBB608;
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

void sub_26D3CD700(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3CDDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::DecodePrefix<int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x26D6BEE80](&v8, 448);
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
    return MEMORY[0x26D6BEFC0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
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
    MEMORY[0x26D6BEE80](&v8, 448);
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
    return MEMORY[0x26D6BEFC0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sentencepiece::util::Status::Status(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26D3CE2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::util::StatusBuilder::~StatusBuilder(std::locale *this)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  this[1].__locale_ = *MEMORY[0x277D82828];
  *(this + *(v3 - 24) + 8) = v2[3];
  this[2].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](&this[15]);
}

void sentencepiece::ModelInterface::model_proto(sentencepiece::ModelInterface *this)
{
  v1 = *(this + 1);
  {
    v8 = 1;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.cc", 18);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D6BEE80](v4, 103);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    sentencepiece::error::Die::~Die(&v8);
    __break(1u);
  }
}

void sentencepiece::ModelInterface::~ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_287EBB4E8;
  sentencepiece::util::Status::~Status((this + 96));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_287EBB608;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x26D6BF010](v2, 0x1000C8052888210);
    *(this + 10) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_287EBB608;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x26D6BF010](v3, 0x1000C8052888210);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](this + 16, v4);
  }
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

const char *sentencepiece::ModelInterface::bos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 40))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 40))(*(this + 1));
  }

  else
  {
    return "<s>";
  }
}

const char *sentencepiece::ModelInterface::eos_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 48))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 48))(*(this + 1));
  }

  else
  {
    return "</s>";
  }
}

const char *sentencepiece::ModelInterface::pad_piece(sentencepiece::ModelInterface *this)
{
  (*(**(this + 1) + 56))(*(this + 1));
  if (v2)
  {
    return (*(**(this + 1) + 56))(*(this + 1));
  }

  else
  {
    return "<pad>";
  }
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

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a5, v20);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a5, v20);
          v19 = v18 + 1;
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_26D3CEB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupPredictiveInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a6, a5);
  v12 = Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a6, v12);
}

void sub_26D3CEC08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupPredictive(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sentencepiece::util::Status::~Status(&__p);
  if (v12)
  {
    sentencepiece::util::Status::Status(a6, (a1 + 96));
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sentencepiece::util::Status::Status(a6, (a1 + 96));
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_26D3CEE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sentencepiece::util::Status::~Status(&v23);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 16))
        {
          v16 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(a4, __p);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(a4, __p);
          v16 = v15 + 1;
        }

        *(a4 + 8) = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v25, __p);
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16))
        {
          v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            std::string::__init_copy_ctor_external(*(a4 + 8), __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = (v18 + 24);
          *(a4 + 8) = v18 + 24;
        }

        *(a4 + 8) = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_26D3CF0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::anonymous namespace::LookupCommonPrefixInternal(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(a4, v13);
}

void sub_26D3CF288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::LookupCommonPrefix(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sentencepiece::util::Status::~Status(&v41);
  if (v10)
  {
    sentencepiece::util::Status::Status(a5, (a1 + 96));
  }

  else
  {
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        absl::StrFormat<unsigned char>("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sentencepiece::util::Status::Status(a5, (a1 + 96));
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_26D3CF64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::InitializePieces(sentencepiece::ModelInterface *this)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(this + 22) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  std::vector<BOOL>::vector(&__p, 256);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(this + 22) == -1)
    {
      sentencepiece::util::Status::Status(&v54, 13, "unk is not defined.", 19);
      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sentencepiece::BuildTrie(this + 24, &v51, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v25 = v54, sentencepiece::util::Status::~Status(&v54), !v25))
        {
          if (!v50 || (sentencepiece::BuildTrie(this + 56, &v48, &v54), sentencepiece::util::Status::operator=(this + 12, &v54), sentencepiece::util::Status::~Status(&v54), (*(*this + 16))(&v54, this), v26 = v54, sentencepiece::util::Status::~Status(&v54), !v26))
          {
            absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::set<std::string_view> &>();
          }
        }

        goto LABEL_69;
      }

      sentencepiece::util::Status::operator=(this + 12, &v54);
    }

LABEL_68:
    sentencepiece::util::Status::~Status(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sentencepiece::util::Status::Status(&v54, 13, "piece must not be empty.", 24);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view>(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sentencepiece::util::Status::Status(&v43, 13, v37, v41);
        sentencepiece::util::Status::operator=(this + 12, &v43);
        sentencepiece::util::Status::~Status(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sentencepiece::PieceToByte(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(this + 22) & 0x80000000) == 0)
      {
        sentencepiece::util::Status::Status(&v54, 13, "unk is already defined.", 23);
        sentencepiece::util::Status::operator=(this + 12, &v54);
        goto LABEL_68;
      }

      *(this + 22) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  std::string::basic_string[abi:ne200100](&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sentencepiece::util::Status::Status(&v42, 13, v31, v32);
  sentencepiece::util::Status::operator=(this + 12, &v42);
  sentencepiece::util::Status::~Status(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v46, v47[0]);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v48, v49);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v51, v52);
}

void sub_26D3CFCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sentencepiece::util::Status::~Status(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::PieceToByte(void *__src, size_t __len)
{
  {
    sentencepiece::PieceToByte(std::string_view)::$_0::operator()();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = sentencepiece::PieceToByte(std::string_view)::kMap;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = std::__hash_table<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,E5RT::Span<unsigned char,18446744073709551615ul>>>>::find<std::string>(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sentencepiece::BuildTrie@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        Darts::DoubleArrayImpl<void,void,int,void>::build(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sentencepiece::util::Status::Status(a3, 13, "no pieces are loaded.", 21);
}

void sub_26D3D03AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::ModelInterface::MemoryMappableString(sentencepiece::ModelInterface *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(this + 22);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(this + 23);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sentencepiece::normalizer::PrefixMatcher::MemoryMappableString(*(this + 2), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sentencepiece::mmap_util::Padding(a2);
  v19 = *(this + 4);
  v18 = *(this + 5);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sentencepiece::mmap_util::Padding(a2);
  v26 = this + 64;
  v24 = *(this + 8);
  v25 = *(v26 + 1);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_26D3D073C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SplitIntoWords(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_26D45475E[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a5, 1uLL);
  }
}

void sub_26D3D0BD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::StrFormat<unsigned char>@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_26D3D0CA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D3D0D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Darts::DoubleArrayImpl<void,void,int,void>::build(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  Darts::Details::DoubleArrayBuilder::build<int>(&v6, v12);
}

void sentencepiece::ModelInterface::NBestEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D6BEE80](v4, 96);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncode(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v10 = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D6BEE80](v4, 102);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sentencepiece::ModelInterface::SampleEncodeAndScore(sentencepiece::logging *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    LOBYTE(__p) = 0;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26D6BEE80](v4, 117);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "LOG(", 4);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR", 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&__p);
  }

  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a2, &__p, &v15, 1uLL);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_26D3D11C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sentencepiece::ModelInterface::CalculateEntropy(sentencepiece::logging *a1)
{
  if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
  {
    v9 = 0;
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.h", 17);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "(", 1);
    v3 = MEMORY[0x26D6BEE80](v2, 125);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") ", 2);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "LOG(", 4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ERROR", 5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Not implemented.", 16);
    sentencepiece::error::Die::~Die(&v9);
  }

  return 0.0;
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

uint64_t sentencepiece::ModelInterface::ByteFallbackEnabled(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
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
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_26D3D15DC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D6BEF70](a1 + 8);
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

void sub_26D3D1698(_Unwind_Exception *a1)
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

void sentencepiece::error::Die::~Die(sentencepiece::error::Die *this)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  v3 = std::ostream::flush();
  if (*this == 1)
  {
    sentencepiece::error::Abort(v3);
  }
}

unint64_t Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](v43);
  return v24;
}

void sub_26D3D1B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(a1, a2 - v2);
  }
}

__n128 std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(a1, &v10);
}

void sub_26D3D1E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v11);
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_back<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v11);
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *> &>::emplace_front<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *,std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>::~__split_buffer(uint64_t a1)
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

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26D3D25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3D28F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3D2AC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287EBB608;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x26D6BF010](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x26D6BF040);
}

void std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x26D6BF040);
  }
}

void *std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26D3D2E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v16.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v7 = 24 * v2;
  v16.__first_ = 0;
  v16.__begin_ = v7;
  v16.__end_ = v7;
  v16.__end_cap_.__value_ = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v16.__end_ + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = v16.__begin_ - v11;
  memcpy(v16.__begin_ - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v16.__end_cap_.__value_;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

void std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__emplace_unique_key_args<std::string_view,std::pair<std::string_view const,int> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::less<std::string_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
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