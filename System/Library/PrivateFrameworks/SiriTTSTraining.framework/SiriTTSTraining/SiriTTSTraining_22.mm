void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_duration(uint64_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v2);
      v6 = *(v2 + 24);
      v9 = v5 * 10.0;
      v10 = (v6 + v5) * 10.0;
      v11 = v6 * 10.0;
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a2, &__p);
      v7 = *(v2 + 24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 += v7;
      v2 += 32;
    }

    while (v2 != v3);
  }
}

void sub_19BCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_energy(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    __asm { FMOV            V8.2S, #5.0 }

    do
    {
      v12 = vcvt_s32_f32(vdiv_f32(*(v3 + 28), _D8));
      v13 = 0.0;
      v14 = v12.i32[1] - v12.i32[0];
      if (v12.i32[1] >= v12.i32[0])
      {
        v15 = (*a1 + 4 * v12.i32[0]);
        v16 = v14 + 1;
        do
        {
          v17 = *v15++;
          v13 = v13 + v17;
          --v16;
        }

        while (v16);
      }

      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v3);
      v19 = *(v3 + 28);
      v20 = v13 / (v14 + 1);
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_19BDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SiriTTS::SpeechFeature::SpeechFeatureExtractor::extract_phone_pitch(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    __asm { FMOV            V8.2S, #5.0 }

    do
    {
      v12 = vcvt_s32_f32(vdiv_f32(*(v3 + 28), _D8));
      v13 = 0.0;
      v14 = v12.i32[1] - v12.i32[0];
      if (v12.i32[1] >= v12.i32[0])
      {
        v15 = (*a1 + 4 * v12.i32[0]);
        v16 = v14 + 1;
        do
        {
          v17 = *v15++;
          v13 = v13 + v17;
          --v16;
        }

        while (v16);
      }

      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v3);
      v21 = *(v3 + 36);
      v20 = *(v3 + 28);
      v18 = *(v3 + 44);
      v22 = v13 / (v14 + 1);
      v23 = v18;
      std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_19BED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::SpeechFeatureData const&>(a1, a2);
  }

  else
  {
    std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__construct_one_at_end[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureData const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

std::string *SiriTTS::ForcedAlignment::Lexeme::Lexeme(std::string *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void sub_19BFB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<float>,std::vector<float>>::~tuple(uint64_t a1)
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

  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL const&,std::string&,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E48;
  SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment((a1 + 3));
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__on_zero_shared_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::ForcedAlignment>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL const&,std::allocator<SiriTTS::ForcedAlignment::ForcedAlignment>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E48;
  SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment(a1 + 3);
  return a1;
}

void std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19C390(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Lexeme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Lexeme>(uint64_t *a1, __int128 *a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Lexeme>,SiriTTS::ForcedAlignment::Lexeme*>(a1, *a1, v9, v10);
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

void sub_19C4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SiriTTS::ForcedAlignment::Lexeme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Phoneme>::__emplace_back_slow_path<SiriTTS::ForcedAlignment::Phoneme>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v16 = 24 * v2 + 24;
  v8 = *(a1 + 8);
  v9 = (24 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(&v14);
  return v13;
}

void sub_19C810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::~__split_buffer(void **a1)
{
  std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::ForcedAlignment::Phoneme>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_19CC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::ForcedAlignment::Phoneme>,SiriTTS::ForcedAlignment::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string **std::__copy_impl::operator()[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *,SiriTTS::ForcedAlignment::Phoneme *>(int a1, std::string **a2, std::string **a3, std::vector<std::string> *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::pair<std::string,int>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::string,int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::vector<std::pair<std::string,int>>::__init_with_size[abi:ne200100]<std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*,std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void *_ZNSt3__120__shared_ptr_emplaceI12SpeechEnergyNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282E98;
  SpeechEnergy::SpeechEnergy((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<SpeechEnergy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<SpeechEnergy>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3)
  {
    a2[7] = v3;
    operator delete(v3);
  }

  v4 = a2[3];
  if (v4)
  {
    a2[4] = v4;

    operator delete(v4);
  }
}

__n128 std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__construct_one_at_end[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureData const&>(uint64_t a1, __int128 *a2)
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

  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::SpeechFeatureData const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>>(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(&v18);
  return v17;
}

void sub_19D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
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
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SiriTTS::SpeechFeature::SpeechFeatureData>,SiriTTS::SpeechFeature::SpeechFeatureData*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SiriTTS::SpeechFeature::SpeechFeatureData>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 16) = 0;
  std::allocate_shared[abi:ne200100]<SiriTTS::ForcedAlignment::AcousticModel,std::allocator<SiriTTS::ForcedAlignment::AcousticModel>,std::string const&,BOOL &,0>();
}

{
  SiriTTS::ForcedAlignment::ForcedAlignment::ForcedAlignment(a1);
}

void sub_19DB88(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::build_lexicon(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::ifstream::basic_ifstream(v17, a1);
  memset(v12, 0, sizeof(v12));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::ios_base::getloc((v17 + *(v17[0] - 3)));
  v3 = std::locale::use_facet(&v8, &std::ctype<char>::id);
  v4 = (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v8);
  v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__p, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
  {
    v6 = HIBYTE(v15);
    if (v15 < 0)
    {
      v6 = v14;
    }

    if (v6)
    {
      memset(&v11, 0, sizeof(v11));
      v8.__locale_ = 0;
      v9 = 0;
      v10 = 0;
      memset(&v7[3], 0, 48);
      v7[0] = " ";
      v7[1] = "";
      boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v7);
      boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(v12, &__p, __dst, 0);
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v17 + *(v17[0] - 3)), *(&v17[4] + *(v17[0] - 3)) | 4);
  }

  v11.__r_.__value_.__r.__words[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(uint64_t a1, uint64_t a2, void *__src, int a4)
{
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        boost::algorithm::iter_split<std::vector<std::string>,std::string&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_19E35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    operator delete[]();
  }

  if (v17 >= 0x11)
  {
    if (a10)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::~ForcedAlignment(SiriTTS::ForcedAlignment::ForcedAlignment *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(this + 24);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_19E600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a24);
      SiriTTS::ForcedAlignment::ForcedAlignment::~ForcedAlignment(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

uint64_t SiriTTS::ForcedAlignment::ForcedAlignment::process_lexeme@<X0>(uint64_t a1@<X0>, SiriTTS::ForcedAlignment::Lexicon *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, const void **a6@<X8>)
{
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  if (a5)
  {
    if (v55 == a5)
    {
      goto LABEL_7;
    }

    v56 = *(a5 + 32);
    v9 = (a5 + 16);
  }

  else
  {
    if (v55 == (a1 + 24))
    {
      goto LABEL_7;
    }

    v56 = *(a1 + 56);
    v9 = (a1 + 40);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *> *>>(v55, *v9, 0);
LABEL_7:
  v10 = *a3;
  v11 = a3[1];
  if (v11 != *a3)
  {
    v12 = 0;
    do
    {
      v13 = (v10 + 48 * v12);
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v54, *v13, *(v13 + 1));
        v10 = *a3;
      }

      else
      {
        v14 = *v13;
        v54.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&v54.__r_.__value_.__l.__data_ = v14;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v51, *(v10 + 48 * v12 + 24), *(v10 + 48 * v12 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 48 * v12 + 32) - *(v10 + 48 * v12 + 24)) >> 3));
      std::locale::locale(&v48);
      LODWORD(__p.__r_.__value_.__l.__data_) = 0x4000;
      std::locale::locale(&__p.__r_.__value_.__r.__words[1], &v48);
      boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(&v54, &__p);
      std::locale::~locale(&__p.__r_.__value_.__r.__words[1]);
      std::locale::~locale(&v48);
      v48.__locale_ = 0;
      v49 = 0;
      v50 = 0;
      if (v52 == v51 || (std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, (*a3 + 48 * v12)), v52 == v51) || *a4 == 1)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v55, &v54.__r_.__value_.__l.__data_))
        {
          v43.__r_.__value_.__r.__words[0] = &v54;
          v15 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v54.__r_.__value_.__l.__data_);
          v17 = v15[5];
          v16 = v15[6];
          while (v17 != v16)
          {
            SiriTTS::ForcedAlignment::Lexeme::Lexeme(&__p, &v54, v17);
            std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, &__p);
            v43.__r_.__value_.__r.__words[0] = v47;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v17 += 3;
          }
        }

        else
        {
          std::locale::locale(&__p);
          LODWORD(v44.__locale_) = 0x2000;
          std::locale::locale(&v45, &__p);
          boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(&v54, &v44);
          std::locale::~locale(&v45);
          std::locale::~locale(&__p);
          if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v55, &v54.__r_.__value_.__l.__data_))
          {
            v43.__r_.__value_.__r.__words[0] = &v54;
            v18 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v54.__r_.__value_.__l.__data_);
            v20 = v18[5];
            v19 = v18[6];
            while (v20 != v19)
            {
              SiriTTS::ForcedAlignment::Lexeme::Lexeme(&__p, &v54, v20);
              std::vector<SiriTTS::ForcedAlignment::Lexeme>::push_back[abi:ne200100](&v48, &__p);
              v43.__r_.__value_.__r.__words[0] = v47;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 += 3;
            }
          }
        }
      }

      locale = v48.__locale_;
      if (v49 == v48.__locale_)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v40 = std::string::append(&v43, "does not exist in the lexicon and the phonemes are not provided.");
        v41 = *&v40->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(exception, &__p);
      }

      v22 = 0;
      v23 = 0;
      do
      {
        SiriTTS::ForcedAlignment::Lexicon::add_lexeme(a2, (locale + v22));
        ++v23;
        locale = v48.__locale_;
        v22 += 48;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v49 - v48.__locale_) >> 4) > v23);
      __p.__r_.__value_.__r.__words[0] = &v48;
      std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      ++v12;
      v10 = *a3;
      v11 = a3[1];
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 4) > v12);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (v11 != v10)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = SiriTTS::ForcedAlignment::Lexicon::word_to_int(a2);
      v28 = a6[1];
      v27 = a6[2];
      if (v28 >= v27)
      {
        v30 = *a6;
        v31 = v28 - *a6;
        v32 = v31 >> 2;
        v33 = (v31 >> 2) + 1;
        if (v33 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v34 = v27 - v30;
        if (v34 >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
        v36 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v35)
        {
          v36 = v33;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a6, v36);
        }

        *(4 * v32) = v26;
        v29 = 4 * v32 + 4;
        memcpy(0, v30, v31);
        v37 = *a6;
        *a6 = 0;
        a6[1] = v29;
        a6[2] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v28 = v26;
        v29 = (v28 + 4);
      }

      a6[1] = v29;
      ++v25;
      v24 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v25);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::~__hash_table(v55);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::decode(void **a1, __int128 **a2, uint64_t *a3)
{
  SiriTTS::ForcedAlignment::AcousticModel::forward(*a1, a3, a1 + 16, &v7);
  std::vector<std::vector<int>>::__vdeallocate(a3);
  *a3 = v7;
  a3[2] = v8;
  v8 = 0;
  v7 = 0uLL;
  v9 = &v7;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  SiriTTS::ForcedAlignment::AcousticModel::context(*a1, &v9);
  SiriTTS::ForcedAlignment::AcousticModel::transition_model(*a1, &v6);
  SiriTTS::ForcedAlignment::Lexicon::generate_fst(a2);
}

void sub_19F024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, char a34)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  SiriTTS::ForcedAlignment::AlignmentDecoder::~AlignmentDecoder(&a28);
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  SiriTTS::ForcedAlignment::AlignmentGraph::~AlignmentGraph(&a34);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::Lexicon::~Lexicon(SiriTTS::ForcedAlignment::Lexicon *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this;
  std::vector<SiriTTS::ForcedAlignment::Lexeme>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void SiriTTS::ForcedAlignment::ForcedAlignment::align_phones_with_frame(SiriTTS::ForcedAlignment::AcousticModel **a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v10 = SiriTTS::ForcedAlignment::AcousticModel::silence_phones(*a1);
  v11 = SiriTTS::ForcedAlignment::AcousticModel::nonsilence_phones(*a1);
  SiriTTS::ForcedAlignment::Lexicon::Lexicon(v14, v10, v11);
  SiriTTS::ForcedAlignment::ForcedAlignment::process_lexeme(a1, v14, a3, a4, a5, &__p);
  SiriTTS::ForcedAlignment::FeatureExtractorWav::compute(a2, v12);
  LOBYTE(v15) = *a4 ^ 1;
  SiriTTS::ForcedAlignment::ForcedAlignment::decode(a1, v14, v12);
}

void sub_19F25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 72) = v17;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v18 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  SiriTTS::ForcedAlignment::Lexicon::~Lexicon(&a17);
  _Unwind_Resume(a1);
}

void boost::algorithm::trim_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, std::locale *a2)
{
  v4 = a2 + 1;
  LODWORD(v15.__locale_) = a2->__locale_;
  std::locale::locale(&v16, a2 + 1);
  boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(a1, &v15);
  std::locale::~locale(&v16);
  locale = a2->__locale_;
  std::locale::locale(&v14, v4);
  v5 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v17 = locale;
  std::locale::locale(&v18, &v14);
  if (size)
  {
    v8 = v6 + size;
    v9 = v6;
    while (1)
    {
      v10 = v9->__r_.__value_.__s.__data_[0];
      v11 = std::locale::use_facet(&v18, &std::ctype<char>::id);
      if ((v10 & 0x80) != 0 || (*(&v11[1].~facet + v10) & v17) == 0)
      {
        break;
      }

      v9 = (v9 + 1);
      if (!--size)
      {
        v9 = v8;
        break;
      }
    }
  }

  else
  {
    v9 = v6;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v6 - v12, v9 - v6);
  std::locale::~locale(&v18);
  std::locale::~locale(&v14);
}

void sub_19F3EC(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 1);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AlignmentDecoder::~AlignmentDecoder(SiriTTS::ForcedAlignment::AlignmentDecoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SiriTTS::ForcedAlignment::AlignmentGraph::~AlignmentGraph(SiriTTS::ForcedAlignment::AlignmentGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,std::allocator<SiriTTS::ForcedAlignment::AcousticModel>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_282EE8;
  SiriTTS::ForcedAlignment::AcousticModel::AcousticModel(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_282EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::AcousticModel>::__on_zero_shared(uint64_t a1)
{
  v7 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (a1 + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void *boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(void *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  __dst[2] = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  v6 = __dst[2];
  std::__sort<std::__less<char,char> &,char *>();
  return __dst;
}

void boost::algorithm::iter_split<std::vector<std::string>,std::string&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
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
    v6 = *(a2 + 8);
  }

  v7 = *(a3 + 16);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = *(a3 + 24);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_19F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (**a32)(void, void, uint64_t), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void (**a42)(void, void, uint64_t))
{
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&a32);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&a42);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2((v42 - 248));
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2((v42 - 136));
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7[2] = v6;
  v7[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(v7, a4, v6);
    v8 = *(a4 + 24);
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v7);
  }

  operator new[]();
}

void boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_19FC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    v3 = *(a1 + 48);
    result = boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::operator()(a1);
    v2 = *(a1 + 56);
  }

  else
  {
    v5 = *(a1 + 56);
    result = v5;
  }

  v6 = result == v2 && v5 == v2;
  if (v6 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v5;
  return result;
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_19FDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4[2] = v3;
  v4[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(v4, a2, v3);
    v5 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>)::stored_vtable, v4);
  }

  operator new[]();
}

void sub_19FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

{
  v3 = *(a2 + 16);
  v4[2] = v3;
  v4[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(v4, a2, v3);
    v5 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_functor<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>();
  }

  operator new[]();
}

void sub_1A0010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v5 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v6 = *a2;
    if (*a2)
    {
      if (v6[2] >= 0x11uLL && *v6)
      {
        operator delete[]();
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x800000000021FF6ELL & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x800000000021FF6ELL & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

char *boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>::operator()<std::__wrap_iter<char *>>(uint64_t a1, char *a2, char *a3)
{
  v6 = *(a1 + 16);
  v11 = v6;
  v10[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v10, a1, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v10, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v11 >= 0x11 && v10[0])
  {
    operator delete[]();
  }

  if (v8 != a3)
  {
    if (!*(a1 + 24))
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(a1, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    return v8;
  }

  return a3;
}

void sub_1A032C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a11 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

void sub_1A04AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::operator()(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = off_283080;
    boost::throw_exception<boost::bad_function_call>(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_283050;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_282FD8;
  *(a1 + 8) = off_283008;
  *(a1 + 24) = off_283030;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1A0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(void *a1)
{
  *a1 = &off_2830A8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &off_2830A8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete();
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

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &off_283050;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = off_283080;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_2830A8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_282FD8;
  *(a1 + 8) = off_283008;
  *(a1 + 24) = off_283030;
  return a1;
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

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *std::vector<std::string>::vector[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(v7, a2);
  boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(v6, a3);
  std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>>(a1, v7, v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(v7);
  return a1;
}

void sub_1A0F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (**)(void, void, uint64_t));
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(va);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = 0;
  while (1)
  {
    result = boost::algorithm::split_iterator<std::__wrap_iter<char *>>::equal(a2, a3);
    if (result)
    {
      break;
    }

    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      v26.__end_cap_.__value_ = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v13);
      }

      v14 = 24 * v10;
      v15 = *__p;
      *(v14 + 16) = v23;
      *v14 = v15;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v16 = 24 * v10 + 24;
      v17 = *(a1 + 8) - *a1;
      v18 = 24 * v10 - v17;
      memcpy((v14 - v17), *a1, v17);
      v19 = *a1;
      *a1 = v18;
      *(a1 + 8) = v16;
      v20 = *(a1 + 16);
      *(a1 + 16) = 0;
      v26.__end_ = v19;
      v26.__end_cap_.__value_ = v20;
      v26.__first_ = v19;
      v26.__begin_ = v19;
      std::__split_buffer<std::string>::~__split_buffer(&v26);
      v21 = SHIBYTE(v23);
      *(a1 + 8) = v16;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v9 = *__p;
      *(v8 + 16) = v23;
      *v8 = v9;
      *(a1 + 8) = v8 + 24;
    }

    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(a2);
  }

  return result;
}

void sub_1A113C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::equal(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 64);
  }

  else
  {
    v4 = 1;
  }

  if (!*a2)
  {
    LOBYTE(v5) = 1;
    goto LABEL_11;
  }

  v5 = *(a2 + 64);
  if ((v4 | v5))
  {
LABEL_11:
    v9 = v4 ^ v5 ^ 1;
    return v9 & 1;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v8 = *(a1 + 40) - v6;
  v9 = v8 == *(a2 + 40) - v7 && !memcmp(v6, v7, v8) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  return v9 & 1;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(void *a1, const void **a2)
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

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,std::vector<SiriTTS::ForcedAlignment::Phoneme> &>::operator=[abi:ne200100]<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_multi<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>> const&>();
  }
}

void sub_1A1694(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::pair<std::string &,std::vector<SiriTTS::ForcedAlignment::Phoneme> &>::operator=[abi:ne200100]<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(v4, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_1A1CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__init_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1A1DF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SiriTTS::ForcedAlignment::Phoneme>::__init_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A1E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = &v4[size];
  locale = a2->__locale_;
  std::locale::locale(&v14, a2 + 1);
  v15 = locale;
  std::locale::locale(&v16, &v14);
  while (size)
  {
    v7 = size;
    v8 = v4[size - 1];
    v9 = std::locale::use_facet(&v16, &std::ctype<char>::id);
    if ((v8 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    --v6;
    v10 = *(&v9[1].~facet + v8);
    size = v7 - 1;
    if ((v10 & v15) == 0)
    {
      v4 += v7;
      break;
    }
  }

  std::locale::~locale(&v16);
  v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x80u) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v12, &v12[v11] - v4);
  std::locale::~locale(&v14);
}

uint64_t std::__split_buffer<std::pair<std::string,int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,int>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void OUTLINED_FUNCTION_0_6()
{

  operator delete[]();
}

uint64_t boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    OUTLINED_FUNCTION_0_6();
  }

  return result;
}

void SpeechEnergy::SpeechEnergy(SpeechEnergy *this)
{
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 72) = xmmword_21FFE0;
  *(this + 30) = 500;
  *(this + 1) = 0;
  *(this + 88) = xmmword_21FFF0;
  *(this + 104) = xmmword_220000;
}

void SpeechEnergy::estimate_speech_energy(uint64_t a1@<X0>, uint64_t *a2@<X1>, DSP *a3@<X2>, void *a4@<X8>)
{
  clock();
  *a1 = a3;
  *(a1 + 92) = a3;
  if (*(a1 + 104) && *(a1 + 88) != a3)
  {
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v72, *a2, a2[1], (a2[1] - *a2) >> 1);
    DSP::resample(&v72, *a1, *(a1 + 88), &v75);
    v7 = *a2;
    if (*a2)
    {
      a2[1] = v7;
      operator delete(v7);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = v75;
    a2[2] = v76;
    v76 = 0;
    v75 = 0uLL;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    a3 = *(a1 + 88);
    *a1 = a3;
  }

  DSP::get_highpass_70hz_coefficients(a3);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v67, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  __p = 0;
  v65 = 0;
  v66 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 1);
  DSP::high_pass_filter(&v67, &__p, &v70);
  v8 = *a2;
  if (*a2)
  {
    a2[1] = v8;
    operator delete(v8);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v70;
  a2[2] = v71;
  v71 = 0;
  v70 = 0uLL;
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v9 = *a1;
  v10 = *a2;
  v11 = llround(*(a1 + 72) / 1000.0 * v9);
  if (v11 > (a2[1] - *a2) >> 1)
  {
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v52);
    exit(1);
  }

  v12 = *(a1 + 80);
  v13 = llround(vcvtd_n_f64_s32(v11, 1uLL));
  LOWORD(v70) = 0;
  std::vector<short>::insert(a2, v10, v13, &v70);
  v14 = a2[1];
  LOWORD(v70) = 0;
  std::vector<short>::insert(a2, v14, v13, &v70);
  v15 = (a2[1] - *a2) >> 1;
  v55 = llround(v12 / 1000.0 * v9);
  v16 = (v15 / v55 - v11 / v55 + 1);
  std::vector<std::pair<int,int>>::resize((a1 + 48), v16);
  std::vector<std::pair<int,int>>::resize((a1 + 24), v16);
  std::vector<double>::vector[abi:ne200100](&v70, v11);
  v54 = a2;
  DSP::window_blackman(v11, v63);
  if (v15 > v11)
  {
    v17 = 0;
    v18 = 0;
    v19 = 2 * v11;
    do
    {
      if (*(a1 + 96) == 1 && *(a1 + 100) == 1 && *(a1 + 116) < v16)
      {
        v20 = *(a1 + 120);
        v21 = *(a1 + 112);
        boost::filesystem::path::path(v61, "Progress: ");
        utils::update_progress_bar(v18, v16, v20, v21, v61);
        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      *(*(a1 + 24) + 8 * v18) = v17 / *a1;
      v22 = v70;
      if (v11)
      {
        v23 = v19 - 2 * v17;
        v24 = (*v54 + 2 * v17);
        v25 = v70;
        do
        {
          v26 = *v24++;
          *v25++ = v26;
          v23 -= 2;
        }

        while (v23);
        if (v11 >= 1)
        {
          v27 = v63[0];
          v28 = v11;
          v29 = v22;
          do
          {
            v30 = *v27++;
            *v29 = *v29 * v30;
            ++v29;
            --v28;
          }

          while (v28);
        }
      }

      cblas_ddot_NEWLAPACK();
      *(*(a1 + 48) + 8 * v18++) = log(sqrt(v31 / v11) + 1.0e-10);
      v17 += v55;
      v19 += 2 * v55;
    }

    while (v15 > v11 + v18 * v55);
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 56);
  if (*(v32 - 8) == 0.0)
  {
    do
    {
      v33 -= 8;
      v34 = *(v32 - 16);
      v32 -= 8;
    }

    while (v34 == 0.0);
    *(a1 + 32) = v32;
    *(a1 + 56) = v33;
  }

  v35 = *(a1 + 48);
  v36 = *(a1 + 24);
  v37 = v33 - v35;
  v38 = v32 - v36;
  if (v33 - v35 > (v32 - v36))
  {
    do
    {
      v33 -= 8;
      v37 -= 8;
    }

    while (v37 > v38);
    *(a1 + 56) = v33;
  }

  if (v37 < v38)
  {
    do
    {
      v39 = *(a1 + 64);
      if (v33 >= v39)
      {
        v40 = (v37 >> 3) + 1;
        if (v40 >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v41 = v39 - v35;
        if (v41 >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 48, v42);
        }

        v43 = (8 * (v37 >> 3));
        *v43 = *(v33 - 1);
        v33 = (v43 + 1);
        memcpy(0, v35, v37);
        v44 = *(a1 + 48);
        *(a1 + 48) = 0;
        *(a1 + 56) = v43 + 1;
        *(a1 + 64) = 0;
        if (v44)
        {
          operator delete(v44);
          v35 = *(a1 + 48);
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        *v33 = *(v33 - 1);
        v33 += 8;
      }

      *(a1 + 56) = v33;
      v37 = v33 - v35;
      v36 = *(a1 + 24);
      v32 = *(a1 + 32);
    }

    while (v33 - v35 < (v32 - v36));
  }

  v45 = *(a1 + 108);
  if (v45 >= 3)
  {
    DSP::smooth((a1 + 48), v45, v59);
    v46 = *(a1 + 48);
    if (v46)
    {
      *(a1 + 56) = v46;
      operator delete(v46);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
    }

    *(a1 + 48) = *v59;
    *(a1 + 64) = v60;
    v36 = *(a1 + 24);
    v32 = *(a1 + 32);
  }

  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v59, v36, v32, (v32 - v36) >> 3);
  v47 = *(a1 + 48);
  v48 = *(a1 + 56);
  v57 = 0;
  v58 = 0;
  v56 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v56, v47, v48, (v48 - v47) >> 3);
  if (*(a1 + 96))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v49 = std::ostream::operator<<();
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " s", 2);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(&v77, &std::ctype<char>::id);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(&v77);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_EEC2B8ne200100IJLm0ELm1EEJS6_S6_EJEJEJRS6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, v59, &v56);
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }
}

void sub_1A27CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  v41 = *(v39 - 184);
  if (v41)
  {
    *(v39 - 176) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_EEC2B8ne200100IJLm0ELm1EEJS6_S6_EJEJEJRS6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_1A2934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SRH::SRH(SRH *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = xmmword_220010;
  *(this + 9) = vdupq_n_s64(0x4059000000000000uLL);
  *(this + 10) = xmmword_220020;
  *(this + 11) = xmmword_21FDA0;
  *(this + 13) = xmmword_220030;
  *(this + 14) = xmmword_220040;
  *(this + 31) = 16000;
  *(this + 12) = xmmword_220050;
  *(this + 30) = 0x3FE4CCCCCCCCCCCDLL;
  *(this + 1) = 0;
  *(this + 260) = xmmword_220070;
  *(this + 276) = xmmword_220060;
  *(this + 3) = 0;
}

void SRH::estimate_pitch(unsigned int *a1@<X0>, uint64_t *a2@<X1>, DSP *a3@<X2>, void *a4@<X8>)
{
  clock();
  *a1 = a3;
  a1[63] = a3;
  v389 = 0uLL;
  v390 = 0;
  if (a1[6] && a1[62] != a3)
  {
    v385 = 0;
    v386 = 0;
    v384 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v384, *a2, a2[1], (a2[1] - *a2) >> 1);
    DSP::resample(&v384, *a1, a1[62], &v387);
    if (v389)
    {
      *(&v389 + 1) = v389;
      operator delete(v389);
    }

    v389 = v387;
    v390 = v388;
    v388 = 0;
    v387 = 0uLL;
    if (v384)
    {
      v385 = v384;
      operator delete(v384);
    }

    a3 = a1[62];
    *a1 = a3;
  }

  else if (&v389 != a2)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v389, *a2, a2[1], (a2[1] - *a2) >> 1);
    a3 = *a1;
  }

  v387 = 0uLL;
  v388 = 0;
  DSP::get_highpass_70hz_coefficients(a3);
  if (v382 == v383)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Warning: High-pass filtering not performed due to unsupported sampling frequency!", 81);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v380, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v380);
    std::ostream::put();
    std::ostream::flush();
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v387, v389, *(&v389 + 1), (*(&v389 + 1) - v389) >> 1);
  }

  else
  {
    v379 = 0;
    v377 = 0;
    v378 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v377, v382, v383, (v383 - v382) >> 3);
    v375 = 0;
    __p = 0;
    v376 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, v389, *(&v389 + 1), (*(&v389 + 1) - v389) >> 1);
    DSP::high_pass_filter(&v377, &__p, &v380);
    if (v387)
    {
      *(&v387 + 1) = v387;
      operator delete(v387);
    }

    v387 = v380;
    v388 = v381;
    v381 = 0;
    v380 = 0uLL;
    if (__p)
    {
      v375 = __p;
      operator delete(__p);
    }

    if (v377)
    {
      v378 = v377;
      operator delete(v377);
    }
  }

  v10 = *a1;
  v12 = *(a1 + 19);
  v11 = *(a1 + 20);
  v13 = *(a1 + 21);
  v14 = a1[72];
  v15 = *(a1 + 22) / v10 * v14;
  v16 = *(a1 + 23);
  v17 = v387;
  v18 = (*(&v387 + 1) - v387) >> 1;
  if (*(&v387 + 1) != v387)
  {
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (*(&v387 + 1) - v387) >> 1;
    }

    v20 = 0.0;
    v21 = v387;
    v22 = v19;
    do
    {
      v24 = *v21++;
      v23 = v24;
      if (v24 < 0)
      {
        v23 = -v23;
      }

      if (v20 < v23)
      {
        v20 = v23;
      }

      --v22;
    }

    while (v22);
    v25 = 32767.0 / v20 * *(a1 + 30);
    v26 = v387;
    do
    {
      *v26 = (v25 * *v26);
      ++v26;
      --v19;
    }

    while (v19);
  }

  v328 = llround(v15);
  v27 = v10;
  if (a1[6])
  {
    v28 = a1[63];
    v27 = v28;
    if (v28 >= a1[62])
    {
      v27 = v10;
    }
  }

  v29 = v27 / 1000.0;
  v331 = powf(v29, 0.2);
  v30.f32[0] = powf(v29, 0.71429);
  v30.f32[1] = v331;
  *(a1 + 34) = vdivq_f64(*(a1 + 34), vmulq_f64(vcvtq_f64_f32(v30), xmmword_21FE10));
  v31 = a1[65];
  if ((v31 * v328) > v14 / 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: f0min is too high in order to evaluate f0 up to ", 55);
    v304 = a1[65];
    v305 = std::ostream::operator<<();
    v306 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v305, " harmonics.", 11);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v306);
    v307 = "       Please lower f0min and try again.";
    goto LABEL_338;
  }

  v320 = llround(v16 / v10 * v14);
  v319 = v31 * v320;
  if ((v31 * v320) > v14 / 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: f0max is too high in order to evaluate f0 up to ", 55);
    v308 = a1[65];
    v309 = std::ostream::operator<<();
    v310 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v309, " harmonics.", 11);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v310);
    v307 = "       Please lower f0max and try again.";
