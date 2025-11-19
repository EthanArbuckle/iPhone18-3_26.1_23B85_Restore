void std::vector<std::vector<float>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      std::vector<float>::__move_assign(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

boost::filesystem::path *InferenceEngine::DataUtils::get_type_string<float>@<X0>(boost::filesystem::path *a1@<X8>)
{
  {
    v2 = "fp32";
  }

  else
  {
    {
      InferenceEngine::DataUtils::get_type_string<float>();
    }

    v2 = "int32";
  }

  return boost::filesystem::path::path(a1, v2);
}

void *std::__shared_ptr_emplace<InferenceEngine::DataTensor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string,std::vector<unsigned long> &,std::allocator<InferenceEngine::DataTensor>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283588;
  InferenceEngine::DataTensor::DataTensor(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::DataTensor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void **std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(result, v10);
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
    v12 = result[1] - *result;
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
    result = std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
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

void sub_1C4014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataUtils::convert_data_to_3d_array<float>(uint64_t a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] - *a2 != 24)
  {
    InferenceEngine::DataUtils::convert_data_to_3d_array<float>();
  }

  v7 = *v4;
  v8 = v4[1];
  std::vector<float>::vector[abi:ne200100](__p, v4[2]);
  std::vector<std::vector<float>>::vector[abi:ne200100](v16, v8);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](a3, v7);
  v17 = v16;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = *a2;
  v10 = **a2;
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      v12 = v9[1];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          memcpy(*(*(*a3 + 24 * i) + v13), (a1 + 4 * v9[2] * v14++ + 4 * v12 * i * v9[2]), 4 * v9[2]);
          v9 = *a2;
          v12 = (*a2)[1];
          v13 += 24;
        }

        while (v14 < v12);
        v10 = *v9;
      }
    }
  }
}

void sub_1C4160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<InferenceEngine::BaseInferenceController>::__shared_ptr_emplace[abi:ne200100]<std::string &,char const(&)[9],std::allocator<InferenceEngine::BaseInferenceController>,0>(void *a1, uint64_t a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2835D8;
  std::allocator<InferenceEngine::BaseInferenceController>::construct[abi:ne200100]<InferenceEngine::BaseInferenceController,std::string &,char const(&)[9]>(&v3, a1 + 3, a2, a3);
}

void std::__shared_ptr_emplace<InferenceEngine::BaseInferenceController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2835D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1C4350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor>::__shared_ptr_emplace[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::allocator<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283628;
  std::allocator<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor>::construct[abi:ne200100]<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor>::construct[abi:ne200100]<InferenceEngine::P2ASoundStormPromptExtractionIOProcessor,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = *a3;
  v6 = *(a3 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  InferenceEngine::P2ASoundStormPromptExtractionIOProcessor::P2ASoundStormPromptExtractionIOProcessor(a2, v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v6, v5[0]);
}

uint64_t std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>> const*,std::vector<std::vector<float>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C45C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>> const*,std::vector<std::vector<float>> const*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

void *std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<InferenceEngine::DataTensor>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<InferenceEngine::DataTensor>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Preprocessing::validate_input_audio(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Can't read metadata from %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void Preprocessing::validate_input_audio(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "TaskId: %s, Can't read wavfile from %s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void InferenceEngine::DataTensor::get_5d_array<float>()
{
  __assert_rtn("get_5d_array", "DataTensor.hpp", 274, "0");
}

{
  __assert_rtn("get_5d_array", "DataTensor.hpp", 272, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_5d_array", "DataTensor.hpp", 268, "typeid(T) == typeid(float)");
}

void InferenceEngine::DataTensor::get_1d_array<float>()
{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 338, "0");
}

{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 336, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 332, "typeid(T) == typeid(float)");
}

void InferenceEngine::DataTensor::get_2d_array<float>()
{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 322, "0");
}

{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 320, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 316, "typeid(T) == typeid(float)");
}

void InferenceEngine::DataTensor::get_3d_array<float>()
{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 306, "0");
}

{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 304, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 300, "typeid(T) == typeid(float)");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*()
{
  __assert_rtn("operator*", "iter_impl.hpp", 254, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 248, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 242, "m_object != nullptr");
}

uint64_t SiriTTS::TTSTrainer::TTSTrainer(uint64_t a1, uint64_t a2, const std::string *a3, const std::string *a4, const std::string *a5)
{
  *(a1 + 48) = 0u;
  v10 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  std::string::operator=(v10, a4);
  *(a1 + 96) = 0;
  std::string::operator=((a1 + 72), a5);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  boost::filesystem::path::path(v22, "fastspeech2");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v26;
  }

  boost::filesystem::path::append_v3(&v24, v22);
  v11 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v25, &v24);
  std::__fs::filesystem::__status(v11, 0);
  if (v21.__pn_.__r_.__value_.__s.__data_[0] != 255 && v21.__pn_.__r_.__value_.__s.__data_[0])
  {
    v12 = 1;
  }

  else
  {
    boost::filesystem::path::path(__p, "wavernn");
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = v26;
    }

    boost::filesystem::path::append_v3(&v20, __p);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v21.__pn_, &v20);
    std::__fs::filesystem::__status(&v21, 0);
    if (v27)
    {
      v13 = v27 == 255;
    }

    else
    {
      v13 = 1;
    }

    v12 = !v13;
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (v12)
    {
      goto LABEL_31;
    }
  }

  else if (v12)
  {
LABEL_31:
    v14 = 1;
LABEL_45:
    *(a1 + 152) = v14;
    goto LABEL_46;
  }

  boost::filesystem::path::path(v22, "p2a");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v26;
  }

  boost::filesystem::path::append_v3(&v24, v22);
  v15 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v25, &v24);
  std::__fs::filesystem::__status(v15, 0);
  v16 = v21.__pn_.__r_.__value_.__s.__data_[0];
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v16 && v16 != 255)
  {
    v14 = 2;
    goto LABEL_45;
  }

LABEL_46:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C51A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  v44 = *(v40 + 144);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(v40 + 128);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = *(v40 + 112);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (*(v40 + 95) < 0)
  {
    operator delete(*(v40 + 72));
  }

  if (*(v40 + 71) < 0)
  {
    operator delete(*v41);
  }

  if (*(v40 + 47) < 0)
  {
    operator delete(*(v40 + 24));
  }

  if (*(v40 + 23) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(exception_object);
}

boost::filesystem::path *boost::filesystem::path::path(boost::filesystem::path *this, const char *__s)
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

  *(this + 23) = v4;
  if (v4)
  {
    memmove(this, __s, v4);
  }

  *(this + v5) = 0;
  return this;
}

void SiriTTS::TTSTrainer::~TTSTrainer(SiriTTS::TTSTrainer *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

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

void SiriTTS::TTSTrainer::get_task_id_(SiriTTS::TTSTrainer *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t SiriTTS::TTSTrainer::preprocess(const void **a1, uint64_t a2)
{
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v5, a2);
  v3 = SiriTTS::TTSTrainer::preprocess_internal(a1, v5);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v5);
  return v3;
}

void sub_1C54D4(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      SiriTTS::TTSTrainer::preprocess(v3, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x1C54A0);
  }

  _Unwind_Resume(a1);
}

uint64_t SiriTTS::TTSTrainer::preprocess_internal(const void **a1, uint64_t a2)
{
  if (*(a1 + 97) != 1)
  {
    if (*(a2 + 24))
    {
      std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(a2, 1, 0);
    }

    if (*(a1 + 23) >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = a1[1];
    }

    v6 = buf;
    std::string::basic_string[abi:ne200100](buf, v5 + 9);
    if (v10 < 0)
    {
      v6 = *buf;
    }

    if (v5)
    {
      if (*(a1 + 23) >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = *a1;
      }

      memmove(v6, v7, v5);
    }

    strcpy(&v6[v5], "/am_model");
    std::allocate_shared[abi:ne200100]<Preprocessing,std::allocator<Preprocessing>,std::string &,std::string &,std::string,std::string &,std::string &,0>();
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v4 = a1 + 9;
    if (*(a1 + 95) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Trainer has been stopped/paused, return immediately.", buf, 0xCu);
  }

  return 0;
}

void sub_1C5EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SiriTTS::TTSTrainer::train(const void **a1, int a2, uint64_t a3)
{
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v7, a3);
  v5 = SiriTTS::TTSTrainer::train_internal(a1, a2, v7);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v7);
  return v5;
}

void sub_1C5FA8(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      SiriTTS::TTSTrainer::train(v3, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x1C5F74);
  }

  _Unwind_Resume(a1);
}

uint64_t SiriTTS::TTSTrainer::train_internal(const void **a1, int a2, uint64_t a3)
{
  if ((a1[12] & 1) != 0 || *(a1 + 97) == 1)
  {
    LogObject = Diagnostics_GetLogObject();
    v5 = 1;
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      v6 = a1 + 9;
      if (*(a1 + 95) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315138;
      *&buf[4] = v6;
      v5 = 1;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Trainer has been stopped or paused, return immediately.", buf, 0xCu);
    }
  }

  else
  {
    if (*(a3 + 24))
    {
      std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(a3, 15, 0);
    }

    memset(buf, 0, sizeof(buf));
    v23 = 0;
    std::chrono::steady_clock::now();
    if (a2 == 1)
    {
      if (*(a1 + 23) >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = a1[1];
      }

      v16 = v20;
      std::string::basic_string[abi:ne200100](v20, v15 + 8);
      if (v21 < 0)
      {
        v16 = *v20;
      }

      if (v15)
      {
        if (*(a1 + 23) >= 0)
        {
          v17 = a1;
        }

        else
        {
          v17 = *a1;
        }

        memmove(v16, v17, v15);
      }

      strcpy(&v16[v15], "/wavernn");
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*buf);
      }

      *buf = *v20;
      v23 = v21;
      v18 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1 + 9;
        if (*(a1 + 95) < 0)
        {
          v19 = *v19;
        }

        *v20 = 136315138;
        *&v20[4] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "TaskId: %s, Training start with WaveRNN", v20, 0xCu);
      }

      std::allocate_shared[abi:ne200100]<TrainingEngineV2,std::allocator<TrainingEngineV2>,std::string &,std::string &,std::string &,std::string &,0>();
    }

    if (!a2)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = *(a1 + 23);
      }

      else
      {
        v9 = a1[1];
      }

      v10 = v20;
      std::string::basic_string[abi:ne200100](v20, v9 + 12);
      if (v21 < 0)
      {
        v10 = *v20;
      }

      if (v9)
      {
        if (*(a1 + 23) >= 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = *a1;
        }

        memmove(v10, v11, v9);
      }

      strcpy(&v10[v9], "/fastspeech2");
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*buf);
      }

      *buf = *v20;
      v23 = v21;
      v12 = Diagnostics_GetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1 + 9;
        if (*(a1 + 95) < 0)
        {
          v13 = *v13;
        }

        *v20 = 136315138;
        *&v20[4] = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "TaskId: %s, Training start with Fastspeech2", v20, 0xCu);
      }

      std::allocate_shared[abi:ne200100]<TrainingEngine,std::allocator<TrainingEngine>,std::string &,std::string &,std::string &,std::string &,0>();
    }

    if (*(a3 + 24))
    {
      std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(a3, 17, 0);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
    }

    return 0;
  }

  return v5;
}

