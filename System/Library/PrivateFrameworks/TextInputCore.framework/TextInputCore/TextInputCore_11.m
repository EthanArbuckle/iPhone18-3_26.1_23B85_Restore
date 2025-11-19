void std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(uint64_t a1)
{
  MEMORY[0x2318BDB20](v5);
  language_modeling::v1::InlineCompletion::string(v5);
  language_modeling::v1::InlineCompletion::log(v5);
  *(a1 + 48) = language_modeling::v1::InlineCompletion::probability(v5);
  v2 = language_modeling::v1::InlineCompletion::source(v5) - 4;
  if (v2 > 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = dword_22CC88C80[v2];
  }

  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  MEMORY[0x2318BDB20](a1 + 64, v5);
  *(a1 + 72) = 1;
  language_modeling::v1::InlineCompletion::~InlineCompletion(v5);
  return a1;
}

void ___ZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 32))
      {
        TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 160);
  v3 = *(a1 + 184);
  if (*(a1 + 168) != *(a1 + 160))
  {
    KB::LanguageModelContext::LanguageModelContext(v44, (a1 + 32));
    v4 = *(a1 + 160);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      v38.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v38.__r_.__value_.__l.__data_ = v5;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 3), *(v4 + 4));
    }

    else
    {
      v9 = *(v4 + 24);
      __p.__r_.__value_.__r.__words[2] = *(v4 + 5);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = *(v4 + 6);
    v41 = *(v4 + 14);
    v40 = v10;
    v42[0] = 0;
    v43 = 0;
    if (*(v4 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v42, v4 + 4);
      v43 = 1;
    }

    KB::LanguageModelContext::LanguageModelContext(&v65, v44);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = v38;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v72 = __p;
    }

    v73 = v40;
    v74 = v41;
    v75[0] = 0;
    v76 = 0;
    if (v43 == 1)
    {
      MEMORY[0x2318BDB20](v75, v42);
      v76 = 1;
    }

    TIInlineCompletionsCache::clear((v3 + 96));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
      }

      else
      {
        v51 = *&v38.__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[0] = v38.__r_.__value_.__r.__words[2];
      }

      v28 = &v51;
      if (v52.__r_.__value_.__s.__data_[7] < 0)
      {
        v28 = v51;
      }

      *buf = 136315394;
      *&buf[4] = "_updateCache";
      v78 = 2080;
      v79 = v28;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Updating cache with new completion: %s", buf, 0x16u);
      if (v52.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v51);
      }
    }

    KB::LanguageModelContext::LanguageModelContext(&v51, &v65);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v59 = __s;
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v60, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
    }

    else
    {
      v60 = v72;
    }

    v61 = v73;
    v62 = v74;
    v63[0] = 0;
    v64 = 0;
    if (v76 == 1)
    {
      MEMORY[0x2318BDB20](v63, v75);
      v64 = 1;
    }

    v11 = (v3 + 104);
    if (*(v3 + 288) == 1)
    {
      KB::LanguageModelContext::operator=(v11, &v51);
      std::string::operator=((v3 + 208), &v59);
      std::string::operator=((v3 + 232), &v60);
      *(v3 + 256) = v61;
      *(v3 + 264) = v62;
      if (*(v3 + 280) == v64)
      {
        if (*(v3 + 280))
        {
          language_modeling::v1::InlineCompletion::operator=();
        }
      }

      else
      {
        v12 = (v3 + 272);
        if (*(v3 + 280))
        {
          language_modeling::v1::InlineCompletion::~InlineCompletion(v12);
          *(v3 + 280) = 0;
        }

        else
        {
          MEMORY[0x2318BDB20](v12, v63);
          *(v3 + 280) = 1;
        }
      }
    }

    else
    {
      KB::LanguageModelContext::LanguageModelContext(v11, &v51);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v3 + 208), v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v3 + 208) = v59;
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v3 + 232), v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v3 + 232) = v60;
      }

      *(v3 + 256) = v61;
      *(v3 + 264) = v62;
      *(v3 + 272) = 0;
      *(v3 + 280) = 0;
      if (v64 == 1)
      {
        MEMORY[0x2318BDB20](v3 + 272, v63);
        *(v3 + 280) = 1;
      }

      *(v3 + 288) = 1;
    }

    std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(&v51);
    std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(&v65);
    if (v43 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v42);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    *&v65 = &v50;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v65);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v49);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v48);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v13 = *v2;
    if (*(*v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v31.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v31.__r_.__value_.__l.__data_ = v14;
    }

    if (*(v13 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      v15 = *(v13 + 24);
      v32.__r_.__value_.__r.__words[2] = *(v13 + 5);
      *&v32.__r_.__value_.__l.__data_ = v15;
    }

    v16 = *(v13 + 6);
    v34 = *(v13 + 14);
    v33 = v16;
    v35[0] = 0;
    v36 = 0;
    if (*(v13 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v35, v13 + 4);
      v36 = 1;
    }

    v37 = 0;
    language_modeling::v1::CompletionStem::prefix(v29, *(a1 + 136));
    shouldSuppress = TIInlineCompletionGeneratorImpl::_shouldSuppress(v3, &v31, v29);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v36 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v35);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 136);
    std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v65, **(v3 + 744), *(*(v3 + 744) + 8));
    v19 = v65;
    if (*(&v65 + 1))
    {
      atomic_fetch_add_explicit((*(&v65 + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
    }

    v20 = analytics_queue();
    *&v65 = MEMORY[0x277D85DD0];
    *(&v65 + 1) = 3321888768;
    *&v66 = ___ZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModality_block_invoke;
    *(&v66 + 1) = &__block_descriptor_144_a8_32c166_ZTSKZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModalityE3__0_e5_v8__0l;
    v51 = v19;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v13, *(v13 + 1));
    }

    else
    {
      v21 = *v13;
      v52.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v52.__r_.__value_.__l.__data_ = v21;
    }

    if (*(v13 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      v22 = *(v13 + 24);
      v53.__r_.__value_.__r.__words[2] = *(v13 + 5);
      *&v53.__r_.__value_.__l.__data_ = v22;
    }

    v23 = *(v13 + 6);
    v55 = *(v13 + 14);
    v54 = v23;
    v56[0] = 0;
    v57 = 0;
    if (*(v13 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v56, v13 + 4);
      v57 = 1;
    }

    language_modeling::v1::CompletionStem::CompletionStem(&v58, v18);
    LODWORD(v59.__r_.__value_.__l.__data_) = shouldSuppress;
    v67 = v51;
    if (*(&v51 + 1))
    {
      atomic_fetch_add_explicit((*(&v51 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
    }

    else
    {
      v68 = v52;
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v69, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v69 = v53;
    }

    v70 = v54;
    LODWORD(__s.__r_.__value_.__l.__data_) = v55;
    __s.__r_.__value_.__s.__data_[8] = 0;
    __s.__r_.__value_.__s.__data_[16] = 0;
    if (v57 == 1)
    {
      MEMORY[0x2318BDB20](&__s.__r_.__value_.__r.__words[1], v56);
      __s.__r_.__value_.__s.__data_[16] = 1;
    }

    language_modeling::v1::CompletionStem::CompletionStem(&v72, &v58);
    LODWORD(v72.__r_.__value_.__r.__words[1]) = v59.__r_.__value_.__l.__data_;
    TIDispatchAsync();
    language_modeling::v1::CompletionStem::~CompletionStem(&v58);
    if (v57 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v56);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v51 + 1));
    }

    language_modeling::v1::CompletionStem::~CompletionStem(&v72);
    if (__s.__r_.__value_.__s.__data_[16] == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(&__s.__r_.__value_.__r.__words[1]);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v67 + 1));
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v19 + 1));
    }

    if (shouldSuppress)
    {
      v51 = 0uLL;
      v52.__r_.__value_.__r.__words[0] = 0;
      v67 = 0u;
      *&v68.__r_.__value_.__l.__data_ = 0u;
      v65 = 0u;
      v66 = 0u;
      language_modeling::v1::LinguisticContext::LinguisticContext(&v68.__r_.__value_.__r.__words[2]);
      language_modeling::v1::LinguisticContext::LinguisticContext(&v69);
      *&v69.__r_.__value_.__r.__words[1] = 0uLL;
      v70 = 0;
      v24 = *(a1 + 24);
      if (v24)
      {
        (*(*v24 + 48))(v24, &v51, &v65);
        *buf = &v69.__r_.__value_.__l.__size_;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v69);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v68.__r_.__value_.__r.__words[2]);
        if (v66)
        {
          *(&v66 + 1) = v66;
          operator delete(v66);
        }

        if (*(&v65 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v65 + 1));
        }

        *&v65 = &v51;
        std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v65);
        goto LABEL_133;
      }
    }

    else
    {
      v25 = *(a1 + 24);
      if (v25)
      {
        (*(*v25 + 48))(v25, v2, a1 + 32);
        goto LABEL_133;
      }
    }

LABEL_142:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = atomic_load((v3 + 16));
  if (v6)
  {
    std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v65, **(v3 + 744), *(*(v3 + 744) + 8));
    v7 = v65;
    if (*(&v65 + 1))
    {
      atomic_fetch_add_explicit((*(&v65 + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
    }

    v8 = analytics_queue();
    *&v65 = MEMORY[0x277D85DD0];
    *(&v65 + 1) = 3321888768;
    *&v66 = ___ZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEv_block_invoke;
    *(&v66 + 1) = &__block_descriptor_48_a8_32c77_ZTSKZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEvE3__0_e5_v8__0l;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
      v67 = v7;
      atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
      TIDispatchAsync();
      std::__shared_weak_count::__release_weak(*(&v7 + 1));
    }

    else
    {
      v67 = v7;
      TIDispatchAsync();
    }

    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v67 + 1));
    }

    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v7 + 1));
    }
  }

  v67 = 0u;
  *&v68.__r_.__value_.__l.__data_ = 0u;
  v65 = 0u;
  v66 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v68.__r_.__value_.__r.__words[2]);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v69);
  *&v69.__r_.__value_.__r.__words[1] = 0uLL;
  v70 = 0;
  v26 = *(a1 + 24);
  if (!v26)
  {
    goto LABEL_142;
  }

  (*(*v26 + 48))(v26, v2, &v65);
  *&v51 = &v69.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v51);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v69);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v68.__r_.__value_.__r.__words[2]);
  if (v66)
  {
    *(&v66 + 1) = v66;
    operator delete(v66);
  }

  if (*(&v65 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v65 + 1));
  }

LABEL_133:
  v27 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c56_ZTSNSt3__18weak_ptrI31TIInlineCompletionGeneratorImplEE48c241_ZTSZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0(uint64_t a1)
{
  v5 = (a1 + 208);
  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (a1 + 184);
  std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (a1 + 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 152));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 144));
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](a1 + 48);
  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void __copy_helper_block_a8_32c56_ZTSNSt3__18weak_ptrI31TIInlineCompletionGeneratorImplEE48c241_ZTSZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100]((a1 + 6), (a2 + 6));
  KB::LanguageModelContext::LanguageModelContext((a1 + 10), (a2 + 10));
  a1[24] = 0;
  a1[25] = 0;
  a1[23] = 0;
  std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>((a1 + 23), a2[23], a2[24], (a2[24] - a2[23]) >> 3);
  a1[26] = 0;
  a1[27] = 0;
  v5 = (a1 + 26);
  *(v5 + 16) = 0;
  std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(v5, a2[26], a2[27], 0xCCCCCCCCCCCCCCCDLL * ((a2[27] - a2[26]) >> 4));
  *(v5 + 24) = a2[29];
}

void std::allocator_traits<std::allocator<TIInlineCompletion>>::destroy[abi:nn200100]<TIInlineCompletion,void,0>(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 64));
  }

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

void ___ZN31TIInlineCompletionGeneratorImpl32enumerateInlineCompletionsWithLMERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEEbNS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEE_block_invoke(void *a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[4];
      if (v4)
      {
        if (a1[6] == *(v4 + 24))
        {
          std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v6, (a1 + 7));
          TIInlineCompletionGeneratorImpl::_computeInlineCompletions(v4, (a1 + 11), (a1 + 24), v6);
          std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v6);
LABEL_8:
          std::__shared_weak_count::__release_shared[abi:nn200100](v3);
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3321888768;
  v6[2] = ___ZZN31TIInlineCompletionGeneratorImpl32enumerateInlineCompletionsWithLMERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEEbNS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEENK3__0clEv_block_invoke;
  v6[3] = &__block_descriptor_64_a8_32c109_ZTSNSt3__18functionIFvRKNS_6vectorI18TIInlineCompletionNS_9allocatorIS2_EEEERKN2KB20LanguageModelContextEEEE_e5_v8__0l;
  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v7, (a1 + 7));
  TIDispatchAsync();
  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v7);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v5 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c250_ZTSKZN31TIInlineCompletionGeneratorImpl32enumerateInlineCompletionsWithLMERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEEbNS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0(uint64_t a1)
{
  v5 = (a1 + 192);
  std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (a1 + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 160));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 152));
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](a1 + 56);
  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void __copy_helper_block_a8_32c250_ZTSKZN31TIInlineCompletionGeneratorImpl32enumerateInlineCompletionsWithLMERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEEbNS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = a2[6];
  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100]((a1 + 7), (a2 + 7));
  KB::LanguageModelContext::LanguageModelContext((a1 + 11), (a2 + 11));
  a1[24] = 0;
  a1[25] = 0;
  v5 = (a1 + 24);
  *(v5 + 16) = 0;
  v6 = a2[24];
  v7 = a2[25];

  std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(v5, v6, v7, (v7 - v6) >> 3);
}

void ___ZZN31TIInlineCompletionGeneratorImpl32enumerateInlineCompletionsWithLMERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEEbNS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEENK3__0clEv_block_invoke(uint64_t a1)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v8);
  language_modeling::v1::LinguisticContext::LinguisticContext((&v8 + 8));
  v9 = 0uLL;
  v10 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(v2, v11, &v4);
    v12 = &v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v12);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v8 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v4 + 1));
    }

    *&v4 = v11;
    std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    __destroy_helper_block_a8_32c109_ZTSNSt3__18functionIFvRKNS_6vectorI18TIInlineCompletionNS_9allocatorIS2_EEEERKN2KB20LanguageModelContextEEEE(v3);
  }
}

void ___ZL24inlineCompletionsQueueHPv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.InlineCompletionsHP", v2);
  v1 = inlineCompletionsQueueHP(void)::queue;
  inlineCompletionsQueueHP(void)::queue = v0;
}

void ___ZL24inlineCompletionsQueueLPv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.InlineCompletionsLP", v2);
  v1 = inlineCompletionsQueueLP(void)::queue;
  inlineCompletionsQueueLP(void)::queue = v0;
}

void TIInlineCompletionsNegativeLearning::registerLearning(sqlite3 **a1, const std::string *a2, std::string::size_type a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if ((adaptation_autocorrection_rejection_v2_override_for_trial & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    goto LABEL_54;
  }

  v8 = std::chrono::system_clock::now().__d_.__rep_ / 1000000.0;
  if (a4)
  {
    v9 = std::string::find(a2, 32, 0);
    if (v9 == -1)
    {
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        __p = *a2;
      }
    }

    else
    {
      std::string::basic_string(&__p, a2, 0, v9, &v30);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:nn200100]<0>(&v30, p_p);
    v18 = TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(a1, 0, &v30, 1);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v19 = *(a3 + 23);
    if (!HIDWORD(v18))
    {
      if ((v19 & 0x80u) == 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      v22 = *a1;
      v23 = v8;
      v24 = 1;
LABEL_49:
      TI::RejectionsDatabase::insert_inline_completion_rejection(v22, v20, v21, v24, v23);
      goto LABEL_51;
    }

    if ((v19 & 0x80) != 0)
    {
      if (*(a3 + 8) <= v18)
      {
        goto LABEL_50;
      }

      a3 = *a3;
    }

    else if (v19 <= v18)
    {
LABEL_50:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v26 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        v27 = *a3;
        v28 = *(a3 + 8);
        if ((v19 & 0x80u) == 0)
        {
          v27 = a3;
          v28 = v19;
        }

        LODWORD(v30.__r_.__value_.__l.__data_) = 136316162;
        *(v30.__r_.__value_.__r.__words + 4) = "registerLearning";
        WORD2(v30.__r_.__value_.__r.__words[1]) = 2080;
        *(&v30.__r_.__value_.__r.__words[1] + 6) = v27;
        HIWORD(v30.__r_.__value_.__r.__words[2]) = 2080;
        v31 = v26;
        v32 = 2048;
        v33 = v28;
        v34 = 1024;
        v35 = v18;
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  [Inline Completions Generator] Negative learning from %s to %s should be unnecessary since prefix has length %zu <= %d already in database", &v30, 0x30u);
      }

LABEL_51:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v16 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v22 = *a1;
    v20 = a3;
    v23 = v8;
    v24 = 0;
    goto LABEL_49;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v11 = size;
  if ((size & 0x80u) == 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = v12 + size;
    while (size)
    {
      v14 = *--v13;
      --size;
      if (v14 == 32)
      {
        v15 = v13 - v12;
        if (v15 == -1)
        {
          break;
        }

        std::string::basic_string(&v30, a2, v15 + 1, 0xFFFFFFFFFFFFFFFFLL, &__p);
        goto LABEL_24;
      }
    }
  }

  if (v11 < 0)
  {
    std::string::__init_copy_ctor_external(&v30, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = *a2;
  }

LABEL_24:
  TI::RejectionsDatabase::soft_add_deleted(a1, &v30, v8);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = v30.__r_.__value_.__r.__words[0];
LABEL_53:
    operator delete(v16);
  }

LABEL_54:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::SearchNode::instance_error_correction_type(TI::Favonius::SearchNode *this)
{
  result = *(this + 16);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

unsigned int *TI::Favonius::SearchNode::set_typing_hypothesis(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 56);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 56) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 248))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t TI::Favonius::SearchNode::SearchNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add((v5 + 8), 1u);
  }

  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = -8388608;
  *a1 = &unk_283FDB210;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  *(a1 + 40) = ++s_counter;
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *a3;
  *a3 = 0;
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  KB::String::String((a1 + 88), (a2 + 88));
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 128);
  *(a1 + 128) = v9;
  if (v9)
  {
    atomic_fetch_add((v9 + 8), 1u);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v10 = *(a1 + 32);
  if (v10)
  {
    if (*(a1 + 56))
    {
      (*(*a1 + 136))(a1);
    }

    else
    {
      v11 = *(v10 + 136);
      *(a1 + 136) = v11;
      *(a1 + 140) = v11;
    }

    *(a1 + 148) = (*(*a1 + 128))(a1);
    v12 = (a1 + 144);
    v13 = vld1_dup_f32(v12);
    v14 = vmla_n_f32(v13, *(a1 + 136), *(a1 + 152));
    *(a1 + 156) = v14;
    *(a1 + 24) = v14.i32[0];
  }

  return a1;
}

void TI::Favonius::SearchNode::set_language_scores_from_parent_and_typing_hypothesis(TI::Favonius::SearchNode *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    TI::Favonius::SearchNode::set_language_scores_from_parent_and_typing_hypothesis(this, v1);
  }
}

void TI::Favonius::SearchNode::set_language_scores_from_parent_and_typing_hypothesis(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a1 + 136) = *(v4 + 136);
  v5 = TI::Favonius::SearchNode::partial_language_score(a2, *(v4 + 56)) + *(a1 + 136);
  *(a1 + 136) = v5;
  if (!*(a1 + 64))
  {
    v6 = (*(*a2 + 80))(a2);
    v7 = *(a1 + 136);
    v5 = v7 + logf(v6);
  }

  *(a1 + 140) = v5;
}

float TI::Favonius::SearchNode::partial_language_score(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0.0;
  }

  v3 = a1;
  v4 = 0.0;
  do
  {
    v5 = (*(*v3 + 24))(v3);
    v4 = v4 + logf(v5);
    v3 = (**v3)(v3);
  }

  while (v3 != a2);
  return v4;
}

BOOL TI::Favonius::SearchNode::compute_score_is_final(TI::Favonius::SearchNode *this)
{
  if (!*(this + 7) || *(this + 8))
  {
    return 0;
  }

  if (*(this + 16))
  {
    return 1;
  }

  return *(this + 2) == 0;
}

unsigned int *TI::Favonius::SearchNode::compute_geometry_model_data(TI::Favonius::SearchNode *this)
{
  v1 = *(this + 6);
  v2 = *(*(this + 4) + 128);
  v3 = *(this + 2);
  if (v1)
  {
    v10 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add((v3 + 8), 1u);
      v1 = *(this + 6);
      v9 = v1;
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = v1;
    }

    atomic_fetch_add(v1, 1u);
LABEL_5:
    (*(*v2 + 48))(v2, &v10, &v9);
    if (v9)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v9);
    }

    result = v10;
    if (!v10)
    {
      return result;
    }

LABEL_16:
    v6 = atomic_load(result + 2);
    if (v6 == 1)
    {
      return (*(*result + 8))(result);
    }

    atomic_fetch_add(result + 2, 0xFFFFFFFF);
    return result;
  }

  v8 = *(this + 2);
  if (v3)
  {
    atomic_fetch_add((v3 + 8), 1u);
  }

  v5 = *(*(**(this + 7) + 16))(*(this + 7));
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  (*(*v2 + 64))(v2, &v8, &v7);
  if (v7)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v7);
  }

  result = v8;
  if (v8)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t TI::Favonius::SearchNode::compute_language_model_data(uint64_t a1, unint64_t *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
      result = *(a1 + 32);
    }

    TI::Favonius::SearchNode::get_language_extensions(result, a2, &v5);
    result = v5;
    if (v5)
    {
      return WTF::RefCounted<TI::Favonius::Key>::deref(v5);
    }
  }

  return result;
}