LABEL_338:
    v311 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, v307, 40);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v311);
    exit(1);
  }

  LODWORD(v14) = llround(v12 / 1000.0 * v10);
  if (v18 < v14)
  {
    v312 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v312);
    exit(1);
  }

  v32 = (v10 * 0.75 / 1000.0);
  if ((v32 & 0x80000001) == 1)
  {
    ++v32;
  }

  a1[64] = v32;
  v33 = vcvtd_n_f64_s32(v14, 1uLL);
  v34 = llround(v33);
  LOWORD(v380) = 0;
  std::vector<short>::insert(&v387, v17, v34, &v380);
  LOWORD(v380) = 0;
  std::vector<short>::insert(&v387, *(&v387 + 1), v34, &v380);
  v326 = (*(&v387 + 1) - v387) >> 1;
  v323 = llround(v13 / 1000.0 * v10);
  v316 = v326 / v323 - v14 / v323;
  v35 = v316 + 1;
  v330 = a1[64];
  v380 = 0uLL;
  v381 = 0;
  if (a1[68] <= (v316 + 1))
  {
    v36 = v35;
  }

  else
  {
    std::vector<double>::vector[abi:ne200100](&v370, v319 + 1);
    v36 = v35;
    std::vector<std::vector<double>>::vector[abi:ne200100](&v372, v35);
    if (v370)
    {
      v371 = v370;
      operator delete(v370);
    }

    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v380, v372, *v373, 0xAAAAAAAAAAAAAAABLL * ((*v373 - v372) >> 3));
    v370 = &v372;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v370);
  }

  std::vector<std::pair<int,int>>::resize(a1 + 7, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 10, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 13, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 4, v36);
  std::vector<double>::vector[abi:ne200100](&v372, v36);
  v369[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v370, v36);
  v368[0] = 0;
  std::vector<double>::vector[abi:ne200100](v369, v36);
  std::vector<double>::vector[abi:ne200100](v368, v14);
  v324 = llround(v11 / 1000.0 * v10);
  std::vector<double>::vector[abi:ne200100](v367, v324);
  std::vector<double>::vector[abi:ne200100](v366, v14);
  std::vector<double>::vector[abi:ne200100](&v364, v330 + v14);
  v318 = v330 + v14;
  std::vector<double>::vector[abi:ne200100](&v362, v318);
  v360[0] = 0x3FF0000000000000;
  std::vector<double>::vector[abi:ne200100](v361, 1uLL);
  std::vector<double>::vector[abi:ne200100](v360, a1[72] / 2 + 1);
  std::vector<double>::vector[abi:ne200100](&v358, v320 - v328 + 1);
  v327 = malloc_type_calloc((2 * a1[72]) | 1, 4uLL, 0x100004052888210uLL);
  v314 = a4;
  DSP::window_blackman(v14, v357);
  if (a1[66])
  {
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Start frame-wise processing", 27);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v353, &std::ctype<char>::id);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v353);
    std::ostream::put();
    std::ostream::flush();
  }

  v39 = v14;
  v325 = v316 + 1;
  v315 = v36;
  v322 = v14;
  if (v326 > v14)
  {
    v40 = 0;
    v41 = 0;
    v332 = 0;
    v42 = v324;
    v313 = v33;
    v43 = 2 * v14;
    v44 = round(v33 + v324 * -0.5);
    v45 = v14;
    v46 = -v330;
    while (1)
    {
      if (a1[66] == 1 && a1[67] == 1 && a1[70] < v35)
      {
        v47 = a1[71];
        v48 = a1[69];
        boost::filesystem::path::path(v355, "Progress: ");
        utils::update_progress_bar(v41, v35, v47, v48, v355);
        if (v356 < 0)
        {
          operator delete(v355[0]);
        }
      }

      *(*(a1 + 4) + 8 * v41) = (v40 / *a1);
      v49 = v387;
      if (v39)
      {
        v50 = v43 - 2 * v40;
        v51 = v368[0];
        v52 = (v387 + 2 * v40);
        do
        {
          v53 = *v52++;
          *v51++ = v53;
          v50 -= 2;
        }

        while (v50);
      }

      v54 = v44 + v40;
      v55 = v54;
      v56 = v54 + v42;
      if (v55 != v56)
      {
        v57 = v367[0];
        v58 = (v49 + 2 * v55);
        v59 = 2 * v56 - 2 * v55;
        do
        {
          v60 = *v58++;
          *v57++ = v60;
          v59 -= 2;
        }

        while (v59);
      }

      cblas_ddot_NEWLAPACK();
      v62 = v61;
      cblas_ddot_NEWLAPACK();
      v64 = v63;
      v65 = sqrt(v63 / v42);
      *(v372 + v41) = v65;
      v66 = DSP::gradient_index(v367);
      v67 = v369[0];
      *(v369[0] + v41) = v66 * 0.5 / v65;
      if (v64 == 0.0)
      {
        v67[v41] = *(a1 + 18) + *(a1 + 18);
      }

      v68 = DSP::zero_crossing_rate_plus_zero(v367);
      *(v370 + v41) = v68 / v42;
      if (v40 - v330 < 1)
      {
        v73 = v364;
        if (v365 - v364 >= 1)
        {
          bzero(v364, v365 - v364);
        }

        if (v39 < 1)
        {
          goto LABEL_73;
        }

        v74 = v368[0];
        v75 = &v73[8 * v330];
        v76 = v39;
        do
        {
          v77 = *v74++;
          *v75 = v77;
          v75 += 8;
          v76 = (v76 - 1);
        }

        while (v76);
      }

      else if (v318 >= 1)
      {
        v69 = v364;
        v70 = (v387 + 2 * v46);
        v71 = v318;
        do
        {
          v72 = *v70++;
          *v69++ = v72;
          --v71;
        }

        while (v71);
      }

      if (v39 >= 1)
      {
        v78 = v368[0];
        v79 = v357[0];
        v80 = v39;
        do
        {
          v81 = *v79++;
          *v78 = *v78 * v81;
          ++v78;
          v80 = (v80 - 1);
        }

        while (v80);
      }

LABEL_73:
      DSP::LP(v368, a1[64], &v353);
      if (v332)
      {
        operator delete(v332);
      }

      v351 = 0;
      v352 = 0;
      v350 = 0;
      v332 = v353;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v350, v353, *(&v353 + 1), (*(&v353 + 1) - v353) >> 3);
      DSP::firfilter(&v350, &v364, &v353);
      if (v362)
      {
        *(&v362 + 1) = v362;
        operator delete(v362);
      }

      v362 = v353;
      v363 = v354;
      v354 = 0;
      v353 = 0uLL;
      if (v350)
      {
        v351 = v350;
        operator delete(v350);
      }

      if (v39 >= 1)
      {
        v82 = v366[0];
        v83 = (v362 + 8 * v330);
        v84 = 0.0;
        v85 = v39;
        v86 = v366[0];
        do
        {
          v87 = *v83++;
          *v86++ = v87;
          v84 = v84 + v87 * v87;
          v85 = (v85 - 1);
        }

        while (v85);
        if (v84 != 0.0)
        {
          v88 = sqrt(v62 / v84);
          v89 = v39;
          v90 = v82;
          do
          {
            *v90 = v88 * *v90;
            ++v90;
            v89 = (v89 - 1);
          }

          while (v89);
        }

        v91 = 0.0;
        v92 = v357[0];
        v93 = v39;
        v94 = v82;
        do
        {
          v95 = *v92++;
          v96 = v95 * *v94;
          *v94++ = v96;
          v91 = v91 + v96;
          v93 = (v93 - 1);
        }

        while (v93);
        v97 = v39;
        v98 = v91 / v45;
        do
        {
          *v82 = *v82 - v98;
          ++v82;
          v97 = (v97 - 1);
        }

        while (v97);
      }

      v99 = a1[72];
      if ((v99 & 0x80000000) == 0)
      {
        bzero(v327, (8 * ((((2 * v99) & ~((2 * v99) >> 31)) >> 1) & 0x7FFFFFFF)) | 4);
      }

      if (*(v372 + v41) > *(a1 + 24) * *(a1 + 16))
      {
        if (v39 >= 1)
        {
          v100 = v366[0];
          v101 = v39;
          v102 = (v327 + 4);
          do
          {
            v103 = *v100++;
            v104 = v103;
            *v102 = v104;
            v102 += 2;
            v101 = (v101 - 1);
          }

          while (v101);
        }

        DSP::fft(v327, v99, 1);
        v99 = a1[72];
      }

      if ((v99 & 0x80000000) == 0)
      {
        v105 = 0;
        v106 = v360[0];
        v107 = 0.0;
        v108 = (v327 + 8);
        do
        {
          v109 = sqrtf((*v108 * *v108) + (*(v108 - 1) * *(v108 - 1)));
          *&v106[v105] = v109;
          v107 = v107 + v109 * v109;
          v108 += 2;
          v105 += 8;
        }

        while (((4 * v99) & 0x3FFFFFFF8) + 8 != v105);
        if (v107 != 0.0)
        {
          cblas_dscal_NEWLAPACK();
        }
      }

      if ((v319 & 0x80000000) == 0 && a1[68] > v35)
      {
        v110 = v360[0];
        v111 = *(v380 + 24 * v41);
        v112 = (v319 + 1);
        do
        {
          v113 = *v110++;
          *v111++ = v113;
          --v112;
        }

        while (v112);
      }

      v114 = v358;
      if (v320 >= v328)
      {
        v115 = v360[0];
        v116 = a1[65];
        v117 = 8 * v328;
        v118 = (v360[0] + 16 * v328);
        v119 = v328;
        do
        {
          v120 = v115[v119];
          v114[v119 - v328] = v120;
          if (v116 >= 2)
          {
            v121 = v118;
            v122 = 2;
            do
            {
              v120 = v120 + *v121 - v115[((v122 + -0.5) * v119)];
              v114[v119 - v328] = v120;
              ++v122;
              v121 = (v121 + v117);
            }

            while (v116 + 1 != v122);
          }

          ++v119;
          v118 += 2;
          v117 += 8;
        }

        while (v320 + 1 != v119);
      }

      if (v359 == v114)
      {
        v129 = -1.0;
        v125 = -INFINITY;
      }

      else
      {
        if ((v359 - v114) <= 1)
        {
          v123 = 1;
        }

        else
        {
          v123 = v359 - v114;
        }

        v124 = -1;
        v125 = -INFINITY;
        v126 = v328;
        do
        {
          v127 = *v114++;
          v128 = v127;
          if (v127 > v125)
          {
            v125 = v128;
            v124 = v126;
          }

          ++v126;
          --v123;
        }

        while (v123);
        v129 = v124;
      }

      *(*(a1 + 7) + 8 * v41) = v129 * (*a1 / a1[72]);
      v130 = *(a1 + 10);
      v130[v41++] = v125;
      v40 += v323;
      v43 += 2 * v323;
      v46 += v323;
      if (v326 <= v322 + v41 * v323)
      {
        v131 = v332;
        v36 = v315;
        v33 = v313;
        goto LABEL_124;
      }
    }
  }

  v131 = 0;
  LODWORD(v41) = 0;
  v130 = *(a1 + 10);