void sub_1C6594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](va);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

_BYTE *SiriTTS::TTSTrainer::stop(SiriTTS::TTSTrainer *this)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 72);
    if (*(this + 95) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Stopping training engine", &v7, 0xCu);
  }

  *(this + 96) = 1;
  v4 = *(this + 17);
  if (v4)
  {
    Preprocessing::stop(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    TrainingEngine::stop(v5);
  }

  result = *(this + 15);
  if (result)
  {
    return TrainingEngine::stop(result);
  }

  return result;
}

_BYTE *SiriTTS::TTSTrainer::pause(SiriTTS::TTSTrainer *this)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 72);
    if (*(this + 95) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Pausing training engine", &v7, 0xCu);
  }

  *(this + 97) = 1;
  v4 = *(this + 17);
  if (v4)
  {
    Preprocessing::stop(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    TrainingEngine::stop(v5);
  }

  result = *(this + 15);
  if (result)
  {
    return TrainingEngine::stop(result);
  }

  return result;
}

uint64_t std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__shared_ptr_emplace<Preprocessing>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string,std::string &,std::string &,std::allocator<Preprocessing>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283678;
  Preprocessing::Preprocessing(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<Preprocessing>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void Preprocessing::~Preprocessing(void **this)
{
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v3 = this + 38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  v2 = this[33];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::__shared_ptr_emplace<TrainingEngine>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string &,std::string &,std::allocator<TrainingEngine>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2836C8;
  TrainingEngine::TrainingEngine(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<TrainingEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2836C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<TrainingEngineV2>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string &,std::string &,std::allocator<TrainingEngineV2>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283718;
  TrainingEngineV2::TrainingEngineV2(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<TrainingEngineV2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void SiriTTS::TTSTrainer::preprocess(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);
  }

  (*(*a2 + 16))(a2);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_1(&dword_0, v3, v4, "TaskId: %s, preprocess exception: %s", v5, v6, v7, v8, v9);
}

void SiriTTS::TTSTrainer::train(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);
  }

  (*(*a2 + 16))(a2);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_1(&dword_0, v3, v4, "TaskId: %s, training exception: %s", v5, v6, v7, v8, v9);
}

void StringFormatter::append(std::string *this, const char *a2, va_list a3)
{
  __s = 0;
  vasprintf(&__s, a2, a3);
  std::string::append(this, __s);
  free(__s);
}

void StringFormatter::StringFormatter(StringFormatter *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  StringFormatter::append(this, a2, va);
}

void sub_1C7000(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Diagnostics_GetLogObject(void)
{
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    Diagnostics_GetLogObject();
  }

  return Diagnostics_GetLogObject(void)::__profile_log_default;
}

uint64_t InferenceModel::InferenceModel(uint64_t a1, uint64_t a2)
{
  *a1 = &off_283788;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 8));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  boost::filesystem::path::path(__p, "inference_config.json");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v11;
  }

  boost::filesystem::path::append_v3(&v10, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::ifstream::basic_ifstream(__p, &v10);
  v13 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(__p, v12, 1, v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v8[0];
  v8[0] = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = v9;
  v9 = v6;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v9, v8[0]);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v12);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C7318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v34, *v35);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v33);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  v8[0] = a1;
  v8[1] = *(a1 + *(*a1 - 24) + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v9, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v8, v9, a3, v10);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parse(v10, 1, a4);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(&v11);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v9);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(v8);
}

void sub_1C74AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer((v16 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a15);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a11);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v15);
  _Unwind_Resume(a1);
}

void InferenceModel::get_model_weight_precision(InferenceModel *this@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(__p, "model_weights_precision");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("fp32", this + 8, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C7554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceModel::get_saved_model_checkpoint_config_path(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a1, *(a1 + 8));
  }

  else
  {
    v13 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  boost::filesystem::path::path(__p, "inference_config.json");
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v13;
  }

  boost::filesystem::path::append_v3(&v11, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  std::ifstream::basic_ifstream(__p, &v11);
  v16 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(__p, v15, 1, v9);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v15);
  boost::filesystem::path::path(&v14, "saved_model_checkpoint_config_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v9, &v14.__r_.__value_.__l.__data_, &__s);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__s.__r_.__value_.__l.__size_)
    {
      std::string::__init_copy_ctor_external(&v7, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      goto LABEL_19;
    }

LABEL_21:
    boost::filesystem::path::path(a3, "");
    goto LABEL_34;
  }

  if (!*(&__s.__r_.__value_.__s + 23))
  {
    goto LABEL_21;
  }

  v7 = __s;
LABEL_19:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = v12;
  }

  boost::filesystem::path::append_v3(&v14, &v7);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v14;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (a3[23] >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    LODWORD(v14.__r_.__value_.__l.__data_) = 136315138;
    *(v14.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Saved model checkpoint config file: %s\n", &v14, 0xCu);
  }

LABEL_34:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v10, v9[0]);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1C78FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a49 < 0)
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

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a21);
  std::ifstream::~ifstream(&a54);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void InferenceModule::InferenceModule(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  boost::filesystem::path::path(__p, "inference_config.json");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v26;
  }

  boost::filesystem::path::append_v3(&v25, __p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  std::ifstream::basic_ifstream(__p, &v25);
  v28 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(__p, v27, 1, v24);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v27);
  v2 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v24, "model_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v2, &v23);
  v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v24, "model_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v3, &v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_ == 11 && *v23.__r_.__value_.__l.__data_ == 0x6565707374736166 && *(v23.__r_.__value_.__r.__words[0] + 3) == 0x3268636565707374)
    {
      goto LABEL_17;
    }

    if (v23.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_52;
    }

    v7 = v23.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 11)
      {
        goto LABEL_52;
      }

      if (v23.__r_.__value_.__r.__words[0] != 0x6565707374736166 || *(v23.__r_.__value_.__r.__words + 3) != 0x3268636565707374)
      {
        goto LABEL_52;
      }

LABEL_17:
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v22.__r_.__value_.__l.__size_ != 9)
        {
          goto LABEL_54;
        }

        v5 = v22.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) != 9)
        {
          goto LABEL_54;
        }

        v5 = &v22;
      }

      v15 = v5->__r_.__value_.__r.__words[0];
      v16 = v5->__r_.__value_.__s.__data_[8];
      if (v15 == 0x656C70756F636564 && v16 == 100)
      {
        std::allocate_shared[abi:ne200100]<ParallelAMDecoupledInferenceModel,std::allocator<ParallelAMDecoupledInferenceModel>,std::string const&,std::string const&,0>();
      }

LABEL_54:
      exception = __cxa_allocate_exception(0x10uLL);
      StringFormatter::StringFormatter(&v21, "Not supported model type.");
      std::logic_error::logic_error(exception, &v21);
    }

    v7 = &v23;
  }

  data = v7->__r_.__value_.__l.__data_;
  v9 = *(v7->__r_.__value_.__r.__words + 3);
  if (data != 1702257015 || v9 != 1852732005)
  {
LABEL_52:
    v18 = __cxa_allocate_exception(0x10uLL);
    StringFormatter::StringFormatter(&v21, "Not supported model.");
    std::logic_error::logic_error(v18, &v21);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v22.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_53;
    }

    v11 = v22.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_53;
    }

    v11 = &v22;
  }

  v12 = v11->__r_.__value_.__r.__words[0];
  v13 = v11->__r_.__value_.__s.__data_[8];
  if (v12 == 0x656C70756F636564 && v13 == 100)
  {
    std::allocate_shared[abi:ne200100]<WaveRNNDecoupledInferenceModel,std::allocator<WaveRNNDecoupledInferenceModel>,std::string const&,std::string const&,0>();
  }

LABEL_53:
  v19 = __cxa_allocate_exception(0x10uLL);
  StringFormatter::StringFormatter(&v21, "Not supported model type.");
  std::logic_error::logic_error(v19, &v21);
}

void sub_1C7F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  v56 = *(v54 + 8);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(exception_object);
}

void InferenceModel::set_mil_weights(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __int128 **a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  __p = 0;
  v36 = 0;
  v37 = 0;
  v9 = *a5;
  v10 = a5[1];
  if (*a5 != v10)
  {
    v30 = a3;
    v31 = a4;
    v14 = a7 + 8;
    do
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *v9, *(v9 + 1));
      }

      else
      {
        v15 = *v9;
        v34.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v34.__r_.__value_.__l.__data_ = v15;
      }

      if (v14 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a7, v9))
      {
        v16 = std::map<std::string,std::string>::at(a7, v9);
        std::string::operator=(&v34, v16);
      }

      if (std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::find<std::string>(a6, &v34.__r_.__value_.__l.__data_))
      {
        v17 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::find<std::string>(a6, &v34.__r_.__value_.__l.__data_);
        if (!v17)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v33 = v17 + 5;
        if (*(a8 + 24))
        {
          v32 = std::function<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::operator()(a8, (v17 + 5));
          std::vector<espresso_buffer_t const*>::push_back[abi:ne200100](&v38, &v32);
        }

        else
        {
          std::vector<espresso_buffer_t const*>::push_back[abi:ne200100](&v38, &v33);
        }

        v18 = v9;
        if (*(v9 + 23) < 0)
        {
          v18 = *v9;
        }

        v19 = v36;
        if (v36 >= v37)
        {
          v21 = (v36 - __p) >> 3;
          if ((v21 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v22 = (v37 - __p) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v37 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v23);
          }

          v24 = (8 * v21);
          *v24 = v18;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v36 - __p);
          memcpy(v25, __p, v36 - __p);
          v26 = __p;
          __p = v25;
          v36 = v20;
          v37 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v36 = v18;
          v20 = (v19 + 8);
        }

        v36 = v20;
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
    a3 = v30;
    a4 = v31;
  }

  if (*(a2 + 23) < 0)
  {
    v27 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v28 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    v29 = *a4;
  }

  espresso_set_mil_const_values();
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_1C82C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t std::function<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::vector<espresso_buffer_t const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t ParallelAMDecoupledInferenceModel::ParallelAMDecoupledInferenceModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = InferenceModel::InferenceModel(a1, a2);
  *(v6 + 48) = 0u;
  v7 = (v6 + 48);
  *(v6 + 96) = 0u;
  v8 = (v6 + 96);
  *v6 = off_2837A8;
  *(v6 + 144) = 0u;
  v9 = (v6 + 144);
  v10 = (v6 + 168);
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
  }

  else
  {
    v29 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
  }

  else
  {
    v28 = *a3;
  }

  v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "model_filename_encoder");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v11, &v27);
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "model_filename_decoder");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v12, &v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v27;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v29;
  }

  boost::filesystem::path::append_v3(&__str, &v24);
  std::string::operator=(v7, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v26;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v29;
  }

  boost::filesystem::path::append_v3(&__str, &v24);
  std::string::operator=((a1 + 72), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "saved_model_encoder_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v13, &__str);
  v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "saved_model_decoder_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v14, &v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __str;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  boost::filesystem::path::append_v3(&v23, &__p);
  std::string::operator=(v8, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v24;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  boost::filesystem::path::append_v3(&v23, &__p);
  std::string::operator=((a1 + 120), &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "encoder_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v15, &v23);
  std::vector<std::string>::__vdeallocate(v9);
  *(a1 + 144) = v23;
  memset(&v23, 0, sizeof(v23));
  __p.__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "decoder_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v16, &v23);
  std::vector<std::string>::__vdeallocate(v10);
  *(a1 + 168) = v23;
  memset(&v23, 0, sizeof(v23));
  __p.__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "parameter_name_mapping");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::map<std::string,std::string>,std::map<std::string,std::string>,0>(v17, &v23);
  v18 = a1 + 32;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  size = v23.__r_.__value_.__l.__size_;
  *(a1 + 24) = v23.__r_.__value_.__r.__words[0];
  *(a1 + 32) = size;
  v20 = v23.__r_.__value_.__r.__words[2];
  *(a1 + 40) = *(&v23.__r_.__value_.__l + 2);
  if (v20)
  {
    size[2] = v18;
    v23.__r_.__value_.__r.__words[0] = &v23.__r_.__value_.__l.__size_;
    *&v23.__r_.__value_.__r.__words[1] = 0uLL;
    size = 0;
  }

  else
  {
    *(a1 + 24) = v18;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v23, size);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C8954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  if (*(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  *(v53 - 96) = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v53 - 96));
  *(v53 - 96) = v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v53 - 96));
  if (*(v48 + 143) < 0)
  {
    operator delete(*(v48 + 120));
  }

  if (*(v48 + 119) < 0)
  {
    operator delete(*v50);
  }

  if (*(v48 + 95) < 0)
  {
    operator delete(*(v48 + 72));
  }

  if (*(v48 + 71) < 0)
  {
    operator delete(*v49);
  }

  InferenceModel::~InferenceModel(v48);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::map<std::string,std::string>,std::map<std::string,std::string>,0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,std::string>,0>(a1, a2);
}

