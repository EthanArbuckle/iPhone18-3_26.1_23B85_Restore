void sub_2228B77F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::insertToFeatureStore()
{
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::context::ContextFeaturizer::makeContextResponse();
  }

  v0 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_22284A000, v0, OS_LOG_TYPE_DEBUG, "Skipping insertion of NLv4 context featurizer response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", v2, 2u);
  }

  v1 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_22284A000, v1, OS_LOG_TYPE_DEBUG, "Unable to insert context featurizer response into FeatureStore", v2, 2u);
  }
}

uint64_t std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::getPaddingMask(void *a1@<X1>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1[21];
  if (v3 != a1[22])
  {
    v4 = a1[12];
    if ((a1[13] - v4) > 8)
    {
      v5 = *(v4 + 8) + *v3;
      LODWORD(v10.__r_.__value_.__l.__data_) = 1065353216;
      std::vector<float>::vector[abi:ne200100](&__p, v5);
      v10.__r_.__value_.__r.__words[0] = 1;
      v10.__r_.__value_.__l.__size_ = v5;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a2, &v10, &v10.__r_.__value_.__r.__words[2], 2uLL);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "The padding mask could not be created because there were no utterance length data or context data provided.");
  exception = __cxa_allocate_exception(0x10uLL);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, p_p);
  std::runtime_error::runtime_error(exception, &v10);
  exception->__vftable = &unk_2835E9238;
}

void sub_2228B7B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (a15 < 0)
      {
        operator delete(a10);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::find<std::string_view>(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[4], v9[5], v5);
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t snlc_inference_orchestrator::orchestration::SNLCOrchestrator::handle@<X0>(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *a1@<X0>, const sirinluinternalitfm::ITFMParserRequest **a2@<X1>, uint64_t a3@<X8>)
{
  snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::generateOverrideResponse(*a2, v9);
  if (v10 != 1)
  {
    v7 = *a2;
    *a2 = 0;
    v8 = v7;
    itfm_inference_orchestrator::orchestration::ITFMOrchestrator::handle(a1, &v8);
  }

  result = MEMORY[0x223DC32F0](a3, v9);
  if (v10 == 1)
  {
    return MEMORY[0x223DC3310](v9);
  }

  return result;
}

void sub_2228B7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (a18 == 1)
  {
    MEMORY[0x223DC3310](&a11);
  }

  _Unwind_Resume(exception_object);
}

void snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::generateOverrideResponse(const sirinluinternalitfm::ITFMParserRequest *a1@<X1>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[56] = 0;
  memset(v26, 0, sizeof(v26));
  v5 = *(a1 + 9);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 136);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
LABEL_8:
    v8 = *(v5 + 136);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v9[10];
        v11 = *(v5 + 128);
        if (v11)
        {
          v12 = *(v11 + 32) != 0;
        }

        else
        {
          v12 = 0;
        }

        v16 = v9[11];
        v15 = v9[12];
        sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v22);
        if (v10)
        {
          v17 = *(*(*(*(a1 + 9) + 136) + 16) + 80);
LABEL_21:
          sirinluexternal::SystemDialogActGroup::operator=();
          goto LABEL_22;
        }

        if (!v12)
        {
          if (v15 - v16 == 8)
          {
            sirinluexternal::SystemDialogActGroup::makeSystemDialogAct(v22);
            v21 = **(*(*(*(a1 + 9) + 136) + 16) + 88);
            operator new();
          }

          goto LABEL_22;
        }

LABEL_20:
        v18 = *(*(a1 + 9) + 128);
        goto LABEL_21;
      }
    }

    v13 = *(v5 + 128);
    if (v13)
    {
      v14 = *(v13 + 32);
      sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v22);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_15:
    sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v22);
LABEL_22:
    snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::sdaMessagePayloadPromptOverride(v22, &__p);
    std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(a2, &__p);
    if (v25 == 1)
    {
      MEMORY[0x223DC3310](&__p);
    }

    if ((a2[56] & 1) == 0)
    {
      snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::sdaIntercomPayloadPromptOverride(v22, &__p);
      std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(a2, &__p);
      if (v25 == 1)
      {
        MEMORY[0x223DC3310](&__p);
      }
    }

    MEMORY[0x223DC3040](v22);
    goto LABEL_28;
  }

  snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::legacyNLContextOverride(v7, &__p);
  std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(a2, &__p);
  if (v25 == 1)
  {
    MEMORY[0x223DC3310](&__p);
  }

  if ((a2[56] & 1) == 0)
  {
    v5 = *(a1 + 9);
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = 0;
  v24 = 0;
  v19 = *(a1 + 5);
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&__p, v20);
    }
  }

  itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::handleFeatureStoreInsert(v26, &__p, &snlc_inference_orchestrator::orchestration::kComponent);
  if (v24 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v26;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2228B81A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  MEMORY[0x223DC3040](&a9);
  __p = (v21 - 72);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v20 + 56) == 1)
  {
    MEMORY[0x223DC3310](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::sdaMessagePayloadPromptOverride@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[56] = 0;
  result = *(a1 + 32);
  if (result)
  {
    result = snlp::common::text_uso_graph::isMessageContentPrompt(result);
    if (result)
    {
      v4 = 1;
      snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(&v4, buf);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228B8344(_Unwind_Exception *exception_object)
{
  v4 = v3;
  *(v2 + 8) = v4;
  if (*(v1 + 56) == 1)
  {
    MEMORY[0x223DC3310](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(uint64_t result, uint64_t a2)
{
  if (*(result + 56) == *(a2 + 56))
  {
    if (*(result + 56))
    {

      return sirinluinternalitfm::ITFMParserResponse::operator=();
    }
  }

  else if (*(result + 56))
  {
    result = MEMORY[0x223DC3310]();
    *(result + 56) = 0;
  }

  else
  {
    result = MEMORY[0x223DC32E0]();
    *(result + 56) = 1;
  }

  return result;
}

uint64_t snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::sdaIntercomPayloadPromptOverride@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[56] = 0;
  result = *(a1 + 32);
  if (result)
  {
    result = snlp::common::text_uso_graph::isIntercomPayloadPrompt(result);
    if (result)
    {
      v4 = 1;
      snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(&v4, buf);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228B85CC(_Unwind_Exception *a1, uint64_t a2, std::__split_buffer<std::string> *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__split_buffer<std::string>::~__split_buffer(&a11);
  if (*(v11 + 56) == 1)
  {
    MEMORY[0x223DC3310](v11);
  }

  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

uint64_t itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::handleFeatureStoreInsert(__int128 **a1, uint64_t a2, int *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    v6 = SNLPOSLoggerForCategory(2);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v7 = *a3;
    if (v7 >= 8)
    {
      v11 = SNLPOSLoggerForCategory(4);
      v8 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "<UNDEFINED_COMPONENT>";
        v22 = 2048;
        v23 = v7;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v20, 0x16u);
      }
    }

    else
    {
      v8 = off_2784B6F30[v7];
    }

    v20 = 136315138;
    v21 = v8;
    v12 = "[%s] Skipping insertion of SNLC executed handcrafted rules into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled";
    goto LABEL_16;
  }

  if (*(a2 + 24) == 1)
  {
    itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::insertToFeatureStore(a1);
  }

  v6 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    if (v9 >= 8)
    {
      v13 = SNLPOSLoggerForCategory(4);
      v10 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "<UNDEFINED_COMPONENT>";
        v22 = 2048;
        v23 = v9;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v20, 0x16u);
      }
    }

    else
    {
      v10 = off_2784B6F30[v9];
    }

    v20 = 136315138;
    v21 = v10;
    v12 = "[%s] nlu_request_id not found so skipping insertion of SNLC executed handcrafted rules into FeatureStore";
LABEL_16:
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, v12, &v20, 0xCu);
  }

LABEL_17:
  v14 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *a3;
    if (v15 >= 8)
    {
      v17 = SNLPOSLoggerForCategory(4);
      v16 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "<UNDEFINED_COMPONENT>";
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v20, 0x16u);
      }
    }

    else
    {
      v16 = off_2784B6F30[v15];
    }

    v20 = 136315138;
    v21 = v16;
    _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "[%s] Unable to insert executed handcrafted rules into FeatureStore", &v20, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t itfm_inference_orchestrator::orchestration::ITFMOrchestrator::isAssetVersionValid(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ITFM");
  isAssetVersionValid = SNLPAssetVersionChecks::isAssetVersionValid(__p, this + 52, *(this + 10), this + 88, this + 128);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return isAssetVersionValid;
}

void sub_2228B89D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::validateRequest(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *this@<X0>, const sirinluinternalitfm::ITFMParserRequest *a2@<X1>, uint64_t a3@<X8>)
{
  v46[2] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 24) = 0;
  if ((itfm_inference_orchestrator::orchestration::ITFMOrchestrator::isAssetVersionValid(this) & 1) == 0)
  {
    v23 = "ITFM Orchestrator failed with incompatible major version";
LABEL_20:
    std::string::basic_string[abi:ne200100]<0>(a3, v23);
    *(a3 + 24) = 1;
    goto LABEL_21;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    v23 = "Request does not contain a tokenised utterance";
    goto LABEL_20;
  }

  v7 = *(v6 + 24);
  if (!v7)
  {
    v23 = "Request does not contain a token chain";
    goto LABEL_20;
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v23 = "Request does not contain embeddings";
    goto LABEL_20;
  }

  v9 = *(v8 + 56);
  v10 = *(v7 + 32) - *(v7 + 24);
  if (v9 == v10 >> 3)
  {
    goto LABEL_34;
  }

  std::to_string(&v42, v9);
  v11 = std::string::insert(&v42, 0, "Request embeddings num tokens (");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v43, ") does not match actual num tokens (");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, v10 >> 3);
  v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  v17 = std::string::append(&v44, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v45, ")");
  v20 = v19->__r_.__value_.__r.__words[0];
  v46[0] = v19->__r_.__value_.__l.__size_;
  *(v46 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v22 = v46[0];
    *a3 = v20;
    *(a3 + 8) = v22;
    *(a3 + 15) = *(v46 + 7);
    *(a3 + 23) = v21;
  }

  else
  {
    v25 = v46[0];
    *a3 = v20;
    *(a3 + 8) = v25;
    *(a3 + 15) = *(v46 + 7);
    *(a3 + 23) = v21;
    *(a3 + 24) = 1;
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if ((*(a3 + 24) & 1) == 0)
  {
LABEL_34:
    v26 = (*(**(this + 114) + 32))(*(this + 114));
    v27 = *(*(a2 + 1) + 56);
    if (v27 > v26)
    {
      std::to_string(&v42, v27);
      v28 = std::string::insert(&v42, 0, "Request embeddings (");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v43, ") exceeds maximum (");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, v26);
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

      v34 = std::string::append(&v44, p_p, size);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v45, ")");
      v37 = v36->__r_.__value_.__r.__words[0];
      v46[0] = v36->__r_.__value_.__l.__size_;
      *(v46 + 7) = *(&v36->__r_.__value_.__r.__words[1] + 7);
      v38 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 24) == 1)
      {
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        v39 = v46[0];
        *a3 = v37;
        *(a3 + 8) = v39;
        *(a3 + 15) = *(v46 + 7);
        *(a3 + 23) = v38;
      }

      else
      {
        v40 = v46[0];
        *a3 = v37;
        *(a3 + 8) = v40;
        *(a3 + 15) = *(v46 + 7);
        *(a3 + 23) = v38;
        *(a3 + 24) = 1;
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2228B8E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
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

  if (*(v33 + 24) == 1 && *(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t psc_inference_orchestrator::orchestration::PSCOrchestrator::handle@<X0>(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, const sirinluinternalitfm::ITFMParserRequest **a2@<X1>, uint64_t a3@<X8>)
{
  psc_inference_orchestrator::orchestration::PSCOverrideGenerator::generateOverrideResponse(a1 + 208, *a2, v9);
  if (v10 != 1)
  {
    v7 = *a2;
    *a2 = 0;
    v8 = v7;
    itfm_inference_orchestrator::orchestration::ITFMOrchestrator::handle(a1, &v8);
  }

  result = MEMORY[0x223DC32F0](a3, v9);
  if (v10 == 1)
  {
    return MEMORY[0x223DC3310](v9);
  }

  return result;
}

void sub_2228B8F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (a18 == 1)
  {
    MEMORY[0x223DC3310](&a11);
  }

  _Unwind_Resume(exception_object);
}

void psc_inference_orchestrator::orchestration::PSCOverrideGenerator::generateOverrideResponse(itfm_inference_orchestrator::vocabulary::Vocabulary **this@<X0>, const sirinluinternalitfm::ITFMParserRequest *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[56] = 0;
  memset(v26, 0, sizeof(v26));
  v6 = *(a2 + 9);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 136);
  if (!v7 || (v8 = *(v7 + 16)) == 0)
  {
    v12 = *(v6 + 128);
    if (v12)
    {
      v13 = *(v12 + 32);
      sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v25);
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_9:
    sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v25);
    goto LABEL_16;
  }

  v9 = v8[10];
  v10 = *(v6 + 128);
  if (v10)
  {
    v11 = *(v10 + 32) != 0;
  }

  else
  {
    v11 = 0;
  }

  v15 = v8[11];
  v14 = v8[12];
  sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v25);
  if (v9)
  {
    v16 = *(*(*(*(a2 + 9) + 136) + 16) + 80);
LABEL_15:
    sirinluexternal::SystemDialogActGroup::operator=();
    goto LABEL_16;
  }

  if (v11)
  {
LABEL_14:
    v17 = *(*(a2 + 9) + 128);
    goto LABEL_15;
  }

  if (v14 - v15 == 8)
  {
    sirinluexternal::SystemDialogActGroup::makeSystemDialogAct(v25);
    v20 = **(*(*(*(a2 + 9) + 136) + 16) + 88);
    operator new();
  }