void TI::Favonius::SearchNode::get_language_extensions(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!(*(**(a1 + 56) + 56))(*(a1 + 56)))
  {
    goto LABEL_38;
  }

  v6 = *a3;
  v7 = *(*a3 + 12);
  if (!*(*a3 + 12))
  {
    KB::String::compute_length((v6 + 8));
    v7 = *(v6 + 12);
  }

  if (v7 != 1)
  {
    goto LABEL_38;
  }

  v8 = 176;
  if (KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix)
  {
    v8 = 200;
  }

  v9 = a1 + v8;
  v10 = *(a1 + v8);
  if (!v10)
  {
LABEL_38:
    v27 = *(**(a1 + 56) + 40);

    v27();
    return;
  }

  v11 = 0;
  v12 = *(v9 + 8);
  v13 = 8 * v10;
  do
  {
    v14 = *(*a3 + 56);
    if (v14 != *(*(*(**v12 + 16))() + 56))
    {
      goto LABEL_36;
    }

    v15 = *a2;
    if (*a2 != a2[2])
    {
      v21 = a2[1];
      v22 = v12;
      goto LABEL_32;
    }

    v16 = v15 + 1;
    v17 = a2[1];
    if (v17 <= v12 && v17 + 8 * v15 > v12)
    {
      v23 = v12 - v17;
      if (v15 >= 0x100)
      {
        v24 = v15 + (v15 >> 1);
      }

      else
      {
        v24 = 2 * v15;
      }

      if (v24 <= v16)
      {
        v25 = v16;
      }

      else
      {
        v25 = v24;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v25);
      v21 = a2[1];
      v22 = (v21 + v23);
      if (!v21)
      {
        goto LABEL_35;
      }

LABEL_31:
      v15 = *a2;
LABEL_32:
      v26 = *v22;
      *(v21 + 8 * v15) = v26;
      if (v26)
      {
        atomic_fetch_add((v26 + 8), 1u);
        v15 = *a2;
      }

      *a2 = v15 + 1;
      goto LABEL_35;
    }

    if (v15 >= 0x100)
    {
      v19 = v15 + (v15 >> 1);
    }

    else
    {
      v19 = 2 * v15;
    }

    if (v19 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v20);
    v21 = a2[1];
    v22 = v12;
    if (v21)
    {
      goto LABEL_31;
    }

LABEL_35:
    v11 = 1;
LABEL_36:
    v12 += 8;
    v13 -= 8;
  }

  while (v13);
  if ((v11 & 1) == 0)
  {
    goto LABEL_38;
  }
}

uint64_t *TI::Favonius::SearchNode::append_local_keys_for_debugging(TI::Favonius::SearchNode *this, KB::String *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = (*(**(this + 7) + 16))(*(this + 7));
  }

  v5 = *v4;

  return TI::Favonius::Key::append_debug_data(v5, a2);
}

void TI::Favonius::SearchNode::clone_inserting_key(TI::Favonius::SearchNode *this, TI::Favonius::SearchNode *a2)
{
  v4 = *(*(a2 + 4) + 128);
  v5 = *(*(**(a2 + 7) + 16))(*(a2 + 7));
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  (*(*v4 + 72))(__p, v4, &v15, *(this + 2));
  __p[0] = 0;
  if (v15)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v15);
  }

  v6 = *(this + 2);
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  v7 = *(a2 + 7);
  v8 = *(this + 6);
  v13 = v8;
  v9 = v7;
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    v9 = *(a2 + 7);
  }

  v10 = *(this + 38);
  v11 = (*(*v9 + 24))(v9);
  logf(v11);
  TI::Favonius::SearchNodeInsertingKey::create();
}

void std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t TI::Favonius::SearchNode::SearchNode(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, float a7, float a8)
{
  v11 = *a3;
  *a3 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v11;
  *(a1 + 24) = -8388608;
  *a1 = &unk_283FDB210;
  *(a1 + 32) = a2;
  if (a2)
  {
    atomic_fetch_add((a2 + 8), 1u);
  }

  *(a1 + 40) = ++s_counter;
  v12 = *a4;
  *a4 = 0;
  v13 = *a5;
  *a5 = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  if (a6)
  {
    WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::Vector((a1 + 64), a6);
    v12 = *(a1 + 48);
    if (v12)
    {
LABEL_5:
      v14 = v12 + 8;
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if (v12)
    {
      goto LABEL_5;
    }
  }

  v14 = (*(**(a1 + 56) + 16))(*(a1 + 56));
LABEL_8:
  KB::String::String((a1 + 88), (*v14 + 8));
  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = v15 + 8;
  }

  else
  {
    v16 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  }

  *(a1 + 120) = *(*v16 + 60);
  *(a1 + 128) = 0;
  v17 = *(a1 + 32);
  if (v17)
  {
    *(a1 + 152) = a7;
    v18 = (a1 + 152);
    v19 = *(a1 + 56);
    if (*(a1 + 16))
    {
      v20 = 1;
    }

    else
    {
      v20 = v19 == 0;
    }

    v21 = !v20;
    *(a1 + 148) = v21;
    *(a1 + 149) = 1;
    *(a1 + 164) = *(v17 + 164) + 1;
    *(a1 + 208) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 176) = 0u;
    if (v19)
    {
      (*(*a1 + 136))(a1);
    }

    else
    {
      v24 = *(v17 + 136);
      *(a1 + 136) = v24;
      *(a1 + 140) = v24;
    }
  }

  else
  {
    *(a1 + 152) = a7;
    v18 = (a1 + 152);
    *(a1 + 148) = 1;
    *(a1 + 164) = 0;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    v22 = (*(**(a1 + 56) + 88))(*(a1 + 56));
    *(a1 + 136) = v22;
    v23 = (*(**(a1 + 56) + 80))(*(a1 + 56));
    *(a1 + 140) = v22 + logf(v23);
  }

  *(a1 + 144) = 0;
  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(v25 + 144) + 0.0;
    *(a1 + 144) = v26;
    v27 = *(a1 + 48);
    if (v27)
    {
      v28 = *(v27 + 32);
    }

    else
    {
      v33 = *(a1 + 16);
      if (v33)
      {
        v29 = (*(*v33 + 16))(v33) + *(a1 + 144);
        goto LABEL_31;
      }

      if (*(v25 + 16))
      {
        v42 = *(v25 + 164);
        if (v42 >= 5)
        {
          v42 = 5;
        }

        v43 = TI::Favonius::SearchParameters::k_prediction_costs[v42];
      }

      else
      {
        v43 = 0.8;
      }

      v41 = *v18;
      v28 = (1.0 - a8) * (v41 * logf(v43));
    }

    v29 = v26 + v28;
LABEL_31:
    *(a1 + 144) = v29;
    goto LABEL_37;
  }

  (*(**(a1 + 16) + 96))(&v44);
  v30 = *(a1 + 128);
  v31 = v44;
  v44 = 0;
  *(a1 + 128) = v31;
  if (v30)
  {
    v32 = atomic_load(v30 + 2);
    if (v32 == 1)
    {
      (*(*v30 + 8))(v30);
    }

    else
    {
      atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
    }

    if (v44)
    {
      v34 = atomic_load(v44 + 2);
      if (v34 == 1)
      {
        (*(*v44 + 8))();
      }

      else
      {
        atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
      }
    }
  }

LABEL_37:
  v35 = *(a1 + 32);
  if (v35)
  {
    v36 = *(v35 + 168);
    *(a1 + 168) = v36;
    if ((*(a1 + 120) & 0x20) != 0)
    {
      *(a1 + 168) = v36 + 1;
    }
  }

  else
  {
    *(a1 + 168) = 0;
  }

  v37 = (a1 + 144);
  v38 = vld1_dup_f32(v37);
  v39 = vmla_n_f32(v38, *(a1 + 136), *(a1 + 152));
  *(a1 + 156) = v39;
  *(a1 + 24) = v39.i32[0];
  return a1;
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::Vector(void *a1, void *a2)
{
  v3 = a2[2];
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  if (v3)
  {
    v5 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
    a1[1] = v5;
    a1[2] = v3;
    if (v5)
    {
      if (*a2)
      {
        v6 = a2[1];
        v7 = 8 * *a2;
        do
        {
          v8 = *v6;
          *v5 = *v6;
          if (v8)
          {
            atomic_fetch_add((v8 + 8), 1u);
          }

          ++v5;
          ++v6;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return a1;
}

float TI::Favonius::SearchNode::decrease_bound_on_score(TI::Favonius::SearchNode *this)
{
  if ((*(this + 148) & 1) == 0)
  {
    if (*(this + 16) || !*(this + 2))
    {
      if (*(this + 7))
      {
        goto LABEL_26;
      }

      v5 = this + 64;
      v6 = *(this + 8);
      if (!v6)
      {
        (*(*this + 112))(this, v5);
        v8 = *(this + 8);
        v7 = *(this + 9);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = ___ZN2TI8Favonius10SearchNode23decrease_bound_on_scoreEv_block_invoke;
        v24[3] = &__block_descriptor_40_e15_B24__0r_v8r_v16l;
        v24[4] = this;
        v9 = v24;
        v25 = v9;
        v10 = 126 - 2 * __clz(v8);
        if (v8)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v7, (v7 + 8 * v8), &v25, v11, 1);

        v6 = *(this + 8);
      }

      v12 = *(this + 9) + 8 * v6;
      v13 = *(v12 - 8);
      *(v12 - 8) = 0;
      v14 = *(this + 7);
      *(this + 7) = v13;
      if (v14)
      {
        v15 = atomic_load(v14 + 2);
        if (v15 == 1)
        {
          (*(*v14 + 248))(v14, v5);
        }

        else
        {
          atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
        }
      }

      v16 = *(this + 8);
      v17 = v16 - 1;
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((*(this + 9) + 8 * (v16 - 1)), (*(this + 9) + 8 * v16));
      *(this + 8) = v17;
      v18 = *this;
    }

    else
    {
      (*(*this + 120))(&v25, this);
      v2 = *(this + 16);
      v3 = v25;
      v25 = 0;
      *(this + 16) = v3;
      if (v2)
      {
        v4 = atomic_load(v2 + 2);
        if (v4 == 1)
        {
          (*(*v2 + 8))(v2);
        }

        else
        {
          atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
        }

        if (v25)
        {
          v19 = atomic_load(v25 + 2);
          if (v19 == 1)
          {
            (*(*v25 + 8))();
          }

          else
          {
            atomic_fetch_add(v25 + 2, 0xFFFFFFFF);
          }
        }
      }

      *(this + 36) = (*(**(this + 16) + 16))(*(this + 16));
      v18 = *this;
    }

    (*(v18 + 136))(this);
LABEL_26:
    *(this + 148) = (*(*this + 128))(this);
    result = *(this + 38);
    v21 = (this + 144);
    v22 = vld1_dup_f32(v21);
    v23 = vmla_n_f32(v22, *(this + 136), result);
    *(this + 156) = v23;
    *(this + 6) = v23.i32[0];
  }

  return result;
}

BOOL ___ZN2TI8Favonius10SearchNode23decrease_bound_on_scoreEv_block_invoke(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = TI::Favonius::SearchNode::partial_language_score(*a2, *(*(v4 + 32) + 56));
  return v5 < TI::Favonius::SearchNode::partial_language_score(*a3, *(*(v4 + 32) + 56));
}

void *TI::Favonius::SearchNode::branch_at_current_bound@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (this[8])
  {
    v3 = this;
    v4 = this[7];
    this[7] = 0;
    v9 = v4;
    (*(*this + 144))(&v10);
    v5 = v10;
    v10 = 0;
    if (v9)
    {
      v6 = atomic_load(v9 + 2);
      if (v6 == 1)
      {
        (*(*v9 + 248))();
      }

      else
      {
        atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
      }
    }

    v7 = v3[7];
    v3[7] = 0;
    if (v7)
    {
      v8 = atomic_load(v7 + 2);
      if (v8 == 1)
      {
        (*(*v7 + 248))(v7);
      }

      else
      {
        atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
      }
    }

    this = (*(*v3 + 48))(v3);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return this;
}

uint64_t TI::Favonius::SearchNode::node_at_current_bound@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (!*(this + 64) && *(this + 148) == 1 && *(this + 149) == 1)
  {
    *(this + 149) = 0;
    *(this + 24) = -8388608;
    *a2 = this;
    atomic_fetch_add((this + 8), 1u);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

atomic_uint *TI::Favonius::SearchNode::clone_substituting_touch@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *a2;
  v8 = *(*(v6 + 8) + 62);
  result = (*(**a2 + 72))();
  if (result)
  {
    atomic_fetch_add(result, 1u);
    goto LABEL_4;
  }

  if (!*(a1 + 48))
  {
LABEL_4:
    operator new();
  }

  *a3 = 0;
  return result;
}

void TI::Favonius::SearchNode::~SearchNode(TI::Favonius::SearchNode *this)
{
  TI::Favonius::SearchNode::~SearchNode(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB210;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 200);
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 176);
  v2 = *(this + 16);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 12);
  if (v4 && *(this + 94) == 1)
  {
    free(v4);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 64);
  v5 = *(this + 7);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 248))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  v7 = *(this + 6);
  if (v7)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = atomic_load(v8 + 2);
    if (v9 == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

void TI::Favonius::SearchNode::input_string_recursive(TI::Favonius::SearchNode *this, KB::String *a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  if (!v4)
  {
    goto LABEL_17;
  }

  v17 = 0x100000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = *(this + 60);
  if ((v7 & 0xB81) != 0)
  {
    v8 = ((v7 >> 7) & 1) + a3;
  }

  else
  {
    TI::Favonius::SearchNode::compute_characters(&v17, v4[7], *(this + 7));
    v9 = v18;
    if (!v18)
    {
      KB::String::compute_length(&v17);
      v9 = v18;
    }

    v4 = *(this + 4);
    v10 = v9 - a3;
    if (v9 > a3)
    {
      TI::Favonius::SearchNode::input_string_recursive(v4, a2, 0);
      v11 = v20;
      if (!v20)
      {
        v11 = &v21;
      }

      v13 = v11;
      v14 = 0;
      v15 = v17;
      v16 = 0;
      KB::String::iterator::initialize(&v13);
      do
      {
        KB::String::append(a2, v16);
        KB::String::iterator::operator++(&v13);
        --v10;
      }

      while (v10);
      goto LABEL_14;
    }

    v8 = a3 - v9;
  }

  TI::Favonius::SearchNode::input_string_recursive(v4, a2, v8);
LABEL_14:
  if (v20 && v19 == 1)
  {
    free(v20);
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
}

unsigned __int16 *TI::Favonius::SearchNode::compute_characters(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v6 = result;
    v7 = (**a3)(a3);
    TI::Favonius::SearchNode::compute_characters(v6, a2, v7);
    v8 = (*(*(*a3 + 16))(a3) + 8);

    return KB::String::append(v6, v8);
  }

  return result;
}

unint64_t TI::Favonius::SearchNode::error_correction_type_for_current_word(TI::Favonius::SearchNode *this)
{
  v2 = (*(*this + 160))(this);
  v3 = *(this + 7);
  if (v3 && (*(*v3 + 72))(v3))
  {
    v4 = *(this + 4);
    if (v4)
    {
      v4 = TI::Favonius::SearchNode::error_correction_type_for_current_word(v4);
    }

    return v4 | v2;
  }

  return v2;
}

void TI::Favonius::SearchNode::build_candidates(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (*(a1 + 56))
  {
    v8 = a2[1] - *a2;
    v10[2](v10, a2);
    for (i = v8 + *a2; i < a2[1]; i += 1000)
    {
      v7[2](v7, i);
      *(i + 776) = *(a1 + 40);
    }
  }
}

unint64_t ___ZNK2TI8Favonius10SearchNode10candidatesEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEf_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1] - *a2;
  v4 = *(a1 + 32);
  (*(**(a1 + 40) + 16))(*(a1 + 40), *(v4 + 7), *(a1 + 48), a2);
  result = TI::Favonius::SearchNode::error_correction_type_for_current_word(v4);
  v6 = a2[1];
  for (i = (v3 + *a2); i < v6; i += 125)
  {
    *(i[1] + 240 * *i - 88) = result;
  }

  return result;
}

void ___ZNK2TI8Favonius10SearchNode16completion_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEffb_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (((*(**(v4 + 56) + 168))(*(v4 + 56)) & 1) == 0)
  {
    v5 = (*(**(v4 + 56) + 136))(*(v4 + 56));
    if (v5)
    {
      v6 = v5;
      if (((*(*v5 + 144))(v5) & 1) == 0)
      {
        (*(**(v4 + 56) + 120))(v16);
        KB::Word::Word(&v12, v16, &kTITokenIDUNK, 0);
        if (v16[1] && BYTE6(v16[0]) == 1)
        {
          free(v16[1]);
        }

        v15 |= 0x800000u;
        v14 = 1065353216;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        *v16 = 0u;
        memset(v17, 0, sizeof(v17));
        (*(**(a1 + 40) + 16))(*(a1 + 40), v6, *(a1 + 48), v16);
        v8 = v16[0];
        v9 = v16[1];
        while (v8 != v9)
        {
          KB::Candidate::append(v8, &v12);
          std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v8);
          v8 += 500;
        }

        v11 = &v18[1] + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v11);
        v11 = v18;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v11);
        v11 = v17 + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v11);
        v11 = v16;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v11);
        v7 = &v12;
        goto LABEL_16;
      }
    }

    if (*(a1 + 56) == 1)
    {
      (*(**(v4 + 56) + 120))(&v12);
      KB::Word::Word(v16, &v12, &kTITokenIDUNK, 0);
      if (v13 && BYTE6(v12) == 1)
      {
        free(v13);
      }

      v20 |= 0x800000u;
      LODWORD(v18[0]) = 1065353216;
      KB::Candidate::Candidate(&v12);
      KB::Candidate::append(&v12, v16);
      std::vector<KB::Candidate>::push_back[abi:nn200100](a2, &v12);
      KB::Candidate::~Candidate(&v12);
      v7 = v16;
LABEL_16:
      KB::Word::~Word(v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ___ZNK2TI8Favonius10SearchNode16prediction_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEff_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  (*(**(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 56), *(a1 + 48), a2);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 == v5)
  {
    v6 = *(a2 + 16);
    if (v4 >= v6)
    {
      v13[4] = a2;
      v7 = 0x1CAC083126E978D5 * ((v6 - v4) >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= 1)
      {
        v8 = 1;
      }

      if (v7 >= 0x20C49BA5E353F7)
      {
        v9 = 0x4189374BC6A7EFLL;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v9);
    }

    bzero(*(a2 + 8), 0x3E8uLL);
    KB::Candidate::Candidate(v5);
    *(a2 + 8) = v5 + 1000;
    KB::LanguageModelContext::operator=(v5 + 784, *(a1 + 48));
  }

  v13[0] = &v11[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v13);
  v13[0] = v11;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v13);
  v13[0] = &v10[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v13);
  v13[0] = v10;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v13);
}

unint64_t *TI::Favonius::SearchNode::get_language_extensions(uint64_t a1, unint64_t *a2)
{
  if (KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix)
  {
    v4 = 200;
  }

  else
  {
    v4 = 176;
  }

  if (!*(a1 + v4))
  {
    (*(**(a1 + 56) + 48))(*(a1 + 56), a1 + v4);
  }

  return WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::operator=(a2, (a1 + v4));
}

void TI::Favonius::SearchNode::create_key_sequence_extensions(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v17 = a1;
  if (a1)
  {
    atomic_fetch_add(a1 + 2, 1u);
  }

  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](a2, &v17);
  if (v17)
  {
    v5 = atomic_load(v17 + 2);
    if (v5 == 1)
    {
      (*(*v17 + 8))();
    }

    else
    {
      atomic_fetch_add(v17 + 2, 0xFFFFFFFF);
    }
  }

  v6 = *a3;
  v13 = a3[1];
  if (*a3 != v13)
  {
    do
    {
      v17 = *a2;
      v7 = v17;
      v8 = *(a2 + 8);
      *a2 = 0;
      *(a2 + 8) = 0;
      v18 = v8;
      *(a2 + 16) = 0;
      std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::reserve(a2, (v8 - v7) >> 3);
      v10 = v17;
      v9 = v18;
      v14 = v18;
      while (v10 != v9)
      {
        memset(v16, 0, sizeof(v16));
        v11 = *v10;
        v12 = *(*(v6 + 8) + 8);
        v15 = v12;
        if (v12)
        {
          atomic_fetch_add(v12, 1u);
        }

        TI::Favonius::SearchNode::get_language_extensions(v11, v16, &v15);
        if (v15)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v15);
        }

        if (v16[0])
        {
          operator new();
        }

        WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(v16);
        ++v10;
        v9 = v14;
      }

      v16[0] = &v17;
      std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](v16);
      v6 += 16;
    }

    while (v6 != v13);
  }
}

uint64_t std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = *result;
    v9 = (v4 - *v3) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v20[4] = v3;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v13);
    }

    v14 = v9;
    v15 = (8 * v9);
    v16 = *a2;
    *a2 = 0;
    v17 = &v15[-v14];
    *v15 = v16;
    v7 = v15 + 1;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v8, v4, v17);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v7;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = v4 + 1;
  }

  v3[1] = v7;
  return result;
}

void *std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

TI::Favonius::SearchNode *TI::Favonius::SearchNode::append_keys_for_debugging(TI::Favonius::SearchNode *this, KB::String *a2)
{
  result = *(this + 4);
  if (result)
  {
    TI::Favonius::SearchNode::append_keys_for_debugging(result, a2);
    v5 = *(*this + 104);

    return v5(this, a2);
  }

  return result;
}