void InferenceModel::~InferenceModel(InferenceModel *this)
{
  *this = &off_283788;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 2, *(this + 8));
}

void ParallelAMDecoupledInferenceModel::copy_training_net_to_inference_net(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 12;
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, a1[12], a1[13]);
  }

  else
  {
    *&v17.__r_.__value_.__l.__data_ = *v4;
    v17.__r_.__value_.__r.__words[2] = a1[14];
  }

  v5 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v23, &v17);
  std::__fs::filesystem::__remove_all(v5, 0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v6 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v23, &v17);
  std::__fs::filesystem::__create_directory(v6, 0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v22, "model.mil");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v17;
  }

  boost::filesystem::path::append_v3(&v23, &v22);
  boost::filesystem::path::path(&__p, "weights/weight.bin");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v17;
  }

  boost::filesystem::path::append_v3(&v16, &__p);
  v7 = *a1;
  v21 = 0;
  (*(v7 + 8))(a1, a1 + 6, &v23, &v16, a1 + 18, a2, a1 + 3, v20);
  std::__function::__value_func<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::~__value_func[abi:ne200100](v20);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 119) < 0)
    {
      v4 = *v4;
    }

    LODWORD(v23.__r_.__value_.__l.__data_) = 136315138;
    *(v23.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "saved encoder weights to: %s\n", &v23, 0xCu);
  }

  v9 = a1 + 15;
  if (*(a1 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, a1[15], a1[16]);
  }

  else
  {
    *&v23.__r_.__value_.__l.__data_ = *v9;
    v23.__r_.__value_.__r.__words[2] = a1[17];
  }

  v10 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v22, &v23);
  std::__fs::filesystem::__remove_all(v10, 0);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v11 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v22, &v23);
  std::__fs::filesystem::__create_directory(v11, 0);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v16, "model.mil");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v23;
  }

  boost::filesystem::path::append_v3(&v22, &v16);
  boost::filesystem::path::path(v13, "weights/weight.bin");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v23;
  }

  boost::filesystem::path::append_v3(&__p, v13);
  v19 = 0;
  (*(*a1 + 8))(a1, a1 + 9, &v22, &__p, a1 + 21, a2, a1 + 3, v18);
  std::__function::__value_func<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::~__value_func[abi:ne200100](v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v12 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 143) < 0)
    {
      v9 = *v9;
    }

    LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
    *(v22.__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "saved decoder weights to: %s\n", &v22, 0xCu);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1C8FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WaveRNNDecoupledInferenceModel::WaveRNNDecoupledInferenceModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = InferenceModel::InferenceModel(a1, a2);
  *v6 = off_2837C8;
  *(v6 + 48) = 0u;
  v7 = (v6 + 48);
  *(v6 + 96) = 0u;
  v8 = (v6 + 96);
  *(v6 + 144) = 0u;
  v9 = (v6 + 144);
  v10 = (v6 + 168);
  *(v6 + 192) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 1065353216;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 1065353216;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
  }

  else
  {
    v29 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
  }

  else
  {
    v28 = *a3;
  }

  v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "model_filename_linear");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v11, &v27);
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "model_filename_gru");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v12, &v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v27;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v29;
  }

  boost::filesystem::path::append_v3(&__str, &v24);
  std::string::operator=(v7, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v26;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v29;
  }

  boost::filesystem::path::append_v3(&__str, &v24);
  std::string::operator=((a1 + 72), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "saved_model_linear_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v13, &__str);
  v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "saved_model_gru_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v14, &v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __str;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  boost::filesystem::path::append_v3(&v23, &__p);
  std::string::operator=(v8, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v24;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  boost::filesystem::path::append_v3(&v23, &__p);
  std::string::operator=((a1 + 120), &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "linear_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v15, &v23);
  std::vector<std::string>::__vdeallocate(v9);
  *(a1 + 144) = v23;
  memset(&v23, 0, sizeof(v23));
  __p.__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "gru_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v16, &v23);
  std::vector<std::string>::__vdeallocate(v10);
  *(a1 + 168) = v23;
  memset(&v23, 0, sizeof(v23));
  __p.__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 8, "parameter_name_mapping");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::map<std::string,std::string>,std::map<std::string,std::string>,0>(v17, &v23);
  v18 = a1 + 32;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  size = v23.__r_.__value_.__l.__size_;
  *(a1 + 24) = v23.__r_.__value_.__r.__words[0];
  *(a1 + 32) = size;
  v20 = v23.__r_.__value_.__r.__words[2];
  *(a1 + 40) = *(&v23.__r_.__value_.__l + 2);
  if (v20)
  {
    size[2] = v18;
    v23.__r_.__value_.__r.__words[0] = &v23.__r_.__value_.__l.__size_;
    *&v23.__r_.__value_.__r.__words[1] = 0uLL;
    size = 0;
  }

  else
  {
    *(a1 + 24) = v18;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v23, size);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C9640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v55 - 121) < 0)
  {
    operator delete(*(v55 - 144));
  }

  if (*(v55 - 89) < 0)
  {
    operator delete(*(v55 - 112));
  }

  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(v54);
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(v53);
  *(v55 - 112) = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 112));
  *(v55 - 112) = v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 112));
  if (*(v48 + 143) < 0)
  {
    operator delete(*(v48 + 120));
  }

  if (*(v48 + 119) < 0)
  {
    operator delete(*v50);
  }

  if (*(v48 + 95) < 0)
  {
    operator delete(*(v48 + 72));
  }

  if (*(v48 + 71) < 0)
  {
    operator delete(*v49);
  }

  InferenceModel::~InferenceModel(v48);
  _Unwind_Resume(a1);
}

const void **WaveRNNDecoupledInferenceModel::var_transform_function<float>(uint64_t a1, __int128 *a2, uint64_t a3, const void **a4)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4) && *(a2 + 10) == 1344)
  {
    v6 = 1;
    for (i = 16; i != 48; i += 8)
    {
      v6 *= *(a2 + i);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), a4);
    v8[25] = 0;
    *(v8 + 23) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 5) = 0u;
    v9 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), a4);
    v10 = *a2;
    v11 = a2[1];
    *(v9 + 9) = a2[2];
    *(v9 + 7) = v11;
    *(v9 + 5) = v10;
    v12 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    *(v9 + 17) = a2[6];
    *(v9 + 15) = v14;
    *(v9 + 13) = v13;
    *(v9 + 11) = v12;
    v15 = a2[7];
    v16 = a2[8];
    v17 = a2[9];
    v9[25] = *(a2 + 20);
    *(v9 + 23) = v17;
    *(v9 + 21) = v16;
    *(v9 + 19) = v15;
    v9[5] = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
    if (*(a2 + 11))
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = 0;
        v21 = v18;
        v22 = v18;
        do
        {
          if (v20 >= 3)
          {
            v23 = -4480;
          }

          else
          {
            v23 = 0;
          }

          memcpy(v9[5] + v22, (*a2 + v23 + v21), 0x380uLL);
          ++v20;
          v22 += 896;
          v21 += 1792;
        }

        while (v20 != 6);
        ++v19;
        v18 += 5376;
      }

      while (v19 < *(a2 + 11));
    }
  }

  v24 = a2;
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4))
  {
    v25 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4);
    if (!v25)
    {
      goto LABEL_46;
    }

    v24 = v25 + 5;
  }

  v26 = *(a3 + 23);
  v27 = *(a3 + 8);
  if (v26 < 0 && v27 == 81)
  {
    v28 = *a3;
    v29 = "wavernn_dual_sample_inference_gru_cell_input_layer_MatMul_ReadVariableOp_resource";
    v30 = 81;
LABEL_22:
    if (memcmp(v28, v29, v30))
    {
      goto LABEL_23;
    }

    v31 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
    v31[25] = 0;
    *(v31 + 23) = 0u;
    *(v31 + 21) = 0u;
    *(v31 + 19) = 0u;
    *(v31 + 17) = 0u;
    *(v31 + 15) = 0u;
    *(v31 + 13) = 0u;
    *(v31 + 11) = 0u;
    *(v31 + 9) = 0u;
    *(v31 + 7) = 0u;
    *(v31 + 5) = 0u;
    v32 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
    v33 = v24;
    v34 = 0;
    v35 = 80;
    v36 = 0;
    goto LABEL_26;
  }

  if (v26 < 0 && v27 == 80)
  {
    v28 = *a3;
    v29 = "wavernn_dual_sample_inference_gru_cell_input_layer_MatMul_ReadVariableOp_to_fp16";
    v30 = 80;
    goto LABEL_22;
  }

  if (v26 < 0 && v27 == 74)
  {
    v40 = *a3;
    v41 = "wavernn_gru_cell_with_external_linear_input_MatMul_ReadVariableOp_resource";
    v42 = 74;
    goto LABEL_36;
  }

  if (v26 < 0 && v27 == 73)
  {
    v40 = *a3;
    v41 = "wavernn_gru_cell_with_external_linear_input_MatMul_ReadVariableOp_to_fp16";
    v42 = 73;
LABEL_36:
    if (!memcmp(v40, v41, v42))
    {
      v43 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
      v43[25] = 0;
      *(v43 + 23) = 0u;
      *(v43 + 21) = 0u;
      *(v43 + 19) = 0u;
      *(v43 + 17) = 0u;
      *(v43 + 15) = 0u;
      *(v43 + 13) = 0u;
      *(v43 + 11) = 0u;
      *(v43 + 9) = 0u;
      *(v43 + 7) = 0u;
      *(v43 + 5) = 0u;
      v32 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
      v33 = v24;
      v34 = 80;
      v35 = 81;
      v36 = 0;
      v37 = 672;
LABEL_27:
      TrainingUtils::slice_espresso_buffer_data<float>(v33, v32, v34, v35, v36, v37);
      v38 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 232), a3);
      if (v38)
      {
        return v38 + 5;
      }