LABEL_16:
  psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaMessagePayloadPromptOverride(this, v25, &__p);
  std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(a3, &__p);
  if (v24 == 1)
  {
    MEMORY[0x223DC3310](&__p);
  }

  if ((a3[56] & 1) == 0)
  {
    psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaIntercomPayloadPromptOverride(this, v25, &__p);
    std::__optional_storage_base<sirinluinternalitfm::ITFMParserResponse,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<sirinluinternalitfm::ITFMParserResponse,false>>(a3, &__p);
    if (v24 == 1)
    {
      MEMORY[0x223DC3310](&__p);
    }
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v23 = 0;
  v18 = *(a2 + 5);
  if (v18)
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&__p, v19);
    }
  }

  v21 = 4;
  itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::handleFeatureStoreInsert(v26, &__p, &v21);
  if (v23 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MEMORY[0x223DC3040](v25);
  __p.__r_.__value_.__r.__words[0] = v26;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2228B9234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  MEMORY[0x223DC3040](&a22);
  __p = (v23 - 88);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v22 + 56) == 1)
  {
    MEMORY[0x223DC3310](v22);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::validateRequest(void *a1)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v26.__r_.__value_.__s.__data_[0] = 0;
  v27 = 0;
  if (!a1[7])
  {
    v18 = "NLv4 request missing request ID";
    goto LABEL_36;
  }

  v1 = a1[1];
  if (!v1 || (*(v1 + 64) & 4) == 0)
  {
    v18 = "NLv4 request missing valid embeddings";
    goto LABEL_36;
  }

  v2 = a1[8];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_32;
  }

  if (!v3[1])
  {
    v18 = "NLv4 request missing valid token chain locale";
    goto LABEL_36;
  }

  if (!*(v2 + 16))
  {
LABEL_32:
    v18 = "NLv4 request missing valid tokens";
LABEL_36:
    std::string::basic_string[abi:ne200100]<0>(&v26, v18);
    v27 = 1;
    goto LABEL_37;
  }

  v4 = *(v1 + 56);
  v5 = v3[4] - v3[3];
  if (v4 != v5 >> 3)
  {
    std::to_string(&v22, v4);
    v6 = std::string::insert(&v22, 0, "NLv4 request embeddings num tokens (");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v23, ") does not match actual num tokens (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v5 >> 3);
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v12 = std::string::append(&v24, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v25, ")");
    v15 = v14->__r_.__value_.__r.__words[0];
    v28[0] = v14->__r_.__value_.__l.__size_;
    *(v28 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v27 == 1)
    {
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v26.__r_.__value_.__r.__words[0] = v15;
      v26.__r_.__value_.__l.__size_ = v28[0];
      *(&v26.__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
      *(&v26.__r_.__value_.__s + 23) = v16;
    }

    else
    {
      v26.__r_.__value_.__r.__words[0] = v15;
      v26.__r_.__value_.__l.__size_ = v28[0];
      *(&v26.__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
      *(&v26.__r_.__value_.__s + 23) = v16;
      v27 = 1;
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v27)
    {
LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      v20 = &exception->__vftable;
      if (v27)
      {
        std::runtime_error::runtime_error(exception, &v26);
        *v20 = &unk_2835E9238;
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2228B9570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
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

  if (*(v40 - 64) == 1 && *(v40 - 65) < 0)
  {
    operator delete(*(v40 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::getPositionIds(uint64_t a1@<X1>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = **(a1 + 168);
  std::vector<float>::vector[abi:ne200100](&__p, v3);
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
  v9[1] = v3;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a2, v9, &v10, 2uLL);
}

void sub_2228B97B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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

void sub_2228B9850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::reshapeStream(nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "NLv4";
    v26 = 2080;
    v27 = "[insights-snlp-nlv4]: ";
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] %sReshaping encoder input stream.", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "utterance_tokens_embedder_emb_dim");
  std::string::basic_string[abi:ne200100]<0>(&__p, "NLv4");
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf))
  {
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf);
    if (!v11)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v11 + 16) == 1)
    {
      v12 = 0;
      v13 = v11[5] & 0xFFFFFF00;
      v14 = *(v11 + 10);
      goto LABEL_17;
    }

    v15 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *v24 = 136315138;
      *&v24[4] = p_p;
      v17 = "[%s] Could not reshape because the relevant dimensions could not be read from the config.";
LABEL_15:
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, v17, v24, 0xCu);
    }
  }

  else
  {
    v15 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      *v24 = 136315138;
      *&v24[4] = v16;
      v17 = "[%s] Could not reshape because the relevant dimensions could not be found in the config.";
      goto LABEL_15;
    }
  }

  v12 = 1;
LABEL_17:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
    if (v12)
    {
      goto LABEL_21;
    }