LABEL_124:
  v132 = *(a1 + 11);
  v133 = v132 - v130;
  if (v132 == v130)
  {
    v135 = -INFINITY;
  }

  else
  {
    if (v133 <= 1)
    {
      v134 = 1;
    }

    else
    {
      v134 = v132 - v130;
    }

    v135 = -INFINITY;
    v136 = v130;
    do
    {
      v137 = *v136++;
      v138 = v137;
      if (v137 > v135)
      {
        v135 = v138;
      }

      --v134;
    }

    while (v134);
  }

  *(a1 + 29) = v135;
  if (v135 <= *(a1 + 25))
  {
    v153 = v314;
    goto LABEL_250;
  }

  if (a1[66])
  {
    v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Re-estimate SRH and f0 again using refined f0 limits", 52);
    std::ios_base::getloc((v139 + *(*v139 - 24)));
    v140 = std::locale::use_facet(&v353, &std::ctype<char>::id);
    (v140->__vftable[2].~facet_0)(v140, 10);
    std::locale::~locale(&v353);
    std::ostream::put();
    std::ostream::flush();
  }

  v353 = 0uLL;
  v354 = 0;
  locale = v131;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v353, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 3);
  v143 = *(a1 + 10);
  v142 = *(a1 + 11);
  if (v142 != v143)
  {
    v144 = 0;
    v145 = 0;
    do
    {
      v141 = *(v143 + 8 * v144);
      if (v141 >= *(a1 + 25))
      {
        ++v145;
      }

      else
      {
        v146 = v353 + 8 * v145;
        v147 = *(&v353 + 1) - (v146 + 8);
        if (*(&v353 + 1) != v146 + 8)
        {
          memmove((v353 + 8 * v145), (v146 + 8), *(&v353 + 1) - (v146 + 8));
          v143 = *(a1 + 10);
          v142 = *(a1 + 11);
        }

        *(&v353 + 1) = v146 + v147;
      }

      ++v144;
    }

    while (v144 < (v142 - v143) >> 3);
  }

  v148 = v353;
  v149 = *(&v353 + 1) - v353;
  v150 = (v353 + 8 * ((*(&v353 + 1) - v353) >> 4));
  if (v150 == *(&v353 + 1))
  {
    v151 = v39;
    v152 = v318;
  }

  else
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v353, v150, *(&v353 + 1), v141);
    v152 = v318;
    v148 = v353;
    v149 = *(&v353 + 1) - v353;
    v151 = v39;
  }

  v154 = *(v148 + ((v149 >> 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = *(a1 + 22);
  if (v154 * 0.5 > v155)
  {
    *(a1 + 22) = v154 * 0.5;
    v155 = v154 * 0.5;
  }

  v156 = v154 + v154;
  v157 = *(a1 + 23);
  if (v156 < v157)
  {
    *(a1 + 23) = v156;
    v157 = v156;
  }

  v158 = *a1;
  v159 = a1[72];
  v321 = llround(v157 / v158 * v159);
  v160 = v321 + 1;
  v329 = llround(v155 / v158 * v159);
  std::vector<double>::vector[abi:ne200100](&v347, v321 + 1 - v329);
  if (a1[68] > v35)
  {
    if (v316 <= 0x7FFFFFFE)
    {
      v161 = 0;
      v162 = v380;
      v163 = v347;
      v164 = v348;
      v165 = (v348 - v347) >> 3;
      v166 = *a1 / a1[72];
      v167 = *(a1 + 7);
      v168 = *(a1 + 10);
      if (v165 <= 1)
      {
        v165 = 1;
      }

      v169 = v315;
      if (v315 <= 1)
      {
        v169 = 1;
      }

      do
      {
        if (v329 <= v321)
        {
          v170 = *(v162 + 24 * v161);
          v171 = a1[65];
          v172 = (v170 + 16 * v329);
          v173 = 8 * v329;
          v174 = v329;
          do
          {
            v175 = *(v170 + 8 * v174);
            v163[v174 - v329] = v175;
            if (v171 >= 2)
            {
              v176 = v172;
              v177 = 2;
              do
              {
                v175 = v175 + *v176 - *(v170 + 8 * ((v177 + -0.5) * v174));
                v163[v174 - v329] = v175;
                ++v177;
                v176 = (v176 + v173);
              }

              while (v171 + 1 != v177);
            }

            ++v174;
            v172 += 2;
            v173 += 8;
          }

          while (v160 != v174);
        }

        if (v164 == v163)
        {
          v185 = -1.0;
          v179 = -INFINITY;
        }

        else
        {
          v178 = -1;
          v179 = -INFINITY;
          v180 = v165;
          v181 = v163;
          v182 = v329;
          do
          {
            v183 = *v181++;
            v184 = v183;
            if (v183 > v179)
            {
              v179 = v184;
              v178 = v182;
            }

            ++v182;
            --v180;
          }

          while (v180);
          v185 = v178;
        }

        *(v167 + 8 * v161) = v166 * v185;
        *(v168 + 8 * v161++) = v179;
      }

      while (v161 != v169);
    }

    goto LABEL_245;
  }

  v186 = v41 * v323;
  v187 = v41 * v323 + v151;
  if (v326 > v187)
  {
    v188 = v324;
    v189 = v187;
    v190 = round(v33 + v324 * -0.5);
    v191 = v151;
    v41 = v41;
    v317 = v152;
    v192 = v186 - v330;
    do
    {
      if (a1[66] == 1 && a1[67] == 1 && a1[70] < v325)
      {
        v193 = a1[71];
        v194 = a1[69];
        boost::filesystem::path::path(v345, "Progress: ");
        utils::update_progress_bar(v41, v325, v193, v194, v345);
        if (v346 < 0)
        {
          operator delete(v345[0]);
        }
      }

      *(*(a1 + 4) + 8 * v41) = (v186 / *a1);
      v195 = v387;
      if (v39)
      {
        v196 = (v387 + 2 * v186);
        v197 = 2 * v189 - 2 * v186;
        v198 = v368[0];
        do
        {
          v199 = *v196++;
          *v198++ = v199;
          v197 -= 2;
        }

        while (v197);
      }

      v200 = v190 + v186;
      v201 = v200;
      v202 = v200 + v188;
      if (v201 != v202)
      {
        v203 = v367[0];
        v204 = (v195 + 2 * v201);
        v205 = 2 * v202 - 2 * v201;
        do
        {
          v206 = *v204++;
          *v203++ = v206;
          v205 -= 2;
        }

        while (v205);
      }

      cblas_ddot_NEWLAPACK();
      v208 = v207;
      cblas_ddot_NEWLAPACK();
      *(v372 + v41) = sqrt(v209 / v188);
      if (v186 - v330 < 1)
      {
        v214 = v364;
        if (v365 - v364 >= 1)
        {
          bzero(v364, v365 - v364);
        }

        if (v39 < 1)
        {
          goto LABEL_200;
        }

        v215 = v368[0];
        v216 = &v214[8 * v330];
        v217 = v39;
        do
        {
          v218 = *v215++;
          *v216 = v218;
          v216 += 8;
          v217 = (v217 - 1);
        }

        while (v217);
      }

      else if (v318 >= 1)
      {
        v210 = v364;
        v211 = (v387 + 2 * v192);
        v212 = v317;
        do
        {
          v213 = *v211++;
          *v210++ = v213;
          --v212;
        }

        while (v212);
      }

      if (v39 >= 1)
      {
        v219 = v368[0];
        v220 = v357[0];
        v221 = v39;
        do
        {
          v222 = *v220++;
          *v219 = *v219 * v222;
          ++v219;
          v221 = (v221 - 1);
        }

        while (v221);
      }

LABEL_200:
      DSP::LP(v368, a1[64], v343);
      if (locale)
      {
        operator delete(locale);
      }

      v341 = 0;
      v342 = 0;
      v340 = 0;
      locale = v343[0].__locale_;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v340, v343[0].__locale_, v343[1].__locale_, (v343[1].__locale_ - v343[0].__locale_) >> 3);
      DSP::firfilter(&v340, &v364, v343);
      if (v362)
      {
        *(&v362 + 1) = v362;
        operator delete(v362);
      }

      v362 = *&v343[0].__locale_;
      v363 = v344;
      v343[1].__locale_ = 0;
      v344 = 0;
      v343[0].__locale_ = 0;
      if (v340)
      {
        v341 = v340;
        operator delete(v340);
      }

      if (v39 >= 1)
      {
        v223 = v366[0];
        v224 = (v362 + 8 * v330);
        v225 = 0.0;
        v226 = v39;
        v227 = v366[0];
        do
        {
          v228 = *v224++;
          *v227++ = v228;
          v225 = v225 + v228 * v228;
          v226 = (v226 - 1);
        }

        while (v226);
        if (v225 != 0.0)
        {
          v229 = sqrt(v208 / v225);
          v230 = v39;
          v231 = v223;
          do
          {
            *v231 = v229 * *v231;
            ++v231;
            v230 = (v230 - 1);
          }

          while (v230);
        }

        v232 = 0.0;
        v233 = v357[0];
        v234 = v39;
        v235 = v223;
        do
        {
          v236 = *v233++;
          v237 = v236 * *v235;
          *v235++ = v237;
          v232 = v232 + v237;
          v234 = (v234 - 1);
        }

        while (v234);
        v238 = v39;
        v239 = v232 / v191;
        do
        {
          *v223 = *v223 - v239;
          ++v223;
          v238 = (v238 - 1);
        }

        while (v238);
      }

      v240 = a1[72];
      if ((v240 & 0x80000000) == 0)
      {
        bzero(v327, (8 * ((((2 * v240) & ~((2 * v240) >> 31)) >> 1) & 0x7FFFFFFF)) | 4);
      }

      if (*(v372 + v41) > *(a1 + 24) * *(a1 + 16))
      {
        if (v39 >= 1)
        {
          v241 = v366[0];
          v242 = v39;
          v243 = (v327 + 4);
          do
          {
            v244 = *v241++;
            v245 = v244;
            *v243 = v245;
            v243 += 2;
            v242 = (v242 - 1);
          }

          while (v242);
        }

        DSP::fft(v327, v240, 1);
        v246 = std::ostream::operator<<();
        std::ios_base::getloc((v246 + *(*v246 - 24)));
        v247 = std::locale::use_facet(v343, &std::ctype<char>::id);
        (v247->__vftable[2].~facet_0)(v247, 10);
        std::locale::~locale(v343);
        std::ostream::put();
        std::ostream::flush();
        v240 = a1[72];
      }

      if ((v240 & 0x80000000) == 0)
      {
        v248 = 0;
        v249 = v360[0];
        v250 = 0.0;
        v251 = (v327 + 8);
        do
        {
          v252 = sqrtf((*v251 * *v251) + (*(v251 - 1) * *(v251 - 1)));
          *&v249[v248] = v252;
          v250 = v250 + v252 * v252;
          v251 += 2;
          v248 += 8;
        }

        while (((4 * v240) & 0x3FFFFFFF8) + 8 != v248);
        if (v250 != 0.0)
        {
          cblas_dscal_NEWLAPACK();
        }
      }

      v253 = v358;
      if (v329 <= v321)
      {
        v254 = v360[0];
        v255 = a1[65];
        v256 = (v360[0] + 16 * v329);
        v257 = 8 * v329;
        v258 = v329;
        do
        {
          v259 = v254[v258];
          v253[v258 - v329] = v259;
          if (v255 >= 2)
          {
            v260 = v256;
            v261 = 2;
            do
            {
              v259 = v259 + *v260 - v254[((v261 + -0.5) * v258)];
              v253[v258 - v329] = v259;
              ++v261;
              v260 = (v260 + v257);
            }

            while (v255 + 1 != v261);
          }

          ++v258;
          v256 += 2;
          v257 += 8;
        }

        while (v160 != v258);
      }

      if (v359 == v253)
      {
        v268 = -1.0;
        v264 = -INFINITY;
      }

      else
      {
        if ((v359 - v253) <= 1)
        {
          v262 = 1;
        }

        else
        {
          v262 = v359 - v253;
        }

        v263 = -1;
        v264 = -INFINITY;
        v265 = v329;
        do
        {
          v266 = *v253++;
          v267 = v266;
          if (v266 > v264)
          {
            v264 = v267;
            v263 = v265;
          }

          ++v265;
          --v262;
        }

        while (v262);
        v268 = v263;
      }

      *(*(a1 + 7) + 8 * v41) = v268 * (*a1 / a1[72]);
      *(*(a1 + 10) + 8 * v41++) = v264;
      v189 = v322 + v41 * v323;
      v186 += v323;
      v192 += v323;
    }

    while (v326 > v189);
  }

LABEL_245:
  if (v347)
  {
    v348 = v347;
    operator delete(v347);
  }

  v153 = v314;
  v36 = v315;
  v131 = locale;
  v35 = v316 + 1;
  if (v353)
  {
    *(&v353 + 1) = v353;
    operator delete(v353);
  }

  v130 = *(a1 + 10);
  v132 = *(a1 + 11);
  v133 = v132 - v130;
LABEL_250:
  if (v132 == v130)
  {
    v272 = 0.0;
    v270 = 0.0;
  }

  else
  {
    if (v133 <= 1)
    {
      v269 = 1;
    }

    else
    {
      v269 = v133;
    }

    v270 = 0.0;
    v271 = v130;
    v272 = 0.0;
    do
    {
      v273 = *v271++;
      v272 = v272 + v273;
      v270 = v270 + v273 * v273;
      --v269;
    }

    while (v269);
  }

  if (sqrt(v270 / v35 - v272 / v35 * (v272 / v35)) > *(a1 + 26))
  {
    *(a1 + 27) = *(a1 + 28);
  }

  if (v316 <= 0x7FFFFFFE)
  {
    v274 = *(a1 + 13);
    if (v36 <= 1)
    {
      v275 = 1;
    }

    else
    {
      v275 = v36;
    }

    v276 = v275;
    v277 = *(a1 + 13);
    v278 = v130;
    do
    {
      v279 = *v278++;
      if (v279 <= *(a1 + 27))
      {
        v280 = 0.0;
      }

      else
      {
        v280 = 1.0;
      }

      *v277++ = v280;
      --v276;
    }

    while (v276);
    v281 = v372;
    v282 = v370;
    v283 = v369[0];
    do
    {
      if (*v281 < *(a1 + 16))
      {
        *v274 = 0;
      }

      if (*v282 > *(a1 + 17))
      {
        *v274 = 0;
      }

      if (*v283 > *(a1 + 18))
      {
        *v274 = 0;
      }

      ++v281;
      ++v274;
      ++v282;
      ++v283;
      --v275;
    }

    while (v275);
  }

  if (v132 != v130)
  {
    v284 = log(a1[65]);
    if (v133 <= 1)
    {
      v285 = 1;
    }

    else
    {
      v285 = v133;
    }

    do
    {
      *v130 = fmax(fmin(*v130 / v284 * 6.4, 1.0), 0.0);
      ++v130;
      --v285;
    }

    while (v285);
  }

  v286 = *(a1 + 5);
  if ((v286 - *(a1 + 4)) >= 9 && *(v286 - 8) == 0.0)
  {
    *(a1 + 5) = v286 - 8;
    *(a1 + 8) -= 8;
    *(a1 + 14) -= 8;
    *(a1 + 11) = v132 - 1;
  }

  DSP::smooth_voiced_pitch_contour(a1 + 7, a1[7], &v353);
  v287 = *(a1 + 7);
  if (v287)
  {
    *(a1 + 8) = v287;
    operator delete(v287);
    *(a1 + 7) = 0;
    *(a1 + 8) = 0;
    *(a1 + 9) = 0;
  }

  *(a1 + 14) = v353;
  *(a1 + 9) = v354;
  free(v327);
  v353 = 0uLL;
  v354 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v353, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 3);
  v288 = v353;
  if (*(&v353 + 1) != v353)
  {
    v289 = (*(&v353 + 1) - v353) >> 3;
    v290 = *(a1 + 7);
    v291 = *(a1 + 13);
    if (v289 <= 1)
    {
      v289 = 1;
    }

    do
    {
      v292 = *v290++;
      v293 = v292;
      v294 = *v291++;
      *v288++ = v293 * v294;
      --v289;
    }

    while (v289);
  }

  v295 = *(a1 + 4);
  v296 = *(a1 + 5);
  v348 = 0;
  v349 = 0;
  v347 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v347, v295, v296, (v296 - v295) >> 3);
  v343[1].__locale_ = 0;
  v344 = 0;
  v343[0].__locale_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v343, v353, *(&v353 + 1), (*(&v353 + 1) - v353) >> 3);
  v297 = *(a1 + 7);
  v298 = *(a1 + 8);
  v338 = 0;
  v339 = 0;
  v337 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v337, v297, v298, (v298 - v297) >> 3);
  v299 = *(a1 + 10);
  v300 = *(a1 + 11);
  v335 = 0;
  v336 = 0;
  v334 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v334, v299, v300, (v300 - v299) >> 3);
  if (a1[66])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v301 = std::ostream::operator<<();
    v302 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, " s", 2);
    std::ios_base::getloc((v302 + *(*v302 - 24)));
    v303 = std::locale::use_facet(&v391, &std::ctype<char>::id);
    (v303->__vftable[2].~facet_0)(v303, 10);
    std::locale::~locale(&v391);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(v153, &v347, v343, &v337, &v334);
  if (v334)
  {
    v335 = v334;
    operator delete(v334);
  }

  if (v337)
  {
    v338 = v337;
    operator delete(v337);
  }

  if (v343[0].__locale_)
  {
    v343[1] = v343[0];
    operator delete(v343[0].__locale_);
  }

  if (v347)
  {
    v348 = v347;
    operator delete(v347);
  }

  if (v353)
  {
    *(&v353 + 1) = v353;
    operator delete(v353);
  }

  if (v357[0])
  {
    v357[1] = v357[0];
    operator delete(v357[0]);
  }

  if (v358)
  {
    v359 = v358;
    operator delete(v358);
  }

  if (v360[0])
  {
    v360[1] = v360[0];
    operator delete(v360[0]);
  }

  if (v131)
  {
    operator delete(v131);
  }

  if (v361[0])
  {
    v361[1] = v361[0];
    operator delete(v361[0]);
  }

  if (v362)
  {
    *(&v362 + 1) = v362;
    operator delete(v362);
  }

  if (v364)
  {
    v365 = v364;
    operator delete(v364);
  }

  if (v366[0])
  {
    v366[1] = v366[0];
    operator delete(v366[0]);
  }

  if (v367[0])
  {
    v367[1] = v367[0];
    operator delete(v367[0]);
  }

  if (v368[0])
  {
    v368[1] = v368[0];
    operator delete(v368[0]);
  }

  if (v369[0])
  {
    v369[1] = v369[0];
    operator delete(v369[0]);
  }

  if (v370)
  {
    v371 = v370;
    operator delete(v370);
  }

  if (v372)
  {
    *v373 = v372;
    operator delete(v372);
  }

  v372 = &v380;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v372);
  if (v382)
  {
    v383 = v382;
    operator delete(v382);
  }

  if (v387)
  {
    *(&v387 + 1) = v387;
    operator delete(v387);
  }

  if (v389)
  {
    *(&v389 + 1) = v389;
    operator delete(v389);
  }
}