LABEL_46:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    goto LABEL_23;
  }

  if (v26 < 0 && v27 == 76)
  {
    v44 = *a3;
    v45 = "wavernn_gru_cell_with_external_linear_input_1_MatMul_ReadVariableOp_resource";
    v46 = 76;
  }

  else
  {
    if ((v26 & 0x80000000) == 0 || v27 != 75)
    {
      goto LABEL_23;
    }

    v44 = *a3;
    v45 = "wavernn_gru_cell_with_external_linear_input_1_MatMul_ReadVariableOp_to_fp16";
    v46 = 75;
  }

  if (!memcmp(v44, v45, v46))
  {
    v47 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
    v47[25] = 0;
    *(v47 + 23) = 0u;
    *(v47 + 21) = 0u;
    *(v47 + 19) = 0u;
    *(v47 + 17) = 0u;
    *(v47 + 15) = 0u;
    *(v47 + 13) = 0u;
    *(v47 + 11) = 0u;
    *(v47 + 9) = 0u;
    *(v47 + 7) = 0u;
    *(v47 + 5) = 0u;
    v32 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
    v33 = v24;
    v34 = 80;
    v35 = 82;
    v36 = 672;
LABEL_26:
    v37 = 1344;
    goto LABEL_27;
  }

LABEL_23:
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4))
  {
    return std::unordered_map<std::string,espresso_buffer_t>::at((a1 + 192), a4);
  }

  return a2;
}

const void **std::unordered_map<std::string,espresso_buffer_t>::at(void *a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 5;
}

const void **_ZN30WaveRNNDecoupledInferenceModel22var_transform_functionIDF16_EEPK17espresso_buffer_tS3_RKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEESC_(uint64_t a1, __int128 *a2, uint64_t a3, const void **a4)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4) && *(a2 + 10) == 1344)
  {
    v7 = 1;
    for (i = 16; i != 48; i += 8)
    {
      v7 *= *(a2 + i);
    }

    v9 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), a4);
    v9[25] = 0;
    *(v9 + 23) = 0u;
    *(v9 + 21) = 0u;
    *(v9 + 19) = 0u;
    *(v9 + 17) = 0u;
    *(v9 + 15) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 5) = 0u;
    v10 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), a4);
    v11 = *a2;
    v12 = a2[1];
    *(v10 + 9) = a2[2];
    *(v10 + 7) = v12;
    *(v10 + 5) = v11;
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    *(v10 + 17) = a2[6];
    *(v10 + 15) = v15;
    *(v10 + 13) = v14;
    *(v10 + 11) = v13;
    v16 = a2[7];
    v17 = a2[8];
    v18 = a2[9];
    v10[25] = *(a2 + 20);
    *(v10 + 23) = v18;
    *(v10 + 21) = v17;
    *(v10 + 19) = v16;
    v10[5] = malloc_type_malloc(2 * v7, 0x1000040BDFB0063uLL);
    if (*(a2 + 11))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = 0;
        v22 = v19;
        v23 = v19;
        do
        {
          if (v21 >= 3)
          {
            v24 = -2240;
          }

          else
          {
            v24 = 0;
          }

          memcpy(v10[5] + v23, (*a2 + v24 + v22), 0x1C0uLL);
          ++v21;
          v23 += 448;
          v22 += 896;
        }

        while (v21 != 6);
        ++v20;
        v19 += 2688;
      }

      while (v20 < *(a2 + 11));
    }
  }

  v25 = a2;
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4))
  {
    v26 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4);
    if (!v26)
    {
      goto LABEL_46;
    }

    v25 = v26 + 5;
  }

  v27 = *(a3 + 23);
  v28 = *(a3 + 8);
  if (v27 < 0 && v28 == 81)
  {
    v29 = *a3;
    v30 = "wavernn_dual_sample_inference_gru_cell_input_layer_MatMul_ReadVariableOp_resource";
    v31 = 81;
LABEL_22:
    if (memcmp(v29, v30, v31))
    {
      goto LABEL_23;
    }

    v32 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
    v32[25] = 0;
    *(v32 + 23) = 0u;
    *(v32 + 21) = 0u;
    *(v32 + 19) = 0u;
    *(v32 + 17) = 0u;
    *(v32 + 15) = 0u;
    *(v32 + 13) = 0u;
    *(v32 + 11) = 0u;
    *(v32 + 9) = 0u;
    *(v32 + 7) = 0u;
    *(v32 + 5) = 0u;
    v33 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
    v34 = v25;
    v35 = 0;
    v36 = 80;
    v37 = 0;
    goto LABEL_26;
  }

  if (v27 < 0 && v28 == 80)
  {
    v29 = *a3;
    v30 = "wavernn_dual_sample_inference_gru_cell_input_layer_MatMul_ReadVariableOp_to_fp16";
    v31 = 80;
    goto LABEL_22;
  }

  if (v27 < 0 && v28 == 74)
  {
    v41 = *a3;
    v42 = "wavernn_gru_cell_with_external_linear_input_MatMul_ReadVariableOp_resource";
    v43 = 74;
    goto LABEL_36;
  }

  if (v27 < 0 && v28 == 73)
  {
    v41 = *a3;
    v42 = "wavernn_gru_cell_with_external_linear_input_MatMul_ReadVariableOp_to_fp16";
    v43 = 73;
LABEL_36:
    if (!memcmp(v41, v42, v43))
    {
      v44 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
      v44[25] = 0;
      *(v44 + 23) = 0u;
      *(v44 + 21) = 0u;
      *(v44 + 19) = 0u;
      *(v44 + 17) = 0u;
      *(v44 + 15) = 0u;
      *(v44 + 13) = 0u;
      *(v44 + 11) = 0u;
      *(v44 + 9) = 0u;
      *(v44 + 7) = 0u;
      *(v44 + 5) = 0u;
      v33 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
      v34 = v25;
      v35 = 80;
      v36 = 81;
      v37 = 0;
      v38 = 672;
LABEL_27:
      _ZN13TrainingUtils26slice_espresso_buffer_dataIDF16_EEvP17espresso_buffer_tS2_mmmm(v34, v33, v35, v36, v37, v38);
      v39 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 232), a3);
      if (v39)
      {
        return v39 + 5;
      }

LABEL_46:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    goto LABEL_23;
  }

  if (v27 < 0 && v28 == 76)
  {
    v45 = *a3;
    v46 = "wavernn_gru_cell_with_external_linear_input_1_MatMul_ReadVariableOp_resource";
    v47 = 76;
  }

  else
  {
    if ((v27 & 0x80000000) == 0 || v28 != 75)
    {
      goto LABEL_23;
    }

    v45 = *a3;
    v46 = "wavernn_gru_cell_with_external_linear_input_1_MatMul_ReadVariableOp_to_fp16";
    v47 = 75;
  }

  if (!memcmp(v45, v46, v47))
  {
    v48 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3);
    v48[25] = 0;
    *(v48 + 23) = 0u;
    *(v48 + 21) = 0u;
    *(v48 + 19) = 0u;
    *(v48 + 17) = 0u;
    *(v48 + 15) = 0u;
    *(v48 + 13) = 0u;
    *(v48 + 11) = 0u;
    *(v48 + 9) = 0u;
    *(v48 + 7) = 0u;
    *(v48 + 5) = 0u;
    v33 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 232), a3) + 5;
    v34 = v25;
    v35 = 80;
    v36 = 82;
    v37 = 672;
LABEL_26:
    v38 = 1344;
    goto LABEL_27;
  }

LABEL_23:
  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 192), a4))
  {
    return std::unordered_map<std::string,espresso_buffer_t>::at((a1 + 192), a4);
  }

  return a2;
}

void WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = *v4;
    v16.__r_.__value_.__r.__words[2] = *(a1 + 112);
  }

  v5 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v20, &v16);
  std::__fs::filesystem::__remove_all(v5, 0);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v6 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v20, &v16);
  std::__fs::filesystem::__create_directory(v6, 0);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v19, "model.mil");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v16;
  }

  boost::filesystem::path::append_v3(&v20, &v19);
  boost::filesystem::path::path(&__p, "weights/weight.bin");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v16;
  }

  boost::filesystem::path::append_v3(&v15, &__p);
  v18[0] = off_283988;
  v18[1] = a1;
  v18[3] = v18;
  (*(*a1 + 8))(a1, a1 + 48, &v20, &v15, a1 + 144, a2, a1 + 24, v18);
  std::__function::__value_func<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::~__value_func[abi:ne200100](v18);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 119) < 0)
    {
      v4 = *v4;
    }

    LODWORD(v20.__r_.__value_.__l.__data_) = 136315138;
    *(v20.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "saved linear weights to: %s\n", &v20, 0xCu);
  }

  v8 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *&v20.__r_.__value_.__l.__data_ = *v8;
    v20.__r_.__value_.__r.__words[2] = *(a1 + 136);
  }

  v9 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v19, &v20);
  std::__fs::filesystem::__remove_all(v9, 0);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v10 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v19, &v20);
  std::__fs::filesystem::__create_directory(v10, 0);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v15, "model.mil");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v20;
  }

  boost::filesystem::path::append_v3(&v19, &v15);
  boost::filesystem::path::path(v12, "weights/weight.bin");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v20;
  }

  boost::filesystem::path::append_v3(&__p, v12);
  v17[0] = off_283A18;
  v17[1] = a1;
  v17[3] = v17;
  (*(*a1 + 8))(a1, a1 + 72, &v19, &__p, a1 + 168, a2, a1 + 24, v17);
  std::__function::__value_func<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v11 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 143) < 0)
    {
      v8 = *v8;
    }

    LODWORD(v19.__r_.__value_.__l.__data_) = 136315138;
    *(v19.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "saved gru weights to: %s\n", &v19, 0xCu);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1CA620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void WaveRNNDecoupledInferenceModel::~WaveRNNDecoupledInferenceModel(WaveRNNDecoupledInferenceModel *this)
{
  *this = off_2837C8;
  for (i = *(this + 26); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      free(v3);
    }
  }

  for (j = *(this + 31); j; j = *j)
  {
    v5 = j[5];
    if (v5)
    {
      free(v5);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(this + 232);
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(this + 192);
  v6 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &off_283788;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 2, *(this + 8));
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[7]>();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v8, a2);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parser(a4, a1, v8, a3);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v8);
}