LABEL_23:
    v19 = *(this + 136);
    if (v19)
    {
      if (v19 == 1)
      {
        *buf = a2;
        __p.__r_.__value_.__r.__words[0] = a3;
        *v24 = a4;
        nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::reshapeEncoderWithType(buf, v24, a5);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "Failed to reshape input in NLv4 encoder. Data type not supported.");
      exception = __cxa_allocate_exception(0x10uLL);
      if (v28 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v22);
      std::runtime_error::runtime_error(exception, &__p);
      exception->__vftable = &unk_2835E9238;
    }

    *buf = a2;
    __p.__r_.__value_.__r.__words[0] = a3;
    *v24 = a4;
    nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::reshapeEncoderWithType(buf, v24, a5);
  }

  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_21:
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2228B9BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      if (a25 < 0)
      {
        operator delete(a20);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(void *a1)
{
  *a1 = &unk_2835E3B08;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x223DC4CD0](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sentencepiece::SentencePieceProcessor::PopulateSentencePieceText@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, unsigned __int8 ***a6@<X6>, uint64_t a7@<X7>, sentencepiece::util::Status *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v10[1];
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 591);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "!w.empty()", 10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "Empty piece is not allowed.", 27);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 4);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            std::string::basic_string[abi:ne200100](__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::internal::ArenaStringPtr::Set((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a7 + 48), v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 605);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 606);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(end) < (norm_to_orig.size())", 29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 609);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_begin) <= (input.size())", 30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 610);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_end) <= (input.size())", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x223DC4920](&__p[1], 611);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_begin) <= (orig_end)", 26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a7 + 48), v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sentencepiece::ByteToPiece(v27, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            std::string::basic_string[abi:ne200100](__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::internal::ArenaStringPtr::Set((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              std::string::basic_string[abi:ne200100](__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::internal::ArenaStringPtr::Set((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a7 + 48), v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      std::string::basic_string[abi:ne200100](__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      std::string::basic_string[abi:ne200100](__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 3;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sentencepiece::SentencePieceProcessor::ApplyExtraOptions(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sentencepiece::util::Status::~Status(a8);
      *(a7 + 40) |= 1u;
      std::string::basic_string[abi:ne200100](__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sentencepiece::util::Status::Status(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
  MEMORY[0x223DC4920](&__p[1], 662);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(consumed) == (normalized.size())", 33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "all normalized characters are not consumed.", 43);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x277D82828];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x277D82828] + 24);
  v97 = MEMORY[0x277D82878] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v100);
}

void sub_2228BAAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::forward@<X0>(E5RT::ExecutionStream **this@<X0>, const nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType *a2@<X1>, void *a3@<X8>)
{
  v5 = (*(a2 + 1) - *a2) >> 3;
  if (v5 <= 1)
  {
    std::to_string(&v37, v5);
    v15 = std::string::insert(&v37, 0, "Encodings input needs at least two dimensions.  Only found ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v38, " dimensions.");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v36 = v17->__r_.__value_.__r.__words[2];
    v35 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (v36 >= 0)
    {
      v20 = &v35;
    }

    else
    {
      v20 = v35;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, v20);
    std::runtime_error::runtime_error(exception, &v38);
    exception->__vftable = &unk_2835E9238;
  }

  v7 = *(a2 + 12);
  v8 = (*(a2 + 13) - v7) >> 3;
  if (v8 <= 1)
  {
    std::to_string(&v37, v8);
    v21 = std::string::insert(&v37, 0, "Context input needs at least two dimensions.  Only found ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v38, " dimensions.");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v36 = v23->__r_.__value_.__r.__words[2];
    v35 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    if (v36 >= 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, v26);
    std::runtime_error::runtime_error(v25, &v38);
    v25->__vftable = &unk_2835E9238;
  }

  v9 = *(a2 + 6);
  v10 = (*(a2 + 7) - v9) >> 3;
  if (v10 <= 2)
  {
    std::to_string(&v37, v10);
    v27 = std::string::insert(&v37, 0, "Tensorised span token input needs at least three dimensions.  Only found ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v38, " dimensions.");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v36 = v29->__r_.__value_.__r.__words[2];
    v35 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    if (v36 >= 0)
    {
      v32 = &v35;
    }

    else
    {
      v32 = v35;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, v32);
    std::runtime_error::runtime_error(v31, &v38);
    v31->__vftable = &unk_2835E9238;
  }

  nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::reshapeStream(this, *(*a2 + 8), *(v7 + 8), *(v9 + 16), &v35);
  v11 = this[22];
  E5RT::ExecutionStreamOperation::ReshapeOperation();
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(this);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::setInputs(this, a2);
  v12 = this[3];
  v13 = this[23];
  v33 = this[22];
  v34 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(this[3]);
  E5RT::ExecutionStream::ResetStream(this[3]);
  nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::getOutputs(this, a3);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(this);
  return std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&v35);
}

void sub_2228BAF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a16 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_2228BB020(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(v11);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&a11);
  JUMPOUT(0x2228BB1B8);
}

void sub_2228BB034(uint64_t a1, std::__shared_weak_count *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(va);
  JUMPOUT(0x2228BB1B8);
}

void sub_2228BB144(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (*(v23 - 41) < 0)
      {
        operator delete(*(v23 - 64));
      }

      __cxa_end_catch();
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&a11);
      JUMPOUT(0x2228BB1B8);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::reshapeEncoderWithType(uint64_t *a1@<X2>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = *a1;
  v5[0] = 1;
  v5[1] = v3;
  v5[2] = *a2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v5, &v6, 3uLL);
}

void sub_2228BB6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = a15;
  a15 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  E5RT::TensorDataType::~TensorDataType(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::IsControl(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 152))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x223DC4920](v7, 981);
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

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(*this);
      }

      AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      AlignedNoHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedNoHook;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(AlignedNoHook + 2, v5 + 2, 8 * v13);
      AlignedNoHook = *(this + 2);
      *AlignedNoHook = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *AlignedNoHook = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        AlignedNoHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedNoHook;
  }

  return &v5[2 * v2 + 2];
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x50uLL);
  sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E3200;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
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
  return __dst;
}

void google::protobuf::internal::ArenaStringPtr::Set(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*this == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      google::protobuf::internal::ArenaStringPtr::Set(a4);
      a4 = v11;
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    v10 = *(a3 + 2);
    *AlignedAndAddCleanup = *a3;
    AlignedAndAddCleanup[2] = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *this = AlignedAndAddCleanup;
  }

  else
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void itfm_inference_orchestrator::inference_engine::ITFME5MLModule::setInputs(const void **a1, uint64_t a2)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(a1, a1 + 45, a2);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(a1, a1 + 48, a2 + 48);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(a1, a1 + 51, a2 + 96);

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(a1, a1 + 54, a2 + 144);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *sentencepiece::SentencePieceProcessor::ApplyExtraOptions@<X0>(sentencepiece::ModelInterface **a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sentencepiece::util::Status::Status(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 1);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 1);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sentencepiece::SentencePieceText_SentencePiece::InternalSwap(v25, v26);
            }

            else
            {
              google::protobuf::internal::GenericSwap(v25, v26, a3);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sentencepiece::util::Status::Status(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48), v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v56, &v47->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sentencepiece::ModelInterface::bos_piece(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 63))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sentencepiece::ModelInterface::bos_piece(a1[1]);
    sentencepiece::ModelInterface::bos_piece(a1[1]);
    *(v48 + 40) |= 1u;
    std::string::basic_string[abi:ne200100](__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sentencepiece::util::Status::Status(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sentencepiece::ModelInterface::eos_piece(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 63))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sentencepiece::ModelInterface::eos_piece(a1[1]);
        sentencepiece::ModelInterface::eos_piece(a1[1]);
        *(v33 + 40) |= 1u;
        std::string::basic_string[abi:ne200100](__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48), v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a3 + 48, v14);
        if ((*(*a1 + 66))(a1, *(v15 + 64)))
        {
          v16 = sentencepiece::ModelInterface::unk_piece(a1[1]);
          sentencepiece::ModelInterface::unk_piece(a1[1]);
          *(v15 + 40) |= 1u;
          std::string::basic_string[abi:ne200100](__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sentencepiece::util::Status::Status(a4, 13, "unknown extra_option type.", 26);
}

void sentencepiece::SentencePieceText::SharedDtor(sentencepiece::SentencePieceText *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  v5 = *(this + 9);
  v4 = (this + 72);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x223DC4D00](v7, 0x1012C40EC159624);
  }
}

void sub_2228BC474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceText::~SentencePieceText(sentencepiece::SentencePieceText *this)
{
  sentencepiece::SentencePieceText::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText::~SentencePieceText(this);

  JUMPOUT(0x223DC4D00);
}

uint64_t google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(google::protobuf::internal::ArenaStringPtr *this)
{
  result = *this;
  if (result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    result = *this;
  }

  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *this;
  }

  return result;
}

void sub_2228BC588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(*v3);
          MEMORY[0x223DC4D00]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(sentencepiece::SentencePieceText_SentencePiece *this)
{
  sentencepiece::SentencePieceText_SentencePiece::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(this);

  JUMPOUT(0x223DC4D00);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::SentencePieceText_SentencePiece::SharedDtor(sentencepiece::SentencePieceText_SentencePiece *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  result = (this + 48);
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DC4D00](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 7);
  v7 = (this + 56);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v9 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x223DC4D00](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_2228BC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::InternalMetadata::Delete<std::string>(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x223DC4D00);
    }
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(*v2, (v2 + 8));
    }

    else if (*(this + 5))
    {
      v3 = 32 * *(this + 5);
      v4 = (v2 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v4);
        v4 = (v4 + 32);
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      google::protobuf::internal::ExtensionSet::~ExtensionSet(v5 == 0, *(this + 2));
    }

    else if (v5)
    {
      MEMORY[0x223DC4CD0](*(this + 2), 0x1062C802AB6010CLL);
    }
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(google::protobuf::internal::ArenaImpl **this)
{
  v1 = *this;
  if (v1)
  {
    google::protobuf::internal::ArenaImpl::SpaceAllocated(v1);
  }
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
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

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordIDs(uint64_t a1@<X0>, uint64_t **a2@<X1>, const void **a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        v9 = *(v7 + 23);
        if (v9 >= 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = *v7;
        }

        if (v9 >= 0)
        {
          v11 = *(v7 + 23);
        }

        else
        {
          v11 = v7[1];
        }

        v12 = (*(***(a1 + 16) + 504))(**(a1 + 16), v10, v11);
        v14 = a3[1];
        v13 = a3[2];
        if (v14 >= v13)
        {
          v16 = *a3;
          v17 = v14 - *a3;
          v18 = v17 >> 2;
          v19 = (v17 >> 2) + 1;
          if (v19 >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 1 > v19)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v21);
          }

          *(4 * v18) = v12;
          v15 = 4 * v18 + 4;
          memcpy(0, v16, v17);
          v22 = *a3;
          *a3 = 0;
          a3[1] = v15;
          a3[2] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v12;
          v15 = (v14 + 4);
        }

        a3[1] = v15;
        v7 += 3;
      }

      while (v7 != v8);
    }
  }
}

void sub_2228BCC04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordFeaturePoolingMask2D(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(**(a1 + 1) + 24))(*(a1 + 1)))
  {
    MaxNumTokens = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
  }

  else
  {
    MaxNumTokens = nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(a1);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordMaskVector(a1, a2, v8);
  std::vector<float>::vector[abi:ne200100](__p, MaxNumTokens);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8[3] = a3;
  v9 = 0;
  if (MaxNumTokens)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a3, MaxNumTokens);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_2228BCE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void **a17)
{
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::setInputs(const void **this, const nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType *a2)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 44, a2);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 47, a2 + 144);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 50, a2 + 48);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 53, a2 + 96);

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 56, a2 + 192);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordMaskVector(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, void *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "▁");
  std::vector<int>::vector[abi:ne200100](a3, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = v7[23];
      if (v10 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = *v7;
      }

      if (v10 >= 0)
      {
        v12 = v7[23];
      }

      else
      {
        v12 = *(v7 + 1);
      }

      v13 = (*(***(a1 + 16) + 504))(**(a1 + 16), v11, v12);
      v14 = v7[23];
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = *v7;
        v14 = *(v7 + 1);
      }

      else
      {
        v15 = v7;
      }

      v16 = v33;
      if ((v33 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if ((v33 & 0x80u) != 0)
      {
        v16 = __p[1];
      }

      if (v14 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v19 = &v15[v18];
      if (v18)
      {
        v22 = *v17;
        v20 = v17 + 1;
        v21 = v22;
        v23 = v15;
        v24 = &v15[v18];
        do
        {
          v25 = v23 + 1;
          while (*v23 != v21)
          {
            ++v23;
            ++v25;
            if (v23 == v19)
            {
              goto LABEL_35;
            }
          }

          v26 = (v16 - 1);
          v27 = v20;
          while (v26)
          {
            if (v25 == v19)
            {
              goto LABEL_35;
            }

            v29 = *v25++;
            v28 = v29;
            v30 = *v27++;
            --v26;
            if (v28 != v30)
            {
              goto LABEL_32;
            }
          }

          v24 = v23;
LABEL_32:
          ++v23;
        }

        while (v23 != v19);
      }

      else
      {
        v24 = v15;
      }

LABEL_35:
      v31 = v24 != v19 || v16 == 0;
      if (v31 && v24 == v15 || v13 < *(*(a1 + 16) + 8) && *(a1 + 32) != v13)
      {
        ++v9;
      }

      *(*a3 + 4 * v8++) = v9;
      v7 += 24;
    }

    while (v7 != v6);
  }

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2228BD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2228BD24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228BD2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
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
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t std::optional<std::vector<int>>::operator=[abi:ne200100]<std::vector<int>&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228BD528(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getTokenisation@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a3 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a3[1].__r_.__value_.__l.__data_ = *(a1 + 24);
    a3[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
  }

  a3[2].__r_.__value_.__r.__words[0] = 0;
  a3[2].__r_.__value_.__l.__size_ = 0;
  a3[2].__r_.__value_.__r.__words[2] = 0;
  return std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(&a3[2], *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
}

void sub_2228BD5F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vdeallocate(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *>(__str, a3, v8);
    for (i = *(a1 + 8); i != v12; std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](i))
    {
      i -= 112;
    }

    *(a1 + 8) = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(a1, __str + v11, a3, *(a1 + 8));
  }
}

void std::__optional_storage_base<std::vector<int>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<int>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateUnpaddedE5MLBertInput(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Generate Unpadded E5ML Input", "", &buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Generate Unpadded E5ML Input", &buf, 2u);
  }

  v9 = *(this + 1);
  if (v9 && ((*(*v9 + 24))(v9) & 1) != 0)
  {
    if (*(a2 + 160))
    {
      v10 = (*(a2 + 18) - *(a2 + 17)) >> 2;
      memset(&v48, 0, sizeof(v48));
      std::vector<float>::reserve(&v48, v10);
      v11 = *(a2 + 17);
      if (*(a2 + 18) != v11)
      {
        v12 = 0;
        end = v48.__end_;
        do
        {
          v14 = *(v11 + 4 * v12);
          if (end >= v48.__end_cap_.__value_)
          {
            begin = v48.__begin_;
            v16 = end - v48.__begin_;
            v17 = end - v48.__begin_;
            v18 = v17 + 1;
            if ((v17 + 1) >> 62)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v19 = v48.__end_cap_.__value_ - v48.__begin_;
            if ((v48.__end_cap_.__value_ - v48.__begin_) >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v48, v20);
            }

            v21 = v17;
            v22 = (4 * v17);
            v23 = &v22[-v21];
            *v22 = v14;
            end = (v22 + 1);
            memcpy(v23, begin, v16);
            v24 = v48.__begin_;
            v48.__begin_ = v23;
            v48.__end_ = end;
            v48.__end_cap_.__value_ = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *end++ = v14;
          }

          v48.__end_ = end;
          ++v12;
          v11 = *(a2 + 17);
        }

        while (v12 < (*(a2 + 18) - v11) >> 2);
      }

      if (*(a2 + 128))
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v45, *(a2 + 13), *(a2 + 14), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 14) - *(a2 + 13)) >> 3));
        std::vector<float>::vector[abi:ne200100](v44, v10 * v10);
        v25 = v45;
        if (v46 != v45)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
          v29 = v44[0];
          if (v28 <= 1)
          {
            v28 = 1;
          }

          do
          {
            v30 = *(v25 + 24 * v27);
            v31 = *(v25 + 24 * v27 + 8) - v30;
            if (v31)
            {
              v32 = v31 >> 2;
              if (v32 <= 1)
              {
                v32 = 1;
              }

              do
              {
                v33 = *v30++;
                *(v29 + 4 * v26++) = v33;
                --v32;
              }

              while (v32);
            }

            ++v27;
          }

          while (v27 != v28);
        }

        if (v10 >= 2)
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 0;
          std::vector<float>::vector[abi:ne200100](v43, v10);
          LODWORD(buf.__r_.__value_.__l.__data_) = 1065353216;
          std::vector<float>::vector[abi:ne200100](&v41, v10);
          v34 = v41;
          v35 = v42 - v41;
          if (v42 != v41)
          {
            *v41 = 0;
            if (v10 - 1 < v35 >> 2)
            {
              *&v34[4 * v10 - 4] = 0;
              buf.__r_.__value_.__r.__words[0] = 1;
              buf.__r_.__value_.__l.__size_ = v10;
              memset(v40, 0, sizeof(v40));
              std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v40, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
            }
          }

          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&buf, "expectedSeqLen should be at least 2!");
        std::runtime_error::runtime_error(exception, &buf);
        exception->__vftable = &unk_2835E9238;
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid subwordFeaturePoolingMask2D provided!, E5ML fast_reshape compatible assets require 2D feature pooling mask.");
      std::runtime_error::runtime_error(v38, &buf);
      v38->__vftable = &unk_2835E9238;
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid subword ids provided!");
    std::runtime_error::runtime_error(v37, &buf);
    v37->__vftable = &unk_2835E9238;
  }

  v36 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&buf, "Unpadded input not compatible with available owl asset!");
  std::runtime_error::runtime_error(v36, &buf);
  v36->__vftable = &unk_2835E9238;
}