void TI::Favonius::SearchNode::append_debug_data(TI::Favonius::SearchNode *this, __CFString *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0x100000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  TI::Favonius::SearchNode::input_string_recursive(this, &v29, 0);
  v24 = 0x100000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v4 = v32;
  if (!v32)
  {
    v4 = &v33;
  }

  v21 = v4;
  LODWORD(v22) = 0;
  HIDWORD(v22) = v29;
  v23 = 0;
  KB::String::iterator::initialize(&v21);
  while (v23 == 10)
  {
    KB::String::append(&v24, "<BR>", 0xFFFFuLL);
LABEL_8:
    KB::String::iterator::operator++(&v21);
  }

  if (v23)
  {
    KB::String::append(&v24, v23);
    goto LABEL_8;
  }

  LODWORD(v21) = 0x100000;
  WORD2(v21) = 0;
  BYTE6(v21) = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  TI::Favonius::SearchNode::append_keys_for_debugging(this, &v21);
  (*(**(this + 7) + 224))(&v18);
  v13 = 0x100000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = v27;
  if (!v27)
  {
    v5 = &v28;
  }

  if (!v24)
  {
    v5 = "";
  }

  v6 = v22;
  if (!v22)
  {
    v6 = &v23;
  }

  if (v21)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  v8 = v19;
  if (!v19)
  {
    v8 = &v20;
  }

  if (v18)
  {
    v9 = v8;
  }

  else
  {
    v9 = "";
  }

  KB::String::append_format(&v13, "[%s] [L %7.3f + G %7.3f = %7.3f] [word %7.3f] [keys %s] [typing %s]\n", v5, *(this + 34), *(this + 36), *(this + 39), *(this + 40), v7, v9);
  v10 = v16;
  if (!v16)
  {
    v10 = &v17;
  }

  if (v13)
  {
    v11 = v10;
  }

  else
  {
    v11 = "";
  }

  CFStringAppendCString(a2, v11, 0x8000100u);
  if (v16 && v15 == 1)
  {
    free(v16);
  }

  if (v19 && BYTE6(v18) == 1)
  {
    free(v19);
  }

  if (v22 && BYTE6(v21) == 1)
  {
    free(v22);
  }

  if (v27 && v26 == 1)
  {
    free(v27);
  }

  if (v32 && v31 == 1)
  {
    free(v32);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::UnigramTypingModel::~UnigramTypingModel(TI::Favonius::UnigramTypingModel *this)
{
  TI::Favonius::UnigramTypingModel::~UnigramTypingModel(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB2E8;
  v2 = *(this + 10);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](this + 32);
  v6 = *(this + 3);
  if (v6)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
  }

  *this = &unk_283FDCD88;
  v7 = *(this + 2);
  if (v7)
  {
    v8 = atomic_load(v7 + 2);
    if (v8 == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }
}

unsigned int *TI::Favonius::ZephyrTypingModel::set_input_segment_filter(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TI::Favonius::UnigramTypingModel::Hypothesis::Hypothesis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add((a3 + 8), 1u);
  }

  *(a1 + 8) = 1;
  *a1 = &unk_283FDCDD0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = a1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 257;
  *(a1 + 60) = 1065353216;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  {
    v4 = (a1 + 24);
    if (v7)
    {
      operator new();
    }
  }

  v5 = TI::Favonius::ZephyrTypingModel::Hypothesis::Hypothesis(WTF::PassRefPtr<TI::Favonius::ZephyrTypingModel const>)::blank_key;
  if (TI::Favonius::ZephyrTypingModel::Hypothesis::Hypothesis(WTF::PassRefPtr<TI::Favonius::ZephyrTypingModel const>)::blank_key)
  {
    atomic_fetch_add(TI::Favonius::ZephyrTypingModel::Hypothesis::Hypothesis(WTF::PassRefPtr<TI::Favonius::ZephyrTypingModel const>)::blank_key, 1u);
  }

  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v6);
  }

  *a1 = &unk_283FDB330;
  TI::Favonius::DictionaryHypothesis::create();
}