void sub_1CABBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parse(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v34, a1);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v35, a3, v34, *(a1 + 176));
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v34);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v35);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    if (a2)
    {
      v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        boost::filesystem::path::path(v25, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xFu, v25, __p);
        nlohmann::detail::parse_error::create(101, &v29, __p, &v31);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v35, v7, &v33, &v31);
        v31.__vftable = off_283360;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v40 == 1)
    {
      v23[0] = 9;
      v8 = v23;
      v24 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v9 = *a3;
      *a3 = v23[0];
      v23[0] = v9;
      v10 = *(a3 + 8);
      *(a3 + 8) = v24;
      v24 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v11 = v23[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v35);
        return;
      }

      v21[0] = 0;
      v8 = v21;
      v22 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v17 = *a3;
      *a3 = v21[0];
      v21[0] = v17;
      v18 = *(a3 + 8);
      *(a3 + 8) = v22;
      v22 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v11 = v21[0];
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
    goto LABEL_27;
  }

  v12 = *(a1 + 176);
  v35 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v39 = v12;
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v35);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  if (a2)
  {
    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v13;
    if (v13 != 15)
    {
      v14 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
      v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      boost::filesystem::path::path(v25, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xFu, v25, __p);
      nlohmann::detail::parse_error::create(101, &v29, __p, &v31);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v35, v14, &v33, &v31);
      v31.__vftable = off_283360;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v38 == 1)
  {
    v19[0] = 9;
    v20 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    v15 = *a3;
    *a3 = v19[0];
    v19[0] = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = v20;
    v20 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }
}

void sub_1CAFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  nlohmann::detail::exception::~exception(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
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

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1, a3);
  *(v7 + 40) = *a2;
  v8 = (v7 + 40);
  *(v7 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(v7 + 168) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_decimal_point();
  *(v8 + 136) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan(v8);
  return a1;
}

void sub_1CB1F0(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_decimal_point()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan(nlohmann::detail::input_stream_adapter *this)
{
  if (!*(this + 3) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::skip_bom(this))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(this + 12) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
      v2 = *(this + 4);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v9 = 1819047278;
            v5 = &v9;
            v6 = this;
            v7 = 4;
            v8 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v11 = 1702195828;
            v5 = &v11;
            v6 = this;
            v7 = 4;
            v8 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v10, "false", 5);
          v5 = v10;
          v6 = this;
          v7 = 5;
          v8 = 2;
        }

        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_literal(v6, v5, v7, v8);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(this);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(this);
    default:
      goto LABEL_47;
  }
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::skip_bom(nlohmann::detail::input_stream_adapter *a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_literal(nlohmann::detail::input_stream_adapter *this, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != *(this + 16))
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_literal();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    *(this + 12) = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::reset(a1);
  if (*(a1 + 16) != 34)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string();
  }

  while (2)
  {
    v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_86;
        }

        v8 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (codepoint >= 0x110000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string();
          }

          if (codepoint > 0x7F)
          {
            if (codepoint > 0x7FF)
            {
              if (HIWORD(codepoint))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(v8, (a1 + 72), &v13);
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_220810;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_220800;
        goto LABEL_5;
      case 238:
        v7 = xmmword_2207F0;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_220888;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_2208A0;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_2208B8;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) < 9)
  {
    v4 = (a1 + 72);
    v5 = 5;
LABEL_3:
    std::string::push_back(v4, v2);
    v6 = (a1 + 72);
    while (1)
    {
      v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
      if ((v7 - 48) >= 0xA)
      {
        break;
      }

      std::string::push_back((a1 + 72), *v3);
    }

    if (v7 != 46)
    {
      if (v7 != 69 && v7 != 101)
      {
LABEL_9:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
        __endptr = 0;
        *__error() = 0;
        v8 = (a1 + 72);
        v9 = *(a1 + 95);
        v10 = (a1 + 72);
        if (v5 == 5)
        {
          if (v9 < 0)
          {
            v10 = *v8;
          }

          v11 = strtoull(v10, &__endptr, 10);
          v12 = *(a1 + 95);
          if (v12 < 0)
          {
            v8 = *(a1 + 72);
            v12 = *(a1 + 80);
          }

          if (__endptr != v8 + v12)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 5;
            v14 = 112;
LABEL_30:
            *(a1 + v14) = v11;
            return result;
          }
        }

        else
        {
          if (v9 < 0)
          {
            v10 = *v8;
          }

          v11 = strtoll(v10, &__endptr, 10);
          v15 = *(a1 + 95);
          if (v15 < 0)
          {
            v8 = *(a1 + 72);
            v15 = *(a1 + 80);
          }

          if (__endptr != v8 + v15)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 6;
            v14 = 104;
            goto LABEL_30;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 72), 48);
    v5 = 5;
  }

  else
  {
    if (v2 != 45)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
    }

    v4 = (a1 + 72);
    std::string::push_back((a1 + 72), 45);
    v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
    if ((v19 - 49) < 9)
    {
      v2 = *v3;
      v5 = 6;
      goto LABEL_3;
    }

    if (v19 != 48)
    {
      v22 = "invalid number; expected digit after '-'";
      goto LABEL_52;
    }

    std::string::push_back((a1 + 72), *v3);
    v5 = 6;
  }

  v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
  if (v20 == 101 || v20 == 69)
  {
    v6 = (a1 + 72);
LABEL_48:
    std::string::push_back(v6, *(a1 + 16));
    v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
    if ((v23 - 48) < 0xA)
    {
      v24 = (a1 + 72);
    }

    else
    {
      if (v23 != 45 && v23 != 43)
      {
        v22 = "invalid number; expected '+', '-', or digit after exponent";
        goto LABEL_52;
      }

      v24 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) - 48 >= 0xA)
      {
        v22 = "invalid number; expected digit after exponent sign";
        goto LABEL_52;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(a1, (a1 + 16), v24);
    goto LABEL_55;
  }

  if (v20 != 46)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 72);
LABEL_40:
  std::string::push_back(v6, *(a1 + 128));
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) - 48 > 9)
  {
    v22 = "invalid number; expected digit after '.'";
LABEL_52:
    *(a1 + 96) = v22;
    return 14;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
  }

  while ((v21 - 48) < 0xA);
  if (v21 == 101 || v21 == 69)
  {
    goto LABEL_48;
  }

LABEL_55:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
  __endptr = 0;
  *__error() = 0;
LABEL_23:
  v16 = (a1 + 72);
  v17 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v17 = *v16;
  }

  *(a1 + 120) = strtod(v17, &__endptr);
  v18 = *(a1 + 95);
  if (v18 < 0)
  {
    v16 = *(a1 + 72);
    v18 = *(a1 + 80);
  }

  if (__endptr != v16 + v18)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
  }

  return 7;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 56);
    if (*(result + 48) == v3)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget();
    }

    *(result + 56) = v3 - 1;
  }

  return result;
}

uint64_t nlohmann::detail::input_stream_adapter::get_character(nlohmann::detail::input_stream_adapter *this)
{
  v2 = *(this + 1);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    result = (*(*v2 + 80))(v2);
    if (result == -1)
    {
      nlohmann::detail::input_stream_adapter::get_character(this);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2[3] = v3 + 1;
    return *v3;
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::reset(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(int *a1)
{
  if (a1[4] != 117)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(a1, a1 + 4, &v2);
  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(std::string *a1, _DWORD *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(a2, a3, a1, a3, &v4);
  return v4;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  nlohmann::detail::input_stream_adapter::~input_stream_adapter(this);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v30, &v32);
          v13 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v34, &v32);
          nlohmann::detail::exception::~exception(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    std::vector<BOOL>::push_back(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      boost::filesystem::path::path(&v28, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = off_283360;
      std::runtime_error::~runtime_error(&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    boost::filesystem::path::path(&v28, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0x10u, &v28, &__p);
    nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
    v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
    }

    goto LABEL_64;
  }

  v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        boost::filesystem::path::path(&v28, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xAu, &v28, &__p);
        nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
        v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      boost::filesystem::path::path(&v28, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xBu, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_64:
  v22 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  boost::filesystem::path::path(&v28, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 4u, &v28, &__p);
  nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
  v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  nlohmann::detail::exception::~exception(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1CCC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  nlohmann::detail::exception::~exception(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    v5 = *(a4 + 8) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = nlohmann::detail::parse_error::parse_error(exception, a4);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v9 = __cxa_allocate_exception(0x20uLL);
        v7 = nlohmann::detail::invalid_iterator::invalid_iterator(v9, a4);
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v10 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::type_error::type_error(v10, a4);
          break;
        case 4:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::out_of_range::out_of_range(v11, a4);
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::other_error::other_error(v6, a4);
          break;
        default:
LABEL_15:
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error();
      }
    }

    __cxa_throw(v7, v8, nlohmann::detail::exception::~exception);
  }

  return 0;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1CCFD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, nlohmann::detail::exception *a4@<X8>)
{
  boost::filesystem::path::path(&v24, "parse_error");
  nlohmann::detail::exception::name(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::parse_error::position_string(a2, &__p);
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

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  nlohmann::detail::exception::exception(a4, a1, v22);
  *a4 = off_2838C0;
  *(a4 + 4) = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_1CD1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, boost::filesystem::path *a4@<X8>)
{
  boost::filesystem::path::path(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    boost::filesystem::path::path(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &__p);
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

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(v13);
  boost::filesystem::path::path(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(a2);
  boost::filesystem::path::path(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1CD5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
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

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v38);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v36, &v38);
          v18 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v29, &v40, &v38);
          nlohmann::detail::exception::~exception(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<kaldi::EventMap *>::push_back[abi:ne200100]((a2 + 1), &v38);
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        std::vector<BOOL>::push_back(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<kaldi::EventMap *>::push_back[abi:ne200100]((a2 + 1), &v38);
        v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
          *v36 = *(a1 + 64);
          v37 = *(a1 + 80);
          boost::filesystem::path::path(&v34, "object key");
          nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 4u, &v34, &__p);
          nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
          v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v4->~runtime_error) + 56;
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        std::vector<BOOL>::push_back(&v41, &v38);
        v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = off_283360;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0x10u, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2);
    }

    else
    {
      if (v5 == 4)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2);
      }

      v38.__vftable = *(a1 + 152);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xAu, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
      *v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      boost::filesystem::path::path(&v34, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xBu, &v34, &__p);
      nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
      v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, &v4->~runtime_error) + 56;
  v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
  *v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  boost::filesystem::path::path(&v34, "object separator");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xCu, &v34, &__p);
  nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
  v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  nlohmann::detail::exception::~exception(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_1CDEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  nlohmann::detail::exception::~exception(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    v5 = *(a4 + 8) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = nlohmann::detail::parse_error::parse_error(exception, a4);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v9 = __cxa_allocate_exception(0x20uLL);
        v7 = nlohmann::detail::invalid_iterator::invalid_iterator(v9, a4);
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v10 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::type_error::type_error(v10, a4);
          break;
        case 4:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::out_of_range::out_of_range(v11, a4);
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::other_error::other_error(v6, a4);
          break;
        default:
LABEL_15:
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error();
      }
    }

    __cxa_throw(v7, v8, nlohmann::detail::exception::~exception);
  }

  return 0;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1 + 96, a3);
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  v7 = 1;
  std::vector<BOOL>::push_back(a1 + 32, &v7);
  return a1;
}