void sub_2228BE1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (*(v30 - 153) < 0)
  {
    operator delete(*(v28 + 272));
    if ((v27 & 1) == 0)
    {
LABEL_6:
      v32 = *(v28 + 192);
      if (v32)
      {
        *(v28 + 200) = v32;
        operator delete(v32);
      }

      *v29 = v30 - 232;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v30 - 176));
      v33 = *(v28 + 240);
      if (v33)
      {
        *(v28 + 248) = v33;
        operator delete(v33);
      }

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

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateBertInput(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  if ((*(**(this + 1) + 24))(*(this + 1)))
  {

    nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateUnpaddedE5MLBertInput(this, a2);
  }

  if ((*(**(this + 1) + 16))(*(this + 1)))
  {

    nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generatePaddedSubowlBertInput(this, a2);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generatePaddedWholeowlEspressoV1BertInput(this, a2);
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

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

nlv4_inference_orchestrator::inference_engine::BertModuleInputType *nlv4_inference_orchestrator::inference_engine::BertModuleInputType::BertModuleInputType(nlv4_inference_orchestrator::inference_engine::BertModuleInputType *this, const nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 48, a2 + 48);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 104, a2 + 104);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 160, a2 + 160);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 216, a2 + 216);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 272, a2 + 272);
  std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](this + 328, a2 + 328);
  return this;
}

void sub_2228BE670(_Unwind_Exception *a1)
{
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(v1 + 272);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(v1 + 216);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(v1 + 160);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(v1 + 104);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(v1 + 48);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v1);
  _Unwind_Resume(a1);
}

void sub_2228BE6D4()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2228BE6C4);
}

uint64_t std::__optional_copy_base<snlp::common::tensor::InferenceTensor,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_2228BE76C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (*(v1 + 48) == 1)
  {
    itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v1);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::reshapeStream(nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 88, this + 98))
  {
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 88, this + 98);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](buf, (v5 + 5));
    if (v11 == 1)
    {
      v12[0] = 1;
      v12[1] = a2;
      memset(__p, 0, 24);
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v12, v13, 2uLL);
    }

    v7 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "Could not reshape because the relevant dimensions could not be read from the config.", __p, 2u);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  }

  else
  {
    v6 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "Could not reshape because the relevant dimensions could not be found in the config.", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2228BEE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = a19;
  a19 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  E5RT::TensorDataType::~TensorDataType((v20 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a15);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::setInputTensors(const void **this, nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = std::string::basic_string[abi:ne200100]<0>(&__p, "tokens");
  nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v4, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 47, a2);
  v5 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "OWL";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-owl]: ";
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[%s] %sDone setting utteranceTokens", &__p, 0x16u);
  }

  if (*(a2 + 264))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&__p, "tokensTypeIds");
    nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v6, a2 + 27, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 264))
    {
      snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 107, a2 + 216);
      v7 = SNLPOSLoggerForCategory(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "OWL";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-owl]: ";
        _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] %sDone setting tokenTypeIds", &__p, 0x16u);
      }

      if (*(a2 + 320))
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(&__p, "excludeSpecialTokensMask");
        nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v8, a2 + 34, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(a2 + 320))
        {
          snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 110, a2 + 272);
          v9 = SNLPOSLoggerForCategory(5);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "OWL";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-owl]: ";
            _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] %sDone setting excludeSpecialTokensMask", &__p, 0x16u);
          }

          if (*(a2 + 376) == 1 && *(a2 + 44) != *(a2 + 45))
          {
            v10 = std::string::basic_string[abi:ne200100]<0>(&__p, "seqLen");
            nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v10, a2 + 41, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (*(a2 + 376))
            {
              v18 = 0;
              v19 = 0;
              v20 = 0;
              std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v18, *(a2 + 41), *(a2 + 42), (*(a2 + 42) - *(a2 + 41)) >> 3);
              v21 = 0;
              v22 = 0;
              v23 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v21, *(a2 + 44), *(a2 + 45), (*(a2 + 45) - *(a2 + 44)) >> 2);
              nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::setSeqLen(this, &v18);
              if (v21)
              {
                v22 = v21;
                operator delete(v21);
              }

              if (v18)
              {
                v19 = v18;
                operator delete(v18);
              }

              v11 = SNLPOSLoggerForCategory(5);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                *(__p.__r_.__value_.__r.__words + 4) = "OWL";
                WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-owl]: ";
                _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] %sDone setting seqLen", &__p, 0x16u);
              }

              if (*(a2 + 208))
              {
                v12 = std::string::basic_string[abi:ne200100]<0>(&__p, "featurPoolingMask2D");
                nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v12, a2 + 20, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (*(a2 + 208))
                {
                  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput((this + 54), this + 26, a2 + 160);
                  v13 = SNLPOSLoggerForCategory(5);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                    *(__p.__r_.__value_.__r.__words + 4) = "OWL";
                    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                    *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-owl]: ";
                    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "[%s] %sDone setting featurePoolingMask2D", &__p, 0x16u);
                  }

                  if (*(a2 + 376))
                  {
                    nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::setPositionEmbeddings(this, **(a2 + 44));
                  }

                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                std::__throw_bad_optional_access[abi:ne200100]();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::string::basic_string[abi:ne200100]<0>(&__p, "Received invalid tensor for featurePoolingMask2D input!");
              std::runtime_error::runtime_error(exception, &__p);
              exception->__vftable = &unk_2835E9238;
            }

            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v14 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&__p, "Received invalid tensor for sequence length input!");
          std::runtime_error::runtime_error(v14, &__p);
          v14->__vftable = &unk_2835E9238;
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Received invalid tensor for excludeSpecialTokensMask input!");
      std::runtime_error::runtime_error(v16, &__p);
      v16->__vftable = &unk_2835E9238;
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v15 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Received invalid tensor for tokenTypeIds input!");
  std::runtime_error::runtime_error(v15, &__p);
  v15->__vftable = &unk_2835E9238;
}

void sub_2228BF5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
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

uint64_t nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(uint64_t a1, unint64_t **a2, uint64_t **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      std::to_string(&__p, *v5);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ",", 1);
      ++v5;
    }

    while (v5 != v6);
  }

  v9 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a3 + 23);
    v11 = *a3;
    std::stringbuf::str();
    v12 = (v10 >= 0 ? a3 : v11);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315394;
    v25 = v12;
    v26 = 2080;
    v27 = v13;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "shape of %s : %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v18[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v14;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC4C10](&v23);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228BF954(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::setSeqLen(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 == *(a2 + 32) || (v4 = *(a1 + 952), v4 > *v2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Sequence length input tensor invalid!");
    std::runtime_error::runtime_error(exception, &v7);
    exception->__vftable = &unk_2835E9238;
  }

  *v2 = *v2 - v4;
  v5 = a1 + 432;

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(v5, (a1 + 832), a2);
}

void sub_2228BFA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::setPositionEmbeddings(const void **this, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 1))(this, this + 784);
  v5 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEFAULT, "query seqLen = %zu, hiddenDim=%lu", buf, 0x16u);
  }

  v6 = v4 * a2;
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&__dst, v4 * a2);
  v7 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEFAULT, "copying part of trimmed position embeddings.", buf, 2u);
  }

  if (v6)
  {
    memmove(__dst, this[116], 4 * v6);
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(buf, "FullPositionEmbeddings");
  nlv4_inference_orchestrator::inference_engine::BertModule::logTensorShape(v8, this + 113, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  __p[0] = 1;
  __p[1] = a2;
  __p[2] = v4;
  memset(buf, 0, sizeof(buf));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, __p, buf, 3uLL);
}

void sub_2228BFCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFME5MLModule::getOutputs(const void **this@<X0>, void *a2@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 57, &v9);
  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v3, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_, (v9.__r_.__value_.__l.__size_ - v9.__r_.__value_.__r.__words[0]) >> 3);
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v10, v11, (v11 - v10) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, v3, v4, (v4 - v3) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), __p, v7, (v7 - __p) >> 2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v9.__r_.__value_.__r.__words[0])
  {
    v9.__r_.__value_.__l.__size_ = v9.__r_.__value_.__r.__words[0];
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2228BFE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&__p);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784B6770, MEMORY[0x277D825F8]);
}

itfm_inference_orchestrator::orchestration::ITFMOrchestrator *itfm_inference_orchestrator::orchestration::ITFMOrchestrator::addHypothesesToResponse(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *result, uint64_t a2, _DWORD **a3)
{
  if (*(*a3 + 1))
  {
    v4 = result;
    sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v9);
    v5 = v13;
    v13 |= 1u;
    v11 = 0;
    v6 = *a3[3];
    v13 = v5 | 3;
    v12 = v6;
    itfm_inference_orchestrator::orchestration::ITFMOrchestrator::getLabelStringFromTargetVocabulary(v4, 0, &__str);
    if (v8 == 1)
    {
      sirinluinternalitfm::ITFMHypothesis::makeStringLabel(v9);
      std::string::operator=(v10, &__str);
    }

    operator new();
  }

  return result;
}

void sub_2228C00EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  (*(*v20 + 8))(v20);
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC32C0](&a18);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::getLabelStringFromTargetVocabulary(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  v5 = *(this + 1);
  if (v5)
  {
    itfm_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(v5, a2, &__p);
    *a3 = __p;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_3;
  }

  v7 = *(this + 12);
  if (v7 != 4)
  {
    if (v7 == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v19 = 0;
      if (a2 <= 1)
      {
        v16 = a2;
        itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForSNLCOutputClass(&v16, &v17);
LABEL_10:
        __p = v17;
        v19 = 1;
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v8 = SNLPOSLoggerForCategory(2);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v9 = *(this + 12);
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 != 4)
        {
          v10 = "LVC";
LABEL_24:
          v11 = "LVC";
          goto LABEL_40;
        }

        v10 = "PSC";
LABEL_35:
        v11 = "PSC";
        goto LABEL_40;
      }

      if (v9 == 6)
      {
        v10 = "SSU";
        goto LABEL_39;
      }

      if (v9 == 7)
      {
        v10 = "UNKNOWN";
        goto LABEL_31;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v10 = "UaaP";
          goto LABEL_27;
        }

        v10 = "OWL";
LABEL_37:
        v11 = "OWL";
        goto LABEL_40;
      }

      if (!v9)
      {
        v10 = "NLv4";
LABEL_33:
        v11 = v10;
        goto LABEL_40;
      }

      if (v9 == 1)
      {
        v10 = "SNLC";
LABEL_20:
        v11 = "SNLC";
LABEL_40:
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v10;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v11;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "[%s] Could not find output label mapping for component %s", &__p, 0x16u);
        goto LABEL_3;
      }
    }

    v12 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v9;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &__p, 0x16u);
    }

    v13 = *(this + 12);
    v10 = "<UNDEFINED_COMPONENT>";
    if (v13 <= 3)
    {
      if (v13 <= 1)
      {
        if (!v13)
        {
          v11 = "NLv4";
          goto LABEL_40;
        }

        if (v13 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_55;
      }

      if (v13 != 2)
      {
LABEL_27:
        v11 = "UaaP";
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v13 <= 5)
    {
      if (v13 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }

    if (v13 != 6)
    {
      if (v13 != 7)
      {
LABEL_55:
        v14 = SNLPOSLoggerForCategory(4);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        v11 = "<UNDEFINED_COMPONENT>";
        if (!v15)
        {
          goto LABEL_40;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v13;
        _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &__p, 0x16u);
        goto LABEL_33;
      }

LABEL_31:
      v11 = "UNKNOWN";
      goto LABEL_40;
    }

LABEL_39:
    v11 = "SSU";
    goto LABEL_40;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v19 = 0;
  if (a2 <= 1)
  {
    v16 = a2;
    itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForPSCOutputClass(&v16, &v17);
    goto LABEL_10;
  }

LABEL_11:
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a3, &__p);
  if (v19 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sirinluinternalitfm::ITFMHypothesis::makeStringLabel(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void itfm_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(itfm_inference_orchestrator::vocabulary::Vocabulary *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 16);
  v3 = this + 128;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 4) > a2)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Encountered unknown token ID");
    __cxa_throw(exception, off_2784B6760, MEMORY[0x277D825E0]);
  }

  if (v6[63] < 0)
  {
    v11 = *(v6 + 5);
    v12 = *(v6 + 6);

    std::string::__init_copy_ctor_external(a3, v11, v12);
  }

  else
  {
    v10 = *(v6 + 40);
    a3->__r_.__value_.__r.__words[2] = *(v6 + 7);
    *&a3->__r_.__value_.__l.__data_ = v10;
  }
}