uint64_t *TI::Favonius::UnigramTypingModel::extend_hypotheses(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1))
  {
    v5 = *(a3 + 1);
  }

  else
  {
    v5 = (a3 + 8);
  }

  v18 = v5;
  v6 = *a3;
  v19 = 0;
  v20 = v6;
  v21 = 0;
  KB::String::iterator::initialize(&v18);
  v14 = v5;
  v15 = v6;
  v16 = v6;
  v17 = 0;
  result = KB::String::iterator::initialize(&v14);
  if (v19 != v15)
  {
    v8 = v21;
    v12 = *a2;
    v13 = *(a2 + 1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v9 = (*(*a1 + 16))(a1);
    KB::String::String(v23, v8);
    v10 = *(v9 + 24);
    if (v10)
    {
      (*(*v10 + 48))(&v22);
      operator new();
    }

    std::__throw_bad_function_call[abi:nn200100]();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ___ZN2TI8Favonius18UnigramTypingModel17extend_hypothesesERN3WTF6VectorINS2_6RefPtrINS0_16TypingHypothesisEEELm0EEERKN2KB6StringEj_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = (*(**a2 + 88))();
  return v4 > (*(*v3 + 88))(v3);
}

void TI::Favonius::UnigramTypingModel::Hypothesis::create()
{
  operator new();
}

{
  operator new();
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::Hypothesis(uint64_t a1, const TI::Favonius::UnigramTypingModel::Hypothesis *a2, uint64_t *a3, atomic_uint **a4, char a5)
{
  *(a1 + 8) = 1;
  *a1 = &unk_283FDCDD0;
  v10 = (*(*a2 + 8))(a2);
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add((v10 + 8), 1u);
  }

  v11 = *a4;
  *(a1 + 24) = *a4;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  *(a1 + 32) = a2;
  atomic_fetch_add(a2 + 2, 1u);
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a1 + 40) = a1;
  *(a1 + 48) = v12;
  *(a1 + 56) = 256;
  *(a1 + 60) = 0;
  *(a1 + 68) = -8388608;
  *(a1 + 72) = 0;
  if ((a5 & 1) == 0)
  {
    v15 = *(v13 + 60);
    goto LABEL_10;
  }

  v14 = *(a2 + 6);
  *(a1 + 48) = v14;
  *(a1 + 57) = *(a2 + 57);
  v15 = *(v13 + 60);
  v16 = a1;
  if ((v15 & 0xE) != 0)
  {
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(a2 + 5);
    *(a1 + 40) = v16;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = *(v16 + 32);
  if (v19)
  {
    if ((*(v16 + 56) & 1) == 0)
    {
      *(a1 + 40) = *(v19 + 40);
      if (v14 == v19)
      {
        *(a1 + 48) = *(v19 + 48);
        *(a1 + 57) = *(v19 + 57);
      }
    }
  }

LABEL_10:
  v17 = 1.0;
  if ((v15 & 0xE) != 0)
  {
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    v18 = *(v12 + 40);
LABEL_13:
    if ((*(*(v18 + 24) + 60) & 2) == 0)
    {
LABEL_14:
      *(a1 + 57) = 0;
      v17 = 0.0000004;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v15)
  {
    goto LABEL_33;
  }

  if ((v15 & 0x400) != 0)
  {
    if (!(*(*a1 + 144))(a1))
    {
      v20 = *(*(*(a1 + 40) + 24) + 56);
      v21 = (*(*a1 + 8))(a1);
      v22 = *(a1 + 24);
      v23 = *(v21 + 16);
      if (v23)
      {
        if (((*(*v23 + 24))(v23, v20, *(v22 + 56)) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v37 = *(v22 + 56);
        if ((combines_with_selective_modifier() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_32:
      v17 = 0.01;
      goto LABEL_33;
    }

    v15 = *(*(a1 + 24) + 60);
  }

  if ((v15 & 0x40) != 0)
  {
    v18 = *(a1 + 40);
    goto LABEL_13;
  }

  if ((v15 & 0x80) != 0)
  {
    v34 = *(a1 + 32);
    if (v34)
    {
      v17 = flt_22CC88880[(*(*(*(*v34 + 16))(v34) + 60) & 0x80) == 0];
      v35 = *(a1 + 32);
      if (v35 && ((*(*v35 + 144))(v35) & 1) == 0)
      {
        v36 = *(*(*(a1 + 32) + 40) + 64);
        if (v36 <= 0.0)
        {
          v36 = 1.0;
        }

        v17 = v17 / v36;
      }
    }

    else
    {
      v17 = 0.008;
    }
  }

  else if ((v15 & 0x30) == 0 || (v15 & 8) != 0)
  {
    if ((v15 & 0x300) != 0)
    {
      v17 = 0.002;
    }

    else
    {
      v17 = flt_22CC88888[(v15 & 0x800) == 0];
    }
  }

  else
  {
    v17 = TI::Favonius::ZephyrTypingModel::Hypothesis::typing_probability_of_terminator_key(a1);
  }

LABEL_33:
  *(a1 + 64) = v17;
  *a1 = &unk_283FDB330;
  v24 = *a3;
  *a3 = 0;
  v25 = *(a2 + 11);
  *(a1 + 80) = v24;
  *(a1 + 88) = v25;
  if (v25)
  {
    atomic_fetch_add(v25, 1u);
  }

  *(a1 + 96) = 0xFF8000003F800000;
  if (*(a1 + 57))
  {
    if ((a5 & 1) == 0 && TI::Favonius::UnigramTypingModel::Hypothesis::ends_with_word_apostrophe_word(a1))
    {
      v26 = *(a1 + 80);
      *(a1 + 80) = 0;
      v27 = 0.0000004;
      if (!v26)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v27 = 1.0;
    if ((*(*(*(*a1 + 16))(a1) + 60) & 0x80) != 0)
    {
      v28 = (*(*a1 + 32))(a1);
      v29 = *(v28 + 80);
      if (v29)
      {
        atomic_fetch_add(v29, 1u);
      }

      v30 = *(a1 + 80);
      *(a1 + 80) = v29;
      if (v30)
      {
        WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v30);
      }

      v31 = *(v28 + 96);
      if (v31 <= 0.0)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 1.0 / v31;
      }
    }
  }

  else
  {
    v26 = *(a1 + 80);
    *(a1 + 80) = 0;
    v27 = 1.0;
    if (v26)
    {
LABEL_41:
      WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v26);
    }
  }

LABEL_50:
  TI::Favonius::UnigramTypingModel::Hypothesis::unigram_probability_of_letter_key(a1, a2);
  *(a1 + 96) = v27 * v32;
  return a1;
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::ends_with_word_apostrophe_word(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  if ((*(*this + 144))(this))
  {
    return 0;
  }

  result = (*(*this + 136))(this);
  if (!result)
  {
    return result;
  }

  v3 = result;
  if ((*(*result + 144))(result))
  {
    return 0;
  }

  result = (*(*v3 + 136))(v3);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if ((*(*result + 144))(result) & 1) != 0 || ((*(*this + 168))(this))
  {
    return 0;
  }

  result = (*(*v3 + 168))(v3);
  if (result)
  {
    if (*(*(*(*v3 + 16))(v3) + 56) == 39)
    {
      return (*(*v4 + 168))(v4) ^ 1;
    }

    return 0;
  }

  return result;
}

void TI::Favonius::UnigramTypingModel::Hypothesis::unigram_probability_of_letter_key(TI::Favonius::UnigramTypingModel::Hypothesis *this, const TI::Favonius::UnigramTypingModel::Hypothesis *a2)
{
  v4 = 1.0;
  if ((*(*(*(*this + 16))(this) + 60) & 0xE) != 0)
  {
    v5 = *(this + 10);
    if (v5)
    {
      if (v5 != *(a2 + 10) && ((*(*this + 168))(this) & 1) == 0)
      {
        v4 = *(*(this + 10) + 96);
      }
    }
  }

  if (((*(*this + 72))(this) & 1) == 0 && *(a2 + 10) && ((*(*a2 + 168))(a2) & 1) == 0)
  {
    v4 = v4 * (*(*a2 + 80))(a2);
  }

  if (v4 > 0.0)
  {
    v6 = *(this + 10) == 0;
  }
}

double TI::Favonius::UnigramTypingModel::Hypothesis::probability_of_unigram_prefix(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  v2 = (*(*this + 168))(this);
  LODWORD(result) = 1.0;
  if ((v2 & 1) == 0)
  {
    v4 = *(this + 10);
    if (v4)
    {
      LODWORD(result) = *(v4 + 100);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::extend(TI::Favonius::UnigramTypingModel::Hypothesis *a1, uint64_t *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 10);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = *(*a2 + 60);
  if ((a3 & 1) == 0)
  {
    TI::Favonius::UnigramTypingModel::Hypothesis::next_root_string(a1, &v20);
    TI::Favonius::DictionaryHypothesis::create();
  }

  if (v6)
  {
    if (((v7 & 8) != 0 || (v7 & 0x30) == 0) && (v7 & 0xBC1) == 0)
    {
      v11 = *a2;
      v12 = *(*a2 + 12);
      if (!*(*a2 + 12))
      {
        KB::String::compute_length((v11 + 8));
        v12 = *(v11 + 12);
      }

      if (v12 >= 2)
      {
        v20 = 0x100000;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        if (a3)
        {
          (*(*a1 + 120))(&v18, a1);
          KB::String::operator=(&v20, &v18);
          if (v19)
          {
            if (BYTE6(v18) == 1)
            {
              free(v19);
            }
          }
        }

        KB::String::append(&v20, (*a2 + 8));
        TI::Favonius::DictionaryHypothesis::create();
      }

      if (*(*a2 + 40))
      {
        v13 = *(*a2 + 56);
        operator new();
      }
    }

    v17 = v6;
    v10 = v6;
    v14 = 0;
    atomic_fetch_add(v10, 1u);
  }

  else
  {
    v10 = 0;
    v17 = 0;
    v14 = 1;
  }

  (*(*a1 + 272))(a1, &v17, a2, a3);
  result = v17;
  if (v17)
  {
    result = WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v17);
  }

  if ((v14 & 1) == 0)
  {
    result = WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void TI::Favonius::UnigramTypingModel::Hypothesis::next_root_string(TI::Favonius::UnigramTypingModel::Hypothesis *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_32;
  }

  if (!*(v3[1] + 32))
  {
    goto LABEL_32;
  }

  v4 = v3[7];
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = 8 * v4 - 8;
  v6 = v3 + 2;
  do
  {
    v7 = *v6++;
    v8 = LXCursorTerminatesWordStem();
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5 == 0;
    }

    v5 -= 8;
  }

  while (!v9);
  if (!v8)
  {
    goto LABEL_32;
  }

  v10 = *(v3[1] + 8);
  v24 = 0;
  v11 = 0uLL;
  v23 = 0u;
  if (v3[7])
  {
    v12 = 0;
    v13 = MEMORY[0x277D85DD0];
    do
    {
      v14 = v3[v12 + 2];
      v25 = v13;
      v26 = 0x40000000;
      v27 = ___ZNK2KB22StaticDictionaryCursor15derive_word_idsERNSt3__16vectorI9TITokenIDNS1_9allocatorIS3_EEEERKNS_16StaticDictionaryE_block_invoke;
      v28 = &__block_descriptor_tmp_9_20026;
      v29 = &v23;
      v30 = v10;
      v31 = v12;
      LXCursorEnumerateEntries();
      ++v12;
    }

    while (v12 < v3[7]);
    v11 = v23;
  }

  v16 = *(&v11 + 1);
  v15 = v11;
  if (v11 == *(&v11 + 1))
  {
    v22 = 1;
    if (v11)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v17 = v3[1];
    v18 = *(v17 + 1);
    if (*v18 == *(v18 + 8))
    {
      v19 = -1;
    }

    else
    {
      v19 = **(v18 + 48);
    }

    if (v19 != v15->lexicon_id)
    {
      goto LABEL_24;
    }

    v20 = *v15;
    KB::DictionaryContainer::affix_sentinel(v17, v20, 0, a2);
    if (*a2)
    {
      break;
    }

    v21 = *(a2 + 8);
    if (v21)
    {
      if (*(a2 + 6) == 1)
      {
        free(v21);
      }
    }

LABEL_24:
    if (++v15 == v16)
    {
      v22 = 1;
      goto LABEL_29;
    }
  }

  v22 = 0;
LABEL_29:
  v15 = v23;
  if (v23)
  {
LABEL_30:
    *(&v23 + 1) = v15;
    operator delete(v15);
  }

LABEL_31:
  if (v22)
  {
LABEL_32:
    *a2 = 0x100000;
    *(a2 + 4) = 0;
    *(a2 + 6) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void TI::Favonius::UnigramTypingModel::Hypothesis::~Hypothesis(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  TI::Favonius::UnigramTypingModel::Hypothesis::~Hypothesis(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB330;
  v2 = *(this + 11);
  if (v2)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v3);
  }

  *this = &unk_283FDCDD0;
  v4 = *(this + 4);
  if (v4)
  {
    v5 = atomic_load(v4 + 2);
    if (v5 == 1)
    {
      (*(*v4 + 248))(v4);
    }

    else
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    }
  }

  v6 = *(this + 3);
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = atomic_load(v7 + 2);
    if (v8 == 1)
    {
      (*(*v7 + 40))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::clone_with_key@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = (**a1)(a1);
  v7 = a1[10];
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *a2;
  *a2 = 0;
  v12 = v8;
  v9 = (*(*a1 + 72))(a1);
  (*(*v6 + 272))(&v14, v6, &v13, &v12, v9);
  v10 = v14;
  v14 = 0;
  *a3 = v10;
  if (v12)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v12);
  }

  result = v13;
  if (v13)
  {
    return WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v13);
  }

  return result;
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::clone_with_parent(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 72))(a1))
  {
    v4 = (*(*a2 + 144))(a2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*a1 + 16))(a1);
  return (*(*a2 + 256))(a2, v5, v4);
}

BOOL TI::Favonius::UnigramTypingModel::Hypothesis::ends_with_separator(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  v2 = *(this + 10);
  result = 1;
  if (!v2 || (v3 = *(v2 + 16), !LXCursorIsRoot()))
  {
    if ((*(*this + 72))(this))
    {
      return 0;
    }

    v4 = (*(*this + 32))(this);
    if ((*(*(*(*v4 + 16))(v4) + 60) & 8) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL TI::Favonius::UnigramTypingModel::Hypothesis::ends_with_word_prefix(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  if ((*(*this + 144))(this))
  {
    return 1;
  }

  if (!*(this + 10))
  {
    return 0;
  }

  if ((*(*this + 168))(this))
  {
    return 1;
  }

  v2 = *(this + 10);
  if (*(v2 + 88))
  {
    return 1;
  }

  v4 = *(v2 + 16);
  return LXCursorIsRoot() != 0;
}

void TI::Favonius::UnigramTypingModel::Hypothesis::words_for_input_segment(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 168))(a1))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = (*(*v4 + 16))(v4);
    KB::Word::Word(v29, (*v5 + 8), &kTITokenIDUNK, 0);
    LODWORD(v34) = 1065353216;
    v36 |= 0x4000000u;
LABEL_38:
    std::vector<KB::Word>::push_back[abi:nn200100](a2, v29);
    KB::Word::~Word(v29);
    goto LABEL_39;
  }

  v6 = a1[10];
  if (v6)
  {
    TI::Favonius::DictionaryHypothesis::_words(v6, a2, 1, 1, 1);
    v7 = *a2 != *(a2 + 8);
    (*(*a1 + 120))(&v37, a1);
    v8 = *a2;
    v9 = *(a2 + 8);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1174405120;
    v30 = ___ZNK2TI8Favonius17ZephyrTypingModel10Hypothesis30filter_words_for_input_segmentERNSt3__16vectorIN2KB4WordENS3_9allocatorIS6_EEEE_block_invoke;
    v31 = &__block_descriptor_tmp_16577;
    v32 = a1;
    KB::String::String(v33, &v37);
    if (v8 != v9)
    {
      while ((v30(v29, v8) & 1) == 0)
      {
        v8 += 240;
        if (v8 == v9)
        {
          v8 = v9;
          goto LABEL_15;
        }
      }

      if (v8 != v9 && v8 + 240 != v9)
      {
        v10 = (v8 + 440);
        do
        {
          if ((v30(v29, (v10 - 25)) & 1) == 0)
          {
            KB::String::operator=(v8, (v10 - 25));
            KB::ByteString::operator=((v8 + 32), v10 - 84);
            v11 = *(v10 - 19);
            *(v8 + 56) = *(v10 - 36);
            *(v8 + 48) = v11;
            KB::String::operator=(v8 + 64, (v10 - 17));
            v12 = *(v10 - 13);
            v13 = *(v10 - 11);
            v14 = *(v10 - 7);
            *(v8 + 128) = *(v10 - 9);
            *(v8 + 144) = v14;
            *(v8 + 96) = v12;
            *(v8 + 112) = v13;
            KB::String::operator=(v8 + 160, (v10 - 5));
            *(v8 + 192) = *(v10 - 8);
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v8 + 200, v10);
            v8 += 240;
          }

          v15 = v10 + 5;
          v10 += 30;
        }

        while (v15 != v9);
      }
    }

LABEL_15:
    std::vector<KB::Word>::erase(a2, v8, *(a2 + 8));
    if (v34 && v33[6] == 1)
    {
      free(v34);
    }

    if (v38 && BYTE6(v37) == 1)
    {
      free(v38);
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *a1;
  if (*a2 == *(a2 + 8))
  {
    v21 = (*(v16 + 136))(a1);
    v22 = (*(*a1 + 88))(a1);
    v23 = v22 - (*(*v21 + 88))(v21);
    if (v23 > 0.0)
    {
      v23 = 0.0;
    }

    v24 = expf(v23);
    if (v24 >= 0.00000003)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0.00000003;
    }

    (*(*a1 + 120))(&v37, a1);
    KB::Word::Word(v29, &v37, &kTITokenIDUNK, 0);
    if (v38 && BYTE6(v37) == 1)
    {
      free(v38);
    }

    v26 = 0.0001;
    v27 = v25 * 0.0001;
    if (!v7)
    {
      v26 = 1.0;
      v27 = v25;
    }

    v34 = __PAIR64__(LODWORD(v27), LODWORD(v26));
    v35 |= 0x800000u;
    goto LABEL_38;
  }

  v17 = (*(v16 + 264))(a1);
  v18 = v17 * (*(*a1 + 80))(a1);
  if (v18 < 0.00000003)
  {
    v18 = 0.00000003;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  while (v19 != v20)
  {
    *(v19 + 52) = v18 * *(v19 + 48);
    v19 += 240;
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::UnigramTypingModel::Hypothesis::word_score(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  if ((*(this + 25) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if ((**this)(this))
    {
      v2 = (**this)(this);
      v3 = (*(*v2 + 104))(v2);
      v4 = v3 + logf(*(this + 24));
    }

    else
    {
      v4 = 0.0;
    }

    *(this + 25) = v4;
  }
}

double TI::Favonius::UnigramTypingModel::Hypothesis::probability_of_word_termination(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  v2 = (*(*this + 168))(this);
  LODWORD(result) = 1.0;
  if ((v2 & 1) == 0)
  {
    v4 = *(this + 10);
    if (v4)
    {
      v5 = *(v4 + 8);

      *&result = KB::DictionaryCursors::termination_probability((v4 + 16), v5);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::ends_with_word(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  if (((*(*this + 144))(this) & 1) != 0 || !*(this + 10))
  {
    return 0;
  }

  if ((*(*this + 168))(this))
  {
    return 1;
  }

  v2 = *(this + 10);
  v3 = (v2 + 16);
  v4 = *(v2 + 56);
  if (v4)
  {
    v5 = 8 * v4 - 8;
    v6 = v3;
    do
    {
      v7 = *v6;
      v6 = (v6 + 8);
      HasEntries = LXCursorHasEntries();
      if (HasEntries)
      {
        v9 = 1;
      }

      else
      {
        v9 = v5 == 0;
      }

      v5 -= 8;
    }

    while (!v9);
    if (HasEntries)
    {
      return 1;
    }
  }

  return KB::DictionaryCursors::finishes_dynamic_words(v3);
}

TI::Favonius::DictionaryHypothesis *TI::Favonius::UnigramTypingModel::Hypothesis::predicted_extensions_are_canonical(TI::Favonius::UnigramTypingModel::Hypothesis *this)
{
  if (*(*(*this + 16))(this))
  {
    v2 = (*(*(*(*this + 16))(this) + 60) & 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  result = *(this + 10);
  if (result)
  {
    return ((TI::Favonius::DictionaryHypothesis::allows_restart(result) ^ 1) & v2);
  }

  return result;
}

uint64_t TI::Favonius::DictionaryHypothesis::allows_restart(TI::Favonius::DictionaryHypothesis *this)
{
  v2 = (this + 16);
  v3 = *(this + 7);
  if (v3)
  {
    v4 = 8 * v3 - 8;
    v5 = (this + 16);
    do
    {
      v6 = *v5++;
      v7 = LXCursorTerminatesWordStem();
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 == 0;
      }

      v4 -= 8;
    }

    while (!v8);
    if (v7)
    {
      return 1;
    }
  }

  if (*(*(this + 1) + 64) != 1)
  {
    return 0;
  }

  v9 = *(this + 7);
  if (v9)
  {
    v10 = 8 * v9 - 8;
    v11 = v2;
    do
    {
      v12 = *v11;
      v11 = (v11 + 8);
      HasEntries = LXCursorHasEntries();
      if (HasEntries)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10 == 0;
      }

      v10 -= 8;
    }

    while (!v14);
    if (HasEntries)
    {
      return 1;
    }
  }

  return KB::DictionaryCursors::finishes_dynamic_words(v2);
}

void TI::Favonius::UnigramTypingModel::Hypothesis::predict_extensions(uint64_t *a1, unint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1[10])
  {
    v4 = (*(*a1 + 32))(a1);
    if (((*(*(*(*v4 + 16))(v4) + 60) & 1) != 0 || (*(*(*(*v4 + 16))(v4) + 60) & 0x34E) != 0) && (((*(*a1 + 72))(a1) & 1) != 0 || (*(*(*(*a1 + 16))(a1) + 60) & 8) == 0))
    {
      v5 = *a2;
      TI::Favonius::UnigramTypingModel::Hypothesis::extensions_from_dict_hypothesis(a1, a2, a1[10], 1);
      v6 = *a2;
      v7 = a2[1];
      v8 = v7 + 8 * v5;
      v9 = (v7 + 8 * *a2);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 0x40000000;
      v23 = ___ZNK2TI8Favonius18UnigramTypingModel10Hypothesis18predict_extensionsERN3WTF6VectorINS3_6RefPtrINS0_16TypingHypothesisEEELm0EEE_block_invoke;
      v24 = &__block_descriptor_tmp_12355;
      v25 = a1;
      if (v5 != v6)
      {
        v15 = 8 * v6 - 8 * v5;
        while ((v23(v22, v8) & 1) == 0)
        {
          v8 += 8;
          v15 -= 8;
          if (!v15)
          {
            v10 = v9;
            goto LABEL_23;
          }
        }
      }

      v10 = v9;
      if (v8 != v9)
      {
        v11 = (v8 + 8);
        if ((v8 + 8) == v9)
        {
          v10 = v8;
        }

        else
        {
          v10 = v8;
          do
          {
            if ((v23(v22, v11) & 1) == 0)
            {
              v12 = *v11;
              *v11 = 0;
              v13 = *v10;
              *v10 = v12;
              if (v13)
              {
                v14 = atomic_load(v13 + 2);
                if (v14 == 1)
                {
                  (*(*v13 + 248))(v13);
                }

                else
                {
                  atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
                }
              }

              v10 += 2;
            }

            v11 += 2;
          }

          while (v11 != v9);
        }
      }

LABEL_23:
      v16 = a2[1];
      v17 = (v10 - v16) >> 3;
      if (*a2 >= v17)
      {
        WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct(v10, (v16 + 8 * *a2));
      }

      else
      {
        v18 = a2[2];
        if (v18 < v17)
        {
          v19 = v18 + (v18 >> 1);
          if (v18 < 0x100)
          {
            v19 = 2 * v18;
          }

          if (v19 <= v17)
          {
            v20 = v17;
          }

          else
          {
            v20 = v19;
          }

          WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v20);
          v16 = a2[1];
        }

        if (v16)
        {
          bzero((v16 + 8 * *a2), 8 * (v17 - *a2));
        }
      }

      *a2 = v17;
      if ((*(a1[11] + 64) & 1) == 0 && TI::Favonius::DictionaryHypothesis::allows_restart(a1[10]))
      {
        TI::Favonius::UnigramTypingModel::Hypothesis::next_root_string(a1, v26);
        TI::Favonius::DictionaryHypothesis::create();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::UnigramTypingModel::Hypothesis::extensions_from_dict_hypothesis(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v38 = 0;
  v39 = 0;
  if ((KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix & 1) == 0)
  {
    v8 = *(a3 + 8);
    KB::DictionaryCursors::fill_vector_with_static_trie_children(a3 + 16, &__p);
  }

  KB::DictionaryCursors::merge_dynamic_children_with_static_siblings((a3 + 16), &__p, *(a3 + 8));
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(&v34, 0xCCCCCCCCCCCCCCCDLL * ((v38 - __p) >> 4));
  v10 = __p;
  v9 = v38;
  if (v38 != __p)
  {
    operator new();
  }

  if (v38)
  {
    v11 = __p;
    if (v38 != __p)
    {
      do
      {
        v12 = *(v9 - 3);
        *(v9 - 3) = 0;
        if (v12)
        {
          (*(*v12 + 16))(v12);
        }

        v13 = v9 - 80;
        for (i = -64; i != -88; i -= 8)
        {
          v15 = *&v9[i];
          if (v15)
          {
            CFRelease(v15);
          }

          *&v9[i] = 0;
        }

        v9 -= 80;
      }

      while (v13 != v10);
      v11 = __p;
    }

    v38 = v10;
    operator delete(v11);
  }

  v16 = v34;
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v34 + *a2);
  v17 = v35;
  if (v16)
  {
    v18 = 8 * v16;
    while (1)
    {
      v19 = (*(*a1 + 8))(a1);
      v20 = (*(*v19 + 16))(v19);
      TI::Favonius::KeyFactory::create_key(&v33, v20, (*v17)[22]);
      v21 = v33;
      __p = v33;
      if ((v33[15] & 0xB81) == 0)
      {
        break;
      }

LABEL_34:
      WTF::RefCounted<TI::Favonius::Key>::deref(v21);
LABEL_35:
      ++v17;
      v18 -= 8;
      if (!v18)
      {
        v17 = v35;
        if (v34)
        {
          v29 = 0;
          v30 = 8 * v34;
          do
          {
            v31 = v17[v29 / 8];
            if (v31)
            {
              WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v31);
            }

            v29 += 8;
          }

          while (v30 != v29);
        }

        goto LABEL_46;
      }
    }

    v22 = *v17;
    v32 = v22;
    if (v22)
    {
      atomic_fetch_add(v22, 1u);
    }

    (*(*a1 + 272))(&v33, a1, &v32, &__p, a4);
    v23 = *a2;
    if (*a2 == a2[2])
    {
      v24 = v23 + (v23 >> 1);
      if (v23 < 0x100)
      {
        v24 = 2 * v23;
      }

      if (v24 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      else
      {
        v25 = v24;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v25);
      v26 = a2[1];
      if (!v26)
      {
        if (v33)
        {
          v28 = atomic_load(v33 + 2);
          if (v28 == 1)
          {
            (*(*v33 + 248))();
          }

          else
          {
            atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
          }
        }

LABEL_31:
        if (v32)
        {
          WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(v32);
        }

        v21 = __p;
        if (!__p)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v23 = *a2;
    }

    else
    {
      v26 = a2[1];
    }

    v27 = v33;
    v33 = 0;
    *(v26 + 8 * v23) = v27;
    *a2 = v23 + 1;
    goto LABEL_31;
  }

LABEL_46:
  free(v17);
}

uint64_t ___ZNK2TI8Favonius18UnigramTypingModel10Hypothesis18predict_extensionsERN3WTF6VectorINS3_6RefPtrINS0_16TypingHypothesisEEELm0EEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = (*(**a2 + 16))();
  return TI::Favonius::ZephyrTypingModel::Hypothesis::input_segment_is_extended_by_key(v2, *v3) ^ 1;
}

void TI::Favonius::UnigramTypingModel::Hypothesis::extensions(void *a1, unint64_t *a2, uint64_t *a3)
{
  if (TI::Favonius::ZephyrTypingModel::Hypothesis::input_segment_is_extended_by_key(a1, *a3))
  {
    v6 = TI::Favonius::UnigramTypingModel::Hypothesis::extending_key_could_terminate_input_segment(a1, *a3);
    (*(*a1 + 256))(&v20, a1, a3, 1);
    v7 = v20;
    if (!v6)
    {
      if (!v20)
      {
        return;
      }

      v8 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 256))(&v20, a1, a3, 0);
  v8 = v20;
  if (!v7)
  {
    goto LABEL_22;
  }

  if (v20 && ((*(*v7 + 160))(v7) & 1) == 0 && (*(*v8 + 160))(v8))
  {
    v9 = atomic_load(v7 + 2);
    if (v9 == 1)
    {
      (*(*v7 + 248))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }

    goto LABEL_23;
  }

LABEL_12:
  v10 = *a2;
  if (*a2 != a2[2])
  {
    v13 = a2[1];
    goto LABEL_21;
  }

  v11 = v10 + (v10 >> 1);
  if (v10 < 0x100)
  {
    v11 = 2 * v10;
  }

  if (v11 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v11;
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v12);
  v13 = a2[1];
  if (v13)
  {
    v10 = *a2;
LABEL_21:
    *(v13 + 8 * v10) = v7;
    *a2 = v10 + 1;
    goto LABEL_22;
  }

  v19 = atomic_load(v7 + 2);
  if (v19 == 1)
  {
    (*(*v7 + 248))(v7);
  }

  else
  {
    atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
  }

LABEL_22:
  if (!v8)
  {
    return;
  }

LABEL_23:
  v14 = *a2;
  if (*a2 != a2[2])
  {
    v17 = a2[1];
    goto LABEL_32;
  }

  v15 = v14 + (v14 >> 1);
  if (v14 < 0x100)
  {
    v15 = 2 * v14;
  }

  if (v15 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v15;
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v16);
  v17 = a2[1];
  if (v17)
  {
    v14 = *a2;
LABEL_32:
    *(v17 + 8 * v14) = v8;
    *a2 = v14 + 1;
    return;
  }

  v18 = atomic_load(v8 + 2);
  if (v18 == 1)
  {
    (*(*v8 + 248))(v8);
  }

  else
  {
    atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
  }
}

uint64_t TI::Favonius::UnigramTypingModel::Hypothesis::extending_key_could_terminate_input_segment(void *a1, uint64_t a2)
{
  result = a1[10];
  if (result)
  {
    if (a2 && (*(a2 + 60) & 0xB81) != 0)
    {
      return 0;
    }

    if (TI::Favonius::DictionaryHypothesis::allows_restart(result) & 1) != 0 || ((*(*a1 + 168))(a1))
    {
      return 1;
    }

    if (!a2 || (*(a2 + 60) & 8) == 0)
    {
      return 0;
    }

    v5 = *(a1[10] + 16);
    if (LXCursorIsRoot())
    {
      return 1;
    }

    v6 = a1[10];
    v7 = (v6 + 16);
    v8 = *(v6 + 56);
    if (v8)
    {
      v9 = 8 * v8 - 8;
      v10 = v7;
      do
      {
        v11 = *v10;
        v10 = (v10 + 8);
        HasEntries = LXCursorHasEntries();
        if (HasEntries)
        {
          v13 = 1;
        }

        else
        {
          v13 = v9 == 0;
        }

        v9 -= 8;
      }

      while (!v13);
      if (HasEntries)
      {
        return 1;
      }
    }

    return (KB::DictionaryCursors::finishes_dynamic_words(v7) & 1) != 0;
  }

  return result;
}

uint64_t TI::Favonius::UnigramTypingModel::UnigramTypingModel(uint64_t a1, atomic_uint **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_283FDB2E8;
  v3 = *a2;
  *(a1 + 24) = *a2;
  if (v3 && (atomic_fetch_add(v3, 1u), *a2))
  {
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](v6, *(*a2 + 1) + 112);
  }

  else
  {
    v6[0] = &unk_283FDB478;
    v6[3] = v6;
  }

  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](a1 + 32, v6);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void TI::Favonius::BeamSearch::append_debug_data(TI::Favonius::SearchNode **this, CFMutableStringRef theString)
{
  CFStringAppendCString(theString, "", 0x8000100u);
  CFStringAppendFormat(theString, 0, @"INPUT NODE:\n");
  TI::Favonius::SearchNode::append_debug_data(this[35], theString);
  CFStringAppendFormat(theString, 0, @"STEMS:\n");
  for (i = this[25]; i != this[26]; ++i)
  {
    v5 = *i;
    TI::Favonius::SearchNode::append_debug_data(v5, theString);
  }
}

void TI::Favonius::BeamSearch::generate_prediction_stems(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v45 = *MEMORY[0x277D85DE8];
  v25 = 0;
  memset(v23, 0, sizeof(v23));
  memset(v24, 0, sizeof(v24));
  if (a3)
  {
    v9 = a1[25];
    if (v9 != a1[26])
    {
      v11 = *v9;
      LODWORD(v38) = 0x100000;
      WORD2(v38) = 0;
      BYTE6(v38) = 0;
      v39 = 0;
      LOBYTE(v40) = 0;
      TI::Favonius::SearchNode::input_string_recursive(v11, &v38, 0);
      KB::String::operator=(a3, &v38);
      if (v39)
      {
        if (BYTE6(v38) == 1)
        {
          free(v39);
        }
      }
    }
  }

  v12 = a1[35];
  v33 = 0x100000;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  TI::Favonius::SearchNode::input_string_recursive(v12, &v33, 0);
  v13 = *a1[25];
  v28 = 0x100000;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  TI::Favonius::SearchNode::input_string_recursive(v13, &v28, 0);
  if (KB::String::equal(&v28, &v33, 0))
  {
    v14 = a1[25];
  }

  else
  {
    v14 = a1 + 35;
  }

  v15 = *v14;
  v16 = a1[4];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = ___ZNK2TI8Favonius10SearchNode16prediction_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEff_block_invoke;
  v41 = &__block_descriptor_56_e9_v16__0_v8l;
  v42 = v15;
  v43 = v16;
  v44 = a1 + 6;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___ZNK2TI8Favonius10SearchNode16prediction_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEff_block_invoke_2;
  v26[3] = &__block_descriptor_52_e9_v16__0_v8l;
  v26[4] = v15;
  v26[5] = v16;
  v27 = a5;
  TI::Favonius::SearchNode::build_candidates(v15, v23, &v38, v26);
  v17 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((*(&v23[0] + 1) - *&v23[0]) >> 3));
  v38 = &__block_literal_global_29;
  if (*(&v23[0] + 1) == *&v23[0])
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,false>(*&v23[0], *(&v23[0] + 1), &v38, v18, 1);
  v20 = *(&v23[0] + 1);
  v19 = *&v23[0];
  v21 = 0x1CAC083126E978D5 * ((*(&v23[0] + 1) - *&v23[0]) >> 3);
  if (v21 > a2)
  {
    std::vector<KB::Candidate>::erase(v23, (*&v23[0] + 1000 * a2), *(&v23[0] + 1));
    v20 = *(&v23[0] + 1);
    v19 = *&v23[0];
    v21 = 0x1CAC083126E978D5 * ((*(&v23[0] + 1) - *&v23[0]) >> 3);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a4, v19, v20, v21);
  if (v31 && v30 == 1)
  {
    free(v31);
  }

  if (v36 && v35 == 1)
  {
    free(v36);
  }

  v38 = &v24[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v38);
  v38 = v24;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v38);
  v38 = &v23[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v38);
  v38 = v23;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v38);
  v22 = *MEMORY[0x277D85DE8];
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v35[125] = *MEMORY[0x277D85DE8];
LABEL_2:
  v10 = a1;
  while (1)
  {
    v11 = a2 - v10;
    v12 = 0x1CAC083126E978D5 * (a2 - v10);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      goto LABEL_94;
    }

    if (v12 == 2)
    {
      if (!(*(*a3 + 16))())
      {
        goto LABEL_94;
      }

      v24 = v10;
      v23 = a2 - 125;
      goto LABEL_66;
    }

LABEL_10:
    if (v11 <= 23999)
    {
      v25 = v10 + 125;
      v27 = v10 == a2 || v25 == a2;
      if (a5)
      {
        if (!v27)
        {
          v28 = 0;
          do
          {
            v29 = v25;
            if ((*(*a3 + 16))())
            {
              KB::Candidate::Candidate(v35, v29);
              v30 = v28;
              while (1)
              {
                KB::Candidate::operator=((v10 + v30 + 1000), (v10 + v30));
                if (!v30)
                {
                  break;
                }

                v30 -= 1000;
                if (((*(*a3 + 16))() & 1) == 0)
                {
                  v31 = (v10 + v30 + 1000);
                  goto LABEL_83;
                }
              }

              v31 = v10;
LABEL_83:
              KB::Candidate::operator=(v31, v35);
              KB::Candidate::~Candidate(v35);
            }

            v25 = (v29 + 1000);
            v28 += 1000;
          }

          while ((v29 + 1000) != a2);
        }
      }

      else if (!v27)
      {
        do
        {
          v32 = v25;
          if ((*(*a3 + 16))())
          {
            KB::Candidate::Candidate(v35, v32);
            do
            {
              v33 = v10;
              KB::Candidate::operator=(v10 + 125, v10);
              v10 -= 125;
            }

            while (((*(*a3 + 16))() & 1) != 0);
            KB::Candidate::operator=(v33, v35);
            KB::Candidate::~Candidate(v35);
          }

          v25 = (v32 + 1000);
          v10 = v32;
        }

        while ((v32 + 1000) != a2);
      }

      goto LABEL_94;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,KB::Candidate*>(v10, a2, a2, a3);
      }

      goto LABEL_94;
    }

    v13 = &v10[125 * (v12 >> 1)];
    if (v11 < 0x1F401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v13, v10, a2 - 125, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10, v13, a2 - 125, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10 + 125, v13 - 125, a2 - 250, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10 + 250, v13 + 125, a2 - 375, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v13 - 125, v13, v13 + 125, a3);
      KB::Candidate::Candidate(v35, v10);
      KB::Candidate::operator=(v10, v13);
      KB::Candidate::operator=(v13, v35);
      KB::Candidate::~Candidate(v35);
    }

    --a4;
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      KB::Candidate::Candidate(v35, v10);
      if ((*(*a3 + 16))())
      {
        a1 = v10;
        do
        {
          a1 += 125;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v19 = v10 + 125;
        do
        {
          a1 = v19;
          if (v19 >= a2)
          {
            break;
          }

          v20 = (*(*a3 + 16))();
          v19 = a1 + 125;
        }

        while (!v20);
      }

      v21 = a2;
      if (a1 < a2)
      {
        v21 = a2;
        do
        {
          v21 -= 125;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (a1 < v21)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v21);
        do
        {
          a1 += 125;
        }

        while (!(*(*a3 + 16))());
        do
        {
          v21 -= 125;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      if (a1 - 125 != v10)
      {
        KB::Candidate::operator=(v10, a1 - 125);
      }

      KB::Candidate::operator=(a1 - 125, v35);
      KB::Candidate::~Candidate(v35);
      a5 = 0;
      goto LABEL_2;
    }

    KB::Candidate::Candidate(v35, v10);
    v14 = v10;
    do
    {
      v15 = v14;
      v14 += 125;
    }

    while (((*(*a3 + 16))() & 1) != 0);
    v16 = a2;
    if (v15 == v10)
    {
      v16 = a2;
      do
      {
        if (v14 >= v16)
        {
          break;
        }

        v16 -= 125;
      }

      while (((*(*a3 + 16))() & 1) == 0);
    }

    else
    {
      do
      {
        v16 -= 125;
      }

      while (!(*(*a3 + 16))());
    }

    if (v14 >= v16)
    {
      a1 = v14;
    }

    else
    {
      v17 = v16;
      a1 = v14;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v17);
        do
        {
          a1 += 125;
        }

        while (((*(*a3 + 16))() & 1) != 0);
        do
        {
          v17 -= 125;
        }

        while (!(*(*a3 + 16))());
      }

      while (a1 < v17);
    }

    if (a1 - 125 != v10)
    {
      KB::Candidate::operator=(v10, a1 - 125);
    }

    KB::Candidate::operator=(a1 - 125, v35);
    KB::Candidate::~Candidate(v35);
    if (v14 < v16)
    {
      goto LABEL_40;
    }

    v18 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(v10, a1 - 125, a3);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(a1, a2, a3))
    {
      if (v18)
      {
        goto LABEL_2;
      }

LABEL_40:
      std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,false>(v10, a1 - 125, a3, a4, a5 & 1);
      a5 = 0;
      goto LABEL_2;
    }

    a2 = a1 - 125;
    if (v18)
    {
      goto LABEL_94;
    }
  }

  if (v12 == 3)
  {
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10, v10 + 125, a2 - 125, a3);
    goto LABEL_94;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10, v10 + 125, v10 + 250, v10 + 375, a2 - 125, a3);
      goto LABEL_94;
    }

    goto LABEL_10;
  }

  v22 = a2 - 125;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(v10, v10 + 125, v10 + 250, a3);
  if ((*(*a3 + 16))())
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v10 + 250, v22);
    if ((*(*a3 + 16))())
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v10 + 125, v10 + 250);
      if ((*(*a3 + 16))())
      {
        v23 = v10 + 125;
        v24 = v10;
LABEL_66:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v24, v23);
      }
    }
  }