void sub_1CE24C(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100]((v1 + 12));
  v5 = v1[7];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(uint64_t *a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v18 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 0);
  std::vector<BOOL>::push_back((a1 + 4), &v18);
  LOBYTE(v14) = 1;
  v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, &v14, 1);
  v17 = v5;
  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](v4, &v17);
  if (a2 != -1)
  {
    v6 = *(a1[2] - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_220E88[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive object size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        nlohmann::detail::out_of_range::create(408, &v14, exception);
      }
    }
  }

  return 1;
}

void sub_1CE3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v20, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    v5 = *v4;
    *v4 = v20[0];
    v20[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v21;
    v21 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v20[0]);
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      if (*v10 - 1 <= 1)
      {
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v17, v10);
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(&v17);
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v14, *(*(a1 + 16) - 8));
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v14);
        if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v17, &v14))
        {
          while (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v17) != 9)
          {
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(&v17);
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v14, *(*(a1 + 16) - 8));
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v14);
            if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v17, &v14))
            {
              return 1;
            }
          }

          v11 = *(*(a1 + 16) - 8);
          v14 = v17;
          v15 = v18;
          v16 = v19;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::erase<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v11, &v14, v13);
        }
      }
    }
  }

  return 1;
}

void sub_1CE718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(uint64_t *a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v18 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 2);
  std::vector<BOOL>::push_back((a1 + 4), &v18);
  LOBYTE(v14) = 2;
  v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, &v14, 1);
  v17 = v5;
  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](v4, &v17);
  if (a2 != -1)
  {
    v6 = *(a1[2] - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_220E88[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive array size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        nlohmann::detail::out_of_range::create(408, &v14, exception);
      }
    }
  }

  return 1;
}

void sub_1CE890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v12, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    v5 = *v4;
    *v4 = v12[0];
    v12[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v13;
    v13 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v13, v12[0]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 == v7 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v10 = *(v7 - 16);
    if (*v10 == 2)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](*(v10 + 8), (*(*(v10 + 8) + 8) - 16));
    }
  }

  return 1;
}

void nlohmann::detail::out_of_range::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  boost::filesystem::path::path(&__p, "out_of_range");
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
  *a3 = off_283880;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1CEB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v31, v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1CEE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
  }

  v3 = *result;
  if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
    }
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    if (v4 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
    }

    return v4 + 56;
  }

  else if (a1[4])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    boost::filesystem::path::path(v7, "cannot get value");
    nlohmann::detail::invalid_iterator::create(214, v7, exception);
  }

  return result;
}

void sub_1CEF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::erase<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, void *a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    boost::filesystem::path::path(&v23, "iterator does not fit current value");
    nlohmann::detail::invalid_iterator::create(202, &v23, exception);
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(a3, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v6);
  v7 = *a1;
  if ((v7 - 3) < 6)
  {
    if (a2[4])
    {
      v17 = __cxa_allocate_exception(0x20uLL);
      boost::filesystem::path::path(&v23, "iterator out of range");
      nlohmann::detail::invalid_iterator::create(205, &v23, v17);
    }

    if (v7 == 8)
    {
      v9 = (a1 + 8);
      v8 = *(a1 + 1);
      v15 = *v8;
      if (*v8)
      {
        v8[1] = v15;
        v10 = v15;
        goto LABEL_13;
      }
    }

    else
    {
      if (v7 != 3)
      {
LABEL_15:
        *a1 = 0;

        return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
      }

      v9 = (a1 + 8);
      v8 = *(a1 + 1);
      if (*(v8 + 23) < 0)
      {
        v10 = *v8;
LABEL_13:
        operator delete(v10);
        v8 = *v9;
      }
    }

    operator delete(v8);
    *v9 = 0;
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::erase(*(a1 + 1), a2[1]);
    a3[1] = result;
  }

  else
  {
    if (v7 != 2)
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
      boost::filesystem::path::path(&v22, v19);
      v20 = std::string::insert(&v22, 0, "cannot use erase() with ");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v24 = v20->__r_.__value_.__r.__words[2];
      v23 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(307, &v23, v18);
    }

    v11 = *(a1 + 1);
    v12 = a2[2];
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v23, v12 + 16, *(v11 + 8), v12);
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v11, v13);
    a3[2] = v12;
  }

  return result;
}

void sub_1CF1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__remove_node_pointer(a1, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 7;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1CF5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 4;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1CF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v29[0] = 0;
    v30 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v27[0] = v29[0];
        v28 = v30;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
        v29[0] = 0;
        v30 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v12 = *v11;
        *v11 = v27[0];
        v27[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v28;
        v28 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
        v14 = *a1;
        goto LABEL_16;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v7 + 1), v29);
          v9 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v30, v29[0]);
          return v10;
        }

        if (v8 == 1)
        {
          v15 = a1[8];
          if (v15)
          {
            v16 = v15 - 1;
            v17 = *(a1[7] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v16;
            if ((v17 >> v16))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v25[0] = v29[0];
              v26 = v30;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
              v29[0] = 0;
              v30 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              v18 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              v19 = *v18;
              *v18 = v25[0];
              v25[0] = v19;
              v20 = *(v18 + 8);
              *(v18 + 8) = v26;
              v26 = v20;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
              v21 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v23 = "not key_keep_stack.empty()";
          v24 = 615;
        }

        else
        {
          v23 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v24 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v24, v23);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1CFB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 5;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1CFE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(*(a1 + 32) + (((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v1 - 1)))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v3);
  }

  return 0;
}

void sub_1D00A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 6;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1D0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::parse_error::parse_error(uint64_t a1, uint64_t a2)
{
  *a1 = off_283360;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_2838C0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t nlohmann::detail::out_of_range::out_of_range(uint64_t a1, uint64_t a2)
{
  *a1 = off_283360;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_283880;
  return a1;
}

uint64_t nlohmann::detail::invalid_iterator::invalid_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = off_283360;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_2833B8;
  return a1;
}

uint64_t nlohmann::detail::type_error::type_error(uint64_t a1, uint64_t a2)
{
  *a1 = off_283360;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_2833E0;
  return a1;
}

uint64_t nlohmann::detail::other_error::other_error(uint64_t a1, uint64_t a2)
{
  *a1 = off_283360;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_283840;
  return a1;
}

void nlohmann::detail::parse_error::~parse_error(std::runtime_error *this)
{
  this->__vftable = off_283360;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  operator delete();
}

void nlohmann::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
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

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
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

void sub_1D0738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
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

const char *nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return (&off_26C3B8)[a1];
  }
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 144), *(a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20[0] = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v21, v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v10 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v11 = *v10;
    *v10 = v20[0];
    v20[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v20[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(v6, a2);
      }

      else
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v14 = *a2;
      v18[0] = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v19, v14);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v15 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v16 = *v15;
      *v15 = v18[0];
      v18[0] = v16;
      v17 = *(v15 + 8);
      *(v15 + 8) = v19;
      v19 = v17;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v19, v18[0]);
      return a1[4];
    }
  }
}

unsigned __int8 *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v3 + 8), v4);
  result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v8 + 8), v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1D0AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 7;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 7;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 7;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(uint64_t a1, uint64_t *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1D0DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 4;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 4;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 4;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(uint64_t a1, unsigned __int8 *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1D108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(void *a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v17[0] = 0;
    v18 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v8 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v9 = *v8;
    *v8 = v17[0];
    v17[0] = v9;
    v10 = *(v8 + 8);
    *(v8 + 8) = v18;
    v18 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v18, v17[0]);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(v5);
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v7 = v6 + 16;
      }

      *(v5 + 8) = v7;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v4 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15[0] = 0;
      v16 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v12 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v13 = *v12;
      *v12 = v15[0];
      v15[0] = v13;
      v14 = *(v12 + 8);
      *(v12 + 8) = v16;
      v16 = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  *&v15 = v6 + 16;
  v7 = *(a1 + 8);
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1D1324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 5;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 5;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 5;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(uint64_t a1, uint64_t *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1D15F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      if (v4[1] < v4[2])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v4[1]);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(v4);
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v5);
      }

      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
    }

    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v6);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v4);
    }

    v5 = (16 * v1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(16 * v1);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1D1868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 6;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 6;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 6;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(uint64_t a1, uint64_t *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1D1B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::input_stream_adapter::~input_stream_adapter(nlohmann::detail::input_stream_adapter *this)
{
  if (*this)
  {
    std::ios_base::clear((*this + *(**this - 24)), *(*this + *(**this - 24) + 32) & 2);
  }
}

void *std::__shared_ptr_emplace<ParallelAMDecoupledInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::allocator<ParallelAMDecoupledInferenceModel>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2838E8;
  ParallelAMDecoupledInferenceModel::ParallelAMDecoupledInferenceModel((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ParallelAMDecoupledInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2838E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void ParallelAMDecoupledInferenceModel::~ParallelAMDecoupledInferenceModel(ParallelAMDecoupledInferenceModel *this)
{
  *this = off_2837A8;
  v2 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &off_283788;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 2, *(this + 8));
}

void *std::__shared_ptr_emplace<WaveRNNDecoupledInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::allocator<WaveRNNDecoupledInferenceModel>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283938;
  WaveRNNDecoupledInferenceModel::WaveRNNDecoupledInferenceModel((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<WaveRNNDecoupledInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::find<std::string>(void *a1, const void **a2)
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

void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,std::string>,0>(uint64_t a1, uint64_t a2)
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
  std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>,std::insert_iterator<std::map<std::string,std::string>>,void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,std::string>,0>(nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&,std::map<std::string,std::string> &)::{lambda(std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&)#1}>(**(a1 + 8), (*(a1 + 8) + 8), &v12, &v12 + 8);
  v4 = a2 + 8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a2, *(a2 + 8));
  v5 = *(&v12 + 1);
  *a2 = v12;
  *(a2 + 8) = v5;
  v6 = v13;
  *(a2 + 16) = v13;
  if (v6)
  {
    v5[2] = v4;
    *&v12 = &v12 + 8;
    *(&v12 + 1) = 0;
    v13 = 0;
    v5 = 0;
  }

  else
  {
    *a2 = v4;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v12, v5);
}

uint64_t std::transform[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>,std::insert_iterator<std::map<std::string,std::string>>,void nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,std::string>,0>(nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&,std::map<std::string,std::string> &)::{lambda(std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&)#1}>(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>((v5 + 7), &v13);
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, v5[4], v5[5]);
      }

      else
      {
        v10 = *(v5 + 4);
      }

      __p = v13;
      std::insert_iterator<std::map<std::string,std::string>>::operator=[abi:ne200100](v12, &v10.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
    return v12[0];
  }

  return a3;
}

void sub_1D22BC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::insert_iterator<std::map<std::string,std::string>>::operator=[abi:ne200100](uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string>>(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string>>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string>>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__deallocate_node(int a1, void **__p)
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

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1D2840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2934(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_283988;
  a2[1] = v2;
  return result;
}

const void **std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::operator()(uint64_t a1, __int128 **a2, uint64_t a3, const void **a4)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  InferenceModel::get_model_weight_precision(v7, &v10);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v10.__r_.__value_.__l.__data_) != 909209702)
    {
      return WaveRNNDecoupledInferenceModel::var_transform_function<float>(v7, v6, a3, a4);
    }

    return _ZN30WaveRNNDecoupledInferenceModel22var_transform_functionIDF16_EEPK17espresso_buffer_tS3_RKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEESC_(v7, v6, a3, a4);
  }

  if (v10.__r_.__value_.__l.__size_ == 4)
  {
    v8 = *v10.__r_.__value_.__l.__data_;
    operator delete(v10.__r_.__value_.__l.__data_);
    if (v8 == 909209702)
    {
      return _ZN30WaveRNNDecoupledInferenceModel22var_transform_functionIDF16_EEPK17espresso_buffer_tS3_RKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEESC_(v7, v6, a3, a4);
    }
  }

  else
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return WaveRNNDecoupledInferenceModel::var_transform_function<float>(v7, v6, a3, a4);
}

uint64_t std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_0>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_283A18;
  a2[1] = v2;
  return result;
}