void sub_1A47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::locale a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a69)
  {
    operator delete(a69);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(a72);
  }

  v74 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v76;
    operator delete(v76);
  }

  v77 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v77;
    operator delete(v77);
  }

  v78 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v78;
    operator delete(v78);
  }

  v79 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v79;
    operator delete(v79);
  }

  v80 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v80;
    operator delete(v80);
  }

  v81 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v81;
    operator delete(v81);
  }

  STACK[0x2B8] = &STACK[0x300];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B8]);
  v82 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v82;
    operator delete(v82);
  }

  v83 = *(v72 - 224);
  if (v83)
  {
    *(v72 - 216) = v83;
    operator delete(v83);
  }

  v84 = *(v72 - 192);
  if (v84)
  {
    *(v72 - 184) = v84;
    operator delete(v84);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::convert_espbuffer_to_2d_vector(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  std::vector<float>::vector[abi:ne200100](__p, v4);
  std::vector<std::vector<float>>::vector[abi:ne200100](a2, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 4 * v4;
    do
    {
      v9 = &v7[v8];
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*a2 + v6), v7, &v7[v8], v4);
      v6 += 24;
      v7 = v9;
      --v5;
    }

    while (v5);
  }
}

void sub_1A4C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SiriTTS::ForcedAlignment::EspressoSession::EspressoSession(uint64_t *a1, uint64_t *a2)
{
  *a1 = espresso_create_context();
  a1[3] = espresso_create_plan();
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  espresso_plan_add_network();
  return a1;
}

void SiriTTS::ForcedAlignment::EspressoSession::~EspressoSession(SiriTTS::ForcedAlignment::EspressoSession *this)
{
  v2 = *(this + 3);
  espresso_plan_destroy();
  v3 = *this;
  espresso_context_destroy();
}

void SiriTTS::ForcedAlignment::EspressoSession::forward(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    v12 = *a3;
  }

  v13 = (*(*a2 + 8) - **a2) >> 2;
  v14 = (a2[1] - *a2) >> 3;
  espresso_network_change_blob_shape();
  v15 = *(a1 + 8);
  espresso_plan_build();
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v16 = *a2;
  v32[1] = (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v32[2] = ((v16[1] - *v16) >> 2);
  espresso_buffer_pack_tensor_shape();
  memset(&v31, 0, sizeof(v31));
  std::vector<int>::reserve(&v31, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) * ((*(*a2 + 8) - **a2) >> 2));
  *(a1 + 192) = 65568;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (*(a4 + 23) < 0)
  {
    v19 = *a4;
  }

  espresso_network_bind_buffer();
  v20 = *a2;
  if (a2[1] != *a2)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v31, v31.__end_, *(v20 + v21), *(v20 + v21 + 8), (*(v20 + v21 + 8) - *(v20 + v21)) >> 2);
      ++v22;
      v20 = *a2;
      v21 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v22);
  }

  *(a1 + 32) = v31.__begin_;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    v25 = *a3;
  }

  espresso_network_bind_buffer();
  v26 = *(a1 + 8);
  espresso_plan_execute_sync();
  SiriTTS::ForcedAlignment::convert_espbuffer_to_2d_vector(v30, &v28);
  std::vector<std::vector<int>>::__vdeallocate(a5);
  *a5 = v28;
  a5[2] = v29;
  v29 = 0;
  v28 = 0uLL;
  v32[0] = &v28;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v32);
  v27 = *(a1 + 8);
  espresso_plan_build_clean();
  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
  }
}

void sub_1A4F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 120);
  if (v7)
  {
    *(v5 - 112) = v7;
    operator delete(v7);
  }

  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SiriTTS::ForcedAlignment::FeatureTransform::transform@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v18 = 0u;
  v17 = 0u;
  v16 = off_276F88;
  v19 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = off_276F88;
  v15 = 0;
  memset(v10, 0, sizeof(v10));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v10, v11);
  v9[0] = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v9);
  kaldi::CuMatrix<float>::operator=(&v16, v11);
  kaldi::nnet1::Nnet::Feedforward(*a1, &v16, &v12, -1, 0);
  kaldi::Matrix<float>::Matrix(v9);
  kaldi::Matrix<float>::Resize(v9, HIDWORD(v13), DWORD2(v13), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(&v12, v9, 111, v5, v6);
  kaldi::Matrix<float>::Matrix(v8, v9);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v8, a3);
  kaldi::Matrix<float>::~Matrix(v8);
  kaldi::Matrix<float>::~Matrix(v9);
  kaldi::Matrix<float>::~Matrix(v11);
  kaldi::CuMatrix<float>::~CuMatrix(&v12);
  return kaldi::CuMatrix<float>::~CuMatrix(&v16);
}

void sub_1A5198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  kaldi::Matrix<float>::~Matrix(&a22);
  kaldi::CuMatrix<float>::~CuMatrix(v22 - 128);
  kaldi::CuMatrix<float>::~CuMatrix(v22 - 80);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::PdfPrior::PdfPrior(void *a1, const std::string *a2)
{
  *a1 = 0;
  boost::filesystem::path::path(&__p, "");
  v4 = 0x2EDBE6FF3F800000;
  std::string::operator=(&__p, a2);
  operator new();
}

uint64_t SiriTTS::ForcedAlignment::PdfPrior::subtract_on_logpost@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v7, 0, sizeof(v7));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v7, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v7, v8);
  v9 = v7;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::nnet1::PdfPrior::SubtractOnLogpost(*a1, v8);
  kaldi::Matrix<float>::Matrix(v6, v8);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v6, a3);
  kaldi::Matrix<float>::~Matrix(v6);
  return kaldi::Matrix<float>::~Matrix(v8);
}

void sub_1A53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a17);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AcousticModel::AcousticModel(_OWORD *a1, const void **a2)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v6;
  std::string::basic_string[abi:ne200100](v6, v3 + 5);
  if (v7 < 0)
  {
    v4 = v6[0];
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "/tree");
  operator new();
}

void sub_1A5C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  STACK[0x360] = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  STACK[0x360] = v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  v54 = v50[9];
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v55 = v50[7];
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v56 = v50[5];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v57 = v50[3];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  v58 = v50[1];
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  _Unwind_Resume(a1);
}

uint64_t std::copy[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *a1;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v5 = *a2;
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a2 + 8), *(a2 + 16));
    v5 = v8;
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v19 = v11;
  memset(&v11, 0, sizeof(v11));
  v16 = v5;
  v17 = v9;
  v18 = v10;
  memset(&v9, 0, sizeof(v9));
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>,0>(&v18, &v16, a3, v12);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v6 = v15;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1A5F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::AcousticModel::forward(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  SiriTTS::ForcedAlignment::FeatureTransform::transform(*(a1 + 32), a2, &v21);
  memset(v20, 0, sizeof(v20));
  if ((-1431655765 * ((v22 - v21) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      SiriTTS::ForcedAlignment::get_submatrix(&v21, v6, 0x7530u, v19);
      if (*a3 == 1)
      {
        v17 = 0uLL;
        v18 = 0;
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, 0, 0, 0);
        SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v14, &v15);
        std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](v20, &v15);
        kaldi::Matrix<float>::~Matrix(&v15);
        v12[0] = v14;
      }

      else
      {
        v17 = 0uLL;
        v18 = 0;
        v7 = *(a1 + 48);
        boost::filesystem::path::path(v12, "main_input");
        boost::filesystem::path::path(__p, "output_layer_BiasAdd");
        SiriTTS::ForcedAlignment::EspressoSession::forward(v7, v19, v12, __p, &v15);
        std::vector<std::vector<int>>::__vdeallocate(&v17);
        v17 = v15;
        v18 = v16;
        v16 = 0;
        v15 = 0uLL;
        v23 = &v15;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v23);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13 < 0)
        {
          operator delete(v12[0]);
        }

        memset(v9, 0, sizeof(v9));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v9, v17, *(&v17 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v17 + 1) - v17) >> 3));
        SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v9, &v15);
        std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](v20, &v15);
        kaldi::Matrix<float>::~Matrix(&v15);
        v12[0] = v9;
      }

      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v12);
      *&v15 = &v17;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
      *&v15 = v19;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
      v6 += 30000;
    }

    while (v6 < (-1431655765 * ((v22 - v21) >> 3)));
  }

  SiriTTS::ForcedAlignment::concat_features(v20, &v15);
  SiriTTS::ForcedAlignment::PdfPrior::subtract_on_logpost(*(a1 + 64), &v15, a4);
  v19[0] = &v15;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v19);
  *&v15 = v20;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
  *&v15 = &v21;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_1A6240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(v36 - 168) = v35;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v36 - 168));
  a29 = v36 - 144;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = v36 - 120;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(a1, a2);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(a1[1], a2);
    result = v3 + 40;
    a1[1] = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void *SiriTTS::ForcedAlignment::AcousticModel::context@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t SiriTTS::ForcedAlignment::AcousticModel::transition_model@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *std::unique_ptr<kaldi::nnet1::PdfPrior>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    kaldi::CuVector<float>::~CuVector((v2 + 8));

    operator delete();
  }

  return result;
}

void std::__shared_ptr_emplace<kaldi::ContextDependency>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2830C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<kaldi::TransitionModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::EspressoSession>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::EspressoSession>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283168;
  SiriTTS::ForcedAlignment::EspressoSession::EspressoSession(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::EspressoSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::FeatureTransform>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::FeatureTransform>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2831B8;
  SiriTTS::ForcedAlignment::FeatureTransform::FeatureTransform(a1 + 3);
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::FeatureTransform>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2831B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::PdfPrior>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::PdfPrior>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283208;
  SiriTTS::ForcedAlignment::PdfPrior::PdfPrior(a1 + 3, a2);
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::PdfPrior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a1 + 1));
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1A6990(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *a1;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, a1[1], a1[2]);
  }

  else
  {
    v28 = *(a1 + 1);
  }

  v24 = *a2;
  *__p = *(a2 + 1);
  v26 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::__unwrap_range[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(&v27, &v24, &v29);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v20 = v31;
  v15 = v32;
  *v19 = v30;
  v30 = 0uLL;
  v17 = v34;
  v18 = v29;
  *v16 = v33;
  v31 = 0;
  v33 = 0uLL;
  v34 = 0;
  std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>(&v18, &v15, a3, v21);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v8 = a1[1];
  v9 = *(a1 + 31);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v10 = *v21;
  v35[0] = v22;
  *(v35 + 7) = *(&v22 + 7);
  v11 = HIBYTE(v22);
  v22 = 0uLL;
  v21[1] = 0;
  *(v36 + 7) = *(v35 + 7);
  v36[0] = v35[0];
  if (v9 < 0)
  {
    v14 = v10;
    operator delete(v8);
    v10 = v14;
    v12 = v22 < 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v23;
  *a4 = v10;
  *(a4 + 16) = v36[0];
  *(a4 + 23) = *(v36 + 7);
  *(a4 + 31) = v11;
  *(a4 + 32) = v13;
  if (v12)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void std::__unwrap_range[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *v17 = *(a1 + 6);
  *&v17[3] = *(a1 + 27);
  v7 = *(a1 + 31);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v8 = *(&v5 + 1);
  *&v18 = v5;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external((&v18 + 8), *(&v5 + 1), v6);
    v15 = v18;
    v9 = v20;
  }

  else
  {
    v15 = v5;
    *(&v18 + 1) = *(&v5 + 1);
    *v19 = v6;
    *&v19[8] = *v17;
    *&v19[11] = *&v17[3];
    v9 = v7;
  }

  v22[0] = *v19;
  *(v22 + 7) = *&v19[7];
  v10 = *a2;
  v11 = *(a2 + 2);
  *v16 = *(a2 + 6);
  *&v16[3] = *(a2 + 27);
  v12 = *(a2 + 31);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v13 = *(&v10 + 1);
  *&v18 = v10;
  if (v12 < 0)
  {
    std::string::__init_copy_ctor_external((&v18 + 8), *(&v10 + 1), v11);
    v10 = v18;
    v14 = v20;
  }

  else
  {
    *(&v18 + 1) = *(&v10 + 1);
    *v19 = v11;
    *&v19[8] = *v16;
    *&v19[11] = *&v16[3];
    v14 = v12;
  }

  v21[0] = *v19;
  *(v21 + 7) = *&v19[7];
  *a3 = v15;
  *(a3 + 16) = v22[0];
  *(a3 + 23) = *(v22 + 7);
  *(a3 + 31) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v21[0];
  *(a3 + 55) = *(v21 + 7);
  *(a3 + 63) = v14;
  if ((v12 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v8);
    return;
  }

  operator delete(v13);
  if (v7 < 0)
  {
    goto LABEL_11;
  }
}

void sub_1A6DD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>@<Q0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  for (i = *a1; *a1 != *a2; i = *a1)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, (a1 + 8));
    std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](a1);
  }

  *a4 = i;
  result = *(a1 + 8);
  *(a4 + 8) = result;
  v10 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = a3;
  return result;
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](uint64_t **a1)
{
  v2 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, (a1 + 1));
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t std::pair<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>::~pair(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  kaldi::Matrix<float>::Matrix(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_1A7028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AlignmentGraph::AlignmentGraph(SiriTTS::ForcedAlignment::AlignmentGraph *this, const kaldi::ContextDependency *a2, const kaldi::TransitionModel *a3, void *a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  std::allocate_shared[abi:ne200100]<kaldi::TrainingGraphCompiler,std::allocator<kaldi::TrainingGraphCompiler>,kaldi::TransitionModel const&,kaldi::ContextDependency const&,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::vector<int>,kaldi::TrainingGraphCompilerOptions &,0>();
}

void sub_1A70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = v10[5];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v10[3];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v10[1];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A71A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel const&,kaldi::ContextDependency const&,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::vector<int>,kaldi::TrainingGraphCompilerOptions &,std::allocator<kaldi::TrainingGraphCompiler>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283258;
  kaldi::TrainingGraphCompiler::TrainingGraphCompiler(a1 + 3, a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void kaldi::TrainingGraphCompiler::~TrainingGraphCompiler(kaldi::TrainingGraphCompiler *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst9VectorFstINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEEC2B8ne200100IJESC_Li0EEESC_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2832A8;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst();
}

void std::__shared_ptr_emplace<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2832A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = kaldi::ContextDependency::CentralPosition(a1);
  v5 = kaldi::ContextDependency::ContextWidth(a1);
  result = std::vector<std::vector<float>>::vector[abi:ne200100](a2, v4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; result = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*a2 + 24 * i++), v9, &v9[4 * v5], v5))
    {
      std::vector<int>::resize((*a2 + 24 * i), v5);
      if (i >= a1[3])
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v8);
      }

      v9 = (*a1 + 4 * (a1[4] * i));
    }
  }

  return result;
}