LABEL_94:
  v34 = *MEMORY[0x277D85DE8];
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = (*(*a4 + 16))();
  v9 = (*(*a4 + 16))();
  if (v8)
  {
    if (v9)
    {
      v10 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      if (!(*(*a4 + 16))())
      {
        return;
      }

      v10 = a2;
    }

    v11 = a3;
  }

  else
  {
    if (!v9)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
    if (!(*(*a4 + 16))())
    {
      return;
    }

    v10 = a1;
    v11 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v10, v11);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(a1, a2, a3, a6);
  if ((*(*a6 + 16))())
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
    if ((*(*a6 + 16))())
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      if ((*(*a6 + 16))())
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      }
    }
  }

  if ((*(*a6 + 16))())
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a4, a5);
    if ((*(*a6 + 16))())
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
      if ((*(*a6 + 16))())
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
        if ((*(*a6 + 16))())
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
        }
      }
    }
  }
}

void std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,KB::Candidate*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v30[125] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x1CAC083126E978D5 * (a2 - a1);
    if (a2 - a1 >= 1001)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[125 * v10];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(a1, a4, v9, v12);
        v12 -= 125;
        --v11;
      }

      while (v11);
    }

    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if ((*(*a4 + 16))())
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v13, a1);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(a1, a4, v9, a1);
        }

        v13 += 125;
      }

      while (v13 != a3);
    }

    if (v8 >= 1001)
    {
      v14 = 0x1CAC083126E978D5 * (v8 >> 3);
      do
      {
        v28 = v6;
        KB::Candidate::Candidate(v29, a1);
        v15 = 0;
        v16 = a1;
        do
        {
          v17 = &v16[125 * v15];
          v18 = v17 + 125;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 < v14)
          {
            v21 = v17 + 250;
            if ((*(*a4 + 16))())
            {
              v18 = v21;
              v19 = v20;
            }
          }

          KB::Candidate::operator=(v16, v18);
          v16 = v18;
          v15 = v19;
        }

        while (v19 <= (v14 - 2) / 2);
        v6 = v28 - 125;
        if (v18 == v28 - 125)
        {
          KB::Candidate::operator=(v18, v29);
        }

        else
        {
          KB::Candidate::operator=(v18, v28 - 125);
          KB::Candidate::operator=(v6, v29);
          v22 = v18 - a1 + 1000;
          if (v22 >= 1001)
          {
            v23 = (0x1CAC083126E978D5 * (v22 >> 3) - 2) >> 1;
            v24 = &a1[125 * v23];
            if ((*(*a4 + 16))())
            {
              KB::Candidate::Candidate(v30, v18);
              do
              {
                v25 = v24;
                KB::Candidate::operator=(v18, v24);
                if (!v23)
                {
                  break;
                }

                v23 = (v23 - 1) >> 1;
                v24 = &a1[125 * v23];
                v18 = v25;
              }

              while (((*(*a4 + 16))() & 1) != 0);
              KB::Candidate::operator=(v25, v30);
              KB::Candidate::~Candidate(v30);
            }
          }
        }

        KB::Candidate::~Candidate(v29);
      }

      while (v14-- > 2);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v18[125] = *MEMORY[0x277D85DE8];
  v6 = 0x1CAC083126E978D5 * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(a1, a1 + 125, a2 - 125, a3);
        goto LABEL_28;
      case 4:
        v14 = a2 - 125;
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(a1, a1 + 125, a1 + 250, a3);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_28;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1 + 250, v14);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_28;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1 + 125, a1 + 250);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_28;
        }

        v8 = a1 + 125;
        v7 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(a1, a1 + 125, a1 + 250, a1 + 375, a2 - 125, a3);
        goto LABEL_28;
    }

LABEL_12:
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,0>(a1, a1 + 125, a1 + 250, a3);
    v9 = (a1 + 375);
    if (a1 + 375 != a2)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if ((*(*a3 + 16))())
        {
          KB::Candidate::Candidate(v18, v9);
          v12 = v10;
          while (1)
          {
            KB::Candidate::operator=((a1 + v12 + 3000), (a1 + v12 + 2000));
            if (v12 == -2000)
            {
              break;
            }

            v12 -= 1000;
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v13 = (a1 + v12 + 3000);
              goto LABEL_20;
            }
          }

          v13 = a1;
LABEL_20:
          KB::Candidate::operator=(v13, v18);
          if (++v11 == 8)
          {
            v15 = v9 + 1000 == a2;
            KB::Candidate::~Candidate(v18);
            goto LABEL_29;
          }

          KB::Candidate::~Candidate(v18);
        }

        v10 += 1000;
        v9 += 1000;
        if (v9 == a2)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

  if (v6 < 2)
  {
    goto LABEL_28;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  if ((*(*a3 + 16))())
  {
    v7 = a1;
    v8 = a2 - 125;
LABEL_6:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v8);
  }

LABEL_28:
  v15 = 1;
LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[125] = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x1CAC083126E978D5 * ((a4 - a1) >> 3))
    {
      v10 = (0x395810624DD2F1AALL * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 1000 * v10);
      v12 = 0x395810624DD2F1AALL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*(*a2 + 16))())
      {
        v11 += 125;
        v10 = v12;
      }

      if (((*(*a2 + 16))() & 1) == 0)
      {
        KB::Candidate::Candidate(v17, v5);
        do
        {
          v13 = v11;
          KB::Candidate::operator=(v5, v11);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = (a1 + 1000 * v14);
          v15 = 2 * v10 + 2;
          if (v15 < a3 && (*(*a2 + 16))())
          {
            v11 += 125;
            v14 = v15;
          }

          v5 = v13;
          v10 = v14;
        }

        while (!(*(*a2 + 16))());
        KB::Candidate::operator=(v13, v17);
        KB::Candidate::~Candidate(v17);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::BeamSearch::generate_completion_stems(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, char a4@<W4>, void *i@<X8>, float a6@<S0>)
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v30, 0, sizeof(v30));
  if (a2)
  {
    v11 = *(a1 + 200);
    if (v11 != *(a1 + 208))
    {
      v13 = *v11;
      LODWORD(v36[0]) = 0x100000;
      WORD2(v36[0]) = 0;
      BYTE6(v36[0]) = 0;
      *(&v36[0] + 1) = 0;
      LOBYTE(v36[1]) = 0;
      TI::Favonius::SearchNode::input_string_recursive(v13, v36, 0);
      KB::String::operator=(a2, v36);
      if (*(&v36[0] + 1))
      {
        if (BYTE6(v36[0]) == 1)
        {
          free(*(&v36[0] + 1));
        }
      }
    }
  }

  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100]((a1 + 224), *(a1 + 224));
  v14 = 0uLL;
  if (a3 != 4)
  {
    v38 = 0;
    memset(v36, 0, sizeof(v36));
    memset(v37, 0, sizeof(v37));
    v15 = *(a1 + 208) - *(a1 + 200);
    if (v15)
    {
      v28 = i;
      v16 = 0;
      v17 = v15 >> 3;
      if (v17 >= 3)
      {
        v17 = 3;
      }

      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = MEMORY[0x277D85DD0];
      v20 = 8 * v17;
      do
      {
        v21 = *(*(a1 + 200) + v16);
        v22 = *(a1 + 32);
        v34[0] = v18;
        v34[1] = 3221225472;
        v34[2] = ___ZNK2TI8Favonius10SearchNode16completion_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEffb_block_invoke;
        v34[3] = &__block_descriptor_57_e9_v16__0_v8l;
        v34[4] = v21;
        v34[5] = v22;
        v34[6] = (a1 + 48);
        v35 = a4;
        v32[0] = v19;
        v32[1] = 3221225472;
        v32[2] = ___ZNK2TI8Favonius10SearchNode16completion_stemsEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEffb_block_invoke_2;
        v32[3] = &__block_descriptor_52_e9_v16__0_v8l;
        v32[4] = v21;
        v32[5] = v22;
        v33 = a6;
        TI::Favonius::SearchNode::build_candidates(v21, v36, v34, v32);
        v16 += 8;
      }

      while (v20 != v16);
      v23 = *(&v36[0] + 1);
      v24 = *&v36[0];
      for (i = v28; v24 != v23; v24 = (v24 + 1000))
      {
        std::vector<KB::Candidate>::push_back[abi:nn200100](v29, v24);
      }
    }

    v34[0] = &v37[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v34);
    v34[0] = v37;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v34);
    v34[0] = &v36[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v34);
    v34[0] = v36;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v34);
    v14 = v29[0];
  }

  v25 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((*(&v14 + 1) - v14) >> 3));
  *&v36[0] = &__block_literal_global_26;
  if (*(&v14 + 1) == v14)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,false>(v14, *(&v14 + 1), v36, v26, 1);
  *i = 0;
  i[1] = 0;
  i[2] = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(i, *&v29[0], *(&v29[0] + 1), 0x1CAC083126E978D5 * ((*(&v29[0] + 1) - *&v29[0]) >> 3));
  *&v36[0] = &v30[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v36);
  *&v36[0] = v30;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v36);
  *&v36[0] = &v29[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v36);
  *&v36[0] = v29;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v36);
  v27 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::BeamSearch::generate_candidates(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v113 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  log = kac_get_log();
  v13 = os_signpost_id_make_with_pointer(log, (a1 ^ 0x16));
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v14, "kbdManager.beamSearchCandidateGeneration", &unk_22CCA4FEF, buf, 2u);
    }
  }

  if (((a4 - 1) & 0xFFFFFFFD) != 0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = *(a1 + 200);
  if (a3 && v16 != *(a1 + 208))
  {
    v17 = *v16;
    *buf = 0x100000;
    *&buf[4] = 0;
    buf[6] = 0;
    v100 = 0;
    LOBYTE(v101) = 0;
    TI::Favonius::SearchNode::input_string_recursive(v17, buf, 0);
    KB::String::operator=(a3, buf);
    if (v100 && buf[6] == 1)
    {
      free(v100);
    }

    v16 = *(a1 + 200);
  }

  v107 = 0;
  v108 = 0;
  *v106 = 0;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::reserve(v106, (*(a1 + 208) - v16) >> 3);
  v18 = *(a1 + 200);
  v19 = *(a1 + 208);
  *buf = MEMORY[0x277D85DD0];
  v100 = 0x40000000;
  v101 = ___ZNK2TI8Favonius10BeamSearch38filtered_beam_for_candidate_generationERKNSt3__16vectorIN3WTF6RefPtrINS0_10SearchNodeEEENS2_9allocatorIS7_EEEEN2KB10LookupTypeE_block_invoke;
  v102 = &__block_descriptor_tmp_13_12374;
  v103 = a1;
  LODWORD(__p) = a4;
  while (v18 != v19)
  {
    if (v101(buf, v18))
    {
      std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](v106, v18);
    }

    ++v18;
  }

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 0x40000000;
  v93[2] = ___ZNK2TI8Favonius10BeamSearch19generate_candidatesEmPN2KB6StringENS2_10LookupTypeEf_block_invoke;
  v93[3] = &__block_descriptor_tmp_15;
  v93[4] = a1;
  v96 = a4 != 4;
  v94 = a4;
  v95 = v15;
  *buf = v93;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  __p = 0u;
  memset(v105, 0, 32);
  v21 = *v106;
  v20 = v107;
  while (v21 != v20)
  {
    TI::Favonius::SearchNodeResultQueue::visit(buf, v21++);
  }

  v97[0] = v106;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](v97);
  *(a5 + 100) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  v22 = *(a1 + 200);
  v23 = *(a1 + 208);
  v24 = a2;
  for (i = 0; v22 != v23; v22 += 8)
  {
    if (*(*v22 + 56))
    {
      v26 = (*(*v22 + 140) & 0x7FFFFFFFu) < 0x7F800000;
    }

    else
    {
      v26 = 0;
    }

    i += v26;
  }

  if (i >= a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = i;
  }

  if (v27)
  {
    if (v27 < 0x4189374BC6A7F0)
    {
      v110 = a5;
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v27);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v28 = std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100]((a1 + 224), *(a1 + 224));
  v89 = 0;
  v90 = &v89;
  v91 = 0x2000000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2000000000;
  v88 = 0;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 0x40000000;
  v81 = ___ZNK2TI8Favonius10BeamSearch19generate_candidatesEmPN2KB6StringENS2_10LookupTypeEf_block_invoke_3;
  v82 = &unk_278731AB0;
  v83 = &v85;
  v84 = &v89;
  v29 = KB::system_uptime(v28);
  v76 = (a1 + 224);
  v30 = *(*(a1 + 24) + 40);
  TI::Favonius::SearchNodeResultQueue::next_word_node(v106, buf);
  v31 = *v106;
  v79 = *v106;
  if (!*v106)
  {
    goto LABEL_96;
  }

  v32 = v29 + v30;
  v77 = a1 + 48;
  v78 = a1;
  do
  {
    if (((v81)(v80, v24) & 1) == 0)
    {
      v33 = (v81)(v80, 2 * a2);
      if (!v33 || KB::system_uptime(v33) >= v32)
      {
        break;
      }
    }

    if ((*(*(*(**(v31 + 56) + 16))(*(v31 + 56)) + 60) & 0x20) != 0)
    {
      TI::Favonius::SearchNodeResultQueue::next_word_node(v106, buf);
      v49 = *v106;
      *v106 = 0;
      v79 = v49;
      goto LABEL_88;
    }

    v34 = *(a1 + 280);
    v35 = v31;
    do
    {
      v36 = v35;
      v35 = *(v35 + 32);
    }

    while (v35 && !*(v36 + 16));
    v37 = v34[4];
    if (!v37)
    {
      v39 = 0;
      goto LABEL_76;
    }

    v38 = 0;
    v39 = 0;
    do
    {
      v40 = v36;
      v41 = v34;
      if (!v36)
      {
        goto LABEL_53;
      }

      v36 = *(v36 + 32);
      if ((*(*v40 + 56))(v40) != 2 || (*(*v34 + 56))(v34) != 1 || (v34 = v37[4]) == 0)
      {
        if ((*(*v40 + 56))(v40) == 1)
        {
          v42 = (*(*v41 + 56))(v41) != 2 || v36 == 0;
          if (!v42)
          {
            v36 = *(v36 + 32);
          }
        }

LABEL_53:
        v34 = v37;
      }

      v43 = *(v41 + 60);
      if ((v43 & 0xB81) != 0)
      {
        if ((v43 & 0x80) != 0)
        {
          ++v38;
        }

        else if (v40 && (v41[15] & 0x100) != 0)
        {
          v39 |= (v40[60] & 0x100) == 0;
        }
      }

      else
      {
        *v106 = 0x100000;
        *&v106[4] = 0;
        v106[6] = 0;
        v107 = 0;
        LOBYTE(v108) = 0;
        TI::Favonius::SearchNode::compute_characters(v106, v34[7], v41[7]);
        v44 = *&v106[4];
        if (!*&v106[4])
        {
          KB::String::compute_length(v106);
          v44 = *&v106[4];
        }

        if (v38 >= v44)
        {
          v45 = v38 - v44;
        }

        else
        {
          v45 = 0;
        }

        v46 = v44 >= v38;
        v47 = v44 - v38;
        if (v46)
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        if (v107 && v106[6] == 1)
        {
          free(v107);
        }

        v39 <<= v48;
        v38 = v45;
      }

      v37 = v34[4];
    }

    while (v37);
    v31 = v79;
LABEL_76:
    v50 = *(a5 + 8) - *a5;
    a1 = v78;
    v51 = *(v78 + 32);
    *v106 = MEMORY[0x277D85DD0];
    v107 = 3221225472;
    v108 = ___ZNK2TI8Favonius10SearchNode10candidatesEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEf_block_invoke;
    v109 = &__block_descriptor_56_e9_v16__0_v8l;
    v110 = v31;
    v111 = v51;
    v112 = v77;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = ___ZNK2TI8Favonius10SearchNode10candidatesEPKNS0_18CandidateGeneratorERKN2KB20LanguageModelContextERNS5_19CandidateCollectionEf_block_invoke_2;
    v97[3] = &__block_descriptor_52_e9_v16__0_v8l;
    v97[4] = v31;
    v97[5] = v51;
    v98 = a6;
    TI::Favonius::SearchNode::build_candidates(v31, a5, v106, v97);
    v52 = *a5;
    v53 = *(a5 + 8) - *a5;
    v24 = a2;
    if (v50 < v53 && !*(v31 + 16))
    {
      std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](v76, &v79);
      v52 = *a5;
      v53 = *(a5 + 8) - *a5;
    }

    v54 = 0x1CAC083126E978D5 * (v50 >> 3);
    v55 = 0x1CAC083126E978D5 * (v53 >> 3);
    v56 = v55 > v54;
    v57 = v55 - v54;
    if (v56)
    {
      v58 = 0;
      v59 = (*(v31 + 16) == 0) << 19;
      v60 = &v52[v50 >> 3];
      do
      {
        *(v60 + 195) = v39;
        v61 = *v60;
        v62 = v60[1] + 240 * *v60;
        v63 = *(v62 - 136);
        *(v62 - 136) = v63 & 0xFFF7FFFF | v59;
        if (v61)
        {
          v58 |= (v63 & 0x800000) == 0;
        }

        v60 += 125;
        --v57;
      }

      while (v57);
      if (v58)
      {
        ++v86[3];
      }
    }

    TI::Favonius::SearchNodeResultQueue::next_word_node(v106, buf);
    v64 = *v106;
    *v106 = 0;
    v79 = v64;
    if (v31)
    {
LABEL_88:
      v65 = atomic_load((v31 + 8));
      if (v65 == 1)
      {
        (*(*v31 + 8))(v31);
      }

      else
      {
        atomic_fetch_add((v31 + 8), 0xFFFFFFFF);
      }

      if (*v106)
      {
        v66 = atomic_load((*v106 + 8));
        if (v66 == 1)
        {
          (*(**v106 + 8))();
        }

        else
        {
          atomic_fetch_add((*v106 + 8), 0xFFFFFFFF);
        }
      }
    }

    ++v90[3];
    v31 = v79;
  }

  while (v79);
LABEL_96:
  v67 = *a5;
  v68 = *(a5 + 8);
  v69 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v68 - *a5) >> 3));
  v42 = v68 == *a5;
  *v106 = &__block_literal_global_23;
  if (v42)
  {
    v70 = 0;
  }

  else
  {
    v70 = v69;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),KB::Candidate*,false>(v67, v68, v106, v70, 1);
  kdebug_trace();
  v71 = kac_get_log();
  v72 = os_signpost_id_make_with_pointer(v71, (a1 ^ 0x16));
  if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v73 = v72;
    if (os_signpost_enabled(v71))
    {
      *v106 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v71, OS_SIGNPOST_INTERVAL_END, v73, "kbdManager.beamSearchCandidateGeneration", &unk_22CCA4FEF, v106, 2u);
    }
  }

  if (v31)
  {
    v74 = atomic_load((v31 + 8));
    if (v74 == 1)
    {
      (*(*v31 + 8))(v31);
    }

    else
    {
      atomic_fetch_add((v31 + 8), 0xFFFFFFFF);
    }
  }

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  *v106 = &v105[8];
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](v106);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  *v106 = &v100;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](v106);
  v75 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZNK2TI8Favonius10BeamSearch19generate_candidatesEmPN2KB6StringENS2_10LookupTypeEf_block_invoke@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(result + 48) == 1)
  {
    v5 = result;
    v6 = *a2;
    if (*(result + 40) == 1 || *(v6 + 168) <= *(*(*(result + 32) + 280) + 168))
    {
      v7 = *(v6 + 56);
      if (!v7 || (*(*(*(*v7 + 16))(v7) + 60) & 8) == 0 || (result = (*(*v7 + 72))(v7), result))
      {
        v8 = *a2;
        v9 = *(v5 + 44);
        if (*(v8 + 16))
        {
          v10 = *(v8 + 164);
          if (v10 >= 5)
          {
            v10 = 5;
          }

          v11 = TI::Favonius::SearchParameters::k_prediction_costs[v10];
        }

        else
        {
          v11 = 0.8;
        }

        logf(v11);
        TI::Favonius::SearchNodeLanguageExtensions::create();
      }
    }
  }

  *a3 = 0;
  return result;
}