const void **std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::operator()(uint64_t a1, __int128 **a2, uint64_t a3, const void **a4)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  InferenceModel::get_model_weight_precision(v7, &v10);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v10.__r_.__value_.__l.__data_) != 909209702)
    {
      return WaveRNNDecoupledInferenceModel::var_transform_function<float>(v7, v6, a3, a4);
    }

    return _ZN30WaveRNNDecoupledInferenceModel22var_transform_functionIDF16_EEPK17espresso_buffer_tS3_RKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEESC_(v7, v6, a3, a4);
  }

  if (v10.__r_.__value_.__l.__size_ == 4)
  {
    v8 = *v10.__r_.__value_.__l.__data_;
    operator delete(v10.__r_.__value_.__l.__data_);
    if (v8 == 909209702)
    {
      return _ZN30WaveRNNDecoupledInferenceModel22var_transform_functionIDF16_EEPK17espresso_buffer_tS3_RKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEESC_(v7, v6, a3, a4);
    }
  }

  else
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return WaveRNNDecoupledInferenceModel::var_transform_function<float>(v7, v6, a3, a4);
}

uint64_t std::__function::__func<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1,std::allocator<WaveRNNDecoupledInferenceModel::copy_training_net_to_inference_net(std::unordered_map<std::string,espresso_buffer_t> const&)::$_1>,espresso_buffer_t const* ()(espresso_buffer_t const*,std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string()
{
  __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
}

{
  __assert_rtn("scan_string", "lexer.hpp", 370, "0x00 <= codepoint and codepoint <= 0x10FFFF");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(unsigned int a1, std::string *this, _BYTE *a3)
{
  std::string::push_back(this, (a1 >> 18) | 0xF0);
  std::string::push_back(this, (a1 >> 12) & 0x3F | 0x80);
  std::string::push_back(this, (a1 >> 6) & 0x3F | 0x80);
  *a3 = a1 & 0x3F | 0x80;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number()
{
  __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 928, "false");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(nlohmann::detail::input_stream_adapter *this, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v12 = xmmword_220820;
  do
  {
    v8 = *(&v12 + v7);
    result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(_DWORD *a1, uint64_t a2, std::string *a3, uint64_t a4, char *a5)
{
  std::string::push_back(a3 + 3, a3->__r_.__value_.__s.__data_[16]);
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a3);
    v10 = a3->__r_.__value_.__r.__words[2];
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back(a3 + 3, v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  a3[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object()
{
  __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array()
{
  __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->()
{
  __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 279, "m_object != nullptr");
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>()
{
  __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
}

{
  __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
}

void TrainingEngine::TrainingEngine(uint64_t a1, uint64_t a2, int a3, std::string *__str, const std::string *a5)
{
  *(a1 + 64) = 0u;
  *(a1 + 136) = 0;
  v8 = a1 + 136;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0x3F7AE1483F666666;
  v126 = (a1 + 160);
  *(a1 + 168) = 814313567;
  v125 = (a1 + 168);
  *(a1 + 176) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  v128 = (a1 + 376);
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0x1F4000003E8;
  *(a1 + 708) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *a1 = 0;
  std::string::operator=((a1 + 176), __str);
  std::string::operator=((a1 + 200), a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, *a2, *(a2 + 8));
  }

  else
  {
    v159 = *a2;
  }

  v127 = (a1 + 712);
  boost::filesystem::path::path(__p, "training_config.json");
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v159;
  }

  boost::filesystem::path::append_v3(&v158, __p);
  if (v166 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 712), a5);
  std::ifstream::basic_ifstream(__p, &v158);
  v164 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(__p, v163, 1, v157);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v163);
  boost::filesystem::path::path(__stra, "model_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v157, __stra, &__s);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__stra, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    *__stra = __s;
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v159;
  }

  boost::filesystem::path::append_v3(&v155, __stra);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "saved_inference_model_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v9, &v154);
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v154;
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__stra, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    *__stra = v159;
  }

  boost::filesystem::path::append_v3(__stra, &v153);
  std::string::operator=((a1 + 224), __stra);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "saved_train_model_dir");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v10, &v153);
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v153;
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__stra, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    *__stra = v159;
  }

  boost::filesystem::path::append_v3(__stra, &v152);
  std::string::operator=((a1 + 248), __stra);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "model_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v11, __stra);
  std::vector<std::string>::__vdeallocate((a1 + 272));
  *(a1 + 272) = *__stra;
  *(a1 + 288) = *&__stra[16];
  memset(__stra, 0, 24);
  v152.__r_.__value_.__r.__words[0] = __stra;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v152);
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "model_parameter_to_grad_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::unordered_map<std::string,std::string>,std::unordered_map<std::string,std::string>,0>(v12, __stra);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(a1 + 296, __stra);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__stra);
  boost::filesystem::path::path(&v152, "model_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("fastspeech2", v157, &v152.__r_.__value_.__l.__data_, __stra);
  if (*(a1 + 159) < 0)
  {
    operator delete(*v8);
  }

  *v8 = *__stra;
  *(v8 + 16) = *&__stra[16];
  __stra[23] = 0;
  __stra[0] = 0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(__stra, "learning_rate");
  v152.__r_.__value_.__r.__words[0] = 0x3FB999999999999ALL;
  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(v157, __stra, &v152);
  *(a1 + 80) = v13;
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "learning_rate_decay");
  v152.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(v157, __stra, &v152);
  *(a1 + 84) = v14;
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "learning_rate_decay_steps");
  LODWORD(v152.__r_.__value_.__l.__data_) = 10000;
  *(a1 + 88) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "num_iter");
  LODWORD(v152.__r_.__value_.__l.__data_) = 100;
  *(a1 + 96) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "batch_size");
  LODWORD(v152.__r_.__value_.__l.__data_) = 1;
  *(a1 + 124) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "checkpoint_steps");
  LODWORD(v152.__r_.__value_.__l.__data_) = 100;
  *(a1 + 104) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "additional_early_stopping_epoch");
  LODWORD(v152.__r_.__value_.__l.__data_) = 10;
  *(a1 + 112) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "disable_min_ma_loss_checkpoint");
  v152.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 120) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "num_of_grad_accum");
  LODWORD(v152.__r_.__value_.__l.__data_) = 1;
  *(a1 + 128) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "min_step_loss_check");
  *(a1 + 704) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v157, __stra, (a1 + 704));
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  boost::filesystem::path::path(__stra, "disable_inference_model_saving");
  *(a1 + 708) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v157, __stra, (a1 + 708));
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  *(a1 + 8) = espresso_create_context();
  *(a1 + 32) = espresso_create_plan();
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v155.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v152, size + 5);
  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v152;
  }

  else
  {
    v16 = v152.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v155;
    }

    else
    {
      v17 = v155.__r_.__value_.__r.__words[0];
    }

    memmove(v16, v17, size);
  }

  strcpy(v16 + size, ":init");
  v18 = espresso_plan_add_network();
  boost::filesystem::path::path(v150, "");
  if (v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v96 = v151;
    v97 = v150[0];
    status_string = espresso_get_status_string();
    v99 = v150;
    if (v96 < 0)
    {
      v99 = v97;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v99, v18, status_string);
    std::logic_error::logic_error(exception, __stra);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  v19 = *(a1 + 32);
  v20 = espresso_plan_build();
  boost::filesystem::path::path(v148, "");
  if (v20)
  {
    v100 = __cxa_allocate_exception(0x10uLL);
    v101 = v149;
    v102 = v148[0];
    v103 = espresso_get_status_string();
    v104 = v148;
    if (v101 < 0)
    {
      v104 = v102;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v104, v20, v103);
    std::logic_error::logic_error(v100, __stra);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  v21 = *(a1 + 32);
  v22 = espresso_plan_execute_sync();
  boost::filesystem::path::path(v146, "");
  if (v22)
  {
    v105 = __cxa_allocate_exception(0x10uLL);
    v106 = v147;
    v107 = v146[0];
    v108 = espresso_get_status_string();
    v109 = v146;
    if (v106 < 0)
    {
      v109 = v107;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v109, v22, v108);
    std::logic_error::logic_error(v105, __stra);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v24 = a1 + 712;
    if (*(a1 + 735) < 0)
    {
      v24 = *v127;
    }

    *__stra = 136315138;
    *&__stra[4] = v24;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Init net: Binding training vars.", __stra, 0xCu);
  }

  v26 = *(a1 + 272);
  for (i = *(a1 + 280); v26 != i; v26 += 24)
  {
    *__stra = v26;
    v27 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 336), v26);
    v27[25] = 0;
    *(v27 + 23) = 0u;
    *(v27 + 21) = 0u;
    *(v27 + 19) = 0u;
    *(v27 + 17) = 0u;
    *(v27 + 15) = 0u;
    *(v27 + 13) = 0u;
    *(v27 + 11) = 0u;
    *(v27 + 9) = 0u;
    *(v27 + 7) = 0u;
    *(v27 + 5) = 0u;
    if (*(v26 + 23) < 0)
    {
      v28 = *v26;
    }

    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    *__stra = v26;
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 336), v26);
    v31 = espresso_network_bind_buffer();
    boost::filesystem::path::path(v144, "");
    if (v31)
    {
      v88 = __cxa_allocate_exception(0x10uLL);
      v89 = v145;
      v90 = v144[0];
      v91 = espresso_get_status_string();
      v92 = v144;
      if (v89 < 0)
      {
        v92 = v90;
      }

      StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v92, v31, v91);
      std::logic_error::logic_error(v88, __stra);
    }

    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    if (*(v26 + 23) >= 0)
    {
      v32 = *(v26 + 23);
    }

    else
    {
      v32 = *(v26 + 8);
    }

    std::string::basic_string[abi:ne200100](&v152, v32 + 5);
    if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v152;
    }

    else
    {
      v33 = v152.__r_.__value_.__r.__words[0];
    }

    if (v32)
    {
      if (*(v26 + 23) >= 0)
      {
        v34 = v26;
      }

      else
      {
        v34 = *v26;
      }

      memmove(v33, v34, v32);
    }

    strcpy(v33 + v32, "_mean");
    *__stra = v26;
    v35 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v128, v26);
    v35[25] = 0;
    *(v35 + 23) = 0u;
    *(v35 + 21) = 0u;
    *(v35 + 19) = 0u;
    *(v35 + 17) = 0u;
    *(v35 + 15) = 0u;
    *(v35 + 13) = 0u;
    *(v35 + 11) = 0u;
    *(v35 + 9) = 0u;
    *(v35 + 7) = 0u;
    *(v35 + 5) = 0u;
    v36 = *(a1 + 16);
    v37 = *(a1 + 24);
    *__stra = v26;
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v128, v26);
    v38 = espresso_network_bind_buffer();
    boost::filesystem::path::path(v142, "");
    if (v38)
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      v84 = v143;
      v85 = v142[0];
      v86 = espresso_get_status_string();
      v87 = v142;
      if (v84 < 0)
      {
        v87 = v85;
      }

      StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v87, v38, v86);
      std::logic_error::logic_error(v83, __stra);
    }

    if (v143 < 0)
    {
      operator delete(v142[0]);
    }

    if (*(v26 + 23) >= 0)
    {
      v39 = *(v26 + 23);
    }

    else
    {
      v39 = *(v26 + 8);
    }

    std::string::basic_string[abi:ne200100](&v141, v39 + 9);
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v141;
    }

    else
    {
      v40 = v141.__r_.__value_.__r.__words[0];
    }

    if (v39)
    {
      if (*(v26 + 23) >= 0)
      {
        v41 = v26;
      }

      else
      {
        v41 = *v26;
      }

      memmove(v40, v41, v39);
    }

    strcpy(v40 + v39, "_variance");
    *__stra = v26;
    v42 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 416), v26);
    v42[25] = 0;
    *(v42 + 23) = 0u;
    *(v42 + 21) = 0u;
    *(v42 + 19) = 0u;
    *(v42 + 17) = 0u;
    *(v42 + 15) = 0u;
    *(v42 + 13) = 0u;
    *(v42 + 11) = 0u;
    *(v42 + 9) = 0u;
    *(v42 + 7) = 0u;
    *(v42 + 5) = 0u;
    v43 = *(a1 + 16);
    v44 = *(a1 + 24);
    *__stra = v26;
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 416), v26);
    v45 = espresso_network_bind_buffer();
    boost::filesystem::path::path(v139, "");
    if (v45)
    {
      v78 = __cxa_allocate_exception(0x10uLL);
      v79 = v140;
      v80 = v139[0];
      v81 = espresso_get_status_string();
      v82 = v139;
      if (v79 < 0)
      {
        v82 = v80;
      }

      StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v82, v45, v81);
      std::logic_error::logic_error(v78, __stra);
    }

    if (v140 < 0)
    {
      operator delete(v139[0]);
    }

    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }
  }

  v46 = *(a1 + 32);
  v47 = espresso_plan_build_clean();
  boost::filesystem::path::path(v137, "");
  if (v47)
  {
    v110 = __cxa_allocate_exception(0x10uLL);
    v111 = v138;
    v112 = v137[0];
    v113 = espresso_get_status_string();
    v114 = v137;
    if (v111 < 0)
    {
      v114 = v112;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v114, v47, v113);
    std::logic_error::logic_error(v110, __stra);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  v48 = *(a1 + 32);
  v49 = espresso_plan_destroy();
  boost::filesystem::path::path(v135, "");
  if (v49)
  {
    v115 = __cxa_allocate_exception(0x10uLL);
    v116 = v136;
    v117 = v135[0];
    v118 = espresso_get_status_string();
    v119 = v135;
    if (v116 < 0)
    {
      v119 = v117;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v119, v49, v118);
    std::logic_error::logic_error(v115, __stra);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  v50 = *(a1 + 8);
  *(a1 + 56) = espresso_create_plan();
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = v155.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v152, v51 + 5);
  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v152;
  }

  else
  {
    v52 = v152.__r_.__value_.__r.__words[0];
  }

  if (v51)
  {
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v155;
    }

    else
    {
      v53 = v155.__r_.__value_.__r.__words[0];
    }

    memmove(v52, v53, v51);
  }

  strcpy(v52 + v51, ":grad");
  v54 = espresso_plan_add_network();
  boost::filesystem::path::path(v133, "");
  if (v54)
  {
    v120 = __cxa_allocate_exception(0x10uLL);
    v121 = v134;
    v122 = v133[0];
    v123 = espresso_get_status_string();
    v124 = v133;
    if (v121 < 0)
    {
      v124 = v122;
    }

    StringFormatter::StringFormatter(__stra, "%s Error: %d, %s", v124, v54, v123);
    std::logic_error::logic_error(v120, __stra);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  v55 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = a1 + 712;
    if (*(a1 + 735) < 0)
    {
      v56 = *v127;
    }

    v57 = &v155;
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v57 = v155.__r_.__value_.__r.__words[0];
    }

    *__stra = 136315394;
    *&__stra[4] = v56;
    *&__stra[12] = 2080;
    *&__stra[14] = v57;
    _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "TaskId: %s, Loaded network from %s", __stra, 0x16u);
  }

  v58 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v59 = a1 + 712;
    if (*(a1 + 735) < 0)
    {
      v59 = *v127;
    }

    v60 = *(a1 + 80);
    v61 = *(a1 + 124);
    v62 = *(a1 + 96);
    v63 = *(a1 + 104);
    v64 = *(a1 + 112);
    *__stra = 136316418;
    *&__stra[4] = v59;
    *&__stra[12] = 2048;
    *&__stra[14] = v60;
    *&__stra[22] = 2048;
    *&__stra[24] = v62;
    *&__stra[32] = 1024;
    *&__stra[34] = v61;
    *&__stra[38] = 2048;
    *v161 = v63;
    *&v161[8] = 2048;
    *&v161[10] = v64;
    _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "TaskId: %s, learning_rate_=%f, num_iters_=%ld, batch_size_=%d, checkpoint_steps=%ld, additional_early_stopping_epoch=%ld", __stra, 0x3Au);
  }

  v65 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "optimizer_params");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v132, v65);
  boost::filesystem::path::path(__stra, "type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("adam", v132, __stra, &v152);
  if ((__stra[23] & 0x80000000) != 0)
  {
    operator delete(*__stra);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v152.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_176;
    }

    v66 = v152.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_176;
    }

    v66 = &v152;
  }

  if (LODWORD(v66->__r_.__value_.__l.__data_) == 1835099233)
  {
    boost::filesystem::path::path(__stra, "beta1");
    *v126 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<float,0>(v132, __stra, v126);
    if ((__stra[23] & 0x80000000) != 0)
    {
      operator delete(*__stra);
    }

    boost::filesystem::path::path(__stra, "beta2");
    *(a1 + 164) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<float,0>(v132, __stra, a1 + 164);
    if ((__stra[23] & 0x80000000) != 0)
    {
      operator delete(*__stra);
    }

    boost::filesystem::path::path(__stra, "epsilon");
    *v125 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<float,0>(v132, __stra, v125);
    if ((__stra[23] & 0x80000000) != 0)
    {
      operator delete(*__stra);
    }
  }