void sub_1A7600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(void *a1@<X0>, uint64_t a2@<X8>)
{
  kaldi::Matrix<float>::Matrix(a2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  kaldi::Matrix<float>::Resize(a2, v4, (*(*a1 + 8) - **a1) >> 2, 1, 0);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = v4 & 0x7FFFFFFF;
    v8 = 8;
    do
    {
      if (v6 >= *(a2 + 12))
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v5);
      }

      v9 = (*a1 + v8);
      v10 = *(v9 - 1);
      v11 = *v9;
      if (v11 != v10)
      {
        memmove((*a2 + 4 * *(a2 + 16) * v6), v10, v11 - v10);
      }

      ++v6;
      v8 += 24;
    }

    while (v7 != v6);
  }
}

uint64_t SiriTTS::ForcedAlignment::concat_features@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = kaldi::ContextDependency::CentralPosition(*a1);
  v5 = kaldi::ContextDependency::ContextWidth(*a1);
  v6 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) >= 2)
  {
    v7 = 1;
    v8 = 40;
    do
    {
      v4 = kaldi::ContextDependency::CentralPosition((v6 + v8)) + v4;
      ++v7;
      v6 = *a1;
      v8 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) > v7);
  }

  kaldi::Matrix<float>::Matrix(v20, v4, v5, 0, 0);
  v9 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = kaldi::ContextDependency::CentralPosition((v9 + v10));
      v14 = v13;
      kaldi::SubMatrix<float>::SubMatrix(v19, v20, v12, v13, 0, v5);
      kaldi::MatrixBase<float>::CopyFromMat<float>(v19, *a1 + v10, 111, v15, v16);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v19);
      v12 = (v14 + v12);
      ++v11;
      v9 = *a1;
      v10 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) > v11);
  }

  kaldi::Matrix<float>::Matrix(v18, v20);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v18, a2);
  kaldi::Matrix<float>::~Matrix(v18);
  return kaldi::Matrix<float>::~Matrix(v20);
}

void sub_1A78A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a18);
  _Unwind_Resume(a1);
}

uint64_t SiriTTS::ForcedAlignment::get_submatrix@<X0>(void *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v7 = -1431655765 * ((a1[1] - *a1) >> 3) - a2;
  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  kaldi::Matrix<float>::Matrix(&v17);
  kaldi::Matrix<float>::Resize(&v17, v8, (*(*a1 + 8) - **a1) >> 2, 1, 0);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 24 * a2;
    do
    {
      if (v10 >= v18)
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
      }

      v12 = *a1 + v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14 != v13)
      {
        memmove((v17 + 4 * v10 * v19), v13, v14 - v13);
      }

      ++v10;
      v11 += 24;
    }

    while (v8 != v10);
  }

  kaldi::Matrix<float>::Matrix(v16, &v17);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v16, a4);
  kaldi::Matrix<float>::~Matrix(v16);
  return kaldi::Matrix<float>::~Matrix(&v17);
}

void sub_1A7A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  _Unwind_Resume(a1);
}

void MelBanks::MelBanks(MelBanks *this, int a2, int a3, int a4, int a5, int a6, int a7, char a8)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = a2;
  *(this + 7) = a3;
  *(this + 8) = a4;
  *(this + 9) = a5;
  *(this + 10) = a6;
  *(this + 11) = a7;
  *(this + 48) = a8;
  MelBanks::linspace(a3, a4, a6, v17);
  MelBanks::mel_frequencies(this, *(this + 11) + 2, v16);
  MelBanks::compute_diff(v16, v15);
  MelBanks::compute_ramps(v16, v17, v14);
  if (*(this + 11) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      MelBanks::compute_lower((v14[0] + v9), v13, *(v15[0] + v10));
      MelBanks::compute_upper((v14[0] + v9 + 48), v12, *(v15[0] + v10 + 1));
      MelBanks::intersection(v13, v12, __p, 0.0);
      std::vector<std::vector<double>>::push_back[abi:ne200100](this, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v12[0])
      {
        v12[1] = v12[0];
        operator delete(v12[0]);
      }

      if (v13[0])
      {
        v13[1] = v13[0];
        operator delete(v13[0]);
      }

      ++v10;
      v9 += 24;
    }

    while (v10 < *(this + 11));
  }

  MelBanks::normalize(this, v16);
  v13[0] = v14;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }
}

void sub_1A7BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  a16 = &a19;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  v26 = *(v24 - 80);
  if (v26)
  {
    *(v24 - 72) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  *(v24 - 56) = v23;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v24 - 56));
  _Unwind_Resume(a1);
}

void MelBanks::linspace(double a1@<D0>, double a2@<D1>, int a3@<W1>, uint64_t a4@<X8>)
{
  v11 = a2;
  v12 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (a3)
  {
    v6 = a3 - 1;
    if (a3 == 1)
    {
      std::vector<double>::push_back[abi:ne200100](a4, &v12);
    }

    else
    {
      if (a3 >= 2)
      {
        v8 = 0;
        v9 = (a2 - a1) / v6;
        do
        {
          v10 = a1 + v9 * v8;
          std::vector<double>::push_back[abi:ne200100](a4, &v10);
          ++v8;
        }

        while (v6 != v8);
      }

      std::vector<double>::push_back[abi:ne200100](a4, &v11);
    }
  }
}

void sub_1A7D34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::mel_frequencies(MelBanks *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 7);
  v7 = v6;
  if (*(this + 48))
  {
    v8 = log10(v7 / 700.0 + 1.0) * 2595.0;
    v9 = log10(*(this + 8) / 700.0 + 1.0) * 2595.0;
  }

  else
  {
    if (v6 >= 1000)
    {
      v8 = log10(v7 / 1000.0) / 0.0298585176 + 15.0000006;
    }

    else
    {
      v8 = v7 / 66.6666641;
    }

    v10 = *(this + 8);
    v11 = v10;
    if (v10 >= 1000)
    {
      v9 = log10(v11 / 1000.0) / 0.0298585176 + 15.0000006;
    }

    else
    {
      v9 = v11 / 66.6666641;
    }
  }

  MelBanks::linspace(v8, v9, a2, &v13);
  v12 = v13;
  v15 = v13;
  v16 = v14;
  MelBanks::mel_to_hz(this, &v15, a3);
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_1A7EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::compute_diff(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (*a1 < (*(a1 + 8) - 8))
  {
    v5 = v3 + 1;
    do
    {
      v6 = *v5 - *v3;
      std::vector<double>::push_back[abi:ne200100](a2, &v6);
      ++v3;
      ++v5;
    }

    while (v3 < *(a1 + 8) - 8);
  }
}

void sub_1A7F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::compute_ramps(uint64_t *a1@<X1>, double **a2@<X2>, void *a3@<X8>)
{
  std::vector<std::vector<double>>::vector[abi:ne200100](a3, (a1[1] - *a1) >> 3);
  if (a1[1] != *a1)
  {
    v6 = 0;
    v8 = *a2;
    v7 = a2[1];
    do
    {
      std::vector<std::pair<int,int>>::resize((*a3 + 24 * v6), v7 - v8);
      v8 = *a2;
      v7 = a2[1];
      v9 = *a1;
      if (v7 != *a2)
      {
        v10 = v7 - *a2;
        v11 = *(*a3 + 24 * v6);
        if (v10 <= 1)
        {
          v10 = 1;
        }

        v12 = *a2;
        do
        {
          v13 = *v12++;
          *v11++ = *(v9 + 8 * v6) - v13;
          --v10;
        }

        while (v10);
      }

      ++v6;
    }

    while (v6 < (a1[1] - v9) >> 3);
  }
}

void sub_1A8044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double **MelBanks::compute_lower@<X0>(double **a1@<X1>, void *a2@<X8>, double a3@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a2, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = -v10 / a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

double **MelBanks::compute_upper@<X0>(double **a1@<X1>, void *a2@<X8>, double a3@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a2, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = v10 / a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t std::vector<std::vector<double>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
    result = std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v16);
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

double **MelBanks::intersection@<X0>(double **a1@<X1>, double **a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a3, a1[1] - *a1);
  v8 = *a1;
  v9 = a1[1] - *a1;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = *a2;
    v12 = *result;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = *v8++;
      v16 = v15;
      if (v14 >= v15)
      {
        v14 = v16;
      }

      if (v14 <= a4)
      {
        v14 = a4;
      }

      *v12++ = v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

void MelBanks::normalize(uint64_t a1, void *a2)
{
  std::vector<double>::vector[abi:ne200100](__p, ((a2[1] - *a2) >> 3) - 2);
  v4 = *(a1 + 44);
  v5 = __p[0];
  if (v4 >= 1)
  {
    v6 = (*a2 + 16);
    v7 = *(a1 + 44);
    v8 = __p[0];
    do
    {
      *v8++ = 2.0 / (*v6 - *(v6 - 2));
      ++v6;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 40);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v4 >= 1)
      {
        v11 = *a1;
        v12 = v4;
        v13 = v5;
        do
        {
          v15 = *v11;
          v11 += 3;
          v14 = v15;
          v16 = *(v15 + 8 * i);
          v17 = *v13++;
          *(v14 + 8 * i) = v16 * v17;
          --v12;
        }

        while (v12);
      }
    }
  }

  if (v5)
  {
    __p[1] = v5;
    operator delete(v5);
  }
}

void MelBanks::mel_to_hz(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 48) == 1)
  {
    if (v6 < v5)
    {
      do
      {
        v11 = (__exp10(*v6 / 2595.0) + -1.0) * 700.0;
        std::vector<double>::push_back[abi:ne200100](a3, &v11);
        ++v6;
      }

      while (v6 < *(a2 + 8));
    }
  }

  else
  {
    if (v6 < v5)
    {
      do
      {
        v11 = *v6 * 66.6666641 + 0.0;
        std::vector<double>::push_back[abi:ne200100](a3, &v11);
        ++v6;
        v5 = *(a2 + 8);
      }

      while (v6 < v5);
      v6 = *a2;
    }

    v7 = v5 - v6;
    if (v7)
    {
      v8 = v7 >> 3;
      v9 = *a3;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      do
      {
        if (*v6 >= 15.0000006)
        {
          *v9 = exp((*v6 + -15.0000006) * 0.0687517774) * 1000.0;
        }

        ++v9;
        ++v6;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_1A8540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Mel::Mel(Mel *this, int a2)
{
  *this = -1027080192;
  *(this + 2) = 1064849900;
  *(this + 3) = a2;
  v2 = vmul_s32(vdup_n_s32(a2 / 1000), 0xA00000019);
  *(this + 2) = v2;
  *(this + 3) = 0x5000000800;
  *(this + 8) = 65793;
  *(this + 36) = 1;
  *(this + 10) = 1024;
  strcpy(this + 48, "reflective");
  *(this + 71) = 10;
  *(this + 72) = 0u;
  *(this + 168) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  Mel::buildNonSymHannWindow(this, v2.i32[0]);
  operator new();
}

void Mel::buildNonSymHannWindow(Mel *this, int a2)
{
  std::vector<std::pair<int,int>>::resize(this + 9, a2);
  if (a2 >= 1)
  {
    v4 = 0;
    v14 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_212100;
    v12 = vdupq_n_s64(2uLL);
    v13 = vdupq_n_s64(0x401921FB54442D18uLL);
    *&v6 = a2;
    v7 = (a2 + 1) & 0xFFFFFFFE;
    v11 = vdupq_lane_s64(v6, 0);
    v8 = (*(this + 9) + 8);
    do
    {
      v18 = v5;
      v17 = vmovn_s64(vcgeq_u64(v14, v5));
      v9.i64[0] = v4;
      v9.i64[1] = (v4 + 1);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v9), v13), v11);
      v16 = cos(__x.f64[1]);
      v10 = cos(__x.f64[0]);
      if (v17.i8[0])
      {
        *(v8 - 1) = (1.0 - v10) * 0.5;
      }

      if (v17.i8[4])
      {
        *v8 = (1.0 - v16) * 0.5;
      }

      v4 += 2;
      v5 = vaddq_s64(v18, v12);
      v8 += 2;
    }

    while (v7 != v4);
  }
}

void Mel::Mel(Mel *this, int a2, int a3, int a4, int a5, int a6, char a7, char a8, float a9, char a10, char a11, char a12, int a13, __int128 *a14)
{
  *this = -1027080192;
  *(this + 2) = a9;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 32) = a7;
  *(this + 33) = a8;
  *(this + 34) = a10;
  *(this + 35) = a11;
  *(this + 36) = a12;
  *(this + 10) = a13;
  if (*(a14 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a14, *(a14 + 1));
    a3 = *(this + 4);
  }

  else
  {
    v15 = *a14;
    *(this + 8) = *(a14 + 2);
    *(this + 3) = v15;
  }

  *(this + 72) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  Mel::buildNonSymHannWindow(this, a3);
  operator new();
}