unsigned int **std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](unsigned int **result, uint64_t *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v23 = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v10);
    }

    v11 = (8 * v7);
    v19 = 0;
    v20 = v11;
    v12 = 0;
    v21 = v11;
    v22 = 0;
    v13 = *a2;
    *v11 = *a2;
    if (v13)
    {
      atomic_fetch_add((v13 + 8), 1u);
      v11 = v20;
      v14 = v21;
      v12 = v22;
    }

    else
    {
      v14 = v11;
    }

    v6 = v14 + 2;
    v15 = v2[1];
    v16 = (v11 + *v2 - v15);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v6;
    v18 = v2[2];
    v2[2] = v12;
    v21 = v17;
    v22 = v18;
    v19 = v17;
    v20 = v17;
    result = std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v19);
  }

  else
  {
    v5 = *a2;
    *v3 = *a2;
    if (v5)
    {
      atomic_fetch_add((v5 + 8), 1u);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t TI::Favonius::BeamSearch::should_consider_for_candidate_generation(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*a2 + 32);
  if (!v3)
  {
    return 1;
  }

  v4 = *(*a2 + 120);
  if ((v4 & 0x4E) != 0 || a3 == 1 && (v4 & 0x80) != 0)
  {
    return 1;
  }

  if ((v4 & 0x300) == 0 || v4 != *(*(a1 + 280) + 120))
  {
    return 0;
  }

  v8 = *(*a2 + 32);
  atomic_fetch_add((v3 + 8), 1u);
  should_consider_for_candidate_generation = TI::Favonius::BeamSearch::should_consider_for_candidate_generation();
  if (v8)
  {
    v7 = atomic_load(v8 + 2);
    if (v7 == 1)
    {
      (*(*v8 + 8))();
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  return should_consider_for_candidate_generation;
}

void TI::Favonius::BeamSearch::drop_touches(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, atomic_uint **a5@<X4>, atomic_uint **a6@<X5>, uint64_t a7@<X8>)
{
  *v30 = 0u;
  *__p = 0u;
  v32 = 1065353216;
  v29 = 0;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *a2 + 8 * (v13 >> 6);
  v15 = v13;
  if (v13 < 0x40)
  {
LABEL_4:
    if (v15)
    {
      v16 = __clz(__rbit64(*v12 & (0xFFFFFFFFFFFFFFFFLL >> -v15)));
      if ((*v12 & (0xFFFFFFFFFFFFFFFFLL >> -v15)) != 0)
      {
        LODWORD(v15) = v16;
      }
    }
  }

  else
  {
    while (!*v12)
    {
      ++v12;
      v15 -= 64;
      if (v15 <= 0x3F)
      {
        goto LABEL_4;
      }
    }

    LODWORD(v15) = __clz(__rbit64(*v12));
  }

  v17 = v15;
  v18 = *a5;
  *a5 = 0;
  v19 = *a6;
  *a6 = 0;
  v27 = v19;
  v28 = v18;
  TI::Favonius::BeamSearch::drop_touches(a7, a1, v12, v17, v14, v13 & 0x3F, a3, a4, &v28, &v27, v30, &v29);
  if (v27)
  {
    v20 = atomic_load(v27 + 2);
    if (v20 == 1)
    {
      (*(*v27 + 8))();
    }

    else
    {
      atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
    }
  }

  if (v28)
  {
    v21 = atomic_load(v28 + 2);
    if (v21 == 1)
    {
      (*(*v28 + 40))();
    }

    else
    {
      atomic_fetch_add(v28 + 2, 0xFFFFFFFF);
    }
  }

  v22 = __p[0];
  if (__p[0])
  {
    do
    {
      v23 = v22;
      v22 = *v22;
      v24 = v23[3];
      if (v24)
      {
        v25 = atomic_load(v24 + 2);
        if (v25 == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
        }
      }

      operator delete(v23);
    }

    while (v22);
  }

  v26 = v30[0];
  v30[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

uint64_t TI::Favonius::BeamSearch::drop_touches(uint64_t result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, atomic_uint **a9, atomic_uint **a10, uint64_t *a11, atomic_uint **a12)
{
  v17 = result;
  v18 = *a9;
  *a9 = 0;
  v19 = *a10;
  *a10 = 0;
  if (a3 == a5 && a4 == a6)
  {
    v20 = a2[3];
    if (v20)
    {
      v76 = v18;
      if (v18)
      {
        atomic_fetch_add(v18 + 2, 1u);
      }

      v75 = v19;
      if (v19)
      {
        atomic_fetch_add(v19 + 2, 1u);
      }

      v66 = v19;
      v22 = (*(*a2 + 16))(a2);
      v74 = v22;
      if (v22)
      {
        atomic_fetch_add((v22 + 8), 1u);
      }

      (**v20)(&v69, v20, a7, a8, &v76, &v75, &v74);
      v23 = v69;
      v69 = 0;
      if (v74)
      {
        v24 = atomic_load(v74 + 2);
        if (v24 == 1)
        {
          (*(*v74 + 8))();
        }

        else
        {
          atomic_fetch_add(v74 + 2, 0xFFFFFFFF);
        }
      }

      if (v75)
      {
        v35 = atomic_load(v75 + 2);
        if (v35 == 1)
        {
          (*(*v75 + 8))();
        }

        else
        {
          atomic_fetch_add(v75 + 2, 0xFFFFFFFF);
        }
      }

      result = v76;
      if (v76)
      {
        v36 = atomic_load(v76 + 2);
        if (v36 == 1)
        {
          result = (*(*v76 + 40))();
        }

        else
        {
          atomic_fetch_add(v76 + 2, 0xFFFFFFFF);
        }
      }

      *a12 = *(v23 + 35);
      v65 = v17;
      if (v18)
      {
        result = (*(*v18 + 8))(v18);
        if (result)
        {
          result = (*(**(a2[35] + 56) + 64))(*(a2[35] + 56));
          if (result)
          {
            v69 = a2[35];
            result = std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::__emplace_unique_key_args<TI::Favonius::SearchNode *,TI::Favonius::SearchNode *,TI::Favonius::SearchNode *&>(a11, v69);
          }

          v37 = a11[3];
          if (v37 <= 2)
          {
            v38 = a2[25];
            if (v38 == a2[26])
            {
LABEL_101:
              if (!v37)
              {
                v69 = a2[35];
                result = std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::__emplace_unique_key_args<TI::Favonius::SearchNode *,TI::Favonius::SearchNode *,TI::Favonius::SearchNode *&>(a11, v69);
              }
            }

            else
            {
              while (1)
              {
                v39 = *v38;
                result = std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::find<TI::Favonius::SearchNode *>(*a11, a11[1], *v38);
                if (!result)
                {
                  result = (*(**(v39 + 56) + 64))(*(v39 + 56));
                  if (result)
                  {
                    v40 = 0x9DDFEA08EB382D69 * ((8 * (v39 & 0x1FFFFFFF) + 8) ^ HIDWORD(v39));
                    v41 = 0x9DDFEA08EB382D69 * (HIDWORD(v39) ^ (v40 >> 47) ^ v40);
                    v42 = 0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47));
                    v43 = a11[1];
                    if (v43)
                    {
                      v44 = vcnt_s8(v43);
                      v44.i16[0] = vaddlv_u8(v44);
                      if (v44.u32[0] > 1uLL)
                      {
                        v45 = 0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47));
                        if (v42 >= *&v43)
                        {
                          v45 = v42 % *&v43;
                        }
                      }

                      else
                      {
                        v45 = v42 & (*&v43 - 1);
                      }

                      v46 = *(*a11 + 8 * v45);
                      if (v46)
                      {
                        for (i = *v46; i; i = *i)
                        {
                          v48 = i[1];
                          if (v48 == v42)
                          {
                            if (i[2] == v39)
                            {
                              goto LABEL_75;
                            }
                          }

                          else
                          {
                            if (v44.u32[0] > 1uLL)
                            {
                              if (v48 >= *&v43)
                              {
                                v48 %= *&v43;
                              }
                            }

                            else
                            {
                              v48 &= *&v43 - 1;
                            }

                            if (v48 != v45)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    operator new();
                  }
                }

LABEL_75:
                v37 = a11[3];
                if (v37 >= 3)
                {
                  break;
                }

                if (++v38 == a2[26])
                {
                  goto LABEL_101;
                }
              }
            }
          }

LABEL_103:
          *v65 = v23;
          goto LABEL_104;
        }

        v49 = *(v23 + 35);
      }

      v50 = a2[35];
      v51 = 0x9DDFEA08EB382D69 * ((8 * (v50 & 0x1FFFFFFF) + 8) ^ HIDWORD(v50));
      v52 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v51 >> 47) ^ v51);
      v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
      v54 = a11[1];
      if (v54)
      {
        v55 = vcnt_s8(v54);
        v55.i16[0] = vaddlv_u8(v55);
        if (v55.u32[0] > 1uLL)
        {
          v56 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
          if (v53 >= *&v54)
          {
            v56 = v53 % *&v54;
          }
        }

        else
        {
          v56 = v53 & (*&v54 - 1);
        }

        v58 = *(*a11 + 8 * v56);
        if (v58)
        {
          for (j = *v58; j; j = *j)
          {
            v60 = j[1];
            if (v60 == v53)
            {
              if (j[2] == v50)
              {
                goto LABEL_103;
              }
            }

            else
            {
              if (v55.u32[0] > 1uLL)
              {
                if (v60 >= *&v54)
                {
                  v60 %= *&v54;
                }
              }

              else
              {
                v60 &= *&v54 - 1;
              }

              if (v60 != v56)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

LABEL_23:
    *result = 0;
    goto LABEL_105;
  }

  if (!a2[2])
  {
    goto LABEL_23;
  }

  v64 = result;
  v25 = a6 - 1;
  if (a6 >= 0x40uLL)
  {
    v25 = a6 - 64;
  }

  v26 = (a5 + 8 * (v25 >> 6));
  v27 = (a6 - 1) & 0x3F;
  v73 = v18;
  if (v18)
  {
    atomic_fetch_add(v18 + 2, 1u);
  }

  v72 = v19;
  if (v19)
  {
    atomic_fetch_add(v19 + 2, 1u);
  }

  v66 = v19;
  TI::Favonius::BeamSearch::drop_touches(&v69);
  v28 = v69;
  v69 = 0;
  if (v72)
  {
    v29 = atomic_load(v72 + 2);
    if (v29 == 1)
    {
      (*(*v72 + 8))();
    }

    else
    {
      atomic_fetch_add(v72 + 2, 0xFFFFFFFF);
    }
  }

  result = v73;
  v19 = v66;
  if (v73)
  {
    v30 = atomic_load(v73 + 2);
    if (v30 != 1)
    {
      atomic_fetch_add(v73 + 2, 0xFFFFFFFF);
      if (v28)
      {
        goto LABEL_29;
      }

LABEL_40:
      *v64 = 0;
      goto LABEL_105;
    }

    result = (*(*v73 + 40))();
    v19 = v66;
  }

  if (!v28)
  {
    goto LABEL_40;
  }

LABEL_29:
  if (((*v26 >> v27) & 1) == 0)
  {
    *v64 = v28;
    goto LABEL_105;
  }

  v63 = v28;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v31 = a2[25];
  v32 = a2[26];
  if (v31 != v32)
  {
    do
    {
      TI::Favonius::BeamSearch::clone_search_node(&v68, *v31, a3, a4, a5, a6, a11, *a12);
      v33 = v68;
      v77[0] = v68;
      if (v68)
      {
        std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](&v69, v77);
        v34 = atomic_load(v33 + 2);
        if (v34 == 1)
        {
          (*(*v33 + 8))(v33);
        }

        else
        {
          atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
        }
      }

      ++v31;
    }

    while (v31 != v32);
    if (v69 != v70)
    {
      TI::Favonius::BeamSearch::clone_search_node(v77, a2[35], a3, a4, a5, a6, a11, *a12);
      if (v77[0])
      {
        operator new();
      }
    }
  }

  *v64 = 0;
  v77[0] = &v69;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](v77);
  result = v63;
  v57 = atomic_load(v63 + 2);
  if (v57 == 1)
  {
    result = (*(*v63 + 8))();
  }

  else
  {
    atomic_fetch_add(v63 + 2, 0xFFFFFFFF);
  }

LABEL_104:
  v19 = v66;
LABEL_105:
  if (v19)
  {
    v61 = atomic_load(v19 + 2);
    if (v61 == 1)
    {
      result = (*(*v19 + 8))(v19);
    }

    else
    {
      atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
    }
  }

  if (v18)
  {
    v62 = atomic_load(v18 + 2);
    if (v62 == 1)
    {
      return (*(*v18 + 40))(v18);
    }

    else
    {
      atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::__emplace_unique_key_args<TI::Favonius::SearchNode *,TI::Favonius::SearchNode *,TI::Favonius::SearchNode *&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::find<TI::Favonius::SearchNode *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
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

void *TI::Favonius::BeamSearch::clone_search_node(atomic_uint **a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, atomic_uint *a8)
{
  v14 = a2;
  v47 = a2;
  result = std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::find<TI::Favonius::SearchNode *>(*a7, *(a7 + 8), a2);
  if (result)
  {
    v17 = result[3];
    *a1 = v17;
    if (!v17)
    {
      return result;
    }

    v18 = v17 + 2;
    v19 = 1;
LABEL_4:
    atomic_fetch_add(v18, v19);
    return result;
  }

  if (a3 == a5 && a4 == a6)
  {
    goto LABEL_19;
  }

  if ((*(*v14 + 56))(v14) == 2 && a3 + (((a4 + 1) >> 3) & 0x3FFFFFF8) == a5 && ((a4 + 1) & 0x3F) == a6)
  {
    if (a8)
    {
      atomic_fetch_add(a8 + 2, 1u);
      v14 = v47;
      goto LABEL_22;
    }

LABEL_19:
    result = std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::__emplace_unique_key_args<TI::Favonius::SearchNode *,TI::Favonius::SearchNode *&,decltype(nullptr)>(a7, v14);
    *a1 = 0;
    return result;
  }

  v22 = *(v14 + 32);
  v23 = (*(*v14 + 56))(v14);
  v24 = a6 - v23;
  if (v24 - 63 >= 0)
  {
    v24 -= 63;
  }

  v25 = v24 >> 6;
  v26 = a6 >> 6;
  if (v23)
  {
    v26 = v25;
  }

  TI::Favonius::BeamSearch::clone_search_node(&v46, v22, a3, a4, a5 + 8 * v26, (a6 - v23) & 0x3F, a7, a8);
  a8 = v46;
  if (!v46)
  {
    goto LABEL_19;
  }

LABEL_22:
  result = (*(*v14 + 56))(v14);
  if (result != 1)
  {
    v28 = a3 + ((((a4 & 0xFFFFFFFE) + 2) >> 3) & 0x3FFFFFF8);
    if (v28 < a5 || v28 == a5 && ((a4 + 2) & 0x3Fu) <= a6)
    {
      v29 = a6;
      v30 = a6 - 65;
      if (a6 < 0x41uLL)
      {
        v30 = a6 - 2;
      }

      if ((*(a5 + 8 * (v30 >> 6)) >> (a6 + 62)))
      {
        v31 = a6 - 1;
        if (a6 >= 0x40uLL)
        {
          v31 = a6 - 64;
        }

        if (((*(a5 + 8 * (v31 >> 6)) >> (a6 - 1)) & 1) == 0)
        {
          result = (*(*v14 + 88))(&v46, v14, a8);
          goto LABEL_44;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v29 = a6;
    }

    v33 = v29 - 64;
    v32 = v29 < 64;
    v34 = v29 - 1;
    if (!v32)
    {
      v34 = v33;
    }

    if (((*(a5 + 8 * (v34 >> 6)) >> (a6 - 1)) & 1) == 0)
    {
      goto LABEL_42;
    }

    result = (*(*v14 + 80))(&v46, v14, a8);
LABEL_44:
    v35 = v46;
    goto LABEL_45;
  }

  v27 = a6 - 1;
  if (a6 >= 0x40uLL)
  {
    v27 = a6 - 64;
  }

  if ((*(a5 + 8 * (v27 >> 6)) >> (a6 - 1)))
  {
LABEL_36:
    result = (*(*v14 + 72))(&v46, v14, a8);
    goto LABEL_44;
  }

LABEL_42:
  v35 = 0;
LABEL_45:
  v36 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
  v37 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v36 >> 47) ^ v36);
  v38 = 0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47));
  v39 = *(a7 + 8);
  if (!*&v39)
  {
    goto LABEL_62;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  if (v40.u32[0] > 1uLL)
  {
    v41 = 0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47));
    if (v38 >= *&v39)
    {
      v41 = v38 % *&v39;
    }
  }

  else
  {
    v41 = v38 & (*&v39 - 1);
  }

  v42 = *(*a7 + 8 * v41);
  if (!v42 || (v43 = *v42) == 0)
  {
LABEL_62:
    operator new();
  }

  while (1)
  {
    v44 = v43[1];
    if (v44 == v38)
    {
      break;
    }

    if (v40.u32[0] > 1uLL)
    {
      if (v44 >= *&v39)
      {
        v44 %= *&v39;
      }
    }

    else
    {
      v44 &= *&v39 - 1;
    }

    if (v44 != v41)
    {
      goto LABEL_62;
    }

LABEL_61:
    v43 = *v43;
    if (!v43)
    {
      goto LABEL_62;
    }
  }

  if (v43[2] != v14)
  {
    goto LABEL_61;
  }

  *a1 = v35;
  v18 = a8 + 2;
  v45 = atomic_load(a8 + 2);
  if (v45 != 1)
  {
    v19 = -1;
    goto LABEL_4;
  }

  return (*(*a8 + 8))(a8);
}

void std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__init_with_size[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode>*,WTF::RefPtr<TI::Favonius::SearchNode>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::SearchNode> const&,WTF::RefPtr<TI::Favonius::SearchNode> const&),WTF::RefPtr<TI::Favonius::SearchNode>*,false>(uint64_t result, unsigned int **a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 1);
  v134 = (a2 - 2);
  v9 = (a2 - 3);
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v71 = (*(*a3 + 16))();
          result = (*(*a3 + 16))();
          if ((v71 & 1) == 0)
          {
            if (!result)
            {
              return result;
            }

            v127 = v10[1];
            v10[1] = *v8;
            *v8 = v127;
LABEL_222:
            result = (*(*a3 + 16))();
            if (result)
            {
              *v10 = vextq_s8(*v10, *v10, 8uLL);
            }

            return result;
          }

          v70 = *v10;
          if (result)
          {
LABEL_124:
            *v10 = *v8;
          }

          else
          {
            *v10 = v10[1];
            v10[1] = v70;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v70 = v10[1];
            v10[1] = *v8;
          }

          *v8 = v70;
          return result;
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v10, v10 + 1, v10 + 2, v8, a3);
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v10, v10 + 1, v10 + 2, v10 + 3, a3);
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v69 = v10[3];
          v10[3] = *v8;
          *v8 = v69;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          goto LABEL_222;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v70 = *v10;
        goto LABEL_124;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v85 = v12 >> 1;
      v86 = v12 >> 1;
      do
      {
        v87 = v86;
        if (v85 >= v86)
        {
          v88 = (2 * v86) | 1;
          v89 = &v7[v88];
          if (2 * v86 + 2 < v11 && (*(*a3 + 16))())
          {
            ++v89;
            v88 = 2 * v87 + 2;
          }

          v90 = &v7[v87];
          result = (*(*a3 + 16))();
          if ((result & 1) == 0)
          {
            v91 = *v90;
            *v90 = 0;
            v141 = v91;
            do
            {
              v92 = v89;
              v93 = *v89;
              *v89 = 0;
              v94 = *v90;
              *v90 = v93;
              if (v94)
              {
                v95 = atomic_load(v94 + 2);
                if (v95 == 1)
                {
                  (*(*v94 + 8))(v94);
                }

                else
                {
                  atomic_fetch_add(v94 + 2, 0xFFFFFFFF);
                }
              }

              if (v85 < v88)
              {
                break;
              }

              v96 = (2 * v88) | 1;
              v89 = &v7[v96];
              v97 = 2 * v88 + 2;
              if (v97 < v11 && (*(*a3 + 16))())
              {
                ++v89;
                v96 = v97;
              }

              v90 = v92;
              v88 = v96;
            }

            while (!(*(*a3 + 16))());
            v98 = *v92;
            *v92 = v141;
            if (v98)
            {
              v99 = atomic_load(v98 + 2);
              if (v99 == 1)
              {
                (*(*v98 + 8))(v98);
              }

              else
              {
                atomic_fetch_add(v98 + 2, 0xFFFFFFFF);
              }
            }

            result = 0;
          }
        }

        v86 = v87 - 1;
      }

      while (v87);
      while (1)
      {
        if (v11 < 2)
        {
          goto LABEL_218;
        }

        v100 = 0;
        v136 = *v7;
        *v7 = 0;
        v101 = v7;
        do
        {
          v102 = v101;
          v103 = &v101[v100];
          v101 = v103 + 1;
          v104 = 2 * v100;
          v100 = (2 * v100) | 1;
          v105 = v104 + 2;
          if (v104 + 2 < v11)
          {
            v106 = v103 + 2;
            if ((*(*a3 + 16))())
            {
              v101 = v106;
              v100 = v105;
            }
          }

          v107 = *v101;
          *v101 = 0;
          v108 = *v102;
          *v102 = v107;
          if (v108)
          {
            v109 = atomic_load(v108 + 2);
            if (v109 == 1)
            {
              (*(*v108 + 8))(v108);
            }

            else
            {
              atomic_fetch_add(v108 + 2, 0xFFFFFFFF);
            }
          }
        }

        while (v100 <= ((v11 - 2) >> 1));
        v110 = (a2 - 1);
        if (v101 == a2 - 1)
        {
          result = *v101;
          *v101 = v136;
          if (result)
          {
            v126 = atomic_load((result + 8));
            if (v126 == 1)
            {
              result = (*(*result + 8))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }
          }
        }

        else
        {
          v111 = *v110;
          *v110 = 0;
          v112 = *v101;
          *v101 = v111;
          if (v112)
          {
            v113 = atomic_load(v112 + 2);
            if (v113 == 1)
            {
              (*(*v112 + 8))(v112);
            }

            else
            {
              atomic_fetch_add(v112 + 2, 0xFFFFFFFF);
            }
          }

          result = *v110;
          *v110 = v136;
          if (result)
          {
            v114 = atomic_load((result + 8));
            if (v114 == 1)
            {
              result = (*(*result + 8))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }
          }

          v115 = ((v101 + 1) - v7) >> 3;
          v116 = v115 < 2;
          v117 = v115 - 2;
          if (!v116)
          {
            v118 = v117 >> 1;
            v119 = &v7[v117 >> 1];
            result = (*(*a3 + 16))();
            if (result)
            {
              v120 = *v101;
              *v101 = 0;
              v142 = v120;
              while (1)
              {
                v121 = v119;
                v122 = *v119;
                *v119 = 0;
                v123 = *v101;
                *v101 = v122;
                if (v123)
                {
                  v124 = atomic_load(v123 + 2);
                  if (v124 != 1)
                  {
                    atomic_fetch_add(v123 + 2, 0xFFFFFFFF);
                    if (!v118)
                    {
                      goto LABEL_210;
                    }

                    goto LABEL_209;
                  }

                  (*(*v123 + 8))(v123);
                }

                if (!v118)
                {
                  goto LABEL_210;
                }

LABEL_209:
                v118 = (v118 - 1) >> 1;
                v119 = &v7[v118];
                v101 = v121;
                if (((*(*a3 + 16))() & 1) == 0)
                {
LABEL_210:
                  result = *v121;
                  *v121 = v142;
                  if (result)
                  {
                    v125 = atomic_load((result + 8));
                    if (v125 == 1)
                    {
                      (*(*result + 8))(result);
                    }

                    else
                    {
                      atomic_fetch_add((result + 8), 0xFFFFFFFF);
                    }

                    result = 0;
                  }

                  break;
                }
              }
            }
          }
        }

LABEL_218:
        --a2;
        v116 = v11-- > 2;
        if (!v116)
        {
          return result;
        }
      }
    }

    v13 = &v10[v11 >> 1];
    v14 = *(*a3 + 16);
    if (v11 >= 0x81)
    {
      v15 = v14();
      v16 = (*(*a3 + 16))();
      if (v15)
      {
        v17 = *v10;
        if (v16)
        {
          *v10 = *v8;
        }

        else
        {
          *v10 = *v13;
          *v13 = v17;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_28;
          }

          v17 = *v13;
          *v13 = *v8;
        }

        *v8 = v17;
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v8;
        *v8 = v21;
        if ((*(*a3 + 16))())
        {
          v22 = *v10;
          *v10 = *v13;
          *v13 = v22;
        }
      }

LABEL_28:
      v25 = v13 - 1;
      v26 = (*(*a3 + 16))();
      v27 = (*(*a3 + 16))();
      if (v26)
      {
        v28 = v7[1];
        if (v27)
        {
          v29 = a2 - 2;
          v7[1] = *v134;
        }

        else
        {
          v7[1] = *v25;
          *v25 = v28;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_40;
          }

          v28 = *v25;
          v29 = a2 - 2;
          *v25 = *v134;
        }

        *v29 = v28;
      }

      else if (v27)
      {
        v30 = *v25;
        *v25 = *v134;
        *v134 = v30;
        if ((*(*a3 + 16))())
        {
          v31 = v7[1];
          v7[1] = *v25;
          *v25 = v31;
        }
      }

LABEL_40:
      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v7[2] = *v9;
        }

        else
        {
          v7[2] = v13[1];
          v13[1] = v34;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_49;
          }

          v34 = v13[1];
          v13[1] = *v9;
        }

        *v9 = v34;
      }

      else if (v33)
      {
        v35 = v13[1];
        v13[1] = *v9;
        *v9 = v35;
        if ((*(*a3 + 16))())
        {
          v36 = v7[2];
          v7[2] = v13[1];
          v13[1] = v36;
        }
      }