uint64_t std::__split_buffer<std::unique_ptr<sirinluexternal::UserDialogAct>>::~__split_buffer(uint64_t a1)
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

uint64_t std::optional<sirinluinternalitfm::ITFMParserResponse>::operator=[abi:ne200100]<sirinluinternalitfm::ITFMParserResponse,void>(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    sirinluinternalitfm::ITFMParserResponse::operator=();
  }

  else
  {
    MEMORY[0x223DC32E0]();
    *(a1 + 56) = 1;
  }

  return a1;
}

uint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForSNLCOutputClass@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  LODWORD(v29.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29.__r_.__value_.__s.__data_[8], "Server");
  v30 = 1;
  std::string::basic_string[abi:ne200100]<0>(v31, "Device");
  v24 = a1;
  v3 = 0;
  *__p = 0u;
  v27 = 0u;
  v28 = 1065353216;
  do
  {
    v4 = *(&v29.__r_.__value_.__l.__data_ + v3);
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v5 = vcnt_s8(__p[1]);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(&v29.__r_.__value_.__l.__data_ + v3);
      if (__p[1] <= v4)
      {
        v6 = v4 % __p[1];
      }
    }

    else
    {
      v6 = (__p[1] - 1) & v4;
    }

    v7 = *(__p[0] + v6);
    if (!v7 || (v8 = *v7) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v9 = v8[1];
      if (v9 == v4)
      {
        break;
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= __p[1])
        {
          v9 %= __p[1];
        }
      }

      else
      {
        v9 &= __p[1] - 1;
      }

      if (v9 != v6)
      {
        goto LABEL_18;
      }

LABEL_17:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if (*(v8 + 4) != v4)
    {
      goto LABEL_17;
    }

    v3 += 32;
  }

  while (v3 != 64);
  for (i = 0; i != -64; i -= 32)
  {
    if (v31[i + 23] < 0)
    {
      operator delete(*&v31[i]);
    }
  }

  v11 = *v24;
  v12 = vcnt_s8(__p[1]);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = *v24;
    if (__p[1] <= v11)
    {
      v13 = v11 % __p[1];
    }
  }

  else
  {
    v13 = (__p[1] - 1) & v11;
  }

  v14 = *(__p[0] + v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v25, *v24);
    v18 = std::string::insert(&v25, 0, "Failed to find the string representation of the SNLC output class: ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  while (2)
  {
    v16 = v15[1];
    if (v16 != v11)
    {
      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= __p[1])
        {
          v16 %= __p[1];
        }
      }

      else
      {
        v16 &= __p[1] - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (*(v15 + 4) != v11)
    {
LABEL_38:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  if (*(v15 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v15[3], v15[4]);
  }

  else
  {
    v20 = *(v15 + 3);
    a2->__r_.__value_.__r.__words[2] = v15[5];
    *&a2->__r_.__value_.__l.__data_ = v20;
  }

  result = std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(__p);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

PB::Writer **std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](PB::Writer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    PB::Writer::~Writer(v2);
    MEMORY[0x223DC4D00]();
  }

  return a1;
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderE5MLModule::getOutputs(const void **this@<X0>, void *a2@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 62, &v7);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 59, &v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_, (v7.__r_.__value_.__l.__size_ - v7.__r_.__value_.__r.__words[0]) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), v8, v9, (v9 - v8) >> 2);
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 6), v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_, (v4.__r_.__value_.__l.__size_ - v4.__r_.__value_.__r.__words[0]) >> 3);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 9), __p, v6, (v6 - __p) >> 2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4.__r_.__value_.__r.__words[0])
  {
    v4.__r_.__value_.__l.__size_ = v4.__r_.__value_.__r.__words[0];
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v7.__r_.__value_.__r.__words[0])
  {
    v7.__r_.__value_.__l.__size_ = v7.__r_.__value_.__r.__words[0];
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2228C1020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = v16;
  v19 = *v17;
  if (*v17)
  {
    *(v15 + 7) = v19;
    operator delete(v19);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v15);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::getNetworkConfig(uint64_t a1, const void **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 248), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 248), a2);
    if (!v4)
    {
      goto LABEL_31;
    }

    if (*(v4 + 16) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 248), a2);
      if (v5)
      {
        if (*(v5 + 16) != 1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        result = *(v5 + 10);
        goto LABEL_29;
      }

LABEL_31:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "component_name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 248), __p);
  if (v7 && *(v7 + 16) == 4)
  {
    if (*(v7 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v7[5], v7[6]);
    }

    else
    {
      v17 = *(v7 + 5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "UNDEFINED_COMPONENT");
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+<char>();
  v8 = std::string::append(&v16, ".\n");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v20, "Note that only parameters of unsigned integer type are currently expected by NLv4Parser.  This issue will likely cause NLv4 parser inference to fail.");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    v14 = __p;
    if (v19 < 0)
    {
      v14 = __p[0];
    }

    LODWORD(v20.__r_.__value_.__l.__data_) = 136315394;
    *(v20.__r_.__value_.__r.__words + 4) = v13;
    WORD2(v20.__r_.__value_.__r.__words[1]) = 2080;
    *(&v20.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", &v20, 0x16u);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  result = 0;
LABEL_29:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228C12DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t result, int a2, const char *a3, const char *a4)
{
  *result = &unk_2835E2058;
  *(result + 136) = a2;
  v4 = result + 8;
  switch(a2)
  {
    case 0:
      for (i = 0; i != 23; ++i)
      {
        *(v4 + i) = aUninitializedE[i];
      }

      v6 = (result + 31);
      goto LABEL_119;
    case 1:
      for (j = 0; j != 25; ++j)
      {
        *(v4 + j) = aUnknownDerived[j];
      }

      v6 = (result + 33);
      goto LABEL_119;
    case 2:
      for (k = 0; k != 18; ++k)
      {
        *(v4 + k) = aUnregisteredCl[k];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        return result;
      }

      v18 = 0;
      *(result + 26) = 2108704;
      v15 = 127;
      while (a3[v18])
      {
        *(result + 29 + v18) = a3[v18];
        v11 = v18++ == 105;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = (v18 + 21);
      goto LABEL_111;
    case 3:
      for (m = 0; m != 17; ++m)
      {
        *(v4 + m) = aInvalidSignatu[m];
      }

      goto LABEL_84;
    case 4:
      for (n = 0; n != 19; ++n)
      {
        *(v4 + n) = aUnsupportedVer[n];
      }

      goto LABEL_28;
    case 5:
      for (ii = 0; ii != 16; ++ii)
      {
        *(v4 + ii) = aPointerConflic[ii];
      }

      v6 = (result + 24);
      goto LABEL_119;
    case 6:
      for (jj = 0; jj != 26; ++jj)
      {
        *(v4 + jj) = aIncompatibleNa[jj];
      }

      *(result + 34) = 0;
      if (!a3)
      {
        return result;
      }

      v27 = 0;
      *(result + 34) = 2108704;
      v15 = 127;
      while (a3[v27])
      {
        *(result + 37 + v27) = a3[v27];
        v11 = v27++ == 97;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v27 + 29;
      goto LABEL_111;
    case 7:
      for (kk = 0; kk != 20; ++kk)
      {
        *(v4 + kk) = aArraySizeTooSh[kk];
      }

      v6 = (result + 28);
      goto LABEL_119;
    case 8:
      for (mm = 0; mm != 18; ++mm)
      {
        *(v4 + mm) = aInputStreamErr[mm];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        if (!a4)
        {
          return result;
        }

        v25 = 18;
        goto LABEL_115;
      }

      v35 = 0;
      *(result + 26) = 45;
      while (a3[v35])
      {
        *(result + 27 + v35) = a3[v35];
        v11 = v35++ == 107;
        if (v11)
        {
          v25 = 127;
          goto LABEL_113;
        }
      }

      v25 = v35 + 19;
LABEL_113:
      *(v4 + v25) = 0;
      if (!a4)
      {
        return result;
      }

      if (v25 > 0x7E)
      {
        goto LABEL_117;
      }

LABEL_115:
      v44 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
        goto LABEL_116;
      }

      *(v4 + ++v25) = 0;
      if (v44 <= 0x7D)
      {
        v42 = v44 + 9;
        do
        {
          v45 = *a4;
          if (!*a4)
          {
            goto LABEL_135;
          }

          ++a4;
          *(result + v42) = v45;
          v11 = v42++ == 134;
        }

        while (!v11);
LABEL_126:
        v25 = 127;
      }

      goto LABEL_118;
    case 9:
      for (nn = 0; nn != 19; ++nn)
      {
        *(v4 + nn) = aClassNameTooLo[nn];
      }

LABEL_28:
      v6 = (result + 27);
      goto LABEL_119;
    case 10:
      v28 = 0;
      do
      {
        *(v4 + v28) = aUnregisteredVo[v28];
        v29 = v28 + 1;
        v28 = v29;
      }

      while (v29 != 23);
      *(result + 31) = 0;
      v30 = "?";
      if (a3)
      {
        v31 = a3;
      }

      else
      {
        v31 = "?";
      }

      LODWORD(v32) = 25;
      while (1)
      {
        v33 = *v31;
        if (!*v31)
        {
          break;
        }

        ++v31;
        *(v4 + v29) = v33;
        LODWORD(v32) = v32 + 1;
        if (++v29 == 127)
        {
          *(result + 135) = 0;
LABEL_91:
          LODWORD(v29) = 127;
          goto LABEL_92;
        }
      }

      *(v4 + v29) = 0;
      if (v29 > 0x7E)
      {
LABEL_92:
        *(v4 + v29) = 0;
        LODWORD(v32) = v29;
        goto LABEL_93;
      }

      v37 = 0;
      v38 = v29;
      v39 = "<-";
      while (v37 != -2)
      {
        v40 = *v39++;
        *(v4 + v38) = v40;
        --v37;
        if (++v38 == 127)
        {
          goto LABEL_91;
        }
      }

      *(v4 + v38) = 0;
      if (v38 <= 0x7E)
      {
        v32 = (v29 + 2);
        if (a4)
        {
          v30 = a4;
        }

        v46 = (result + v32 + 8);
        v47 = v32 + 1;
        while (1)
        {
          v48 = *v30;
          if (!*v30)
          {
            break;
          }

          ++v30;
          *v46++ = v48;
          LODWORD(v32) = v32 + 1;
          v11 = v47++ == 127;
          if (v11)
          {
            LODWORD(v32) = 127;
            break;
          }
        }
      }

LABEL_93:
      v6 = (v4 + v32);
      goto LABEL_119;
    case 11:
      for (i1 = 0; i1 != 14; ++i1)
      {
        *(v4 + i1) = aClassVersion[i1];
      }

      v8 = 0;
      *(result + 22) = 0;
      if (a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = "<unknown class>";
      }

      v10 = 127;
      while (v9[v8])
      {
        *(result + 22 + v8) = v9[v8];
        v11 = v8++ == 112;
        if (v11)
        {
          goto LABEL_86;
        }
      }

      v10 = v8 + 14;
LABEL_86:
      v6 = (v4 + v10);
      goto LABEL_119;
    case 12:
      for (i2 = 0; i2 != 41; ++i2)
      {
        *(v4 + i2) = aCodeInstantiat[i2];
      }

      *(result + 49) = 0;
      if (!a3)
      {
        return result;
      }

      v14 = 0;
      *(result + 49) = 2108704;
      v15 = 127;
      while (a3[v14])
      {
        *(result + 52 + v14) = a3[v14];
        v11 = v14++ == 82;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v14 + 44;
LABEL_111:
      v6 = (v4 + v15);
      goto LABEL_119;
    case 13:
      for (i3 = 0; i3 != 19; ++i3)
      {
        *(v4 + i3) = aOutputStreamEr[i3];
      }

      *(result + 27) = 0;
      if (a3)
      {
        v24 = 0;
        *(result + 27) = 45;
        while (a3[v24])
        {
          *(result + 28 + v24) = a3[v24];
          v11 = v24++ == 106;
          if (v11)
          {
            v25 = 127;
            goto LABEL_101;
          }
        }

        v25 = v24 + 20;
LABEL_101:
        *(v4 + v25) = 0;
        if (!a4)
        {
          return result;
        }

        if (v25 > 0x7E)
        {
LABEL_117:
          *(v4 + v25) = 0;
          goto LABEL_118;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v25 = 19;
      }

      v41 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
LABEL_116:
        v25 = 127;
        goto LABEL_117;
      }

      *(v4 + ++v25) = 0;
      if (v41 > 0x7D)
      {
        goto LABEL_118;
      }

      v42 = v41 + 9;
      while (1)
      {
        v43 = *a4;
        if (!*a4)
        {
          break;
        }

        ++a4;
        *(result + v42) = v43;
        v11 = v42++ == 134;
        if (v11)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      v25 = v42 - 8;
LABEL_118:
      v6 = (v4 + v25);
LABEL_119:
      *v6 = 0;
      return result;
    default:
      for (i4 = 0; i4 != 17; ++i4)
      {
        *(v4 + i4) = aProgrammingErr[i4];
      }

LABEL_84:
      v6 = (result + 25);
      goto LABEL_119;
  }
}

__n128 boost::archive::archive_exception::archive_exception(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E2058;
  *(a1 + 136) = *(a2 + 136);
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = result;
  return result;
}

void boost::archive::archive_exception::~archive_exception(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void *boost::archive::detail::basic_iarchive_impl::load_preamble(void *result, uint64_t a2, _BYTE *a3)
{
  if ((a3[21] & 1) == 0)
  {
    v5 = result;
    if ((*(**a3 + 24))())
    {
      HIWORD(v6) = 0;
      (*(*a2 + 24))(a2, &v6 + 6);
      (*(*a2 + 40))(a2, a3 + 20);
      result = (**a2)(a2, (a3 + 16));
    }

    else
    {
      a3[20] = (*(**a3 + 32))(*a3, *(v5 + 1));
      result = (*(**a3 + 40))(&v6);
      *(a3 + 4) = v6;
    }

    a3[21] = 1;
  }

  return result;
}

BOOL boost::archive::detail::basic_iarchive_impl::track(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  (*(*a2 + 8))(a2, &v9);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 16) - v5) >> 4;
  v7 = v9;
  if (v9 < v6)
  {
    *a3 = *(v5 + 16 * v9);
  }

  return v7 >= v6;
}

boost::archive::detail::basic_iarchive *boost::archive::detail::basic_iarchive::basic_iarchive(boost::archive::detail::basic_iarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2835E20A8;
  v4 = operator new(0x78uLL);
  boost::archive::BOOST_ARCHIVE_VERSION(v4);
  *(v4 + 1) = a2;
  *(v4 + 8) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 37) = 0;
  *(v4 + 6) = v4 + 56;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 100) = 0u;
  *(this + 4) = v4;
  return this;
}

void sub_2228C20C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v10);
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_iarchive::~basic_iarchive(boost::archive::detail::basic_iarchive *this)
{
  *this = &unk_2835E20A8;
  v1 = (this + 8);
  boost::scoped_ptr<boost::archive::detail::basic_iarchive_impl>::~scoped_ptr(this + 4);
  v2 = v1;
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t boost::archive::detail::basic_iarchive_impl::load_object(boost::archive::detail::basic_iarchive_impl *this, boost::archive::detail::basic_iarchive *a2, unint64_t a3, const boost::archive::detail::basic_iserializer *a4)
{
  v5 = a3;
  v20 = a3;
  *(this + 44) = 0;
  if (*(this + 6) != __PAIR128__(a4, a3))
  {
    v8 = *(this + 8);
    v23 = a4;
    v24 = v8;
    v9 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>(this + 6, &v23, &v23);
    if (v10)
    {
      v21 = a4;
      v22[0] = 0;
      *(v22 + 6) = 0;
      std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100](this + 9, &v21);
    }

    v11 = *(v9 + 20);
    v12 = *(this + 9) + 24 * v11;
    *(v12 + 8) = *(a4 + 2);
    boost::archive::detail::basic_iarchive_impl::load_preamble(this, a2, v12);
    v13 = *(this + 8);
    v14 = *(v12 + 20);
    v15 = (*(this + 2) - *(this + 1)) >> 4;
    *(this + 8) = v15;
    if (v14 == 1)
    {
      result = boost::archive::detail::basic_iarchive_impl::track(this, a2, &v20);
      if ((result & 1) == 0)
      {
LABEL_12:
        *(this + 8) = v13;
        goto LABEL_13;
      }

      v5 = v20;
      v21 = v20;
      LOBYTE(v22[0]) = 0;
      WORD1(v22[0]) = v11;
      v16 = *(this + 2);
      if (v16 >= *(this + 3))
      {
        v18 = std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::aobject>(this + 1, &v21);
      }

      else
      {
        v17 = v21;
        *(v16 + 8) = v22[0];
        *v16 = v17;
        *(v16 + 10) = v11;
        v18 = v16 + 16;
      }

      *(this + 2) = v18;
      *(this + 9) = (v18 - *(this + 1)) >> 4;
    }

    result = (*(*a4 + 16))(a4, a2, v5, *(v12 + 16));
    *(this + 10) = v15;
    goto LABEL_12;
  }

  result = (*(*a4 + 16))(a4, a2, a3, *(this + 28));
LABEL_13:
  *(this + 44) = 0;
  return result;
}

void sub_2228C235C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  *(v1 + 44) = 0;
  _Unwind_Resume(a1);
}