LABEL_176:
  TrainingEngine::setup_optimizer(a1);
  v67 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v157, "model_params");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v131, v67);
  if (*(a1 + 159) < 0)
  {
    if (*(a1 + 144) == 11 && **v8 == 0x6565707374736166 && *(*v8 + 3) == 0x3268636565707374)
    {
      goto LABEL_184;
    }

    if (*(a1 + 144) != 7)
    {
      goto LABEL_233;
    }

    v69 = *v8;
  }

  else
  {
    v68 = *(a1 + 159);
    v69 = v8;
    if (v68 != 7)
    {
      if (v68 != 11)
      {
        goto LABEL_233;
      }

      if (*v8 != 0x6565707374736166 || *(v8 + 3) != 0x3268636565707374)
      {
        goto LABEL_233;
      }

LABEL_184:
      memset(&__stra[8], 0, 32);
      *v161 = 0u;
      *v161 = 0x30000000080;
      *&v161[8] = -1;
      v71 = *(a1 + 128);
      *__stra = 1;
      *&__stra[4] = v71;
      boost::filesystem::path::path(&v141, "encoder_length");
      LODWORD(v129[0]) = 256;
      *v161 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(&v141, "decoder_length");
      LODWORD(v129[0]) = 1280;
      *&v161[4] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(&v141, "input_speaker_id");
      LODWORD(v129[0]) = -1;
      *&v161[8] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      *__stra = *(a1 + 124);
      std::allocate_shared[abi:ne200100]<NeuralFEDataFeeder,std::allocator<NeuralFEDataFeeder>,std::string const&,std::string const&,NeuralFEDataFeeder::Config &,0>();
    }
  }

  v73 = *v69;
  v74 = *(v69 + 3);
  if (v73 == 1702257015 && v74 == 1852732005)
  {
    memset(&__stra[8], 0, 32);
    *v161 = xmmword_220EE0;
    *&v161[16] = 0x4700000000000002;
    v162 = 0x10000000258;
    v76 = *(a1 + 128);
    *__stra = 1;
    *&__stra[4] = v76;
    boost::filesystem::path::path(&v141, "step_sequence_length");
    LODWORD(v129[0]) = 960;
    *v161 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "step_shift_length");
    LODWORD(v129[0]) = 240;
    *&v161[4] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "samples_per_frame");
    LODWORD(v129[0]) = 240;
    *&v161[8] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "state_size");
    LODWORD(v129[0]) = 448;
    *&v161[12] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "samples_per_step");
    LODWORD(v129[0]) = 2;
    *&v161[16] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "audio_scalar");
    v129[0] = 0x40E0000000000000;
    v77 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    *&v161[20] = v77;
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(&v141, "window_length");
    LODWORD(v129[0]) = 600;
    LODWORD(v162) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    *__stra = *(a1 + 124);
    boost::filesystem::path::path(&v141, "enable_debug");
    LOBYTE(v129[0]) = 0;
    __stra[8] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v131, &v141.__r_.__value_.__l.__data_, v129);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    boost::filesystem::path::path(v129, "debug_data_dir");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("/tmp/iris/debug_data/%d/data", v131, v129, &v141);
    if ((__stra[39] & 0x80000000) != 0)
    {
      operator delete(*&__stra[16]);
    }

    *&__stra[16] = v141;
    *(&v141.__r_.__value_.__s + 23) = 0;
    v141.__r_.__value_.__s.__data_[0] = 0;
    if (v130 < 0)
    {
      operator delete(v129[0]);
    }

    std::allocate_shared[abi:ne200100]<WaveRNNDataFeeder,std::allocator<WaveRNNDataFeeder>,std::string const&,std::string const&,WaveRNNDataFeeder::Config &,0>();
  }

LABEL_233:
  v93 = __cxa_allocate_exception(0x10uLL);
  v94 = v8;
  if (*(a1 + 159) < 0)
  {
    v94 = *v8;
  }

  StringFormatter::StringFormatter(__stra, "Model type %s is not supported.", v94);
  std::logic_error::logic_error(v93, __stra);
}