LABEL_49:
      v37 = (*(*a3 + 16))();
      v38 = (*(*a3 + 16))();
      if (v37)
      {
        v39 = *v25;
        if (v38)
        {
          v40 = *v13;
          *v25 = v13[1];
          v13[1] = v39;
LABEL_58:
          v44 = *v7;
          *v7 = v40;
          *v13 = v44;
          goto LABEL_59;
        }

        *v25 = *v13;
        *v13 = v39;
        v43 = (*(*a3 + 16))();
        v40 = *v13;
        if (!v43)
        {
          goto LABEL_58;
        }

        v42 = v13[1];
        *v13 = v42;
        v13[1] = v40;
      }

      else
      {
        v40 = *v13;
        if (!v38)
        {
          goto LABEL_58;
        }

        *v13 = v13[1];
        v13[1] = v40;
        v41 = (*(*a3 + 16))();
        v40 = *v13;
        if (!v41)
        {
          goto LABEL_58;
        }

        v42 = *v25;
        *v25 = v40;
        *v13 = v42;
      }

      v40 = v42;
      goto LABEL_58;
    }

    v18 = v14();
    v19 = (*(*a3 + 16))();
    if (v18)
    {
      v20 = *v13;
      if (v19)
      {
        *v13 = *v8;
      }

      else
      {
        *v13 = *v10;
        *v10 = v20;
        if (!(*(*a3 + 16))())
        {
          goto LABEL_59;
        }

        v20 = *v10;
        *v10 = *v8;
      }

      *v8 = v20;
    }

    else if (v19)
    {
      v23 = *v10;
      *v10 = *v8;
      *v8 = v23;
      if ((*(*a3 + 16))())
      {
        v24 = *v13;
        *v13 = *v10;
        *v10 = v24;
      }
    }