void std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 3;
        boost::detail::shared_count::~shared_count(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::aobject>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::aobject>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  __p = v8;
  v14 = v9;
  v16 = &v8[16 * v7];
  v10 = *a2;
  v9[8] = *(a2 + 8);
  *v9 = v10;
  *(v9 + 5) = *(a2 + 5);
  v15 = v9 + 16;
  std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  if (v15 != v14)
  {
    v15 += (v14 - v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2228C250C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *v5 = v6;
      *(v5 + 10) = *(v2 + 5);
      v2 += 2;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::aobject>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

void boost::serialization::throw_exception<boost::archive::archive_exception>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x90uLL);
  boost::archive::archive_exception::archive_exception(exception, a1);
}

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::cobject_id>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 20) = *(a2 + 20);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void *std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!boost::serialization::extended_type_info::operator<(*(*a3 + 8), *(v4[4] + 8)))
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

      if (!boost::serialization::extended_type_info::operator<(*(v7[4] + 8), *(*a3 + 8)))
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

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::cobject_id>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::cobject_id>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  __p = v7;
  v12 = v8;
  v14 = &v7[24 * v6];
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 16);
  *(v8 + 10) = *(a2 + 20);
  v13 = v8 + 24;
  std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 24) % 0x18uLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2228C2920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 20) = *(v5 + 20);
      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t *boost::scoped_ptr<boost::archive::detail::basic_iarchive_impl>::~scoped_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(v2 + 48, *(v2 + 56));
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    operator delete(v2);
  }

  return a1;
}

boost::archive::detail::basic_oarchive *boost::archive::detail::basic_oarchive::basic_oarchive(boost::archive::detail::basic_oarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2835E2218;
  v4 = operator new(0x60uLL);
  *v4 = a2;
  v4[2] = 0;
  v4[1] = v4 + 2;
  v4[5] = 0;
  v4[3] = 0;
  v4[4] = v4 + 5;
  v4[8] = 0;
  v4[6] = 0;
  v4[7] = v4 + 8;
  v4[10] = 0;
  v4[11] = 0;
  v4[9] = 0;
  *(this + 4) = v4;
  return this;
}

void sub_2228C2AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_oarchive::~basic_oarchive(boost::archive::detail::basic_oarchive *this)
{
  *this = &unk_2835E2218;
  v1 = (this + 8);
  boost::scoped_ptr<boost::archive::detail::basic_oarchive_impl>::~scoped_ptr(this + 4);
  v2 = v1;
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t boost::archive::detail::basic_oarchive_impl::save_object(boost::archive::detail::basic_oarchive_impl *this, boost::archive::detail::basic_oarchive *a2, unint64_t a3, const boost::archive::detail::basic_oserializer *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(this + 5) == __PAIR128__(a4, a3))
  {
    v23 = *(*a4 + 16);
    v24 = *MEMORY[0x277D85DE8];
    v25 = *a4 + 16;

    return v23(a4);
  }

  else
  {
    v8 = *(this + 6);
    v29 = a4;
    v30 = v8;
    v31 = 0;
    v9 = std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>(this + 4, &v29, &v29);
    if ((*(*a4 + 24))(a4) && (*(v9 + 42) & 1) == 0)
    {
      LOWORD(v29) = *(v9 + 20);
      (*(*a2 + 32))(a2, &v29);
      LOBYTE(v29) = (*(*a4 + 32))(a4, *this);
      (*(*a2 + 56))(a2, &v29);
      (*(*a4 + 40))(&v29, a4);
      (**a2)(a2, &v29);
      *(v9 + 42) = 1;
    }

    if ((*(*a4 + 32))(a4, *this))
    {
      v10 = *(this + 3);
      v11 = *(v9 + 20);
      v26 = a3;
      v27 = v11;
      v28 = v10;
      v12 = *(std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::aobject,boost::archive::detail::basic_oarchive_impl::aobject const&>(this + 1, &v26, &v26) + 11);
      if (v13)
      {
        LODWORD(v29) = v12;
        (*(*a2 + 8))(a2, &v29);
        result = (*(*a4 + 16))(a4, a2, a3);
      }

      else
      {
        v17 = *(this + 8);
        v16 = this + 64;
        v15 = v17;
        if (v17)
        {
          v18 = v16;
          do
          {
            v19 = *(v15 + 7);
            v20 = v19 >= v12;
            v21 = v19 < v12;
            if (v20)
            {
              v18 = v15;
            }

            v15 = *&v15[8 * v21];
          }

          while (v15);
          if (v18 != v16 && v12 >= *(v18 + 7))
          {
            boost::archive::archive_exception::archive_exception(&v29, 5, 0, 0);
            boost::serialization::throw_exception<boost::archive::archive_exception>(&v29);
          }
        }

        LODWORD(v29) = v12;
        result = (*(*a2 + 16))(a2, &v29);
      }
    }

    else
    {
      result = (*(*a4 + 16))(a4, a2, a3);
    }

    v22 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void *std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::aobject,boost::archive::detail::basic_oarchive_impl::aobject const&>(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__find_equal<boost::archive::detail::basic_oarchive_impl::aobject>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 11) = *(a3 + 12);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t *std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__find_equal<boost::archive::detail::basic_oarchive_impl::aobject>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 4);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v6 <= v9)
      {
        v10 = *(v8 + 20);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void *std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 42) = *(a3 + 10);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void ***boost::scoped_ptr<boost::archive::detail::basic_oarchive_impl>::~scoped_ptr(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 7), v2[8]);
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 4), v2[5]);
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 1), v2[2]);
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &unk_2835E2320;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::istream::sync();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