{
  Mel::Mel(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void Mel::~Mel(Mel *this)
{
  if (*(this + 27))
  {
    v5 = *(this + 27);
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
    operator delete();
  }

  vDSP_destroy_fftsetupD(*(this + 29));
  free(*(this + 30));
  free(*(this + 31));
  v5 = (this + 192);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 168);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 144);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

double Mel::padSignal@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const std::string *a3@<X2>, void *a4@<X8>)
{
  std::vector<double>::vector[abi:ne200100](__p, ((a2[1] - *a2) >> 3) + 2 * *(a1 + 40));
  if (!std::string::compare(a3, "none"))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a4, *a2, a2[1], (a2[1] - *a2) >> 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!std::string::compare(a3, "reflective"))
    {
      v10 = *a2;
      v11 = *(a1 + 40);
      v12 = *a2 + 8 * v11 + 8;
      v13 = __p[0];
      if (v12 != *a2)
      {
        v14 = __p[0];
        do
        {
          v15 = *(v12 - 8);
          v12 -= 8;
          *v14++ = v15;
        }

        while (v12 != v10);
      }

      v16 = 8 * v11;
      v17 = a2[1];
      if (v17 != v10)
      {
        memmove(&v13[v16], v10, v17 - v10);
        v17 = a2[1];
        v16 = 8 * *(a1 + 40);
      }

      v18 = &v17[-v16 - 8];
      if (v18 != v17)
      {
        v19 = __p[1] - v16 - 8;
        do
        {
          v20 = *(v17 - 1);
          v17 -= 8;
          *v19++ = v20;
        }

        while (v17 != v18);
      }
    }

    else if (!std::string::compare(a3, "constant"))
    {
      v8 = a2[1];
      if (v8 != *a2)
      {
        memmove(__p[0] + 8 * *(a1 + 40), *a2, v8 - *a2);
      }
    }

    result = *__p;
    *a4 = *__p;
    a4[2] = v22;
  }

  return result;
}

void sub_1A8E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Mel::computeMagSpec(uint64_t a1, const DSPDoubleComplex **a2, double **a3)
{
  vDSP_ctozD(*a2, 2, (a1 + 240), 1, (*(a1 + 24) + (*(a1 + 24) >> 31)) >> 1);
  vDSP_fft_zripD(*(a1 + 232), (a1 + 240), 1, *(a1 + 224), 1);
  v6 = *(a1 + 240);
  v5 = *(a1 + 248);
  v7 = *v6 * 0.5;
  v8 = *a3;
  *v8 = fabsf(v7);
  v9 = *v5 * 0.5;
  v10 = *(a1 + 24);
  LODWORD(v11) = v10 / 2;
  v8[v10 / 2] = fabsf(v9);
  if (v10 >= 4)
  {
    if (v11 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v11;
    }

    v12 = v5 + 1;
    v13 = v6 + 1;
    v14 = v8 + 1;
    v15 = v11 - 1;
    do
    {
      v16 = *v13++;
      v17 = v16 * 0.5 * (v16 * 0.5);
      v18 = *v12++;
      *v14++ = sqrt(v17 + v18 * 0.5 * (v18 * 0.5));
      --v15;
    }

    while (v15);
  }
}

void Mel::applyFilterBank(uint64_t a1, const double **a2, void *a3)
{
  if (*(a1 + 28) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      vDSP_dotprD(*(*(a1 + 144) + v7), 1, *a2, 1, (*a3 + v6), *(a1 + 24) / 2 + 1);
      ++v8;
      v7 += 24;
      v6 += 8;
    }

    while (v8 < *(a1 + 28));
  }
}

void Mel::formatOutput(uint64_t a1, double **a2, double **a3)
{
  v3 = *(a1 + 28);
  if (v3 >= 1)
  {
    v5 = *a2;
    if (*(a1 + 34))
    {
      v6 = 20.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = *a3;
    v8 = *(a1 + 33);
    do
    {
      v9 = *v5;
      if (*v5 < 0.00001)
      {
        *v5 = 0.00001;
        v9 = 0.00001;
      }

      v10 = v6 * log10(v9);
      *v7 = v10;
      if (v8)
      {
        v11 = (v10 - *a1) / -*a1;
        *v7 = v11;
        v12 = 0.0;
        if (v11 < 0.0 || (v12 = 1.0, v11 > 1.0))
        {
          *v7 = v12;
        }
      }

      ++v5;
      ++v7;
      --v3;
    }

    while (v3);
  }
}

void Mel::preemphasis(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a2[1] - *a2;
  std::vector<std::pair<int,int>>::resize(a3, (v6 >> 3));
  v7 = *a2;
  v8 = *a3;
  **a3 = **a2;
  if ((v6 >> 3) >= 2)
  {
    v9 = -*(a1 + 8);
    v10 = (v7 + 1);
    v11 = (v8 + 1);
    v12 = ((v6 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      *v11++ = *v10 + v9 * *(v10 - 1);
      ++v10;
      --v12;
    }

    while (v12);
  }
}

void sub_1A9174(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Mel::compute_mel(uint64_t a1@<X0>, __int16 **a2@<X1>, void *a3@<X8>)
{
  __src = 0;
  v20 = 0;
  v21 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v8 = vcvtd_n_f64_s32(*v5, 0xFuLL);
      if (v7 >= v21)
      {
        v9 = __src;
        v10 = v7 - __src;
        v11 = (v7 - __src) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v21 - __src;
        if ((v21 - __src) >> 1 > v12)
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v14);
        }

        v15 = (v7 - __src) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = v8;
        v7 = v16 + 1;
        memcpy(v17, v9, v10);
        v18 = __src;
        __src = v17;
        v20 = v7;
        v21 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7++ = v8;
      }

      v20 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  Mel::compute_mel(a1, &__src, a3);
  if (__src)
  {
    v20 = __src;
    operator delete(__src);
  }
}

void sub_1A92E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Mel::compute_mel(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 2;
  v32 = 0;
  v31 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v31, v6, v5, v7);
  if (*(a1 + 32) == 1)
  {
    Mel::preemphasis(a1, &v31, &v29);
    if (v31)
    {
      *(&v31 + 1) = v31;
      operator delete(v31);
    }

    v31 = v29;
    v32 = v30;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v28 = *(a1 + 48);
  }

  Mel::padSignal(a1, &v31, &v28, &v29);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 24);
  v26[0] = 0;
  std::vector<double>::vector[abi:ne200100](v27, v8);
  std::vector<double>::vector[abi:ne200100](v26, *(a1 + 24) / 2 + 1);
  std::vector<double>::vector[abi:ne200100](v25, *(a1 + 28));
  std::vector<double>::vector[abi:ne200100](&v23, *(a1 + 28));
  v9 = (((*(&v29 + 1) - v29) >> 3) - *(a1 + 24)) / *(a1 + 20);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + 16);
      if (v11 >= 1)
      {
        v12 = *(a1 + 24) - v11 + ((*(a1 + 24) - v11) >> 31);
        v13 = v11 + (*(a1 + 24) - v11) / 2;
        v14 = *(a1 + 72);
        v15 = v27[0];
        v16 = v12 >> 1;
        v17 = v29 + 8 * *(a1 + 20) * v10;
        do
        {
          v18 = *v14++;
          v15[v16] = v18 * *(v17 + 8 * v16);
          ++v16;
        }

        while (v16 < v13);
      }

      Mel::computeMagSpec(a1, v27, v26);
      Mel::applyFilterBank(a1, v26, v25);
      Mel::formatOutput(a1, v25, &v23);
      v21 = 0;
      v22 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, v23, v24, (v24 - v23) >> 3);
      std::vector<std::vector<double>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }

    while (v10++ < v9);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v29)
  {
    *(&v29 + 1) = v29;
    operator delete(v29);
  }

  if (v31)
  {
    *(&v31 + 1) = v31;
    operator delete(v31);
  }
}

void sub_1A958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  *(v31 - 80) = v30;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v31 - 80));
  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A96C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Preprocessing::Preprocessing(uint64_t a1, std::string *a2, std::string *a3, std::string *a4, std::string *a5, const std::string *a6)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v11 = (a1 + 8);
  *(a1 + 56) = 0u;
  v12 = (a1 + 56);
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 196) = 0xC20C0000C1E00000;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 304) = 0u;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a2);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a3);
  if (*(a1 + 31) < 0)
  {
    operator delete(v11->__r_.__value_.__l.__data_);
  }

  *v11 = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a4);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v12);
  }

  *v12 = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a5);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  *(a1 + 272) = v13;
  std::string::operator=((a1 + 328), a6);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v13 = *v11;
  }

  std::allocate_shared[abi:ne200100]<Checkpointable,std::allocator<Checkpointable>,std::string,0>();
}

void sub_1A9FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (*(v36 + 351) < 0)
  {
    operator delete(*(v36 + 328));
  }

  *(v41 - 128) = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v41 - 128));
  if (*(v36 + 295) < 0)
  {
    operator delete(*(v36 + 272));
  }

  v43 = *(v36 + 264);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (*(v36 + 247) < 0)
  {
    operator delete(*v37);
  }

  if (*(v36 + 151) < 0)
  {
    operator delete(*(v36 + 128));
  }

  if (*(v36 + 127) < 0)
  {
    operator delete(*a9);
  }

  if (*(v36 + 103) < 0)
  {
    operator delete(*(v36 + 80));
  }

  if (*(v36 + 79) < 0)
  {
    operator delete(*v40);
  }

  if (*(v36 + 55) < 0)
  {
    operator delete(*(v36 + 32));
  }

  if (*(v36 + 31) < 0)
  {
    operator delete(*v39);
  }

  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1AA2E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,0>@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X8>)
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
  if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    a3 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
  }

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a4, a3);
}

void sub_1AA410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(unsigned __int8 *a1, const void **a2, std::string::value_type *a3)
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

void sub_1AA5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(unsigned __int8 *a1, const void **a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use value() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v12, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v11);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v12, &v11))
  {
    return *a3;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v12);
  v11.__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,double,0>(v6, &v11);
  return *&v11.__r_.__value_.__l.__data_;
}

void sub_1AA738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(char *__s@<X2>, unsigned __int8 *a2@<X0>, const void **a3@<X1>, std::string *a4@<X8>)
{
  boost::filesystem::path::path(__p, __s);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::string,0>(a2, a3, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AA800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(unsigned __int8 *a1, const void **a2, unsigned int *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use value() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v12, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v11);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v12, &v11))
  {
    return *a3;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v12);
  LODWORD(v11.__r_.__value_.__l.__data_) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v11);
  return LODWORD(v11.__r_.__value_.__l.__data_);
}

void sub_1AA934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<std::string>,0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, std::vector<std::string> *a4@<X8>)
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
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a4, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  else
  {
    v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v7, a4);
  }
}

void sub_1AAACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void Preprocessing::stop(Preprocessing *this)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 328);
    if (*(this + 351) < 0)
    {
      v3 = *v3;
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Stopping preprocessing.", &v4, 0xCu);
  }

  *this = 1;
}

uint64_t Preprocessing::extract_mels(uint64_t a1)
{
  boost::filesystem::path::path(v10, "extract_mels");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 256), v10) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v12.__pn_, &METADATA_MEL_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v12, a1 + 8, &v9);
    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &MEL_FEATURE_FOLDER_NAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, a1 + 8, &__s);
    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    v12.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__create_directory(&v12, 0);
    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
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

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v12.__pn_, &METADATA_FEATURE_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v12, a1 + 8, &pn);
    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v12.__pn_ = pn;
    }

    TrainingUtils::read_metadata_from_file(&v12, &__s);
    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    }

    std::allocate_shared[abi:ne200100]<Mel,std::allocator<Mel>,int &,0>();
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  return 0;
}

void sub_1ABDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a72);
  }

  *(v72 - 160) = &STACK[0x218];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v72 - 160));
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  *(v72 - 160) = v72 - 240;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v72 - 160));
  if (*(v72 - 185) < 0)
  {
    operator delete(*(v72 - 208));
  }

  if (*(v72 - 161) < 0)
  {
    operator delete(*(v72 - 184));
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, const std::string::value_type *a2)
{
  v13 = a2;
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v11, exception);
  }

  v3 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(*(a1 + 8), &v13);
  v4 = *(a1 + 8);
  if (v4 + 8 == v3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>();
  }

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(v4, &v13) + 56;
}

void sub_1AC388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *TrainingUtils::flatten_2d_to_1d<float>@<X0>(void *a1@<X0>, void *a2@<X8>)
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

uint64_t TrainingUtils::write_vector_to_file<float>(uint64_t *a1, uint64_t *a2)
{
  std::ofstream::basic_ofstream(v6, a1);
  v3 = *a2;
  v4 = a2[1];
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v6 + *(v6[0] - 3)), *(&v6[4] + *(v6[0] - 3)) | 4);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

float Preprocessing::realign_durations@<S0>(uint64_t *a1@<X1>, void *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *a1, a1[1], (a1[1] - *a1) >> 2);
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 2;
  for (i = 0.0; --v7; i = i + v9)
  {
    v9 = *v6++;
  }

  result = a3 - i;
  *(a2[1] - 4) = result;
  return result;
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<float>,0>(a1, a2);
}

void sub_1AC7D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, __p, exception);
  }

  v3 = *(a1 + 8);
  boost::filesystem::path::path(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_1AC944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(a1, a2);
  }

  else
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(*(a1 + 8), a2);
    result = v3 + 16;
    *(a1 + 8) = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5);
}

uint64_t Preprocessing::validate_input_audio(Preprocessing *this)
{
  boost::filesystem::path::path(__p, "validate_input_audio");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), __p))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v21.__pn_, &METADATA_DATA_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v21, this + 8, &v18);
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v18.__pn_.__r_.__value_.__l.__data_, v18.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v18.__pn_;
    }

    v21.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__status(&v21, 0);
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (v17.__r_.__value_.__s.__data_[0] != 255 && v17.__r_.__value_.__s.__data_[0])
    {
      if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21.__pn_, v18.__pn_.__r_.__value_.__l.__data_, v18.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v21 = v18;
      }

      TrainingUtils::read_metadata_from_file(&v21, &pn);
      if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__pn_.__r_.__value_.__l.__data_);
      }

      size = pn.__r_.__value_.__l.__size_;
      v5 = pn.__r_.__value_.__r.__words[0];
      if (pn.__r_.__value_.__r.__words[0] == pn.__r_.__value_.__l.__size_)
      {
LABEL_43:
        v2 = 0;
      }

      else
      {
        while (1)
        {
          v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v5, "utterance_name");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v7, &v17);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17.__r_.__value_.__l.__data_, this + 10, &v25);
          v21.__pn_ = v25;
          memset(&v25, 0, sizeof(v25));
          std::__fs::filesystem::operator/[abi:ne200100](&v21, this + 8, &v16);
          if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v21.__pn_, v16.__pn_.__r_.__value_.__l.__data_, v16.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v21 = v16;
          }

          reader = PCMFile::create_reader(&v21);
          if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__pn_.__r_.__value_.__l.__data_);
          }

          if (!reader)
          {
            break;
          }

          v9 = *(reader + 6);
          if (v9 != *(this + 38))
          {
            LogObject = Diagnostics_GetLogObject();
            if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
            {
              v13 = (this + 328);
              if (*(this + 351) < 0)
              {
                v13 = *v13;
              }

              if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v25, v16.__pn_.__r_.__value_.__l.__data_, v16.__pn_.__r_.__value_.__l.__size_);
              }

              else
              {
                v25 = v16.__pn_;
              }

              v14 = &v25;
              if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v14 = v25.__r_.__value_.__r.__words[0];
              }

              v15 = *(this + 38);
              LODWORD(v21.__pn_.__r_.__value_.__l.__data_) = 136315906;
              *(v21.__pn_.__r_.__value_.__r.__words + 4) = v13;
              WORD2(v21.__pn_.__r_.__value_.__r.__words[1]) = 2080;
              *(&v21.__pn_.__r_.__value_.__r.__words[1] + 6) = v14;
              HIWORD(v21.__pn_.__r_.__value_.__r.__words[2]) = 1024;
              v22 = v15;
              v23 = 1024;
              v24 = v9;
              _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, The sample rate of the wavfile from %s should be %d, not %d", &v21, 0x22u);
              if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v25.__r_.__value_.__l.__data_);
              }
            }

            (*(*reader + 8))(reader);
            goto LABEL_56;
          }

          (*(*reader + 8))(reader);
          if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          v5 += 16;
          if (v5 == size)
          {
            goto LABEL_43;
          }
        }

        v10 = Diagnostics_GetLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = (this + 328);
          if (*(this + 351) < 0)
          {
            v11 = *v11;
          }

          if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v21.__pn_, v16.__pn_.__r_.__value_.__l.__data_, v16.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v21 = v16;
          }

          Preprocessing::validate_input_audio(v11, &v21, &v25, v10);
        }