LABEL_59:
    --a4;
    if (a5)
    {
      v45 = *v7;
LABEL_62:
      *v7 = 0;
      v138 = v45;
      v47 = v7;
      do
      {
        v48 = v47++;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v49 = a2;
      if (v48 == v7)
      {
        v49 = a2;
        do
        {
          if (v47 >= v49)
          {
            break;
          }

          --v49;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          --v49;
        }

        while (!(*(*a3 + 16))());
      }

      if (v47 < v49)
      {
        v50 = v47;
        v51 = v49;
        do
        {
          v52 = *v50;
          *v50 = *v51;
          *v51 = v52;
          do
          {
            v48 = v50++;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            --v51;
          }

          while (!(*(*a3 + 16))());
        }

        while (v50 < v51);
      }

      if (v48 != v7)
      {
        v53 = *v48;
        *v48 = 0;
        v54 = *v7;
        *v7 = v53;
        if (v54)
        {
          v55 = atomic_load(v54 + 2);
          if (v55 == 1)
          {
            (*(*v54 + 8))(v54);
          }

          else
          {
            atomic_fetch_add(v54 + 2, 0xFFFFFFFF);
          }
        }
      }

      v56 = *v48;
      *v48 = v138;
      if (v56)
      {
        v57 = atomic_load(v56 + 2);
        if (v57 == 1)
        {
          (*(*v56 + 8))(v56);
        }

        else
        {
          atomic_fetch_add(v56 + 2, 0xFFFFFFFF);
        }
      }

      if (v47 < v49)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::SearchNode> const&,WTF::RefPtr<TI::Favonius::SearchNode> const&),WTF::RefPtr<TI::Favonius::SearchNode>*,false>(v7, v48, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v48 + 1;
      }

      else
      {
        v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::SearchNode> const&,WTF::RefPtr<TI::Favonius::SearchNode> const&),WTF::RefPtr<TI::Favonius::SearchNode>*>(v7, v48, a3);
        v10 = v48 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::SearchNode> const&,WTF::RefPtr<TI::Favonius::SearchNode> const&),WTF::RefPtr<TI::Favonius::SearchNode>*>(v48 + 1, a2, a3);
        if (result)
        {
          a2 = v48;
          if (v58)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v58)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      v46 = (*(*a3 + 16))();
      v45 = *v7;
      if (v46)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      v139 = v45;
      if ((*(*a3 + 16))())
      {
        v10 = v7;
        do
        {
          ++v10;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v59 = v7 + 1;
        do
        {
          v10 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v60 = (*(*a3 + 16))();
          v59 = v10 + 1;
        }

        while (!v60);
      }

      v61 = a2;
      if (v10 < a2)
      {
        v61 = a2;
        do
        {
          --v61;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (v10 < v61)
      {
        v62 = *v10;
        *v10 = *v61;
        *v61 = v62;
        do
        {
          ++v10;
        }

        while (!(*(*a3 + 16))());
        do
        {
          --v61;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      v63 = (v10 - 1);
      if (v10 - 1 != v7)
      {
        v64 = *v63;
        *v63 = 0;
        v65 = *v7;
        *v7 = v64;
        if (v65)
        {
          v66 = atomic_load(v65 + 2);
          if (v66 == 1)
          {
            (*(*v65 + 8))(v65);
          }

          else
          {
            atomic_fetch_add(v65 + 2, 0xFFFFFFFF);
          }
        }
      }

      v67 = *v63;
      *v63 = v139;
      if (v67)
      {
        v68 = atomic_load(v67 + 2);
        if (v68 == 1)
        {
          (*(*v67 + 8))(v67);
        }

        else
        {
          atomic_fetch_add(v67 + 2, 0xFFFFFFFF);
        }
      }

      result = 0;
      a5 = 0;
    }
  }

  v72 = (v10 + 1);
  v74 = v10 == a2 || v72 == a2;
  if ((a5 & 1) == 0)
  {
    if (!v74)
    {
      do
      {
        v128 = v72;
        result = (*(*a3 + 16))();
        if (result)
        {
          v129 = 0;
          v130 = *v128;
          *v128 = 0;
          v143 = v130;
          while (1)
          {
            v131 = *v7;
            *v7 = 0;
            v7[1] = v131;
            if (v129)
            {
              v132 = atomic_load(v129 + 2);
              if (v132 == 1)
              {
                (*(*v129 + 8))(v129);
              }

              else
              {
                atomic_fetch_add(v129 + 2, 0xFFFFFFFF);
              }
            }

            if (((*(*a3 + 16))() & 1) == 0)
            {
              break;
            }

            v129 = *v7--;
          }

          result = *v7;
          *v7 = v143;
          if (result)
          {
            v133 = atomic_load((result + 8));
            if (v133 == 1)
            {
              (*(*result + 8))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }

            result = 0;
          }
        }

        v72 = (v128 + 1);
        v7 = v128;
      }

      while (v128 + 1 != a2);
    }

    return result;
  }

  if (v74)
  {
    return result;
  }

  v75 = 0;
  while (2)
  {
    v76 = v72;
    result = (*(*a3 + 16))();
    if (!result)
    {
      goto LABEL_154;
    }

    v77 = 0;
    v78 = *v76;
    *v76 = 0;
    v140 = v78;
    v79 = v75;
    while (2)
    {
      v80 = (v10 + v79);
      v81 = *(v10 + v79);
      *v80 = 0;
      v80[1] = v81;
      if (!v77)
      {
LABEL_143:
        if (!v79)
        {
          break;
        }

        goto LABEL_146;
      }

      v82 = atomic_load(v77 + 2);
      if (v82 == 1)
      {
        (*(*v77 + 8))(v77);
        goto LABEL_143;
      }

      atomic_fetch_add(v77 + 2, 0xFFFFFFFF);
      if (v79)
      {
LABEL_146:
        v83 = (v10 + v79);
        if (((*(*a3 + 16))() & 1) == 0)
        {
          goto LABEL_149;
        }

        v77 = *v80;
        v79 -= 8;
        continue;
      }

      break;
    }

    v83 = v10;
LABEL_149:
    result = *v83;
    *v83 = v140;
    if (result)
    {
      v84 = atomic_load((result + 8));
      if (v84 == 1)
      {
        (*(*result + 8))(result);
      }

      else
      {
        atomic_fetch_add((result + 8), 0xFFFFFFFF);
      }

      result = 0;
    }

LABEL_154:
    v72 = v76 + 1;
    v75 += 8;
    if (v76 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::SearchNode> const&,WTF::RefPtr<TI::Favonius::SearchNode> const&),WTF::RefPtr<TI::Favonius::SearchNode>*>(uint64_t *a1, unsigned int **a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = (a2 - 1);
        v12 = (*(*a3 + 16))();
        v13 = (*(*a3 + 16))();
        if (v12)
        {
          v14 = *a1;
          if (v13)
          {
            *a1 = *v11;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v14;
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v14 = a1[1];
            a1[1] = *v11;
          }

          *v11 = v14;
          return 1;
        }

        if (!v13)
        {
          return 1;
        }

        v18 = a1[1];
        a1[1] = *v11;
        *v11 = v18;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = (a2 - 1);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_16;
    }

    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*(*a3 + 16))())
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_16:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    v17 = *a1;
    if (v16)
    {
      *a1 = a1[2];
      a1[2] = v17;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v17;
      if ((*(*a3 + 16))())
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v16)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v19 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v22 = 0;
      v23 = *v19;
      *v19 = 0;
      v32 = v23;
      for (i = v20; ; i -= 8)
      {
        v25 = a1 + i;
        v26 = *(a1 + i + 16);
        *(v25 + 16) = 0;
        *(v25 + 24) = v26;
        if (v22)
        {
          v27 = atomic_load(v22 + 2);
          if (v27 == 1)
          {
            (*(*v22 + 8))(v22);
          }

          else
          {
            atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
          }
        }

        if (i == -16)
        {
          v28 = a1;
          goto LABEL_45;
        }

        if (((*(*a3 + 16))() & 1) == 0)
        {
          break;
        }

        v22 = *(v25 + 16);
      }

      v28 = (a1 + i + 16);
LABEL_45:
      v29 = *v28;
      *v28 = v32;
      if (v29)
      {
        v30 = atomic_load(v29 + 2);
        if (v30 == 1)
        {
          (*(*v29 + 8))(v29);
        }

        else
        {
          atomic_fetch_add(v29 + 2, 0xFFFFFFFF);
        }
      }

      if (++v21 == 8)
      {
        return v19 + 1 == a2;
      }
    }

    v20 += 8;
    if (++v19 == a2)
    {
      return 1;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::__unordered_map_hasher<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::hash<TI::Favonius::SearchNode *>,std::equal_to<TI::Favonius::SearchNode *>,true>,std::__unordered_map_equal<TI::Favonius::SearchNode *,std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>,std::equal_to<TI::Favonius::SearchNode *>,std::hash<TI::Favonius::SearchNode *>,true>,std::allocator<std::__hash_value_type<TI::Favonius::SearchNode *,WTF::RefPtr<TI::Favonius::SearchNode>>>>::__emplace_unique_key_args<TI::Favonius::SearchNode *,TI::Favonius::SearchNode *&,decltype(nullptr)>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t TI::Favonius::BeamSearch::accept_text@<X0>(TI::Favonius::BeamSearch *this@<X0>, const KB::String *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  result = TI::Favonius::BeamSearch::search_node_for_accepted_text(&v12, this, a2, a3);
  v7 = v12;
  if (v12)
  {
    if (*(v12 + 16))
    {
      v11 = v12;
      atomic_fetch_add((v12 + 8), 1u);
      TI::Favonius::BeamSearch::clone_with_input_node(&v12, this, &v11);
      result = v11;
      v8 = v12;
      v12 = 0;
      if (v11)
      {
        v9 = atomic_load(v11 + 2);
        if (v9 == 1)
        {
          result = (*(*v11 + 8))();
        }

        else
        {
          atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    *a4 = v8;
    v10 = atomic_load(v7 + 2);
    if (v10 == 1)
    {
      return (*(*v7 + 8))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t TI::Favonius::BeamSearch::search_node_for_accepted_text(uint64_t this, const KB::String *a2, uint64_t a3, int a4)
{
  v4 = a3;
  v6 = this;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v25 = ___ZNK2TI8Favonius10BeamSearch29search_node_for_accepted_textERKN2KB6StringEj_block_invoke;
  v26 = &__block_descriptor_tmp_30_12378;
  v28 = a4;
  v27 = a3;
  v7 = *(a2 + 28);
  v8 = *(a2 + 29);
  if (v7 != v8)
  {
    while (1)
    {
      this = (v25)(v24, v7);
      if (this)
      {
        break;
      }

      if (++v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(a2 + 29);
  }

  if (v7 != v8)
  {
    goto LABEL_13;
  }

  v7 = *(a2 + 25);
  v9 = *(a2 + 26);
  if (v7 != v9)
  {
    while (1)
    {
      this = (v25)(v24, v7);
      if (this)
      {
        break;
      }

      if (++v7 == v9)
      {
        v7 = v9;
        break;
      }
    }

    v9 = *(a2 + 26);
  }

  if (v7 == v9)
  {
    v13 = *(a2 + 2);
    if (!v13 || (this = TI::Favonius::BeamSearch::search_node_for_accepted_text(&v23, v13, v4), (v14 = v23) == 0))
    {
      *v6 = 0;
      return this;
    }

    if (*(v23 + 2))
    {
      v15 = *(a2 + 25);
      v16 = *(a2 + 26);
      while (1)
      {
        if (v15 == v16)
        {
          this = (*(**(a2 + 35) + 72))(*(a2 + 35), v14);
          goto LABEL_39;
        }

        v17 = *v15;
        if (v14 == *(*v15 + 32))
        {
          v18 = *(a2 + 35);
          if (v17 == v18)
          {
            *v6 = v17;
            goto LABEL_36;
          }

          this = KB::String::equal((v17 + 88), (v18 + 88), 1);
          if (this)
          {
            break;
          }
        }

        ++v15;
      }

      v17 = *v15;
      *v6 = *v15;
      if (!v17)
      {
        goto LABEL_39;
      }

LABEL_36:
      atomic_fetch_add((v17 + 8), 1u);
    }

    else if (*(*(v23 + 4) + 16))
    {
      (*(**(a2 + 35) + 96))(&v23);
      v19 = v23;
      this = TI::Favonius::BeamSearch::search_node_with_typing(a2, *(v23 + 7));
      if (this)
      {
        v20 = this;
        atomic_fetch_add((this + 8), 1u);
        v21 = atomic_load(v19 + 2);
        if (v21 == 1)
        {
          this = (*(*v19 + 8))(v19);
        }

        else
        {
          atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
        }
      }

      else
      {
        v20 = v19;
      }

      *v6 = v20;
    }

    else
    {
      *v6 = 0;
    }

LABEL_39:
    v11 = (v14 + 2);
    v22 = atomic_load(v14 + 2);
    if (v22 == 1)
    {
      return (*(*v14 + 8))(v14);
    }

    v12 = -1;
  }

  else
  {
LABEL_13:
    v10 = *v7;
    *v6 = *v7;
    if (!v10)
    {
      return this;
    }

    v11 = (v10 + 8);
    v12 = 1;
  }

  atomic_fetch_add(v11, v12);
  return this;
}

void *TI::Favonius::BeamSearch::clone_with_input_node(void *result, uint64_t a2, void *a3)
{
  if (*a3 != *(a2 + 280))
  {
    operator new();
  }

  *result = a2;
  atomic_fetch_add((a2 + 8), 1u);
  return result;
}

unsigned int *std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::insert(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    if (v16 >> 2 > v14)
    {
      v14 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v14;
    }

    v18 = v15 >> 3;
    v29 = a1;
    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v17);
    }

    v20 = (8 * v18);
    v25 = 0;
    v26 = 8 * v18;
    v27 = 8 * v18;
    v28 = 0;
    if (!v18)
    {
      if (v15 < 1)
      {
        if (v13 == a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v15 >> 2;
        }

        v30 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v22);
      }

      v21 = (v20 - (((v15 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v20 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *>(v20, v20, v21);
      v26 = v21;
      v27 = v20;
    }

    v23 = *a3;
    *v20 = *a3;
    if (v23)
    {
      atomic_fetch_add(v23 + 2, 1u);
      v20 = v27;
    }

    v27 = (v20 + 1);
    v4 = std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__swap_out_circular_buffer(a1, &v25, v4);
    std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v25);
  }

  else if (a2 == v6)
  {
    v19 = *a3;
    *v6 = *a3;
    if (v19)
    {
      atomic_fetch_add(v19 + 2, 1u);
    }

    *(a1 + 8) = v6 + 1;
  }

  else
  {
    std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__move_range(a1, a2, v6, (a2 + 8));
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3[v9];
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
    }

    v11 = *v4;
    *v4 = v10;
    if (v11)
    {
      v12 = atomic_load(v11 + 2);
      if (v12 == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
      }
    }
  }

  return v4;
}

uint64_t TI::Favonius::BeamSearch::BeamSearch(uint64_t a1, void *a2, uint64_t *a3, atomic_uint **a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_283FDB4C0;
  v7 = *a3;
  *a3 = 0;
  v8 = a2[3];
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add((v8 + 8), 1u);
    v7 = *(a1 + 16);
  }

  v9 = *(v7 + 32);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add((v9 + 8), 1u);
  }

  v10 = a2[5];
  *(a1 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add((v10 + 8), 1u);
  }

  KB::LanguageModelContext::LanguageModelContext((a1 + 48), (*(a1 + 16) + 48));
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__init_with_size[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode>*,WTF::RefPtr<TI::Favonius::SearchNode>*>(a1 + 200, a2[25], a2[26], (a2[26] - a2[25]) >> 3);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__init_with_size[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode>*,WTF::RefPtr<TI::Favonius::SearchNode>*>(a1 + 224, a2[28], a2[29], (a2[29] - a2[28]) >> 3);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v11 = a2[34];
  *(a1 + 272) = v11;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  v12 = a2[35];
  *(a1 + 280) = v12;
  if (v12)
  {
    atomic_fetch_add((v12 + 8), 1u);
  }

  v13 = *a4;
  if (*a4)
  {
    *a4 = 0;
    v28 = v13;
    v14 = *(a2[35] + 152);
    TI::Favonius::BeamSearch::initialize_input_node(a1, &v28);
    if (v28)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v28);
    }
  }

  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v25 = ___ZN2TI8Favonius10BeamSearchC2ERKS1_N3WTF10PassRefPtrIS1_EENS5_INS0_8KeyMatchEEE_block_invoke;
  v26 = &__block_descriptor_tmp_4_12376;
  v27 = a1;
  if (v15 != v16)
  {
    while ((v25(v24, v15) & 1) == 0)
    {
      if (++v15 == v16)
      {
        v15 = v16;
        goto LABEL_27;
      }
    }

    if (v15 != v16)
    {
      for (i = v15 + 1; i != v16; ++i)
      {
        if ((v25(v24, i) & 1) == 0)
        {
          v18 = *i;
          *i = 0;
          v19 = *v15;
          *v15 = v18;
          if (v19)
          {
            v20 = atomic_load(v19 + 2);
            if (v20 == 1)
            {
              (*(*v19 + 8))(v19);
            }

            else
            {
              atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
            }
          }

          ++v15;
        }
      }
    }
  }

LABEL_27:
  v21 = *(a1 + 208);
  if (v15 != v21)
  {
    v22 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *>(v21, *(a1 + 208), v15);
    std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100]((a1 + 200), v22);
  }

  return a1;
}

uint64_t TI::Favonius::BeamSearch::finalized_search_should_exclude_node(void *a1, uint64_t a2)
{
  v2 = a1[35];
  if (*a2 == v2)
  {
    return 0;
  }

  if (*(*a2 + 168) > (*(v2 + 168) + 2))
  {
    return 1;
  }

  v6 = (*(*a1 + 16))(a1);
  v7 = *((*(*v6 + 56))(v6) + 56);
  v8 = *(v7 + 200);
  v9 = ((*(v7 + 16) - *(v7 + 8)) >> 3) >> 1;
  if (v8 > 0xB || v9 < v8)
  {
    goto LABEL_8;
  }

  v37 = *(*a2 + 48);
  if (!v37)
  {
    return 1;
  }

  v38 = *(v37 + 8);
  v39 = *((*(*a1 + 32))(a1) + 8);
  if (v38 == v39 || (v3 = 1, KB::String::equal((v38 + 8), (v39 + 8), 1)))
  {
LABEL_8:
    v11 = *(*a2 + 56);
    if ((*(*(*(*v11 + 16))(v11) + 60) & 0x20) != 0)
    {
      if ((**v11)(v11))
      {
        v12 = (**v11)(v11);
        if ((*(*(*(*v12 + 16))(v12) + 60) & 0x20) != 0)
        {
          return 1;
        }
      }
    }

    v13 = (*(*v11 + 16))(v11);
    if ((*(*v13 + 60) & 0x30) != 0 && (*(*v13 + 60) & 8) == 0)
    {
      v15 = (**v11)(v11);
      if (!(*(*v15 + 64))(v15))
      {
        return 1;
      }
    }

    if ((*(*(*(**(*a2 + 56) + 16))(*(*a2 + 56)) + 60) & 0x80) != 0)
    {
      v16 = (*(**(*a2 + 56) + 32))(*(*a2 + 56));
      v17 = *(*(*v16 + 16))(v16);
      v18 = (*(**(a1[35] + 56) + 32))(*(a1[35] + 56));
      v19 = (*(*v18 + 16))(v18);
      v20 = *(v17 + 60);
      v21 = (v20 & 8) != 0 || (v20 & 0x30) == 0;
      v22 = v20 & 1;
      if (!v21)
      {
        v22 = 1;
      }

      v23 = *(*v19 + 60);
      v24 = (v23 & 8) != 0 || (v23 & 0x30) == 0;
      v25 = v23 & 1;
      if (!v24)
      {
        v25 = 1;
      }

      if (v22 != v25)
      {
        return 1;
      }
    }

    if (*(*(*(*v11 + 16))(v11) + 56) == 39)
    {
      v26 = (*(*a1 + 16))(a1);
      v27 = *((*(*v26 + 56))(v26) + 56);
      v28 = *(v27 + 200);
      v29 = ((*(v27 + 16) - *(v27 + 8)) >> 3) >> 1;
      v30 = v28 <= 0xB && v29 >= v28;
      if (!v30 && (*(*(*(**(a1[35] + 56) + 16))(*(a1[35] + 56)) + 60) & 2) != 0)
      {
        return 1;
      }
    }

    if ((*(**a2 + 64))() == 2)
    {
      v31 = (**v11)(v11);
      v32 = (*(*v31 + 16))(v31);
      if ((*(*v32 + 60) & 0x30) != 0 && (*(*v32 + 60) & 8) == 0)
      {
        v34 = (**v11)(v11);
        v35 = (**v34)(v34);
        if (!(*(*v35 + 64))(v35))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return v3;
}

unsigned int **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *,WTF::RefPtr<TI::Favonius::SearchNode> *>(unsigned int **a1, unsigned int **a2, unsigned int **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        v8 = atomic_load(v7 + 2);
        if (v8 == 1)
        {
          (*(*v7 + 8))(v7);
        }

        else
        {
          atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
        }
      }

      ++v5;
      ++a3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t TI::Favonius::BeamSearch::initialize_input_node(void *a1, atomic_uint **a2)
{
  v4 = *(a1[2] + 280);
  if (v4)
  {
    atomic_fetch_add(v4 + 2, 1u);
  }

  v5 = a1[25];
  v6 = a1[26];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1174405120;
  v16 = ___ZN2TI8Favonius10BeamSearch21initialize_input_nodeERKN3WTF6RefPtrINS0_8KeyMatchEEEf_block_invoke;
  v17 = &__block_descriptor_tmp_12377;
  v18 = a2;
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add(v4 + 2, 1u);
  }

  if (v5 != v6)
  {
    while ((v16(v15, v5) & 1) == 0)
    {
      if (++v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (v5 == a1[26])
  {
    operator new();
  }

  v7 = *v5;
  if (*v5)
  {
    atomic_fetch_add((v7 + 8), 1u);
  }

  v8 = a1[35];
  a1[35] = v7;
  if (v8)
  {
    v9 = atomic_load(v8 + 2);
    if (v9 == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  v10 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = a1[34];
  a1[34] = v10;
  if (v11)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
  }

  result = v19;
  if (v19)
  {
    v13 = atomic_load(v19 + 2);
    if (v13 == 1)
    {
      result = (*(*v19 + 8))();
    }

    else
    {
      atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
    }
  }

  if (v4)
  {
    v14 = atomic_load(v4 + 2);
    if (v14 == 1)
    {
      return (*(*v4 + 8))(v4);
    }

    else
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t (***___ZN2TI8Favonius10BeamSearch21initialize_input_nodeERKN3WTF6RefPtrINS0_8KeyMatchEEEf_block_invoke(uint64_t a1, uint64_t *a2))(void)
{
  v3 = *(*a2 + 48);
  v4 = **(a1 + 32);
  v5 = *(*a2 + 32);
  if (*(a1 + 40) == v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = (*(**(v5 + 56) + 192))(*(v5 + 56));
    v8 = v7 != (*(**(*(a1 + 40) + 56) + 192))(*(*(a1 + 40) + 56));
  }

  result = 0;
  if (v4 == v3 && !v8)
  {
    v10 = *a2;
    if (*(v10 + 32))
    {
      result = *(v10 + 56);
      if (result)
      {
        return ((**result)(result) == *(*(v10 + 32) + 56));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::vector<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 16;
        std::allocator_traits<std::allocator<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>>::destroy[abi:nn200100]<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned int *std::allocator_traits<std::allocator<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>>::destroy[abi:nn200100]<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  result = *a1;
  if (*a1)
  {
    v4 = atomic_load(result + 2);
    if (v4 == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

unsigned int *__destroy_helper_block_8_40c46_ZTSKN3WTF6RefPtrIN2TI8Favonius10SearchNodeEEE(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v2 = atomic_load(result + 2);
    if (v2 == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t __copy_helper_block_8_40c46_ZTSKN3WTF6RefPtrIN2TI8Favonius10SearchNodeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return result;
}

unsigned int *std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__move_range(unsigned int *result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 1);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6;
    *v6++ = 0;
    *v7 = v8;
    v7 += 8;
  }

  *(result + 1) = v7;
  if (v4 != a4)
  {
    v9 = (v4 - 8);
    v10 = a2 - 8;
    do
    {
      v11 = *&v5[v10];
      *&v5[v10] = 0;
      result = *v9;
      *v9 = v11;
      if (result)
      {
        v12 = atomic_load(result + 2);
        if (v12 == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          atomic_fetch_add(result + 2, 0xFFFFFFFF);
        }
      }

      --v9;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

BOOL ___ZNK2TI8Favonius10BeamSearch29search_node_for_accepted_textERKN2KB6StringEj_block_invoke(uint64_t a1, TI::Favonius::SearchNode **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*a2 + 10) == v3;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *a2;
    v10 = 0x100000;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    TI::Favonius::SearchNode::input_string_recursive(v6, &v10, 0);
    v7 = KB::String::equal(v5, &v10, 0);
    v4 = 0;
    if (v7)
    {
      v4 = (*(*a2 + 60) & 0xB81) == 0;
    }

    if (v13 && v12 == 1)
    {
      free(v13);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t TI::Favonius::BeamSearch::search_node_with_typing(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 192))(a2);
  v6 = *(a1 + 200);
  v5 = *(a1 + 208);
  if (v6 == v5)
  {
    return 0;
  }

  v7 = v4;
  while ((*(**(*v6 + 56) + 192))(*(*v6 + 56)) != v7 || !(*(**(*v6 + 56) + 184))(*(*v6 + 56), a2))
  {
    v6 += 8;
    if (v6 == v5)
    {
      return 0;
    }
  }

  return *v6;
}

void TI::Favonius::BeamSearch::finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      for (i = *(v2 + 200); i != *(v2 + 208); ++i)
      {
        v4 = *i;
        WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::shrinkCapacity(v4 + 176);
        WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::shrinkCapacity(v4 + 200);
      }
    }
  }

  operator new();
}

void TI::Favonius::BeamSearch::update(atomic_uint ***a1, atomic_uint **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *((*(*v3 + 56))(v3) + 56);
  v5 = *(v4 + 200);
  v6 = ((*(v4 + 16) - *(v4 + 8)) >> 3) >> 1;
  v43 = 0u;
  v44 = 0u;
  __p[0] = 0;
  atomic_fetch_add(v3 + 2, 1u);
  v45 = v3;
  __p[1] = 0;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100](&v43 + 2, *(&v43 + 1));
  v7 = a1[25];
  v8 = a1[26];
  v9 = v8 - v7 + a1[20] - a1[19] + a1[32] - a1[31];
  if (v9 > (*(&v44 + 1) - *(&v43 + 1)) >> 3)
  {
    if (!(v9 >> 61))
    {
      v46[4] = &v43 + 8;
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v9);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  TI::Favonius::SearchNodeSourceQueue::add_clone_substituting_touch_to_strong_refs<std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> const*>>(__p, v7, v8, &v45);
  TI::Favonius::SearchNodeSourceQueue::add_clone_substituting_touch_to_strong_refs<std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> const*>>(__p, a1[31], a1[32], &v45);
  v10 = a1[19];
  v11 = a1[20];
  if (v10 == v11)
  {
LABEL_27:
    v19 = v44 - *(&v43 + 1);
    if (v43 - __p[0] < v44 - *(&v43 + 1))
    {
      if (!((v19 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v19 >> 3);
      }

LABEL_63:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v20 = *(&v43 + 1);
    for (i = __p[1]; v20 != v44; ++v20)
    {
      v22 = *v20;
      if (i >= v43)
      {
        v23 = (i - __p[0]) >> 3;
        if ((v23 + 1) >> 61)
        {
          goto LABEL_63;
        }

        v24 = (v43 - __p[0]) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v43 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v25);
        }

        *(8 * v23) = v22;
        i = (8 * v23 + 8);
        v26 = (8 * v23 - (__p[1] - __p[0]));
        memcpy(v26, __p[0], __p[1] - __p[0]);
        v27 = __p[0];
        __p[0] = v26;
        __p[1] = i;
        *&v43 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *i = v22;
        i += 8;
      }

      __p[1] = i;
    }

    v28 = __p[0];
    v29 = (i - __p[0]) >> 3;
    if (v29 >= 2)
    {
      v30 = (v29 - 2) >> 1;
      v31 = v30;
      do
      {
        v32 = v31;
        if (v30 >= v31)
        {
          v33 = (2 * v31) | 1;
          v34 = &v28[8 * v33];
          if (2 * v32 + 2 < v29 && *(*v34 + 24) < *(*(v34 + 1) + 24))
          {
            v34 += 8;
            v33 = 2 * v32 + 2;
          }

          v35 = &v28[8 * v32];
          v36 = *v34;
          v37 = *v35;
          v38 = *(*v35 + 24);
          if (*(*v34 + 24) >= v38)
          {
            do
            {
              *v35 = v36;
              v35 = v34;
              if (v30 < v33)
              {
                break;
              }

              v39 = 2 * v33;
              v33 = (2 * v33) | 1;
              v34 = &v28[8 * v33];
              v40 = v39 + 2;
              if (v40 < v29 && *(*v34 + 24) < *(*(v34 + 1) + 24))
              {
                v34 += 8;
                v33 = v40;
              }

              v36 = *v34;
            }

            while (*(*v34 + 24) >= v38);
            *v35 = v37;
          }
        }

        v31 = v32 - 1;
      }

      while (v32);
    }

    if (v45)
    {
      v41 = atomic_load(v45 + 2);
      if (v41 == 1)
      {
        (*(*v45 + 8))();
      }

      else
      {
        atomic_fetch_add(v45 + 2, 0xFFFFFFFF);
      }
    }

    operator new();
  }

  while (1)
  {
    v12 = *v10;
    if (*v10)
    {
      atomic_fetch_add(v12 + 2, 1u);
    }

    v47 = v45;
    if (v45)
    {
      atomic_fetch_add(v45 + 2, 1u);
    }

    (*(*v12 + 24))(v46, v12, &v47);
    v13 = v46[0];
    v46[0] = 0;
    if (!v47)
    {
      goto LABEL_12;
    }

    v14 = atomic_load(v47 + 2);
    if (v14 == 1)
    {
      break;
    }

    atomic_fetch_add(v47 + 2, 0xFFFFFFFF);
    if (v13)
    {
LABEL_15:
      v46[0] = 0;
      std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](&v43 + 8, v46);
      if (v46[0])
      {
        v15 = atomic_load((v46[0] + 8));
        if (v15 == 1)
        {
          (*(*v46[0] + 8))();
        }

        else
        {
          atomic_fetch_add((v46[0] + 8), 0xFFFFFFFF);
        }
      }

      v16 = *(v44 - 8);
      *(v44 - 8) = v13;
      if (v16)
      {
        v17 = atomic_load(v16 + 2);
        if (v17 == 1)
        {
          (*(*v16 + 8))(v16);
        }

        else
        {
          atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
        }
      }
    }

LABEL_23:
    v18 = atomic_load(v12 + 2);
    if (v18 == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }

    if (++v10 == v11)
    {
      goto LABEL_27;
    }
  }

  (*(*v47 + 8))(v47);
LABEL_12:
  if (v13)
  {
    goto LABEL_15;
  }

  goto LABEL_23;
}

uint64_t TI::Favonius::BeamSearch::BeamSearch(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, float a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_283FDB4C0;
  v10 = *a2;
  *a2 = 0;
  *(a1 + 16) = v10;
  v11 = v10[3];
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add((v11 + 8), 1u);
    v10 = *(a1 + 16);
  }

  v12 = v10[4];
  *(a1 + 32) = v12;
  if (v12)
  {
    atomic_fetch_add((v12 + 8), 1u);
    v10 = *(a1 + 16);
  }

  v13 = *a3;
  *a3 = 0;
  *(a1 + 40) = v13;
  KB::LanguageModelContext::LanguageModelContext((a1 + 48), (v10 + 6));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v14 = a4[1];
  v15 = v14 - *a4;
  if (v14 != *a4)
  {
    if (!((v15 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v15 >> 3);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v17 = a4[3];
  v16 = a4[4];
  v18 = v16 - v17;
  if (v16 != v17)
  {
    if (!((v18 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v18 >> 3);
    }

    goto LABEL_98;
  }

  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  v19 = *a5;
  *a5 = 0;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::reserve((a1 + 200), *(*(a1 + 24) + 24));
  TI::Favonius::SearchNodeSourceQueue::next_search_node(&v68, -INFINITY, (a1 + 152));
  v20 = v68;
  v67 = v68;
  if (v68)
  {
    std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100]((a1 + 200), &v67);
  }

  v21 = *(*(a1 + 16) + 280);
  if (v21)
  {
    atomic_fetch_add((v21 + 8), 1u);
    v20 = v67;
  }

  v65 = v19;
  if (v20)
  {
    *&v68 = 0;
    v22 = TI::Favonius::BeamSearch::choose_hit_test_node(v21, v19, &v68, &v67);
    v66 = v22;
    if (v22)
    {
      atomic_fetch_add((v22 + 8), 1u);
      if (v68)
      {
        v23 = atomic_load((v68 + 8));
        if (v23 == 1)
        {
          (*(*v68 + 8))();
        }

        else
        {
          atomic_fetch_add((v68 + 8), 0xFFFFFFFF);
        }
      }
    }

    v20 = v67;
    if (v67)
    {
      v24 = *(v67 + 156);
      v25 = (v24 + (*(**(a1 + 40) + 16))(*(a1 + 40))) + (a6 * -5.9915);
      goto LABEL_25;
    }
  }

  else
  {
    v66 = 0;
  }

  v25 = -INFINITY;
LABEL_25:
  v26 = -1;
  v27 = a1;
  do
  {
    v27 = *(v27 + 16);
    ++v26;
  }

  while (v27);
  v64 = v21;
  if (v20)
  {
    v28 = *(v20 + 56);
    if (v28)
    {
      v29 = (*(*v28 + 160))(v28) ^ 1;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(**(a1 + 40) + 56))(*(a1 + 40));
  v31 = *(a1 + 24);
  v32 = v30[4] + *(v31 + 32);
  while (1)
  {
    v33 = (*(a1 + 208) - *(a1 + 200)) >> 3;
    if (v33 >= *(v31 + 16) && (v33 >= *(v31 + 24) || KB::system_uptime(v30) >= v32))
    {
      break;
    }

    TI::Favonius::SearchNodeSourceQueue::next_search_node(&v70, v25, (a1 + 152));
    v34 = v70;
    *&v68 = v70;
    if (!v70)
    {
      break;
    }

    v35 = TI::Favonius::BeamSearch::search_node_with_typing(a1, v70[7]);
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v26 >= 4;
    }

    if (v36)
    {
      v39 = v34[16];
      if (v39)
      {
        atomic_fetch_add(v39 + 2, 1u);
      }

      v40 = (*(*v39 + 16))(v39);
      v41 = atomic_load(v39 + 2);
      if (v41 == 1)
      {
        (*(*v39 + 8))(v39);
      }

      else
      {
        atomic_fetch_add(v39 + 2, 0xFFFFFFFF);
      }

      if (v40 <= ((v26 + 3) * -0.8))
      {
LABEL_42:
        v37 = v29;
        v38 = a1 + 248;
        goto LABEL_61;
      }
    }

    else if (v35)
    {
      goto LABEL_42;
    }

    v42 = TI::Favonius::BeamSearch::choose_hit_test_node(v64, v65, &v66, &v68);
    v43 = v42;
    if (v42)
    {
      atomic_fetch_add((v42 + 8), 1u);
    }

    v44 = v66;
    v66 = v43;
    if (v44)
    {
      v45 = atomic_load(v44 + 2);
      if (v45 == 1)
      {
        (*(*v44 + 8))(v44);
      }

      else
      {
        atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
      }
    }

    v46 = *(v68 + 56);
    if (!v46)
    {
      v37 = 1;
      v38 = a1 + 248;
      if (v29)
      {
        goto LABEL_61;
      }

LABEL_60:
      v38 = a1 + 200;
      goto LABEL_61;
    }

    v47 = (*(*v46 + 160))(v46);
    v37 = v47 ^ 1 | v29;
    if (v47)
    {
      goto LABEL_60;
    }

    v38 = a1 + 248;
    if ((v29 ^ 1))
    {
      goto LABEL_60;
    }

LABEL_61:
    v70 = 0;
    std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100](v38, &v70);
    if (v70)
    {
      v48 = atomic_load(v70 + 2);
      if (v48 == 1)
      {
        (*(*v70 + 1))();
      }

      else
      {
        atomic_fetch_add(v70 + 2, 0xFFFFFFFF);
      }
    }

    v49 = v68;
    *&v68 = 0;
    v50 = *(v38 + 8);
    v51 = *(v50 - 8);
    *(v50 - 8) = v49;
    if (v51)
    {
      v52 = atomic_load(v51 + 2);
      if (v52 == 1)
      {
        (*(*v51 + 8))(v51);
      }

      else
      {
        atomic_fetch_add(v51 + 2, 0xFFFFFFFF);
      }
    }

    v30 = v68;
    if (v68)
    {
      v53 = atomic_load((v68 + 8));
      if (v53 == 1)
      {
        v30 = (*(*v68 + 8))();
      }

      else
      {
        atomic_fetch_add((v68 + 8), 0xFFFFFFFF);
      }
    }

    v31 = *(a1 + 24);
    v29 = v37;
  }

  v54 = v65;
  if (!v65)
  {
    if (v66)
    {
      v54 = *(v66 + 48);
      if (v54)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v54 = **((*(**(a1 + 40) + 64))(*(a1 + 40)) + 8);
      if (v54)
      {
LABEL_77:
        atomic_fetch_add(v54, 1u);
      }
    }
  }

  v55 = *(a1 + 152);
  v56 = *(a1 + 160);
  v69 = 0;
  v68 = 0uLL;
  v57 = v56 - v55;
  if (v56 != v55)
  {
    if (!((v57 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v57 >> 3);
    }

LABEL_98:
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v58 = *(a1 + 176);
  *(a1 + 176) = v68;
  v68 = v58;
  v59 = *(a1 + 192);
  *(a1 + 192) = 0;
  v69 = v59;
  v70 = &v68;
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v70);
  if (v66)
  {
    v60 = atomic_load((v66 + 8));
    if (v60 == 1)
    {
      (*(*v66 + 8))();
    }

    else
    {
      atomic_fetch_add((v66 + 8), 0xFFFFFFFF);
    }
  }

  if (v64)
  {
    v61 = atomic_load(v64 + 2);
    if (v61 == 1)
    {
      (*(*v64 + 8))(v64);
    }

    else
    {
      atomic_fetch_add(v64 + 2, 0xFFFFFFFF);
    }
  }

  if (v67)
  {
    v62 = atomic_load((v67 + 8));
    if (v62 == 1)
    {
      (*(*v67 + 8))();
    }

    else
    {
      atomic_fetch_add((v67 + 8), 0xFFFFFFFF);
    }
  }

  *&v68 = v54;
  TI::Favonius::BeamSearch::initialize_input_node(a1, &v68);
  if (v68)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v68);
  }

  return a1;
}