void sub_2228C36D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver(v14);
  std::locale::~locale((v12 + 56));
  MEMORY[0x223DC4BC0](v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(uint64_t a1)
{
  boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver((a1 + 64));
  std::locale::~locale((a1 + 56));
  MEMORY[0x223DC4BC0](a1 + 40);
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

void boost::archive::codecvt_null<char>::~codecvt_null()
{
  v0 = MEMORY[0x223DC4BC0]();

  operator delete(v0);
}

std::locale *boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver(std::locale *a1)
{
  locale = a1->__locale_;
  std::istream::sync();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &unk_2835E2320;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::ostream::flush();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

void sub_2228C3AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver(v14);
  std::locale::~locale((v12 + 56));
  MEMORY[0x223DC4BC0](v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(uint64_t a1)
{
  if (!MEMORY[0x223DC4CB0]())
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
    (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(&v4);
    std::ostream::put();
    std::ostream::flush();
  }

  boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver((a1 + 64));
  std::locale::~locale((a1 + 56));
  MEMORY[0x223DC4BC0](a1 + 40);
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::put(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v1 = *MEMORY[0x277D85DE8];

  return std::ostream::put();
}

std::locale *boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver(std::locale *a1)
{
  locale = a1->__locale_;
  std::ostream::flush();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

void boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load(void *a1, std::string *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  __n = 0;
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned long>(a1, &__n);
  std::string::resize(a2, __n, 0);
  v4 = __n;
  if (__n)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    if ((*(**a1 + 64))(*a1, v5, __n) != v4)
    {
      boost::archive::archive_exception::archive_exception(v8, 8, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v8);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned long>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 8);
  if (result != 8)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::init(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0;
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>(a1, &v5);
  if (v5 != 4)
  {
    boost::archive::archive_exception::archive_exception(v6, 6, "size of int", 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>(a1, &v5);
  if (v5 != 8)
  {
    boost::archive::archive_exception::archive_exception(v6, 6, "size of long", 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>(a1, &v5);
  if (v5 != 4)
  {
    boost::archive::archive_exception::archive_exception(v6, 6, "size of float", 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>(a1, &v5);
  if (v5 != 8)
  {
    boost::archive::archive_exception::archive_exception(v6, 6, "size of double", 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  v4 = 0;
  result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<int>(a1, &v4);
  if (v4 != 1)
  {
    boost::archive::archive_exception::archive_exception(v6, 6, "endian setting", 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 1);
  if (result != 1)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<int>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

std::locale *boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::basic_binary_iprimitive(std::locale *a1, const std::locale *a2, char a3)
{
  v6 = &a1[1];
  a1[2].__locale_ = 0;
  a1->__locale_ = a2;
  a1[1].__locale_ = &unk_2835E2320;
  a1[3].__locale_ = a2;
  std::locale::locale(a1 + 4, a2 + 1);
  std::locale::locale(&v11, a2 + 1);
  v7 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor(a1 + 5, &v11, v6, v7);
  std::locale::~locale(&v11);
  if ((a3 & 1) == 0)
  {
    (*(*a1->__locale_ + 48))();
    locale = a1->__locale_;
    (*(*a1->__locale_ + 16))(a1->__locale_, a1 + 5);
    std::locale::locale(&v10, locale + 1);
    std::locale::operator=(locale + 1, a1 + 5);
    std::locale::~locale(&v10);
  }

  return a1;
}

void sub_2228C43EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v11 + 5);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(v12);
  MEMORY[0x223DC4BC0](v10);
  _Unwind_Resume(a1);
}

std::locale *boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(std::locale *a1)
{
  std::locale::~locale(a1 + 5);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(a1 + 3);
  MEMORY[0x223DC4BC0](&a1[1]);
  return a1;
}

uint64_t boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(uint64_t a1, _WORD *a2)
{
  boost::archive::detail::basic_iarchive::get_library_version(a1, &v6);
  if (v6 >= 8u)
  {
    return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::class_id_type>((a1 + 40), a2);
  }

  v5 = 0;
  result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<short>((a1 + 40), &v5);
  *a2 = v5;
  return result;
}

uint64_t boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(uint64_t a1, _DWORD *a2)
{
  boost::archive::detail::basic_iarchive::get_library_version(a1, &v10);
  if (v10 >= 8u)
  {
    return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::version_type>((a1 + 40), a2);
  }

  if (v10 == 7)
  {
    v9 = 0;
    result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>((a1 + 40), &v9);
    v5 = v9;
  }

  else if (v10 < 6u)
  {
    if (v10 < 3u)
    {
      v6 = 0;
      result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned int>((a1 + 40), &v6);
      v5 = v6;
    }

    else
    {
      v7 = 0;
      result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned char>((a1 + 40), &v7);
      v5 = v7;
    }
  }

  else
  {
    v8 = 0;
    result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned short>((a1 + 40), &v8);
    v5 = v8;
  }

  *a2 = v5;
  return result;
}

{
  boost::archive::detail::basic_iarchive::get_library_version(a1, &v6);
  if (v6 >= 7u)
  {
    return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::serialization::item_version_type>((a1 + 40), a2);
  }

  v5 = 0;
  result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned int>((a1 + 40), &v5);
  *a2 = v5;
  return result;
}

uint64_t boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(uint64_t a1, void *a2)
{
  boost::archive::detail::basic_iarchive::get_library_version(a1, &v6);
  if (v6 >= 6u)
  {
    return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::serialization::collection_size_type>((a1 + 40), a2);
  }

  v5 = 0;
  result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned int>((a1 + 40), &v5);
  *a2 = v5;
  return result;
}

void boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(uint64_t a1, void **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = operator new(0x88uLL);
  *v4 = 0;
  *&__src.__r_.__value_.__r.__words[1] = xmmword_2229D1770;
  __src.__r_.__value_.__r.__words[0] = v4;
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a1 + 40), &__src);
  size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x80)
    {
      boost::archive::archive_exception::archive_exception(v10, 9, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v10);
    }

    p_src = __src.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_src = &__src;
  }

  memcpy(*a2, p_src, size);
  v7 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __src.__r_.__value_.__l.__size_;
  }

  *(*a2 + v7) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2228C4758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::archive::archive_exception::~archive_exception(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::init(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(&__s1, 0, sizeof(__s1));
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a1 + 40), &__s1);
  v3 = boost::archive::BOOST_ARCHIVE_SIGNATURE(v2);
  v4 = strlen(v3);
  v5 = v4;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_28;
    }

    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_28;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v3, v5))
  {
LABEL_28:
    boost::archive::archive_exception::archive_exception(v17, 3, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v17);
  }

  v7 = *(a1 + 40);
  v8 = v7[3];
  if (v8 == v7[4])
  {
    v9 = (*(*v7 + 80))(v7);
  }

  else
  {
    v7[3] = v8 + 1;
    v9 = *v8;
  }

  if (v9 >= 6)
  {
    if (v9 == 6)
    {
      v10 = *(a1 + 40);
      v12 = v10 + 3;
      v11 = v10[3];
      v13 = v10[4];
      goto LABEL_17;
    }

    v10 = *(a1 + 40);
    v12 = v10 + 3;
    v11 = v10[3];
    v13 = v10[4];
    if (v9 > 7)
    {
LABEL_17:
      if (v11 != v13)
      {
LABEL_18:
        *v12 = v11 + 1;
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v11 == v13)
    {
      v14 = (*(*v10 + 72))(v10);
    }

    else
    {
      v14 = *v11;
    }

    if (!v14)
    {
      v10 = *(a1 + 40);
      v12 = v10 + 3;
      v11 = v10[3];
      if (v11 != v10[4])
      {
        goto LABEL_18;
      }

LABEL_27:
      (*(*v10 + 80))(v10);
    }
  }

LABEL_22:
  v17[0] = v9;
  boost::archive::detail::basic_iarchive::set_library_version(a1, v17);
  boost::archive::BOOST_ARCHIVE_VERSION(v17);
  if (v17[0] < v9)
  {
    boost::archive::archive_exception::archive_exception(v17, 4, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v17);
  }

  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2228C49E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::locale *boost::archive::binary_iarchive_impl<boost::archive::binary_iarchive,char,std::char_traits<char>>::binary_iarchive_impl(std::locale *a1, void *a2, int a3)
{
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::basic_binary_iprimitive(a1 + 5, *(a2 + *(*a2 - 24) + 40), (a3 & 2) != 0);
  boost::archive::detail::basic_iarchive::basic_iarchive(a1, a3);
  a1->__locale_ = &unk_2835E2398;
  return a1;
}

uint64_t boost::archive::detail::common_iarchive<boost::archive::binary_iarchive>::vload(uint64_t a1, uint64_t a2)
{
  return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::object_id_type>((a1 + 40), a2);
}

{
  return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::tracking_type>((a1 + 40), a2);
}

std::locale *boost::archive::binary_iarchive_impl<boost::archive::binary_iarchive,char,std::char_traits<char>>::~binary_iarchive_impl(std::locale *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  std::locale::~locale(v2 + 10);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(a1 + 8);
  MEMORY[0x223DC4BC0](&a1[6]);
  return a1;
}

void boost::archive::binary_iarchive_impl<boost::archive::binary_iarchive,char,std::char_traits<char>>::~binary_iarchive_impl(std::locale *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  std::locale::~locale(v2 + 10);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(a1 + 8);
  MEMORY[0x223DC4BC0](&a1[6]);

  operator delete(a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

std::locale *boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(std::locale *a1)
{
  (*(*a1->__locale_ + 48))(a1->__locale_);
  locale = a1->__locale_;
  (*(*a1->__locale_ + 16))(a1->__locale_, a1 + 1);
  std::locale::locale(&v4, locale + 1);
  std::locale::operator=(locale + 1, a1 + 1);
  std::locale::~locale(&v4);
  std::locale::~locale(a1 + 1);
  return a1;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::class_id_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<short>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::version_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned short>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<unsigned int>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::serialization::item_version_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::serialization::collection_size_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 8);
  if (result != 8)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::object_id_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load<boost::archive::tracking_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 64))(*a1, a2, 1);
  if (result != 1)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2 + 23;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  v10 = v4;
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned long>(a1, &v10);
  if (*v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = v10;
  result = (*(**a1 + 96))(*a1, v6, v10);
  if (result != v7)
  {
    boost::archive::archive_exception::archive_exception(v11, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned long>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 8);
  if (result != 8)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::init(void *a1)
{
  v7 = 4;
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned char>(a1, &v7);
  v6 = 8;
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned char>(a1, &v6);
  v5 = 4;
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned char>(a1, &v5);
  v4 = 8;
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned char>(a1, &v4);
  v3 = 1;
  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<int>(a1, &v3);
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<unsigned char>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 1);
  if (result != 1)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<int>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

std::locale *boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::basic_binary_oprimitive(std::locale *a1, const std::locale *a2, char a3)
{
  v6 = &a1[1];
  a1[2].__locale_ = 0;
  a1->__locale_ = a2;
  a1[1].__locale_ = &unk_2835E2320;
  a1[3].__locale_ = a2;
  std::locale::locale(a1 + 4, a2 + 1);
  std::locale::locale(&v11, a2 + 1);
  v7 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor(a1 + 5, &v11, v6, v7);
  std::locale::~locale(&v11);
  if ((a3 & 1) == 0)
  {
    (*(*a1->__locale_ + 48))();
    locale = a1->__locale_;
    (*(*a1->__locale_ + 16))(a1->__locale_, a1 + 5);
    std::locale::locale(&v10, locale + 1);
    std::locale::operator=(locale + 1, a1 + 5);
    std::locale::~locale(&v10);
  }

  return a1;
}

void sub_2228C57D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v11 + 5);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(v12);
  MEMORY[0x223DC4BC0](v10);
  _Unwind_Resume(a1);
}

void boost::archive::basic_binary_oarchive<boost::archive::binary_oarchive>::save_override(boost::archive::detail::basic_iserializer *a1, char **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a1 + 5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2228C5860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::basic_binary_oarchive<boost::archive::binary_oarchive>::init(boost::archive *a1)
{
  v2 = boost::archive::BOOST_ARCHIVE_SIGNATURE(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, v2);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a1 + 5, __p);
  boost::archive::BOOST_ARCHIVE_VERSION(&v3);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::serialization::library_version_type>(a1 + 5, &v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2228C58F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::locale *boost::archive::binary_oarchive_impl<boost::archive::binary_oarchive,char,std::char_traits<char>>::binary_oarchive_impl(std::locale *a1, void *a2, int a3)
{
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::basic_binary_oprimitive(a1 + 5, *(a2 + *(*a2 - 24) + 40), (a3 & 2) != 0);
  boost::archive::detail::basic_oarchive::basic_oarchive(a1, a3);
  a1->__locale_ = &unk_2835E2490;
  return a1;
}

uint64_t boost::archive::detail::common_oarchive<boost::archive::binary_oarchive>::vsave(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::version_type>(a1 + 5, a2);
}

{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::object_id_type>(a1 + 5, a2);
}

{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::object_reference_type>(a1 + 5, a2);
}

{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::class_id_type>(a1 + 5, a2);
}

{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::class_id_reference_type>(a1 + 5, a2);
}

{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::tracking_type>(a1 + 5, a2);
}

std::locale *boost::archive::binary_oarchive_impl<boost::archive::binary_oarchive,char,std::char_traits<char>>::~binary_oarchive_impl(std::locale *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  std::locale::~locale(v2 + 10);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(a1 + 8);
  MEMORY[0x223DC4BC0](&a1[6]);
  return a1;
}

void boost::archive::binary_oarchive_impl<boost::archive::binary_oarchive,char,std::char_traits<char>>::~binary_oarchive_impl(std::locale *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  std::locale::~locale(v2 + 10);
  boost::archive::basic_streambuf_locale_saver<char,std::char_traits<char>>::~basic_streambuf_locale_saver(a1 + 8);
  MEMORY[0x223DC4BC0](&a1[6]);

  operator delete(a1);
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::serialization::library_version_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::version_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::object_id_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::object_reference_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 4);
  if (result != 4)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::class_id_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::class_id_reference_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 2);
  if (result != 2)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save<boost::archive::tracking_type>(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*(**a1 + 96))(*a1, a2, 1);
  if (result != 1)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::extended_type_info::key_unregister(boost::serialization::extended_type_info *this)
{
  if (*(this + 2))
  {
    if ((boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
    {
      instance = boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
      v8 = this;
      v3 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__lower_bound<boost::serialization::extended_type_info const*>(instance, &v8, instance[1], instance + 1);
      v8 = this;
      v4 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__upper_bound<boost::serialization::extended_type_info const*>(instance, &v8, instance[1], (instance + 1));
      if (v3 != v4)
      {
        while (v3[4] != this)
        {
          v5 = v3[1];
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = *v5;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = v3[2];
              v7 = *v6 == v3;
              v3 = v6;
            }

            while (!v7);
          }

          v3 = v6;
          if (v6 == v4)
          {
            return;
          }
        }

        std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__remove_node_pointer(instance, v3);
        operator delete(v3);
      }
    }
  }
}

uint64_t boost::serialization::extended_type_info::operator<(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return (**a1)(a1);
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__emplace_multi<boost::serialization::extended_type_info const*>(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v4[4] = *a2;
  leaf_high = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__find_leaf_high(a1, &v7, v4 + 4);
  std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v7, leaf_high, v4);
  return v4;
}

void *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        v7 = v4[4];
        if (v6 == v7)
        {
          break;
        }

        v8 = *(v6 + 16);
        v9 = *(v7 + 16);
        if (v8 == v9 || (strcmp(v8, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_11;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_11:
  *a2 = v5;
  return result;
}

void *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__lower_bound<boost::serialization::extended_type_info const*>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6 || (v8 = *(v7 + 16), v9 = *(v6 + 16), v8 == v9))
      {
        a4 = v5;
      }

      else
      {
        v10 = strcmp(v8, v9);
        if (v10 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v10 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__upper_bound<boost::serialization::extended_type_info const*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = *(v5 + 32);
      if (v6 == v7 || (v8 = *(v6 + 16), v9 = *(v7 + 16), v8 == v9))
      {
        v11 = (v5 + 8);
      }

      else
      {
        v10 = strcmp(v8, v9);
        v11 = (v5 + 8 * (v10 >= 0));
        if (v10 < 0)
        {
          a4 = v5;
        }
      }

      v5 = *v11;
    }

    while (*v11);
  }

  return a4;
}

uint64_t *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

uint64_t *boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(uint64_t *this)
{
  v1 = this;
  if (this[3])
  {
    if ((boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
    {
      instance = boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
      v4 = v1;
      this = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v4);
      if (instance + 1 != this)
      {
        v3 = this;
        do
        {
          std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__remove_node_pointer(instance, v3);
          operator delete(v3);
          v4 = v1;
          this = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v4);
          v3 = this;
        }

        while (instance + 1 != this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t boost::serialization::typeid_system::extended_type_info_typeid_0::get_debug_info(boost::serialization::typeid_system::extended_type_info_typeid_0 *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(uint64_t a1, void *a2)
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
    v6 = (***(v3 + 32))(*(v3 + 32), *a2);
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
  if (v5 == v2 || (***a2)(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::load_override(uint64_t a1, void **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = operator new(0x88uLL);
  *v4 = 0;
  *&__src.__r_.__value_.__r.__words[1] = xmmword_2229D1770;
  __src.__r_.__value_.__r.__words[0] = v4;
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a1, &__src);
  size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x80)
    {
      boost::archive::archive_exception::archive_exception(v10, 9, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v10);
    }

    p_src = __src.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_src = &__src;
  }

  memcpy(*a2, p_src, size);
  v7 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __src.__r_.__value_.__l.__size_;
  }

  *(*a2 + v7) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2228C675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::archive::archive_exception::~archive_exception(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::init(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&__s1, 0, sizeof(__s1));
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a1, &__s1);
  v3 = boost::archive::BOOST_ARCHIVE_SIGNATURE(v2);
  v4 = strlen(v3);
  v5 = v4;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_11;
    }

    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_11;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v3, v5))
  {
LABEL_11:
    boost::archive::archive_exception::archive_exception(v9, 3, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v9);
  }

  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::library_version_type>((a1 + 40));
  v9[0] = 0;
  boost::archive::detail::basic_iarchive::set_library_version(a1, v9);
  boost::archive::BOOST_ARCHIVE_VERSION(v9);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2228C68CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::exception a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, std::string *a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a1 + 40));
  v4 = *(a1 + 40);
  std::istream::get();
  std::string::resize(a2, 0, 0);
}

boost::archive::detail::basic_iarchive *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(boost::archive::detail::basic_iarchive *a1, uint64_t *a2, int a3)
{
  boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(a1 + 40, a2, (a3 & 2) != 0);
  boost::archive::detail::basic_iarchive::basic_iarchive(a1, a3);
  *a1 = &unk_2835E2668;
  return a1;
}

boost::archive::detail::basic_iarchive *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::~text_iarchive_impl(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);
  return a1;
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::~text_iarchive_impl(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);

  operator delete(a1);
}

void *boost::archive::detail::common_iarchive<boost::archive::text_iarchive>::vload(uint64_t a1, _DWORD *a2)
{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((a1 + 40));
  *a2 = 0;
  return result;
}

void *boost::archive::detail::common_iarchive<boost::archive::text_iarchive>::vload(uint64_t a1)
{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::object_id_type>((a1 + 40));
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::class_id_type>((a1 + 40));
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::tracking_type>((a1 + 40));
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::library_version_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4880](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4850](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4860](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::object_id_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4850](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::class_id_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4870](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::tracking_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4820](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (!v2)
  {
LABEL_5:
    *(v1 + 40) = 2;
    return result;
  }

  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    result = boost::archive::basic_text_oprimitive<std::ostream>::put((result + 48));
    goto LABEL_5;
  }

  v3 = (result + 48);

  return boost::archive::basic_text_oprimitive<std::ostream>::put(v3);
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::save_override(boost::archive::detail::basic_iserializer *a1, char **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2228C6FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(boost::archive *a1)
{
  v2 = boost::archive::BOOST_ARCHIVE_SIGNATURE(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, v2);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a1, __p);
  boost::archive::BOOST_ARCHIVE_VERSION(&v3);
  boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::serialization::library_version_type>(a1, &v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2228C7058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  v9 = v4;
  boost::archive::save_access::save_primitive<boost::archive::text_oarchive,unsigned long>(a1, &v9);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 6), v6, v7);
}

boost::archive::detail::basic_oarchive *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(boost::archive::detail::basic_oarchive *a1, uint64_t *a2, int a3)
{
  boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(a1 + 48, a2, (a3 & 2) != 0);
  boost::archive::detail::basic_oarchive::basic_oarchive(a1, a3);
  *(a1 + 10) = 0;
  *a1 = &unk_2835E2760;
  return a1;
}

boost::archive::detail::basic_oarchive *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::~text_oarchive_impl(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);
  return a1;
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::~text_oarchive_impl(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);

  operator delete(a1);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::object_id_type>(boost::archive::detail::basic_iserializer *a1, unsigned int *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_id_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_id_type>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4930);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::serialization::library_version_type>(boost::archive::detail::basic_iserializer *a1, unsigned __int16 *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::serialization::library_version_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::serialization::library_version_type>(void *a1, unsigned __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4960);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned int>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4930);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,unsigned long>(boost::archive::detail::basic_iserializer *a1, uint64_t *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long>(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4940);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __b[1] = __len;
    __b[2] = v7 | 0x8000000000000000;
    *__b = v6;
  }

  else
  {
    *(__b + 23) = __len;
    v6 = __b;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memset(v6, __c, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __b;
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::version_type>(boost::archive::detail::basic_iserializer *a1, unsigned int *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  v4 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned int>(a1 + 6, &v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::object_reference_type>(boost::archive::detail::basic_iserializer *a1, unsigned int *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_reference_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_reference_type>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4930);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::class_id_type>(boost::archive::detail::basic_iserializer *a1, __int16 *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_type>(void *a1, __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4950);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::class_id_reference_type>(boost::archive::detail::basic_iserializer *a1, __int16 *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_reference_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_reference_type>(void *a1, __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC4950);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::save_access::save_primitive<boost::archive::text_oarchive,boost::archive::tracking_type>(boost::archive::detail::basic_iserializer *a1, unsigned __int8 *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::tracking_type>(a1 + 6, a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::tracking_type>(void *a1, unsigned __int8 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x223DC48F0);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void *Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2835E2988;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x223DC4CD0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
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

void sub_2228C7BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x223DC4C10](&this[15]);
}

void sentencepiece::ModelInterface::model_proto(sentencepiece::ModelInterface *this)
{
  v1 = *(this + 1);
  {
    v8 = 1;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "model_interface.cc", 18);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x223DC4920](v4, 103);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    sentencepiece::error::Die::~Die(&v8);
    __break(1u);
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

void sub_2228C817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
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

void sub_2228C8220(_Unwind_Exception *exception_object)
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
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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

void sub_2228C8470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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

void sub_2228C8704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
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

void sub_2228C88A0(_Unwind_Exception *exception_object)
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
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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

void sub_2228C8C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
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

  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(&v46, v47[0]);
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(&v48, v49);
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(&v51, v52);
}