LABEL_56:
        if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v2 = 1;
      }

      v17.__r_.__value_.__r.__words[0] = &pn;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    else
    {
      v4 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v21.__pn_, v18.__pn_.__r_.__value_.__l.__data_, v18.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v21 = v18;
        }

        Preprocessing::validate_input_audio(&v21, &pn, v4);
      }

      v2 = 1;
    }

    if (SHIBYTE(v18.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1ACF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  a33 = (v38 - 96);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::compute_audioquality_metrics(Preprocessing *this)
{
  boost::filesystem::path::path(v73, "compute_audioquality_metrics");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), v73))
  {
    goto LABEL_66;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v75, &METADATA_DATA_AUDIOQUALITY_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](v75, this + 8, &v72);
  if ((v75[23] & 0x80000000) != 0)
  {
    operator delete(*v75);
  }

  v70 = 0uLL;
  v71 = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v75, &METADATA_DATA_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](v75, this + 8, &v69);
  if ((v75[23] & 0x80000000) != 0)
  {
    operator delete(*v75);
  }

  if (SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v75, v69.__pn_.__r_.__value_.__l.__data_, v69.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v75 = v69;
  }

  TrainingUtils::read_metadata_from_file(v75, v68);
  if ((v75[23] & 0x80000000) != 0)
  {
    operator delete(*v75);
  }

  v2 = *(this + 49);
  v67 = 0;
  v66 = 1;
  if ((*(this + 205) & 1) == 0)
  {
    v67 = 2;
    v66 = 3;
    v2 = 2143289344;
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v4 = (this + 328);
    if (*(this + 351) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 205);
    v6 = *(this + 52);
    v7 = *(this + 53);
    *v75 = 136315906;
    *&v75[4] = v4;
    *&v75[12] = 1024;
    *&v75[14] = v5;
    *&v75[18] = 2048;
    *&v75[20] = v6;
    v76 = 2048;
    v77 = v7;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: enable_normalization=%d, spl_threshold=%f, snr_threshold=%f", v75, 0x26u);
  }

  checkpoint_stage_step = Checkpointable::get_checkpoint_stage_step(*(this + 32), v73);
  if (checkpoint_stage_step >= 1)
  {
    if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v72.__pn_.__r_.__value_.__l.__data_, v72.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v72.__pn_;
    }

    *v75 = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__status(v75, 0);
    if ((v75[23] & 0x80000000) != 0)
    {
      operator delete(*v75);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v9 = 0;
    if (!v64.__pn_.__r_.__value_.__s.__data_[0] || v64.__pn_.__r_.__value_.__s.__data_[0] == 255)
    {
      goto LABEL_34;
    }

    if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v72.__pn_.__r_.__value_.__l.__data_, v72.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v72.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, v75);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(&v70);
    v70 = *v75;
    v71 = *&v75[16];
    memset(v75, 0, 24);
    v64.__pn_.__r_.__value_.__r.__words[0] = v75;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v64);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  v9 = checkpoint_stage_step;
LABEL_34:
  v10 = v68[0];
  if (v9 < ((v68[1] - v68[0]) >> 4))
  {
    v11 = (this + 328);
    v12 = 16 * v9;
    v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v68[0] + v12, "utterance_name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v13, &pn);
    v14 = Diagnostics_GetLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = this + 328;
      if (*(this + 351) < 0)
      {
        v15 = *v11;
      }

      p_pn = &pn;
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_pn = pn.__r_.__value_.__r.__words[0];
      }

      *v75 = 136315394;
      *&v75[4] = v15;
      *&v75[12] = 2080;
      *&v75[14] = p_pn;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: %s", v75, 0x16u);
    }

    if (*this == 1)
    {
      v17 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = this + 328;
        if (*(this + 351) < 0)
        {
          v18 = *v11;
        }

        *v75 = 136315138;
        *&v75[4] = v18;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "TaskId: %s, WARN: Exit due to stopping.", v75, 0xCu);
      }

      v19 = *(this + 32);
      Checkpointable::write_checkpoint();
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&pn.__r_.__value_.__l.__data_, this + 10, __p);
    *v75 = *__p;
    *&v75[16] = v63;
    __p[1] = 0;
    v63 = 0;
    __p[0] = 0;
    std::__fs::filesystem::operator/[abi:ne200100](v75, this + 8, &v64);
    if ((v75[23] & 0x80000000) != 0)
    {
      operator delete(*v75);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0x40D7700000000000;
    LODWORD(v63) = 1061997773;
    BYTE4(v63) = 1;
    __p[1] = __PAIR64__(*(this + 50), v2);
    if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v75, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v75 = v64;
    }

    assess_audio_quality(v75, __p, &v61);
    if ((v75[23] & 0x80000000) != 0)
    {
      operator delete(*v75);
    }

    v59[0] = 0;
    v60 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
    v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v10 + v12, "utterance_name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v57, v20);
    v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "utterance_name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    v22 = *v21;
    *v21 = v57[0];
    v57[0] = v22;
    v23 = *(v21 + 8);
    *(v21 + 8) = v58;
    v58 = v23;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v58, v57[0]);
    v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v10 + v12, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v55, v24);
    v25 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    v26 = *v25;
    *v25 = v55[0];
    v55[0] = v26;
    v27 = *(v25 + 8);
    *(v25 + 8) = v56;
    v56 = v27;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v56, v55[0]);
    v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v10 + v12, "words");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v53, v28);
    v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "words");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
    v30 = *v29;
    *v29 = v53[0];
    v53[0] = v30;
    v31 = *(v29 + 8);
    *(v29 + 8) = v54;
    v54 = v31;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v54, v53[0]);
    v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v10 + v12, "phone_sequence");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v51, v32);
    v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "phone_sequence");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
    v34 = *v33;
    *v33 = v51[0];
    v51[0] = v34;
    v35 = *(v33 + 8);
    *(v33 + 8) = v52;
    v52 = v35;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v52, v51[0]);
    v45.__r_.__value_.__r.__words[0] = &v67;
    v36 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&v61, &v67)[5];
    v49[0] = 7;
    v50 = v36;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "spl");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
    v38 = *v37;
    *v37 = v49[0];
    v49[0] = v38;
    v39 = *(v37 + 8);
    *(v37 + 8) = v50;
    v50 = v39;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v50, v49[0]);
    v45.__r_.__value_.__r.__words[0] = &v66;
    v40 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&v61, &v66)[5];
    v47[0] = 7;
    v48 = v40;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
    v41 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v59, "snr");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
    v42 = *v41;
    *v41 = v47[0];
    v47[0] = v42;
    v43 = *(v41 + 8);
    *(v41 + 8) = v48;
    v48 = v43;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48, v47[0]);
    boost::filesystem::path::path(&v45, "locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (v10 + v12), &v45.__r_.__value_.__l.__data_, v75);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(v46);
  }

  if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v75, v72.__pn_.__r_.__value_.__l.__data_, v72.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v75 = v72;
  }

  TrainingUtils::write_metadata_to_file(v75, &v70);
  if ((v75[23] & 0x80000000) != 0)
  {
    operator delete(*v75);
  }

  *v75 = v68;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v75);
  if (SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__pn_.__r_.__value_.__l.__data_);
  }

  *v75 = &v70;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v75);
  if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_66:
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  return 0;
}

void sub_1ADBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  *(v55 - 160) = &a47;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v55 - 160));
  if (a55 < 0)
  {
    operator delete(__p);
  }

  *(v55 - 160) = v55 - 256;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v55 - 160));
  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if (*(v55 - 177) < 0)
  {
    operator delete(*(v55 - 200));
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t Preprocessing::snr_spl_data_filtering(Preprocessing *this)
{
  boost::filesystem::path::path(v75, "snr_spl_data_filtering");
  if ((*this & 1) == 0 && (Checkpointable::should_skip_stage(*(this + 32), v75) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v77, &METADATA_DATA_FILTERED_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](v77, this + 8, &v74);
    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v77, &METADATA_DATA_AUDIOQUALITY_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](v77, this + 8, &v73);
    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    if (SHIBYTE(v73.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v77, v73.__pn_.__r_.__value_.__l.__data_, v73.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v77 = v73;
    }

    TrainingUtils::read_metadata_from_file(v77, &v71);
    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    if (*(this + 204))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      LogObject = Diagnostics_GetLogObject();
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
      {
        v3 = (this + 328);
        if (*(this + 351) < 0)
        {
          v3 = *v3;
        }

        v4 = *(this + 205);
        v5 = *(this + 52);
        v6 = *(this + 53);
        *v77 = 136315906;
        *&v77[4] = v3;
        *&v77[12] = 1024;
        *&v77[14] = v4;
        *&v77[18] = 2048;
        *&v77[20] = v5;
        *&v77[28] = 2048;
        *&v77[30] = v6;
        _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: enable_normalization=%d, spl_threshold=%f, snr_threshold=%f", v77, 0x26u);
      }

      v7 = v71;
      if (v71 != v72)
      {
        v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v8, &v64);
        v9 = Diagnostics_GetLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = &v64;
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v64.__r_.__value_.__r.__words[0];
          }

          *v77 = 136315138;
          *&v77[4] = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Filtering SNR/SPL: %s", v77, 0xCu);
        }

        v62[0] = 0;
        v63 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v62);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v62);
        v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v60, v11);
        v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v60);
        v13 = *v12;
        *v12 = v60[0];
        v60[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v61;
        v61 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v60);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v61, v60[0]);
        v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v58, v15);
        v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
        v17 = *v16;
        *v16 = v58[0];
        v58[0] = v17;
        v18 = *(v16 + 8);
        *(v16 + 8) = v59;
        v59 = v18;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v59, v58[0]);
        v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "words");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v56, v19);
        v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "words");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v56);
        v21 = *v20;
        *v20 = v56[0];
        v56[0] = v21;
        v22 = *(v20 + 8);
        *(v20 + 8) = v57;
        v57 = v22;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v56);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v57, v56[0]);
        v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "phone_sequence");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v54, v23);
        v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "phone_sequence");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v54);
        v25 = *v24;
        *v24 = v54[0];
        v54[0] = v25;
        v26 = *(v24 + 8);
        *(v24 + 8) = v55;
        v55 = v26;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v54);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v55, v54[0]);
        v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "spl");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v52, v27);
        v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "spl");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
        v29 = *v28;
        *v28 = v52[0];
        v52[0] = v29;
        v30 = *(v28 + 8);
        *(v28 + 8) = v53;
        v53 = v30;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v53, v52[0]);
        v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "snr");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v50, v31);
        v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "snr");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
        v33 = *v32;
        *v32 = v50[0];
        v50[0] = v33;
        v34 = *(v32 + 8);
        *(v32 + 8) = v51;
        v51 = v34;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v51, v50[0]);
        boost::filesystem::path::path(__p, "locale");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v7, __p, v77);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(v49);
      }

      v35 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = (this + 328);
        if (*(this + 351) < 0)
        {
          v36 = *v36;
        }

        *v77 = 136315906;
        *&v77[4] = v36;
        *&v77[12] = 2048;
        *&v77[14] = ((((v69 - v68) >> 4) / ((v72 - v71) >> 4)) * 100.0);
        *&v77[22] = 2048;
        *&v77[24] = (v69 - v68) >> 4;
        *&v77[32] = 2048;
        *&v77[34] = (v72 - v71) >> 4;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "TaskId: %s, SPL/SNR pass rate=%.2f%%, pass_file_number=%ld, total_file_number=%ld\n", v77, 0x2Au);
      }

      if (*(this + 54) > ((v69 - v68) >> 4))
      {
        v37 = (v66 - v65) >> 4;
        if (v37 < 1)
        {
          v42 = 0;
          v38 = 0;
        }

        else
        {
          v38 = (v66 - v65) >> 4;
          while (1)
          {
            v39 = operator new(16 * v38, &std::nothrow);
            if (v39)
            {
              break;
            }

            v40 = v38 >> 1;
            v41 = v38 > 1;
            v38 >>= 1;
            if (!v41)
            {
              v42 = 0;
              v38 = v40;
              goto LABEL_40;
            }
          }

          v42 = v39;
        }

LABEL_40:
        std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v65, v66, v37, v42, v38);
        if (v42)
        {
          operator delete(v42);
        }

        if (*(this + 54) - ((v69 - v68) >> 4) >= ((v66 - v65) >> 4))
        {
          v43 = (v66 - v65) >> 4;
        }

        else
        {
          v43 = *(this + 54) - ((v69 - v68) >> 4);
        }

        v44 = Diagnostics_GetLogObject();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = (this + 328);
          if (*(this + 351) < 0)
          {
            v45 = *v45;
          }

          v46 = *(this + 54);
          *v77 = 136315650;
          *&v77[4] = v45;
          *&v77[12] = 1024;
          *&v77[14] = v43;
          *&v77[18] = 1024;
          *&v77[20] = v46;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "TaskId: %s, Not having enough filtered files, adding additional %d files, minimum_number_filtered_file=%d\n", v77, 0x18u);
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(&v68, v69, v65, &v65[16 * v43], v43);
      }

      if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v77, v74.__pn_.__r_.__value_.__l.__data_, v74.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *v77 = v74;
      }

      TrainingUtils::write_metadata_to_file(v77, &v68);
      if ((v77[23] & 0x80000000) != 0)
      {
        operator delete(*v77);
      }

      *v77 = &v65;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v77);
      *v77 = &v68;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v77);
    }

    else
    {
      if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v77, v74.__pn_.__r_.__value_.__l.__data_, v74.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *v77 = v74;
      }

      TrainingUtils::write_metadata_to_file(v77, &v71);
      if ((v77[23] & 0x80000000) != 0)
      {
        operator delete(*v77);
      }
    }

    *v77 = &v71;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v77);
    if (SHIBYTE(v73.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  return 0;
}