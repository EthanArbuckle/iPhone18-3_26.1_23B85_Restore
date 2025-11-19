uint64_t TIInputManager::does_need_spell_check(TIInputManager *this, const KB::String *a2)
{
  v4 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v4 = *(a2 + 2);
  }

  if (v4 < 3)
  {
    return 0;
  }

  KB::DictionaryContainer::lookup(*(this + 33), &v9);
  v6 = *(this + 73);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9 == v10;
  }

  v5 = v7;
  if (v6 && v9 == v10)
  {
    v5 = (*(*v6 + 24))(v6, a2);
  }

  v11 = &v9;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v11);
  return v5;
}

BOOL TIInputManager::is_autoshift(TIInputManager *this)
{
  v1 = *(this + 24);
  v2 = v1 + 1;
  v3 = 40 * v1 - 8;
  while (--v2)
  {
    v4 = *(this + 1);
    v5 = *(v4 + v3);
    v3 -= 40;
    if ((v5 & 0x40) != 0)
    {
      return v2 != -858993459 * ((*(this + 2) - v4) >> 3) && (*(v4 + 40 * v2 + 32) & 0x42) == 2;
    }
  }

  v4 = *(this + 1);
  return v2 != -858993459 * ((*(this + 2) - v4) >> 3) && (*(v4 + 40 * v2 + 32) & 0x42) == 2;
}

void TIInputManager::input_flags_vector(TIInputManager *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a2, -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
  v4 = *(this + 1);
  if (-858993459 * ((*(this + 2) - v4) >> 3))
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(v4 + v6);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v7);
      ++v5;
      v4 = *(this + 1);
      v6 += 40;
    }

    while (v5 < -858993459 * ((*(this + 2) - v4) >> 3));
  }
}

uint64_t KB::CandidateCollection::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<KB::Candidate>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

{
  if (a1 != a2)
  {
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1, *a2, *(a2 + 8), 0x1CAC083126E978D5 * ((*(a2 + 8) - *a2) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0x1CAC083126E978D5 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 48, *(a2 + 48), *(a2 + 56), 0x1CAC083126E978D5 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0x1CAC083126E978D5 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t *TIInputManager::filter_spellcheck_candidates(TIInputManager *this, uint64_t **a2, const KB::String *a3)
{
  v4 = *(this + 73);
  if (v4)
  {
    v5 = *(*v4 + 56);
    v6 = *(this + 73);

    return v5(v6, a2, a3);
  }

  else
  {
    v9 = *a2;
    v8 = a2[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK14TIInputManager28filter_spellcheck_candidatesERN2KB19CandidateCollectionERKNS0_6StringE_block_invoke;
    v11[3] = &__block_descriptor_tmp_22;
    v11[4] = this;
    v11[5] = a3;
    v10 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v9, v8, v11);
    return std::vector<KB::Candidate>::erase(a2, v10, a2[1]);
  }
}

BOOL ___ZNK14TIInputManager28filter_spellcheck_candidatesERN2KB19CandidateCollectionERKNS0_6StringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const KB::String *a4)
{
  v6 = *(*(*(a1 + 32) + 264) + 8);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  return KB::CollatorWrapper::sortkey_compare_strings((v6 + 72), (a2 + 888), *(a1 + 40), a4) != 0;
}

uint64_t *std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (((*(a3 + 16))(a3, v3) & 1) == 0)
    {
      v3 += 125;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 125; i != a2; i += 125)
      {
        if (((*(a3 + 16))(a3, i) & 1) == 0)
        {
          KB::Candidate::operator=(v3, i);
          v3 += 125;
        }
      }
    }
  }

  return v3;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(__n);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

BOOL std::string::starts_with[abi:nn200100](uint64_t a1, void *__s2, size_t a3)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1;
    a1 = *a1;
    v4 = *(v5 + 8);
  }

  return v4 >= a3 && std::string_view::compare[abi:nn200100](a1, v4, 0, a3, __s2, a3) == 0;
}

uint64_t std::__function::__value_func<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(uint64_t a1, uint64_t a2, const KB::Candidate *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x1CAC083126E978D5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<KB::Candidate>::__vdeallocate(a1);
    if (a4 <= 0x4189374BC6A7EFLL)
    {
      v9 = 0x395810624DD2F1AALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x1CAC083126E978D5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x20C49BA5E353F7)
      {
        v10 = 0x4189374BC6A7EFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<KB::Candidate>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x1CAC083126E978D5 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        KB::Candidate::operator=(v8, v6);
        v6 += 1000;
        v8 = (v8 + 1000);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 1000);
      KB::Candidate::~Candidate(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != v8)
    {
      do
      {
        KB::Candidate::operator=(v8, v6);
        v6 += 1000;
        v8 = (v8 + 1000);
        v12 -= 1000;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = KB::Candidate::Candidate(v14, v13);
        v13 = (v13 + 1000);
        v14 = (v15 + 1000);
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }
}

void std::__function::__func<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0,std::allocator<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, const KB::CandidateCollection *a2, uint64_t a3, unsigned __int8 *a4)
{
  v44[5] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v28 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v7 = *a4;
  v8 = *(a1 + 8);
  if (*(v8 + 608))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  v29 = v7;
  KB::CandidateCollection::CandidateCollection(v35, a2);
  kdebug_trace();
  log = kac_get_log();
  v10 = os_signpost_id_make_with_pointer(log, (v8 ^ 0x15));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v11, "kbdManager.filterCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = **(a1 + 32);
  __dst = 0;
  v34 = 0;
  v32 = 0;
  v15 = v28 - v6;
  if (v28 != v6)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&v32, v15 >> 3);
  }

  TIInputManager::filter_raw_candidates(v8, a2, v12, v13, v14);
  KB::CandidateCollection::operator=(a2, buf);
  cf = v44;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v43;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v42;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = buf;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  if (v15)
  {
    __dst = (v28 - v6);
    operator delete(v15);
  }

  kdebug_trace();
  v16 = kac_get_log();
  v17 = os_signpost_id_make_with_pointer(v16, (v8 ^ 0x15));
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v16, OS_SIGNPOST_INTERVAL_END, v18, "kbdManager.filterCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  if (v29)
  {
    (*(**(a1 + 40) + 16))();
  }

  if (*(v8 + 608))
  {
    v19 = **(a1 + 32);
    (*(**(v8 + 224) + 488))(&cf);
    v20 = KB::CandidateFilterFlags::candidate_filter_flag_type(v6, v28);
    v21 = &kGenericFlagDesc;
    if (v20 == 1)
    {
      v21 = &kPostLMFlagDesc;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = &kPreLMFlagDesc;
    }

    KB::String::String(buf, v22);
    v23 = *(v8 + 608);
    v24 = *(a1 + 16);
    v25 = **(a1 + 32);
    v26 = cf;
    v31 = cf;
    if (cf)
    {
      CFRetain(cf);
      v31 = v26;
    }

    (*(*v23 + 24))(v23, v24, v25, buf, v35, Mutable, a2, &v31);
    if (v31)
    {
      CFRelease(v31);
    }

    v31 = 0;
    if (v41 && buf[6] == 1)
    {
      free(v41);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  *buf = &v38;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v37;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v36;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = v35;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    operator delete(v6);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void TIInputManager::filter_raw_candidates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v5;
  v20 = v19;
  v79 = *MEMORY[0x277D85DE8];
  KB::CandidateCollection::CandidateCollection(v19, v21);
  std::vector<KB::FilterFlag>::vector[abi:nn200100](__p, v11);
  (*(*v18 + 48))(&v51, v18, v13, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v51)
  {
    v36 = v9;
    (*(*v18 + 72))(&v76, v18, v17);
    KB::Candidate::Candidate(v75, v17, *(v18 + 288));
    if (v78 == 1)
    {
      KB::Candidate::Candidate(v73, &v76, *(v18 + 288));
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v73[0] = 0;
    }

    v74 = v22;
    KB::Candidate::Candidate(v72, (v18 + 232), 0);
    v23 = KB::String::last((v18 + 440));
    v24 = KB::String::last((v18 + 440));
    {
      KB::String::String(&TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, ",~:;!@#$%^&'.(){}[]_/\\<>|");
      __cxa_atexit(KB::String::~String, &TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, &dword_22CA55000);
    }

    v25 = *(v18 + 440);
    if (v25 >= 2)
    {
      v27 = *(v18 + 448);
      if (!v27)
      {
        v27 = v18 + 456;
      }

      *&v40 = v27;
      DWORD2(v40) = v25;
      HIDWORD(v40) = v25;
      LODWORD(v41) = 0;
      KB::String::iterator::initialize(&v40);
      v64 = v40;
      *v65 = v41;
      v28 = 2;
      do
      {
        KB::String::iterator::operator--(&v64);
        --v28;
      }

      while (v28);
      v26 = !KB::String::contains(&TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, v65[0]);
    }

    else
    {
      v26 = 1;
    }

    KB::Candidate::Candidate(v63, v75);
    v61[0] = 0;
    v62 = 0;
    if (v74 == 1)
    {
      KB::Candidate::Candidate(v61, v73);
      v62 = 1;
    }

    TIInputManager::input_flags_vector(v18, &v49);
    KB::LanguageModelContext::LanguageModelContext(v42, (v18 + 472));
    KB::String::String(v59, v15);
    KB::Candidate::Candidate(v58, v72);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(&v64, v63, v61, &v49, v42, v59, v58, v13);
    KB::Candidate::~Candidate(v58);
    if (v60 && v59[6] == 1)
    {
      free(v60);
    }

    *&v40 = &v48;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v40);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v47);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v46);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    if (v49.__begin_)
    {
      v49.__end_ = v49.__begin_;
      operator delete(v49.__begin_);
    }

    if (v62 == 1)
    {
      KB::Candidate::~Candidate(v61);
    }

    KB::Candidate::~Candidate(v63);
    v29 = *(v18 + 8);
    if (-858993459 * ((*(v18 + 16) - v29) >> 3))
    {
      v30 = (*(v29 + 32) & 3) == 1;
    }

    else
    {
      v30 = 0;
    }

    v66 = v30;
    v67 = v23 == 45;
    v68 = v24 == 46;
    v70 = v26;
    v69 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v71 = *(v18 + 200) != 0;
    v31 = *(v18 + 136);
    v32 = *(v18 + 288);
    v33 = *(v18 + 264);
    v39 = v33;
    if (v33)
    {
      atomic_fetch_add(v33, 1u);
    }

    v34 = *(v18 + 280);
    v37 = *(v18 + 272);
    v38 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(&v40, v31, v32, &v39, &v37, *(v18 + 600), v18 + 632, v7);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    if (v39)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v39);
    }

    (*(*v51 + 24))(v51, v20, &v64, &v40);
    if (!v13 && v36)
    {
      if (*v20 == *(v20 + 1))
      {
        v53 = 0x100000;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
      }

      else
      {
        KB::Candidate::capitalized_string(*v20, &v53);
      }

      KB::String::operator=(v18 + 232, &v53);
      if (v56)
      {
        if (v55 == 1)
        {
          free(v56);
        }
      }
    }

    KB::CandidateFilterResources::~CandidateFilterResources(&v40);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(&v64);
    KB::Candidate::~Candidate(v72);
    if (v74 == 1)
    {
      KB::Candidate::~Candidate(v73);
    }

    KB::Candidate::~Candidate(v75);
    if (v78 == 1 && v77 && BYTE6(v76) == 1)
    {
      free(v77);
    }
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v35 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0,std::allocator<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9148;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::string_view::compare[abi:nn200100](uint64_t a1, unint64_t a2, unint64_t a3, size_t a4, void *__s2, size_t a6)
{
  if (a2 < a3)
  {
    abort();
  }

  if (a2 - a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2 - a3;
  }

  if (a6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  LODWORD(result) = memcmp((a1 + a3), __s2, v8);
  if (v7 < a6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 == a6)
  {
    v10 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

void TIInputManager::create_autocorrection_engine_with_synthetic_typing(TIInputManager *this, const KB::String *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  KB::system_uptime(this);
  TIInputManager::create_autocorrection_engine(this);
}

uint64_t TIInputManager::favonius_layout(TIInputManager *this)
{
  v2 = *(this + 45);
  if (!v2)
  {
    operator new();
  }

  v4 = *(v2 + 208);
  v3 = (v2 + 208);
  if (!v4)
  {
    KB::String::operator=(v3, (this + 328));
  }

  return this + 360;
}

void std::__function::__func<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0,std::allocator<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, const KB::CandidateCollection *a2, uint64_t a3, unsigned __int8 *a4)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v24 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v25 = *a4;
  v7 = *(a1 + 8);
  if (*(v7 + 608))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  v9 = a2;
  KB::CandidateCollection::CandidateCollection(v31, a2);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = **(a1 + 32);
  __dst = 0;
  v30 = 0;
  v28 = 0;
  v13 = v24 - v6;
  v26 = v6;
  if (v24 != v6)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&v28, v13 >> 3);
  }

  TIInputManager::filter_raw_candidates(v7, v9, v10, v11, v12);
  KB::CandidateCollection::operator=(v9, &v36);
  cf = v40;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v39;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v38;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v36;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  if (v13)
  {
    __dst = (v24 - v6);
    operator delete(v13);
  }

  if (v25)
  {
    (*(**(a1 + 40) + 16))();
  }

  v14 = *(v7 + 608);
  if (v14)
  {
    (*(*v14 + 16))(v14, **(a1 + 48), *(v7 + 264) != 0);
    v15 = **(a1 + 32);
    (*(***(a1 + 48) + 488))(&cf);
    v16 = KB::CandidateFilterFlags::candidate_filter_flag_type(v6, v24);
    v17 = &kGenericFlagDesc;
    if (v16 == 1)
    {
      v17 = &kPostLMFlagDesc;
    }

    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = &kPreLMFlagDesc;
    }

    KB::String::String(&v36, v18);
    v19 = *(v7 + 608);
    v20 = *(a1 + 16);
    v21 = **(a1 + 32);
    v22 = cf;
    v27 = cf;
    if (cf)
    {
      CFRetain(cf);
      v27 = v22;
    }

    (*(*v19 + 24))(v19, v20, v21, &v36, v31, Mutable, v9, &v27);
    if (v27)
    {
      CFRelease(v27);
    }

    v27 = 0;
    if (v37 && BYTE6(v36) == 1)
    {
      free(v37);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v36 = &v34;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  v36 = &v33;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  v36 = &v32;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  v36 = v31;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v36);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    operator delete(v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0,std::allocator<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9190;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t WTF::RefCounted<TI::Favonius::Touch>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 56);
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t std::__function::__func<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0,std::allocator<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::operator()(uint64_t result, atomic_uint **a2)
{
  v2 = *(result + 8);
  if (!*v2)
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add(v3, 1u);
      result = *v2;
      *v2 = v3;
      if (result)
      {
        return WTF::RefCounted<TI::Favonius::Key>::deref(result);
      }
    }

    else
    {
      *v2 = 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0,std::allocator<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD91D8;
  a2[1] = v2;
  return result;
}

void *KB::String::find_last_of(KB::String *this, const KB::String *a2, const KB::String *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = a2 + 16;
  }

  v9 = v7;
  v10 = v6;
  v11 = v6;
  v12 = 0;
  KB::String::iterator::initialize(&v9);
  return KB::String::find_last_of(a2, a3, &v9, this);
}

uint64_t repeating_character_threshold(const __CFLocale *a1)
{
  if (a1 && (Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEED0]), CFStringCompare(Value, @"de", 0) == kCFCompareEqualTo))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(unint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v99 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a1;
  while (1)
  {
    v9 = a2 - v8;
    v10 = 0x1CAC083126E978D5 * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      goto LABEL_140;
    }

    if (v10 == 2)
    {
      v74 = expf(*(a2 - 64));
      if (v74 <= expf(*(v8 + 744)))
      {
        goto LABEL_140;
      }

      v75 = a2 - 125;
      v76 = a1;
      goto LABEL_139;
    }

LABEL_10:
    if (v9 <= 23999)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v80 = v8 + 1000;
          if ((v8 + 1000) != a2)
          {
            v81 = 0;
            v82 = v8;
            do
            {
              v83 = v82;
              v82 = v80;
              v84 = expf(*(v83 + 1744));
              if (v84 > expf(*(v83 + 744)))
              {
                KB::Candidate::Candidate(v97, v82);
                v85 = v81;
                while (1)
                {
                  KB::Candidate::operator=((v8 + v85 + 1000), (v8 + v85));
                  if (!v85)
                  {
                    break;
                  }

                  v86 = expf(v98);
                  v87 = expf(*(v8 + v85 - 256));
                  v85 -= 1000;
                  if (v86 <= v87)
                  {
                    v88 = (v8 + v85 + 1000);
                    goto LABEL_120;
                  }
                }

                v88 = v8;
LABEL_120:
                KB::Candidate::operator=(v88, v97);
                KB::Candidate::~Candidate(v97);
              }

              v80 = v82 + 1000;
              v81 += 1000;
            }

            while ((v82 + 1000) != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v90 = (v8 + 1000);
        while (v90 != a2)
        {
          v91 = v90;
          v92 = expf(*(v8 + 1744));
          if (v92 > expf(*(v8 + 744)))
          {
            KB::Candidate::Candidate(v97, v91);
            do
            {
              v93 = v8;
              KB::Candidate::operator=((v8 + 1000), v8);
              v8 -= 1000;
              v94 = expf(v98);
            }

            while (v94 > expf(*(v93 - 64)));
            KB::Candidate::operator=(v93, v97);
            KB::Candidate::~Candidate(v97);
          }

          v90 = (v91 + 1000);
          v8 = v91;
        }
      }

      goto LABEL_140;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,KB::Candidate *>(v8, a2, a2);
      }

      goto LABEL_140;
    }

    v11 = v10 >> 1;
    v12 = v8 + 1000 * (v10 >> 1);
    v13 = expf(*(a2 - 64));
    if (v9 >= 0x1F401)
    {
      v14 = expf(*(v12 + 744));
      if (v14 <= expf(*(v8 + 744)))
      {
        if (v13 > v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000 * v11), a2 - 125);
          v22 = expf(*(v12 + 744));
          if (v22 > expf(*(v8 + 744)))
          {
            v15 = v8;
            v17 = (v8 + 1000 * v11);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v8;
        if (v13 > v14)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, (v8 + 1000 * v11));
        v16 = expf(*(a2 - 64));
        if (v16 > expf(*(v12 + 744)))
        {
          v15 = (v8 + 1000 * v11);
LABEL_17:
          v17 = a2 - 125;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v15, v17);
        }
      }

      v23 = v8 + 1000 * v11;
      v24 = v23 - 1000;
      v25 = expf(*(v23 - 256));
      v26 = expf(*(v8 + 1744));
      v27 = expf(*(a2 - 314));
      if (v25 <= v26)
      {
        if (v27 > v25)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v24, a2 - 250);
          v32 = expf(*(v24 + 744));
          if (v32 > expf(*(v8 + 1744)))
          {
            v28 = (v8 + 1000);
            v30 = v24;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v28 = (v8 + 1000);
        if (v27 > v25)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v28, v24);
        v29 = expf(*(a2 - 314));
        if (v29 > expf(*(v24 + 744)))
        {
          v28 = v24;
LABEL_31:
          v30 = a2 - 250;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v28, v30);
        }
      }

      v33 = v8 + 1000 * v11;
      v34 = v33 + 1000;
      v35 = expf(*(v33 + 1744));
      v36 = expf(*(v8 + 2744));
      v37 = expf(*(a2 - 564));
      if (v35 <= v36)
      {
        if (v37 > v35)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v34, a2 - 375);
          v41 = expf(*(v34 + 744));
          if (v41 > expf(*(v8 + 2744)))
          {
            v38 = (v8 + 2000);
            v40 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v38 = (v8 + 2000);
        if (v37 > v35)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v38, v34);
        v39 = expf(*(a2 - 564));
        if (v39 > expf(*(v34 + 744)))
        {
          v38 = v34;
LABEL_44:
          v40 = a2 - 375;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v38, v40);
        }
      }

      v42 = expf(*(v12 + 744));
      v43 = expf(*(v24 + 744));
      v44 = expf(*(v34 + 744));
      if (v42 <= v43)
      {
        if (v44 > v42)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000 * v11), v34);
          v48 = expf(*(v12 + 744));
          if (v48 > expf(*(v24 + 744)))
          {
            v45 = v24;
            v47 = (v8 + 1000 * v11);
            goto LABEL_57;
          }
        }
      }

      else
      {
        v45 = v24;
        if (v44 > v42)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v24, (v8 + 1000 * v11));
        v46 = expf(*(v34 + 744));
        if (v46 > expf(*(v12 + 744)))
        {
          v45 = (v8 + 1000 * v11);
LABEL_53:
          v47 = v34;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v45, v47);
        }
      }

      KB::Candidate::Candidate(v97, v8);
      KB::Candidate::operator=(v8, (v8 + 1000 * v11));
      KB::Candidate::operator=((v8 + 1000 * v11), v97);
      KB::Candidate::~Candidate(v97);
      v8 = a1;
      goto LABEL_59;
    }

    v18 = expf(*(v8 + 744));
    if (v18 <= expf(*(v12 + 744)))
    {
      if (v13 > v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, a2 - 125);
        v31 = expf(*(v8 + 744));
        if (v31 > expf(*(v12 + 744)))
        {
          v19 = (v8 + 1000 * v11);
          v21 = v8;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v19 = (v8 + 1000 * v11);
      if (v13 > v18)
      {
        goto LABEL_22;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v19, v8);
      v20 = expf(*(a2 - 64));
      if (v20 > expf(*(v8 + 744)))
      {
        v19 = v8;
LABEL_22:
        v21 = a2 - 125;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v19, v21);
      }
    }

LABEL_59:
    --a3;
    if ((a4 & 1) == 0)
    {
      v49 = expf(*(v8 - 256));
      if (v49 <= expf(*(v8 + 744)))
      {
        KB::Candidate::Candidate(v97, v8);
        v63 = expf(v98);
        if (v63 <= expf(*(a2 - 64)))
        {
          v66 = v8 + 1000;
          do
          {
            a1 = v66;
            if (v66 >= a2)
            {
              break;
            }

            v67 = expf(*(v66 + 744));
            v66 = a1 + 1000;
          }

          while (v63 <= v67);
        }

        else
        {
          v64 = v8;
          do
          {
            a1 = v64 + 1000;
            v65 = expf(*(v64 + 1744));
            v64 = a1;
          }

          while (v63 <= v65);
        }

        v68 = a2;
        if (a1 < a2)
        {
          v69 = a2;
          do
          {
            v68 = v69 - 125;
            v70 = expf(*(v69 - 64));
            v69 = v68;
          }

          while (v63 > v70);
        }

        while (a1 < v68)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v68);
          v71 = expf(v98);
          do
          {
            v72 = *(a1 + 1744);
            a1 += 1000;
          }

          while (v71 <= expf(v72));
          do
          {
            v73 = *(v68 - 64);
            v68 -= 125;
          }

          while (v71 > expf(v73));
        }

        if (a1 - 1000 != v8)
        {
          KB::Candidate::operator=(v8, (a1 - 1000));
        }

        KB::Candidate::operator=((a1 - 1000), v97);
        KB::Candidate::~Candidate(v97);
        a4 = 0;
        goto LABEL_2;
      }
    }

    KB::Candidate::Candidate(v97, v8);
    v50 = expf(v98);
    v51 = v8;
    do
    {
      v52 = v51;
      v51 += 125;
    }

    while (expf(*(v52 + 1744)) > v50);
    v53 = a2;
    if (v52 == v8)
    {
      v56 = a2;
      while (v51 < v56)
      {
        v54 = v56 - 125;
        v57 = expf(*(v56 - 64));
        v56 = v54;
        if (v57 > v50)
        {
          goto LABEL_71;
        }
      }

      v54 = v56;
    }

    else
    {
      do
      {
        v54 = v53 - 125;
        v55 = expf(*(v53 - 64));
        v53 = v54;
      }

      while (v55 <= v50);
    }

LABEL_71:
    if (v51 < v54)
    {
      v58 = v54;
      v59 = v51;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v59, v58);
        v60 = expf(v98);
        do
        {
          v52 = v59;
          v59 += 125;
        }

        while (expf(*(v52 + 1744)) > v60);
        do
        {
          v61 = *(v58 - 64);
          v58 -= 125;
        }

        while (expf(v61) <= v60);
      }

      while (v59 < v58);
    }

    if (v52 != v8)
    {
      KB::Candidate::operator=(v8, v52);
    }

    KB::Candidate::operator=(v52, v97);
    KB::Candidate::~Candidate(v97);
    if (v51 < v54)
    {
      goto LABEL_84;
    }

    v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(v8, v52);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(v52 + 1000, a2))
    {
      a1 = v52 + 1000;
      if (v62)
      {
        goto LABEL_2;
      }

LABEL_84:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v8, v52, a3, a4 & 1);
      a4 = 0;
      a1 = v52 + 1000;
      goto LABEL_2;
    }

    a2 = v52;
    if (v62)
    {
      goto LABEL_140;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(v8, v8 + 1000, v8 + 2000, (a2 - 125));
      goto LABEL_140;
    }

    if (v10 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(v8, v8 + 1000, v8 + 2000, v8 + 3000, (a2 - 125));
      goto LABEL_140;
    }

    goto LABEL_10;
  }

  v77 = expf(*(v8 + 1744));
  v78 = expf(*(v8 + 744));
  v79 = expf(*(a2 - 64));
  if (v77 > v78)
  {
    if (v79 <= v77)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, (v8 + 1000));
      v95 = expf(*(a2 - 64));
      if (v95 <= expf(*(v8 + 1744)))
      {
        goto LABEL_140;
      }

      v76 = (v8 + 1000);
    }

    else
    {
      v76 = v8;
    }

    v75 = a2 - 125;
    goto LABEL_139;
  }

  if (v79 > v77)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000), a2 - 125);
    v89 = expf(*(v8 + 1744));
    if (v89 > expf(*(v8 + 744)))
    {
      v75 = (v8 + 1000);
      v76 = v8;
LABEL_139:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v76, v75);
    }
  }

LABEL_140:
  v96 = *MEMORY[0x277D85DE8];
}

uint64_t TIInputManager::inject_supplemental_candidate(size_t a1, int a2, uint64_t *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!TITransientLexiconManagerGetActiveSupplementalLexiconWords() || a2 != 1 && (a2 || !*(a1 + 576) || (v6 = *(a1 + 264)) != 0 && **(v6 + 8) != *(*(v6 + 8) + 8)))
  {
    v7 = 0;
    goto LABEL_8;
  }

  TIInputManager::legacy_input_stem(a1, v39);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 0x40000000;
  v29 = ___ZN14TIInputManager29inject_supplemental_candidateEN2KB10LookupTypeERNS0_19CandidateCollectionE_block_invoke;
  v30 = &__block_descriptor_tmp_5_5172;
  v31 = a1;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 0x40000000;
  v34[2] = ___ZN14TIInputManager30word_from_supplemental_lexiconERN2KB6StringE_block_invoke;
  v34[3] = &__block_descriptor_tmp_5173;
  v34[4] = a1;
  KB::DynamicDictionary::word_from_supplemental_lexicon(*(*(a1 + 264) + 24), v39, v37);
  v11 = *a3;
  v10 = a3[1];
  if ((v38 & 1) == 0)
  {
    if (v10 == *a3)
    {
      v7 = 0;
      goto LABEL_49;
    }

    v16 = 0;
    v7 = 0;
    while (1)
    {
      v17 = (v11 + 1000 * v16);
      v18 = *v17;
      if (*v17)
      {
        v19 = *(v17 + 1);
        v20 = 240 * v18;
        v21 = v19 + 240 * v18;
        v22 = v20 - 240;
        v23 = (v19 + 224);
        do
        {
          v25 = *v23;
          v23 += 30;
          v24 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v22 == 0;
          }

          v22 -= 240;
        }

        while (!v26);
        if (!v24)
        {
          KB::DynamicDictionary::word_from_supplemental_lexicon(*(*(a1 + 264) + 24), v21 - 240, v34);
          if (v35 == 1)
          {
            KB::Candidate::pop_last_word(v17);
            if ((v35 & 1) == 0)
            {
              goto LABEL_54;
            }

            KB::Candidate::append(v17, v34);
            if (v35)
            {
              KB::Word::~Word(v34);
            }

            v7 = 1;
          }

          v11 = *a3;
          v10 = a3[1];
        }
      }

      if (++v16 >= (0x1CAC083126E978D5 * ((v10 - v11) >> 3)))
      {
        goto LABEL_49;
      }
    }
  }

  if (v10 == *a3)
  {
LABEL_40:
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v32);
    KB::Candidate::Candidate(v34, v32, 0);
    if (v33 && v32[6] == 1)
    {
      free(v33);
    }

    if (v34[0])
    {
      KB::Candidate::pop_last_word(v34);
    }

    if (v38)
    {
      KB::Candidate::append(v34, v37);
      v36 = 1065353216;
      std::vector<KB::Candidate>::push_back[abi:nn200100](a3, v34);
      KB::Candidate::~Candidate(v34);
LABEL_47:
      v7 = 1;
      goto LABEL_49;
    }

LABEL_54:
    v27 = std::__throw_bad_optional_access[abi:nn200100]();
    return TIInputManager::apply_case_insensitive_constraints(v27);
  }

  v7 = 0;
  v12 = 0;
  while (2)
  {
    v13 = 1000 * v12;
    while (1)
    {
      v14 = v11 + v13;
      v15 = *(v11 + v13);
      if (v15)
      {
        break;
      }

LABEL_16:
      ++v12;
      v13 += 1000;
      if (v12 >= 0x1CAC083126E978D5 * ((v10 - v11) >> 3))
      {
        if (v7)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }
    }

    if (((v29)(v28, v39, *(v14 + 8) + 240 * v15 - 240) & 1) == 0)
    {
      v11 = *a3;
      v10 = a3[1];
      goto LABEL_16;
    }

    KB::Candidate::pop_last_word(v14);
    if ((v38 & 1) == 0)
    {
      goto LABEL_54;
    }

    KB::Candidate::append(v14, v37);
    *(v14 + 744) = 1065353216;
    ++v12;
    v11 = *a3;
    v10 = a3[1];
    v7 = 1;
    if (v12 < 0x1CAC083126E978D5 * ((v10 - *a3) >> 3))
    {
      continue;
    }

    break;
  }

LABEL_49:
  if (v38 == 1)
  {
    KB::Word::~Word(v37);
  }

  if (v40)
  {
    if (v39[6] == 1)
    {
      free(v40);
    }
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void TIInputManager::apply_case_insensitive_constraints(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 216) <= *(a1 + 220))
  {
    v8 = *(a1 + 220);
  }

  else
  {
    v8 = *(a1 + 216);
  }

  TIInputManager::input_substring((a1 + 8), 0, v8, v30);
  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 216), v28);
  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v26);
  v9 = 0;
  v16[0] = a2;
  v16[1] = a2 + 24;
  v16[2] = a2 + 48;
  v16[3] = a2 + 72;
  v10 = MEMORY[0x277D85DD0];
  do
  {
    v11 = v16[v9];
    v12 = *v11;
    v13 = *(v11 + 8);
    v17[0] = v10;
    v17[1] = 1174405120;
    v17[2] = ___ZN14TIInputManager34apply_case_insensitive_constraintsERN2KB19CandidateCollectionENS0_10LookupTypeEP10__CFString_block_invoke;
    v17[3] = &__block_descriptor_tmp_13;
    v17[4] = a1;
    KB::String::String(v18, v30);
    KB::String::String(v20, v28);
    KB::String::String(v22, v26);
    v25 = a3;
    v24 = a4;
    v14 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v12, v13, v17);
    std::vector<KB::Candidate>::erase(v11, v14, *(v11 + 8));
    if (v23 && v22[6] == 1)
    {
      free(v23);
    }

    if (v21 && v20[6] == 1)
    {
      free(v21);
    }

    if (v19 && v18[6] == 1)
    {
      free(v19);
    }

    ++v9;
  }

  while (v9 != 4);
  if (v27 && v26[6] == 1)
  {
    free(v27);
  }

  if (v29 && v28[6] == 1)
  {
    free(v29);
  }

  if (v31 && v30[6] == 1)
  {
    free(v31);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void TIInputManager::apply_case_changes(uint64_t a1, uint64_t a2, unsigned __int16 *a3, std::vector<unsigned int>::size_type a4, uint64_t a5, __CFString *a6)
{
  v8 = a4;
  v9 = a3;
  v11 = 0;
  v38[2] = *MEMORY[0x277D85DE8];
  v30[0] = a2;
  v30[1] = a2 + 24;
  v30[2] = a2 + 48;
  v30[3] = a2 + 72;
  v28 = a4;
  do
  {
    v27 = v11;
    v12 = *(v30 + v11);
    v13 = *v12;
    if (v12[1] != *v12)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if (TIInputManager::apply_case_changes(a1, (v13 + 1000 * v14), v9, v8, a5, *(a1 + 731), a1 + 264, a6))
        {
          ++v15;
          v16 = v12[1];
        }

        else
        {
          v17 = a5;
          if (a6)
          {
            v18 = (*v12 + 1000 * v14);
            KB::Candidate::capitalized_string(v18, v35);
            v19 = v37;
            if (!v37)
            {
              v19 = v38;
            }

            if (v35[0])
            {
              v20 = v19;
            }

            else
            {
              v20 = "";
            }

            KB::Candidate::token_ids_as_string(v18, v31);
            v22 = v33;
            if (!v33)
            {
              v22 = &v34;
            }

            if (v31[0])
            {
              v23 = v22;
            }

            else
            {
              v23 = "";
            }

            KB::append_format(a6, "[%s] {%s} removed by %s\n", v21, v20, v23, "apply_case_changes");
            if (v33 && v32 == 1)
            {
              free(v33);
            }

            if (v37 && v36 == 1)
            {
              free(v37);
            }
          }

          v24 = v12[1];
          v16 = (*v12 + 1000 * v14);
          if (v16 + 125 != v24)
          {
            do
            {
              v25 = v16;
              v16 += 125;
            }

            while (KB::Candidate::operator=(v25, v16) + 250 != v24);
            v24 = v12[1];
          }

          while (v24 != v16)
          {
            v24 -= 125;
            KB::Candidate::~Candidate(v24);
          }

          v12[1] = v16;
          a5 = v17;
          v8 = v28;
          v9 = a3;
        }

        v14 = v15;
        v13 = *v12;
      }

      while (0x1CAC083126E978D5 * ((v16 - *v12) >> 3) > v15);
    }

    v11 = v27 + 8;
  }

  while (v27 != 24);
  v26 = *MEMORY[0x277D85DE8];
}

void TIInputManager::apply_apostrophe_changes(TIInputManager *this, KB::CandidateCollection *a2, const KB::String *a3, __CFString *a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  if (KB::String::contains(a3, 0x2019u))
  {
    v6 = 0;
    v26[0] = a2;
    v26[1] = a2 + 24;
    v26[2] = a2 + 48;
    v26[3] = a2 + 72;
    do
    {
      v25 = v6;
      v7 = *(v26 + v6);
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (*v8)
        {
          v10 = 0;
          v11 = *(v8 + 1);
          v12 = (v11 + 240 * *v8);
          do
          {
            while (1)
            {
              v13 = *(v11 + 1);
              if (!v13)
              {
                v13 = v11 + 16;
              }

              v14 = *v11;
              if (*v11)
              {
                v15 = *v11;
                v16 = v13;
                while (*v16 != 39)
                {
                  ++v16;
                  if (!--v15)
                  {
                    v16 = &v14[v13];
                    break;
                  }
                }
              }

              else
              {
                v16 = v13;
              }

              if ((v16 - v13) == v14)
              {
                break;
              }

              KB::Word::capitalized_string(v11, v32);
              v28 = 0;
              v29 = 0;
              v30 = "’";
              v27 = 1048579;
              v31[1] = 0;
              KB::String::replace_char(v32, &v27, 39, v36);
              if (v30 && v29 == 1)
              {
                free(v30);
              }

              if (v34 && v33 == 1)
              {
                free(v34);
              }

              if (a4)
              {
                KB::Candidate::capitalized_string(v8, v32);
                v17 = v34;
                if (!v34)
                {
                  v17 = &v35;
                }

                if (v32[0])
                {
                  v18 = v17;
                }

                else
                {
                  v18 = "";
                }

                KB::Word::capitalized_string(v11, &v27);
                v20 = v30;
                if (!v30)
                {
                  v20 = v31;
                }

                if (v27)
                {
                  v21 = v20;
                }

                else
                {
                  v21 = "";
                }

                v22 = v38;
                if (!v38)
                {
                  v22 = v39;
                }

                if (v36[0])
                {
                  v23 = v22;
                }

                else
                {
                  v23 = "";
                }

                KB::append_format(a4, "[%s] converted [%s] to [%s] by %s\n", v19, v18, v21, v23, "apply_apostrophe_changes");
                if (v30 && v29 == 1)
                {
                  free(v30);
                }

                if (v34 && v33 == 1)
                {
                  free(v34);
                }
              }

              KB::String::operator=(v11, v36);
              if (v38)
              {
                if (v37 == 1)
                {
                  free(v38);
                }
              }

              v11 = (v11 + 240);
              v10 = 1;
              if (v11 == v12)
              {
                goto LABEL_52;
              }
            }

            v11 = (v11 + 240);
          }

          while (v11 != v12);
          if ((v10 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          KB::Candidate::compute_string(v8);
        }

LABEL_53:
        v8 = (v8 + 1000);
      }

      v6 = v25 + 8;
    }

    while (v25 != 24);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void TIInputManager::apply_shortcut_conversions(TIInputManager *this, KB::CandidateCollection *a2, const KB::String *a3, __CFString *a4)
{
  v6 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v22[0] = a2;
  v22[1] = a2 + 24;
  v22[2] = a2 + 48;
  v22[3] = a2 + 72;
  do
  {
    v7 = *(v22 + v6);
    v9 = *v7;
    v8 = v7[1];
    v20 = v6;
    v21 = v8;
    while (v9 != v8)
    {
      if (*v9)
      {
        v10 = *(v9 + 1);
        v11 = 240 * *v9;
        do
        {
          if (*(v10 + 106))
          {
            TIInputManager::conversion_for_shortcut(this, v10, v35);
            if (v35[0])
            {
              if (a4)
              {
                KB::Candidate::capitalized_string(v9, v31);
                v12 = v33;
                if (!v33)
                {
                  v12 = &v34;
                }

                if (v31[0])
                {
                  v13 = v12;
                }

                else
                {
                  v13 = "";
                }

                KB::Word::capitalized_string(v10, v27);
                v14 = v29;
                if (!v29)
                {
                  v14 = &v30;
                }

                if (v27[0])
                {
                  v15 = v14;
                }

                else
                {
                  v15 = "";
                }

                KB::Word::capitalized_string(v35, v23);
                v17 = v25;
                if (!v25)
                {
                  v17 = &v26;
                }

                if (v23[0])
                {
                  v18 = v17;
                }

                else
                {
                  v18 = "";
                }

                KB::append_format(a4, "[%s] converted [%s] to [%s] by %s\n", v16, v13, v15, v18, "apply_shortcut_conversions");
                if (v25 && v24 == 1)
                {
                  free(v25);
                }

                if (v29 && v28 == 1)
                {
                  free(v29);
                }

                if (v33)
                {
                  if (v32 == 1)
                  {
                    free(v33);
                  }
                }
              }

              KB::String::operator=(v10, v35);
              KB::Candidate::compute_string(v9);
            }

            KB::Word::~Word(v35);
          }

          v10 = (v10 + 240);
          v11 -= 240;
        }

        while (v11);
      }

      v9 = (v9 + 1000);
      v8 = v21;
    }

    v6 = v20 + 8;
  }

  while (v20 != 24);
  v19 = *MEMORY[0x277D85DE8];
}

void TIInputManager::remove_text_replacement_from_top(TIInputManager *this, const KB::Candidate **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if ((0x1CAC083126E978D5 * ((a2[1] - v3) >> 3)) >= 2)
  {
    KB::Candidate::Candidate(&v8, v3);
    if (v8)
    {
      v5 = 240 * v8;
      v6 = v9;
      while ((*(v6 + 106) & 1) == 0)
      {
        v6 += 240;
        v5 -= 240;
        if (!v5)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = v9;
    }

    if (v6 != v9 + 240 * v8)
    {
      KB::Candidate::operator=(*a2, *a2 + 1000);
      KB::Candidate::operator=(*a2 + 1000, &v8);
    }

LABEL_10:
    KB::Candidate::~Candidate(&v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void TIInputManager::conversion_for_shortcut(TIInputManager *this@<X0>, const KB::String *a2@<X1>, KB::Word *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(this + 33) + 24) + 24);
  if (v4 && (v5 = *v4) != 0 && *a2 < 0x41u)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    KB::lower_string(a2, 0, &v47);
    if (v48)
    {
      v8 = v48;
    }

    else
    {
      v8 = v49;
    }

    v9 = KB::String::hash(v8, v47);
    v11 = *(v5 + 16);
    if (v11)
    {
      v12 = v9;
      v13 = vcnt_s8(v11);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v15 = v9;
        if (v11 <= v9)
        {
          v15 = v9 % v11;
        }
      }

      else
      {
        v15 = (v11 - 1) & v9;
      }

      v16 = *(*(v5 + 8) + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          do
          {
            v18 = v17[1];
            if (v18 == v12)
            {
              if (v17 + 2 == &v47 || KB::String::equal((v17 + 2), &v47, 1))
              {
                if (v17 + 6 != &v41)
                {
                  std::vector<KB::String>::__assign_with_size[abi:nn200100]<KB::String*,KB::String*>(&v41, v17[6], v17[7], (v17[7] - v17[6]) >> 5);
                }

                break;
              }
            }

            else
            {
              if (v14 > 1)
              {
                if (v18 >= v11)
                {
                  v18 %= v11;
                }
              }

              else
              {
                v18 &= v11 - 1;
              }

              if (v18 != v15)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    if (v48 && BYTE6(v47) == 1)
    {
      free(v48);
    }

    v19 = v41;
    if (v42 == v41)
    {
      *(a3 + 13) = 0u;
      *(a3 + 14) = 0u;
      *(a3 + 11) = 0u;
      *(a3 + 12) = 0u;
      *(a3 + 9) = 0u;
      *(a3 + 10) = 0u;
      *(a3 + 7) = 0u;
      *(a3 + 8) = 0u;
      *(a3 + 5) = 0u;
      *(a3 + 6) = 0u;
      *(a3 + 3) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      KB::Word::Word(a3);
    }

    else
    {
      if (*a2 && *v41)
      {
        v20 = KB::ns_string(v41, v10);
        if (v20)
        {
          v21 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
          v22 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
          [v20 rangeOfCharacterFromSet:v21];
          if (v23 && ([v20 rangeOfCharacterFromSet:v22], !v24))
          {
            v25 = KB::ns_string(a2, 0);
            v26 = v25;
            if (v25 && ([v25 rangeOfCharacterFromSet:v22], v27) && ((objc_msgSend(v26, "rangeOfCharacterFromSet:", v21), v28) || objc_msgSend(v26, "length") < 2) && (objc_msgSend(v26, "capitalizedString", v41), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v26, "isEqualToString:", v29), v29, (v30 & 1) != 0))
            {
              v47 = 0;
              v48 = &v47;
              v49[0] = 0x4012000000;
              v49[1] = __Block_byref_object_copy__12949;
              v49[2] = __Block_byref_object_dispose__12950;
              v49[3] = "";
              v50 = xmmword_22CC889D0;
              v31 = [v20 length];
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = ___ZN2KB41match_shortcut_conversion_case_with_inputERKNS_6StringES2__block_invoke;
              v44[3] = &unk_278732850;
              v44[4] = &v47;
              [v20 enumerateSubstringsInRange:0 options:v31 usingBlock:{515, v44}];
              v32 = *(v48 + 6);
              if (v32 == 0x7FFFFFFFFFFFFFFFLL || (v33 = *(v48 + 7)) == 0)
              {
                KB::String::String(v45, v19);
              }

              else
              {
                if (v32 || v33 != [v20 length])
                {
                  v35 = [MEMORY[0x277CCAB68] stringWithString:v20];
                  v37 = *(v48 + 6);
                  v38 = *(v48 + 7);
                  v39 = [v20 substringWithRange:{v37, v38}];
                  v40 = [v39 capitalizedString];
                  [v35 replaceCharactersInRange:v37 withString:{v38, v40}];

                  v34 = v35;
                }

                else
                {
                  v34 = [v20 capitalizedString];
                  v35 = v34;
                }

                KB::utf8_string(v34, v45);
              }

              _Block_object_dispose(&v47, 8);
            }

            else
            {
              KB::String::String(v45, v19);
            }
          }

          else
          {
            KB::String::String(v45, v19);
          }
        }

        else
        {
          KB::String::String(v45, v19);
        }
      }

      else
      {
        KB::String::String(v45, v41);
      }

      KB::Word::Word(a3, v45, &kTITokenIDUNK, 0);
      if (v46 && v45[6] == 1)
      {
        free(v46);
      }
    }

    v47 = &v41;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v47);
    v36 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(a3 + 13) = 0u;
    *(a3 + 14) = 0u;
    *(a3 + 11) = 0u;
    *(a3 + 12) = 0u;
    *(a3 + 9) = 0u;
    *(a3 + 10) = 0u;
    *(a3 + 7) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    v7 = *MEMORY[0x277D85DE8];

    KB::Word::Word(a3);
  }
}

uint64_t TIInputManager::apply_case_changes(uint64_t a1, unint64_t *a2, unsigned __int16 *a3, std::vector<unsigned int>::size_type a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v108[2] = *MEMORY[0x277D85DE8];
  v82 = a6;
  v81 = a8;
  TIInputManager::input_substring(a3, 0, a4, v104);
  TIInputManager::input_flags_subvector(a4, a3, 0, &v80);
  v78 = 0;
  v79 = 0;
  v77 = 0;
  if (a4)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a4);
  }

  begin = v80.__begin_;
  v12 = v105;
  if (!v105)
  {
    KB::String::compute_length(v104);
    v12 = v105;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v12);
  }

  KB::word_ranges(v104, 0, &v74);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v76 = 0;
  v13 = *a2;
  v14 = a1;
  if (*a2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if ((*(a2[1] + 240 * v15 + 135) & 4) == 0)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v71, &v76);
        v13 = *a2;
      }

      v76 = v16;
      v15 = v16;
      v17 = v13 > v16++;
    }

    while (v17);
    if ((v82 & 1) == 0 && v13)
    {
      v18 = a2[1];
      v19 = 240 * v13;
      do
      {
        if (*(a1 + 104))
        {
          if (*(a1 + 112))
          {
            v20 = *(a1 + 112);
          }

          else
          {
            v20 = (a1 + 120);
          }
        }

        else
        {
          v20 = "";
        }

        KB::string_to_lowercase(v18, v20, &v89);
        KB::String::operator=(v18, &v89);
        if (*(&v89 + 1))
        {
          v21 = BYTE6(v89) == 1;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          free(*(&v89 + 1));
        }

        v18 = (v18 + 240);
        v19 -= 240;
      }

      while (v19);
      if (*a2)
      {
        v22 = 240 * *a2;
        v23 = (a2[1] + 104);
        do
        {
          v23[4] = 0;
          *v23 &= ~1u;
          v23 += 60;
          v22 -= 240;
        }

        while (v22);
      }
    }
  }

  v24 = v71;
  v25 = v72;
  v26 = v74;
  v53 = (v75 - v74) >> 3;
  v70 = v53;
  v69 = v53 == (v72 - v71) >> 2;
  v68 = 0;
  if (v75 == v74)
  {
LABEL_70:
    v48 = begin;
    while (v24 != v25)
    {
      v49 = *v24++;
      TIInputManager::apply_shift_context_to_prediction(v14, a5, (a2[1] + 240 * v49));
      if (a5 == 2)
      {
        a5 = 0;
      }
    }

    KB::Candidate::commit_custom_capitalization(a2);
    v47 = 1;
  }

  else
  {
    v27 = 0;
    while (1)
    {
      v28 = &v26[8 * v27];
      v29 = *v28;
      v30 = *(v28 + 1) + v29;
      if (v107)
      {
        v31 = v107;
      }

      else
      {
        v31 = v108;
      }

      *&v85 = v31;
      v32 = v104[0];
      DWORD2(v85) = 0;
      HIDWORD(v85) = v104[0];
      LODWORD(v86) = 0;
      KB::String::iterator::initialize(&v85);
      v89 = v85;
      v90 = v86;
      v33 = v29;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v89, v29);
      *&v64 = v31;
      DWORD2(v64) = 0;
      HIDWORD(v64) = v32;
      LODWORD(v65) = 0;
      KB::String::iterator::initialize(&v64);
      *__p = v64;
      v67 = v65;
      v34 = v30;
      std::__advance[abi:nn200100]<KB::String::iterator>(__p, v30);
      KB::String::String(v101, &v89, __p);
      v35 = 4 * v30;
      __p[0] = 0;
      __p[1] = 0;
      v67 = 0;
      if (v35 != 4 * v29)
      {
        v36 = (v35 - 4 * v29) >> 2;
        if (!(v36 >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v36);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v62 = 0;
      v63 = 0;
      *&v89 = &v63;
      *(&v89 + 1) = a1;
      v90 = &v69;
      v91 = &v70;
      v92 = &v68;
      v93 = &v71;
      v94 = a2;
      v95 = a7;
      v96 = &v81;
      v97 = v104;
      v98 = &v62;
      v99 = __p;
      v100 = &v82;
      KB::String::String(v87, v101);
      v39 = TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(&v89, v87, v37, v38);
      if (v88 && v87[6] == 1)
      {
        free(v88);
      }

      if (*(a1 + 200) && v39)
      {
        if (v107)
        {
          v40 = v107;
        }

        else
        {
          v40 = v108;
        }

        *&v60 = v40;
        v41 = v104[0];
        DWORD2(v60) = 0;
        HIDWORD(v60) = v104[0];
        LODWORD(v61) = 0;
        KB::String::iterator::initialize(&v60);
        v64 = v60;
        v65 = v61;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v64, v33);
        *&v56 = v40;
        DWORD2(v56) = 0;
        HIDWORD(v56) = v41;
        LODWORD(v57) = 0;
        KB::String::iterator::initialize(&v56);
        v58 = v56;
        v59 = v57;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v58, v34);
        KB::String::String(&v85, &v64, &v58);
        KB::String::operator=(v101, &v85);
        if (*(&v85 + 1) && BYTE6(v85) == 1)
        {
          free(*(&v85 + 1));
        }

        KB::String::convert_via_map(v101, (a1 + 176), &v85);
        v39 = 1;
        if (!KB::String::equal(&v85, v101, 1))
        {
          v72 = v71;
          v76 = 0;
          v42 = *a2;
          if (*a2)
          {
            v43 = 0;
            v44 = 1;
            do
            {
              if ((*(a2[1] + 240 * v43 + 135) & 4) == 0)
              {
                std::vector<unsigned int>::push_back[abi:nn200100](&v71, &v76);
                v42 = *a2;
              }

              v76 = v44;
              v43 = v44;
              v17 = v42 > v44++;
            }

            while (v17);
          }

          KB::String::String(v83, &v85);
          v39 = TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(&v89, v83, v45, v46);
          if (v84 && v83[6] == 1)
          {
            free(v84);
          }
        }

        if (*(&v85 + 1) && BYTE6(v85) == 1)
        {
          free(*(&v85 + 1));
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v103 && v102 == 1)
      {
        free(v103);
      }

      if (v39 == 1)
      {
        break;
      }

      v27 = ++v68;
      if (v53 <= v68)
      {
        v24 = v71;
        v25 = v72;
        v14 = a1;
        goto LABEL_70;
      }
    }

    v47 = 0;
    v48 = begin;
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (v77)
  {
    operator delete(v77);
  }

  if (v48)
  {
    operator delete(v48);
  }

  if (v107 && v106 == 1)
  {
    free(v107);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

void TIInputManager::input_flags_subvector(std::vector<unsigned int>::size_type __n@<X2>, void *a2@<X0>, unsigned int a3@<W1>, std::vector<unsigned int> *a4@<X8>)
{
  v4 = __n;
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a4, __n);
  if (v4 + a3 > a3)
  {
    v8 = 40 * a3 + 32;
    do
    {
      v9 = *(*a2 + v8);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v9);
      v8 += 40;
      --v4;
    }

    while (v4);
  }
}

void *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(int **a1, KB::String *a2, uint64_t a3, const KB::String *a4)
{
  result = 0;
  v155[2] = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = **a1;
  if (v7 <= 2)
  {
    switch(v7)
    {
      case 0:
        v47 = a1[5];
        v65 = *v47;
        v64 = v47[1];
        if (*v47 != v64)
        {
          v66 = v64 - (v65 + 4);
          if (v64 != v65 + 4)
          {
            memmove(*v47, v65 + 4, v64 - (v65 + 4));
          }

          result = 0;
          v52 = &v65[v66];
          goto LABEL_66;
        }

        goto LABEL_119;
      case 1:
        v67 = a1[5];
        v69 = *v67;
        v68 = v67[1];
        if (*v67 != v68)
        {
          v70 = (*(a1[6] + 1) + 240 * *v69);
          if ((*(v70 + 104) & 0x20) == 0)
          {
            TIInputManager::capitalize_first_letter(a1[1], v70, 0);
            v67 = a1[5];
            v69 = *v67;
            v68 = v67[1];
          }

          v71 = v68 - (v69 + 4);
          if (v68 != (v69 + 4))
          {
            memmove(v69, v69 + 4, v68 - (v69 + 4));
          }

          result = 0;
          v67[1] = &v69[v71];
          goto LABEL_145;
        }

        v81 = *a1[8];
        if (v81)
        {
          v82 = a1[9];
          if (*v82)
          {
            v83 = *(v82 + 1);
            v84 = (v82 + 4);
            if (v83)
            {
              v85 = v83;
            }

            else
            {
              v85 = v84;
            }
          }

          else
          {
            v85 = "";
          }

          KB::Candidate::capitalized_string(a1[6], &__p);
          v125 = v154;
          if (!v154)
          {
            v125 = v155;
          }

          if (__p)
          {
            v126 = v125;
          }

          else
          {
            v126 = "";
          }

          KB::append_format(v81, "input [%s] was considered to have capitalization type WordCapitalizationTypeAutoshift and candidate [%s] was not accepted; will be filtered out\n", v124, v85, v126);
          goto LABEL_141;
        }

        break;
      case 2:
        v8 = a1[5];
        if (*v8 != v8[1])
        {
          v9 = *(a1[6] + 1) + 240 * **v8;
          v10 = *(v9 + 4);
          if (!*(v9 + 4))
          {
            KB::String::compute_length(v9);
            v10 = *(v9 + 4);
          }

          LOBYTE(v148.var0.var0.var0) = 1;
          std::vector<BOOL>::vector(&__p, v10);
          if (v154)
          {
            v12 = 0;
            v13 = 32;
            if (v154 < 0x20)
            {
              v13 = v154;
            }

            v14 = vdupq_n_s64(v13 - 1);
            v15 = xmmword_22CC88A90;
            v16 = xmmword_22CC88AA0;
            v17 = xmmword_22CC889B0;
            v18 = vdupq_n_s64(1uLL);
            v19 = vdupq_n_s64(4uLL);
            v20 = (v13 + 3) & 0x7C;
            v21 = 0uLL;
            v22.i64[0] = 0x100000001;
            v22.i64[1] = 0x100000001;
            v23.i64[0] = 0x400000004;
            v23.i64[1] = 0x400000004;
            do
            {
              v24 = v21;
              v25 = vcgeq_u64(v14, v16);
              v26 = vmovn_s64(v25);
              *v21.i8 = vuzp1_s16(v26, *v14.i8);
              if (v21.i8[0])
              {
                v21.i64[0] = *(__p + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
              }

              v27 = v12 >> 6;
              if (vuzp1_s16(v26, *&v14).i8[2])
              {
                v21.i64[1] = *(__p + v27);
              }

              v28 = vcgeq_u64(v14, v15);
              v29 = vmovn_s64(v28);
              *v11.i8 = vuzp1_s16(*v14.i8, v29);
              if (v11.i8[4])
              {
                v11.i64[0] = *(__p + v27);
              }

              if (vuzp1_s16(*&v14, v29).i8[6])
              {
                v11.i64[1] = *(__p + v27);
              }

              v30 = vuzp1q_s32(vceqzq_s64(vandq_s8(v21, vshlq_u64(v18, v16))), vceqzq_s64(vandq_s8(v11, vshlq_u64(v18, v15))));
              v11 = vshlq_u32(v22, v17);
              v21 = vorrq_s8(vbicq_s8(v11, v30), v24);
              v12 += 4;
              v15 = vaddq_s64(v15, v19);
              v16 = vaddq_s64(v16, v19);
              v17 = vaddq_s32(v17, v23);
            }

            while (v20 != v12);
            v31 = vbslq_s8(vuzp1q_s32(v25, v28), v21, v24);
            *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
            v32 = v31.i32[0] | v31.i32[1];
          }

          else
          {
            v32 = 0;
          }

          *(v9 + 120) = v32;
          v113 = v32 == 1;
          v114 = *(v9 + 104) & 0xFFFFFFFE;
          if (v113)
          {
            ++v114;
          }

          *(v9 + 104) = v114;
          v115 = a1[5];
          v117 = *v115;
          v116 = *(v115 + 1);
          v118 = (*v115 + 4);
          v119 = v116 - v118;
          if (v116 != v118)
          {
            memmove(*v115, v118, v116 - v118);
          }

          *(v115 + 1) = &v117[v119];
          if (__p)
          {
            operator delete(__p);
          }

LABEL_119:
          result = 0;
          goto LABEL_145;
        }

        v76 = *a1[8];
        if (v76)
        {
          v77 = a1[9];
          if (*v77)
          {
            v78 = *(v77 + 1);
            v79 = (v77 + 4);
            if (v78)
            {
              v80 = v78;
            }

            else
            {
              v80 = v79;
            }
          }

          else
          {
            v80 = "";
          }

          KB::Candidate::capitalized_string(a1[6], &__p);
          v122 = v154;
          if (!v154)
          {
            v122 = v155;
          }

          if (__p)
          {
            v123 = v122;
          }

          else
          {
            v123 = "";
          }

          KB::append_format(v76, "input [%s] was considered to have capitalization type WordCapitalizationTypeAutoshiftAllCharacters and candidate [%s] was not accepted; will be filtered out\n", v121, v80, v123);
LABEL_141:
          if (v154 && BYTE6(__p) == 1)
          {
            free(v154);
          }
        }

        break;
      default:
        goto LABEL_145;
    }

LABEL_144:
    result = 1;
    goto LABEL_145;
  }

  if ((v7 - 4) < 2)
  {
    goto LABEL_23;
  }

  if (v7 != 3)
  {
    goto LABEL_145;
  }

  v53 = *(v6 + 73);
  if ((!v53 || (*(*v53 + 40))(v53)) && *a1[2] == 1)
  {
    v54 = *a1[5];
    if (*a1[3] - *a1[4] == (*(a1[5] + 1) - v54) >> 2)
    {
      v55 = *(a1[6] + 1) + 240 * *v54;
      if ((*(v55 + 104) & 1) == 0)
      {
        v56 = *a1[7];
        if (!v56)
        {
LABEL_147:
          v128 = KB::String::first(a2);
          KB::String::String(&__p, v128);
          KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), v55, &v148);
          KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), &__p, &v147);
          goto LABEL_158;
        }

        KB::DictionaryContainer::lookup(v56, &__p);
        v57 = __p;
        v58 = v154;
        v149[0] = MEMORY[0x277D85DD0];
        v149[1] = 0x40000000;
        v150 = ___ZZNK14TIInputManager18apply_case_changesERN2KB9CandidateERKNSt3__16vectorINS0_5InputENS3_9allocatorIS5_EEEEj14TIShiftContextbRKN3WTF6RefPtrINS0_19DictionaryContainerEEEP10__CFStringENK3__0clENS0_6StringE_block_invoke;
        v151 = &__block_descriptor_tmp_34;
        v152 = v55;
        while (1)
        {
          if (v57 == v58)
          {
            *&v148.var0.var0.var0 = &__p;
            std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v148);
            goto LABEL_147;
          }

          if ((v150)(v149, v57))
          {
            break;
          }

          v57 += 240;
        }

        *&v148.var0.var0.var0 = &__p;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v148);
      }

      v129 = *(v55 + 4);
      if (!*(v55 + 4))
      {
        KB::String::compute_length(v55);
        v129 = *(v55 + 4);
      }

      v130 = *(a2 + 2);
      if (!*(a2 + 2))
      {
        KB::String::compute_length(a2);
        v130 = *(a2 + 2);
      }

      v131 = v130 - 1;
      v132 = KB::String::first(a2);
      KB::String::String(&__p, v132);
      KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), v55, &v148);
      KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), &__p, &v147);
      if (v131 <= v129 && KB::ByteString::starts_with(&v148, &v147))
      {
        TIInputManager::capitalize_first_letter(v6, v55, 1);
        v133 = a1[5];
        v135 = *v133;
        v134 = *(v133 + 1);
        v136 = (*v133 + 4);
        v137 = v134 - v136;
        if (v134 != v136)
        {
          memmove(*v133, v136, v134 - v136);
        }

        v138 = 0;
        *(v133 + 1) = &v135[v137];
LABEL_159:
        if (v147.var0.var0.var0 >= 0xFu && v147.var0.var0.var1)
        {
          MEMORY[0x2318BE250](v147.var0.var0.var1, 0x1000C8077774924);
        }

        if (v148.var0.var0.var0 >= 0xFu && v148.var0.var0.var1)
        {
          MEMORY[0x2318BE250](v148.var0.var0.var1, 0x1000C8077774924);
        }

        if (v154 && BYTE6(__p) == 1)
        {
          free(v154);
        }

        if (!v138)
        {
          goto LABEL_119;
        }

        goto LABEL_169;
      }

LABEL_158:
      v138 = 1;
      goto LABEL_159;
    }
  }

LABEL_169:
  v139 = *a1[8];
  if (v139)
  {
    v140 = a1[9];
    if (*v140)
    {
      v141 = *(v140 + 1);
      v142 = (v140 + 4);
      if (v141)
      {
        v143 = v141;
      }

      else
      {
        v143 = v142;
      }
    }

    else
    {
      v143 = "";
    }

    KB::Candidate::capitalized_string(a1[6], &__p);
    v145 = v154;
    if (!v154)
    {
      v145 = v155;
    }

    if (__p)
    {
      v146 = v145;
    }

    else
    {
      v146 = "";
    }

    KB::append_format(v139, "input [%s] was considered to have capitalization type WordCapitalizationTypeExplicitShift and candidate [%s] was not accepted; falling through to WordCapitalizationTypeAllCaps/WordCapitalizationTypeMixedCase\n", v144, v143, v146);
    if (v154 && BYTE6(__p) == 1)
    {
      free(v154);
    }
  }

LABEL_23:
  *a1[10] = 0;
  v34 = *a1[5];
  if (*(a1[5] + 1) == v34)
  {
    goto LABEL_42;
  }

  v35 = 0;
  while (1)
  {
    v36 = *(v34 + 4 * v35);
    v37 = a1[6];
    v38 = *(v37 + 1) + 240 * v36;
    if (**a1 == 5)
    {
      break;
    }

    if (*v37 - 1 == v36)
    {
      KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), v38, &__p);
      KB::CollatorWrapper::sortkey_for_string((*(*(v6 + 33) + 8) + 72), a2, &v148);
      v41 = KB::ByteString::starts_with(&__p, &v148);
      if (v148.var0.var0.var0 >= 0xFu && v148.var0.var0.var1)
      {
        MEMORY[0x2318BE250](v148.var0.var0.var1, 0x1000C8077774924);
      }

      if (__p >= 0xFu && v154)
      {
        MEMORY[0x2318BE250](v154, 0x1000C8077774924);
      }

      if (!v41)
      {
        goto LABEL_41;
      }
    }

    else if (KB::CollatorWrapper::sortkey_compare_strings((*(*(v6 + 33) + 8) + 72), v38, a2, a4))
    {
      goto LABEL_41;
    }

    __p = &unk_283FDCF10;
    v154 = 1;
    if (KB::InputSegmentFilter::string_preserves_surface_form_features(&__p, v38, a2, 0, 0))
    {
      v72 = **a1;
      if (v72 != 4)
      {
        goto LABEL_73;
      }

      v43 = KB::count_word_medial_punctuation(v38, v42);
      if (v43 <= KB::count_word_medial_punctuation(a2, v44))
      {
        goto LABEL_96;
      }
    }

LABEL_41:
    v45 = a1[10];
    v35 = (*v45 + 1);
    *v45 = v35;
    v34 = *a1[5];
    if (v35 >= (*(a1[5] + 1) - v34) >> 2)
    {
      goto LABEL_42;
    }
  }

  v39 = a1[11];
  v40 = *a1[12];
  if (!(*(*v6 + 40))(v6))
  {
    goto LABEL_41;
  }

  v72 = **a1;
LABEL_73:
  if (v72 == 3)
  {
    v73 = v6;
    v74 = v38;
    v75 = 1;
    goto LABEL_121;
  }

  if (v72 == 4)
  {
LABEL_96:
    v89 = *(v38 + 4);
    if (!*(v38 + 4))
    {
      KB::String::compute_length(v38);
      v89 = *(v38 + 4);
    }

    LOBYTE(v148.var0.var0.var0) = 1;
    std::vector<BOOL>::vector(&__p, v89);
    v91 = __p;
    v92 = v154;
    if (v154)
    {
      v93 = 0;
      if (v154 >= 0x20)
      {
        v92 = 32;
      }

      v94 = vdupq_n_s64(v92 - 1);
      v95 = xmmword_22CC88A90;
      v96 = xmmword_22CC88AA0;
      v97 = vdupq_n_s64(1uLL);
      v98 = vdupq_n_s64(4uLL);
      v99 = xmmword_22CC889B0;
      v100 = (v92 + 3) & 0x7C;
      v101 = 0uLL;
      v102.i64[0] = 0x100000001;
      v102.i64[1] = 0x100000001;
      v103.i64[0] = 0x400000004;
      v103.i64[1] = 0x400000004;
      do
      {
        v104 = v101;
        v105 = vcgeq_u64(v94, v96);
        v106 = vmovn_s64(v105);
        *v101.i8 = vuzp1_s16(v106, *v94.i8);
        if (v101.i8[0])
        {
          v101.i64[0] = *(__p + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8));
        }

        v107 = v93 >> 6;
        if (vuzp1_s16(v106, *&v94).i8[2])
        {
          v101.i64[1] = *(__p + v107);
        }

        v108 = vcgeq_u64(v94, v95);
        v109 = vmovn_s64(v108);
        *v90.i8 = vuzp1_s16(*v94.i8, v109);
        if (v90.i8[4])
        {
          v90.i64[0] = *(__p + v107);
        }

        if (vuzp1_s16(*&v94, v109).i8[6])
        {
          v90.i64[1] = *(__p + v107);
        }

        v110 = vuzp1q_s32(vceqzq_s64(vandq_s8(v101, vshlq_u64(v97, v96))), vceqzq_s64(vandq_s8(v90, vshlq_u64(v97, v95))));
        v90 = vshlq_u32(v102, v99);
        v101 = vorrq_s8(vbicq_s8(v90, v110), v104);
        v93 += 4;
        v95 = vaddq_s64(v95, v98);
        v96 = vaddq_s64(v96, v98);
        v99 = vaddq_s32(v99, v103);
      }

      while (v100 != v93);
      v111 = vbslq_s8(vuzp1q_s32(v105, v108), v101, v104);
      *v111.i8 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
      v112 = v111.i32[0] | v111.i32[1];
    }

    else
    {
      v112 = 0;
    }

    *(v38 + 120) = v112;
    v113 = v112 == 1;
    v120 = *(v38 + 104) & 0xFFFFFFFE;
    if (v113)
    {
      ++v120;
    }

    *(v38 + 104) = v120;
    if (v91)
    {
      operator delete(v91);
    }
  }

  else if (v72 == 5 && (**a1[11] & 1) != 0 && (*(v38 + 104) & 0x20) == 0)
  {
    v73 = v6;
    v74 = v38;
    v75 = 0;
LABEL_121:
    TIInputManager::capitalize_first_letter(v73, v74, v75);
  }

LABEL_42:
  v46 = *a1[10];
  v47 = a1[5];
  v49 = *v47;
  v48 = v47[1];
  if (v46 >= (v48 - *v47) >> 2)
  {
    v59 = *a1[8];
    if (v59)
    {
      v60 = a1[9];
      if (*v60)
      {
        v61 = *(v60 + 1);
        v62 = (v60 + 4);
        if (v61)
        {
          v63 = v61;
        }

        else
        {
          v63 = v62;
        }
      }

      else
      {
        v63 = "";
      }

      KB::Candidate::capitalized_string(a1[6], &__p);
      v87 = v154;
      if (!v154)
      {
        v87 = v155;
      }

      if (__p)
      {
        v88 = v87;
      }

      else
      {
        v88 = "";
      }

      KB::append_format(v59, "input [%s] was considered to have capitalization type WordCapitalizationTypeAllCaps/WordCapitalizationTypeMixedCase and candidate [%s] was not accepted; will be filtered out\n", v86, v63, v88);
      goto LABEL_141;
    }

    goto LABEL_144;
  }

  v50 = &v49[4 * v46];
  v51 = v48 - (v50 + 4);
  if (v48 != v50 + 4)
  {
    memmove(*v47, v50 + 4, v48 - (v50 + 4));
  }

  result = 0;
  v52 = &v49[v51];
LABEL_66:
  v47[1] = v52;
LABEL_145:
  v127 = *MEMORY[0x277D85DE8];
  return result;
}

void TIInputManager::apply_shift_context_to_prediction(TIInputManager *a1, int a2, KB::Word *a3)
{
  if ((a2 - 2) < 2)
  {
    if ((*(a3 + 104) & 0x20) != 0)
    {
      return;
    }
  }

  else
  {
    if ((a2 - 4) < 2)
    {
      v4 = *(a3 + 2);
      if (!*(a3 + 2))
      {
        KB::String::compute_length(a3);
        v4 = *(a3 + 2);
      }

      std::vector<BOOL>::vector(&v29, v4);
      v6 = v29;
      v7 = v30;
      if (v30)
      {
        v8 = 0;
        if (v30 >= 0x20)
        {
          v7 = 32;
        }

        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_22CC88A90;
        v11 = xmmword_22CC88AA0;
        v12 = vdupq_n_s64(1uLL);
        v13 = vdupq_n_s64(4uLL);
        v14 = xmmword_22CC889B0;
        v15 = (v7 + 3) & 0x7C;
        v16 = 0uLL;
        v17.i64[0] = 0x100000001;
        v17.i64[1] = 0x100000001;
        v18.i64[0] = 0x400000004;
        v18.i64[1] = 0x400000004;
        do
        {
          v19 = v16;
          v20 = vcgeq_u64(v9, v11);
          v21 = vmovn_s64(v20);
          *v16.i8 = vuzp1_s16(v21, *v9.i8);
          if (v16.i8[0])
          {
            v16.i64[0] = *&v29[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8];
          }

          if (vuzp1_s16(v21, *&v9).i8[2])
          {
            v16.i64[1] = *&v29[8 * (v8 >> 6)];
          }

          v22 = vcgeq_u64(v9, v10);
          v23 = vmovn_s64(v22);
          *v5.i8 = vuzp1_s16(*v9.i8, v23);
          if (v5.i8[4])
          {
            v5.i64[0] = *&v29[8 * (v8 >> 6)];
          }

          if (vuzp1_s16(*&v9, v23).i8[6])
          {
            v5.i64[1] = *&v29[8 * (v8 >> 6)];
          }

          v24 = vuzp1q_s32(vceqzq_s64(vandq_s8(v16, vshlq_u64(v12, v11))), vceqzq_s64(vandq_s8(v5, vshlq_u64(v12, v10))));
          v5 = vshlq_u32(v17, v14);
          v16 = vorrq_s8(vbicq_s8(v5, v24), v19);
          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v14 = vaddq_s32(v14, v18);
        }

        while (v15 != v8);
        v25 = vbslq_s8(vuzp1q_s32(v20, v22), v16, v19);
        *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
        v26 = v25.i32[0] | v25.i32[1];
      }

      else
      {
        v26 = 0;
      }

      *(a3 + 30) = v26;
      v27 = v26 == 1;
      v28 = *(a3 + 26) & 0xFFFFFFFE;
      if (v27)
      {
        ++v28;
      }

      *(a3 + 26) = v28;
      if (v6)
      {
        operator delete(v6);
      }

      return;
    }

    if (a2 != 1)
    {
      return;
    }
  }

  TIInputManager::capitalize_first_letter(a1, a3, 0);
}

uint64_t TIInputManager::capitalize_first_letter(TIInputManager *this, KB::Word *a2, int a3)
{
  v3 = *(this + 73);
  if (v3)
  {
    return (*(*v3 + 72))(v3, a2);
  }

  else
  {
    return KB::Word::capitalize_first_letter(a2, a3);
  }
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(((a2 - 1) >> 6) + 1);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
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

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
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

BOOL ___ZN14TIInputManager34apply_case_insensitive_constraintsERN2KB19CandidateCollectionENS0_10LookupTypeEP10__CFString_block_invoke(uint64_t a1, KB::Candidate *a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = TIInputManager::matches_case_insensitive_constraints(*(a1 + 32), a2, (a1 + 40), (a1 + 72), (a1 + 104), *(a1 + 144));
  if (!v4)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      KB::Candidate::capitalized_string(a2, v17);
      v6 = v19;
      if (!v19)
      {
        v6 = v20;
      }

      if (v17[0])
      {
        v7 = v6;
      }

      else
      {
        v7 = "";
      }

      KB::Candidate::token_ids_as_string(a2, v13);
      v9 = v15;
      if (!v15)
      {
        v9 = &v16;
      }

      if (v13[0])
      {
        v10 = v9;
      }

      else
      {
        v10 = "";
      }

      KB::append_format(v5, "[%s] {%s} removed by %s\n", v8, v7, v10, "apply_case_insensitive_constraints");
      if (v15 && v14 == 1)
      {
        free(v15);
      }

      if (v19 && v18 == 1)
      {
        free(v19);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return !v4;
}

void __destroy_helper_block_8_40c17_ZTSKN2KB6StringE72c17_ZTSKN2KB6StringE104c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 110) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 80);
  if (v3 && *(a1 + 78) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 46) == 1)
  {

    free(v4);
  }
}

KB::String *__copy_helper_block_8_40c17_ZTSKN2KB6StringE72c17_ZTSKN2KB6StringE104c17_ZTSKN2KB6StringE(uint64_t a1, uint64_t a2)
{
  KB::String::String((a1 + 40), (a2 + 40));
  KB::String::String((a1 + 72), (a2 + 72));

  return KB::String::String((a1 + 104), (a2 + 104));
}

BOOL TIInputManager::matches_case_insensitive_constraints(uint64_t a1, uint64_t a2, _LXLexicon *a3, _LXLexicon *a4, KB::String *this, int a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a2 + 888))
  {
    if (a6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    KB::Candidate::compute_string(a2);
    if (a6)
    {
      goto LABEL_34;
    }
  }

  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  if (*(a2 + 962) != 1 || *a3 == 0)
  {
    if (*a4)
    {
      KB::CollatorWrapper::sortkey_for_string((*(*(a1 + 264) + 8) + 72), (a2 + 888), v35);
      KB::CollatorWrapper::sortkey_for_string((*(*(a1 + 264) + 8) + 72), a4, &v34);
      v13 = KB::ByteString::starts_with(v35, &v34);
      if (v34.var0.var0.var0 >= 0xFu && v34.var0.var0.var1)
      {
        MEMORY[0x2318BE250](v34.var0.var0.var1, 0x1000C8077774924);
      }

      if (v35[0] >= 0xFu && v37)
      {
        MEMORY[0x2318BE250](v37, 0x1000C8077774924);
      }

      if (!v13)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    KB::CollatorWrapper::sortkey_for_string((*(*(a1 + 264) + 8) + 72), (a2 + 888), v35);
    KB::CollatorWrapper::sortkey_for_string((*(*(a1 + 264) + 8) + 72), a3, &v34);
    v14 = KB::ByteString::starts_with(v35, &v34);
    if (v34.var0.var0.var0 >= 0xFu && v34.var0.var0.var1)
    {
      MEMORY[0x2318BE250](v34.var0.var0.var1, 0x1000C8077774924);
    }

    if (v35[0] >= 0xFu && v37)
    {
      MEMORY[0x2318BE250](v37, 0x1000C8077774924);
    }

    if (!v14)
    {
      goto LABEL_56;
    }
  }

  if (*(a1 + 728) == 1)
  {
    v15 = *(a2 + 892);
    if (!*(a2 + 892))
    {
      KB::String::compute_length((a2 + 888));
      v15 = *(a2 + 892);
    }

    v16 = *(this + 2);
    if (!*(this + 2))
    {
      KB::String::compute_length(this);
      v16 = *(this + 2);
    }

    if (v15 > v16)
    {
      goto LABEL_56;
    }
  }

LABEL_34:
  if (*a2)
  {
    v17 = 240 * *a2 - 240;
    v18 = (*(a2 + 8) + 224);
    do
    {
      v20 = *v18;
      v18 += 30;
      v19 = v20;
      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = v17 == 0;
      }

      v17 -= 240;
    }

    while (!v21);
    if (v19)
    {
      goto LABEL_57;
    }
  }

  if (*(a1 + 32))
  {
    KB::String::String(v35, (a1 + 32));
    if (KB::String::contains(v35, 0x2019u))
    {
      v30 = 0;
      v31 = 0;
      v32 = "'";
      v29 = 1048577;
      v33 = 0;
      KB::String::replace_char(v35, &v29, 8217, &v34);
      KB::String::operator=(v35, &v34);
      if (v34.var0.var0.var1 && v34.var0.var1.var1[4] == 1)
      {
        free(v34.var0.var0.var1);
      }

      if (v32 && v31 == 1)
      {
        free(v32);
      }
    }

    v22 = KB::String::equal((a2 + 888), v35, 0);
    if (v37 && v36 == 1)
    {
      free(v37);
    }

    if (v22)
    {
      goto LABEL_56;
    }
  }

  v23 = *(*(a1 + 264) + 24);
  if (!KB::String::equal((a2 + 888), (v23 + 56), 0))
  {
LABEL_57:
    result = 1;
    goto LABEL_58;
  }

  v24 = *this;
  if (v24 > *(v23 + 56))
  {
LABEL_56:
    result = 0;
    goto LABEL_58;
  }

  if (*(v23 + 64))
  {
    v27 = *(v23 + 64);
  }

  else
  {
    v27 = (v23 + 72);
  }

  if (*(this + 1))
  {
    v28 = *(this + 1);
  }

  else
  {
    v28 = this + 16;
  }

  result = strncasecmp(v27, v28, v24) == 0;
LABEL_58:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ___ZN14TIInputManager29inject_supplemental_candidateEN2KB10LookupTypeERNS0_19CandidateCollectionE_block_invoke(uint64_t a1, const KB::String *a2, const KB::String *a3, const KB::String *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (KB::CollatorWrapper::sortkey_compare_strings((*(*(v6 + 264) + 8) + 72), a2, a3, a4))
  {
    if ((*(**(v6 + 272) + 16))(*(v6 + 272)) && (*(**(v6 + 272) + 64))(*(v6 + 272)))
    {
      KB::String::String(v18, "'s");
      v7 = *(*(v6 + 264) + 8);
      KB::String::String(v15, a2);
      KB::String::append(v15, v18);
      v9 = KB::CollatorWrapper::sortkey_compare_strings((v7 + 72), v15, a3, v8);
      if (v17 && v16 == 1)
      {
        free(v17);
      }

      if (v9)
      {
        v10 = *(*(v6 + 264) + 8);
        KB::String::String(v15, a3);
        KB::String::append(v15, v18);
        v12 = KB::CollatorWrapper::sortkey_compare_strings((v10 + 72), a2, v15, v11) == 0;
        if (v17 && v16 == 1)
        {
          free(v17);
        }
      }

      else
      {
        v12 = 1;
      }

      if (v19 && v18[6] == 1)
      {
        free(v19);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = expf(*(a2 + 744));
  v9 = expf(*(a1 + 744));
  v10 = expf(*(a3 + 744));
  if (v8 <= v9)
  {
    if (v10 > v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      v14 = expf(*(a2 + 744));
      if (v14 > expf(*(a1 + 744)))
      {
        v11 = a1;
        v13 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = a1;
    if (v10 > v8)
    {
LABEL_5:
      v13 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v11, v13);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
    v12 = expf(*(a3 + 744));
    if (v12 > expf(*(a2 + 744)))
    {
      v11 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v15 = expf(*(a4 + 744));
  if (v15 > expf(*(a3 + 744)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
    v16 = expf(*(a3 + 744));
    if (v16 > expf(*(a2 + 744)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      v17 = expf(*(a2 + 744));
      if (v17 > expf(*(a1 + 744)))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a2, a3, a4);
  v10 = expf(*(a5 + 744));
  if (v10 > expf(*(a4 + 744)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a4, a5);
    v11 = expf(*(a4 + 744));
    if (v11 > expf(*(a3 + 744)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
      v12 = expf(*(a3 + 744));
      if (v12 > expf(*(a2 + 744)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
        v13 = expf(*(a2 + 744));
        if (v13 > expf(*(a1 + 744)))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
        }
      }
    }
  }
}

void std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,KB::Candidate *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 1001)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 1000 * v8;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(a1, v7, v10);
        v10 -= 1000;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        v12 = expf(*(v11 + 186));
        if (v12 > expf(*(a1 + 744)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v11, a1);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(a1, v7, a1);
        }

        v11 += 125;
      }

      while (v11 != a3);
    }

    if (v6 >= 1001)
    {
      v13 = 0x1CAC083126E978D5 * (v6 >> 3);
      do
      {
        KB::Candidate::Candidate(v29, a1);
        v14 = 0;
        v15 = a1;
        do
        {
          v16 = v15;
          v17 = v15 + 1000 * v14;
          v15 = v17 + 1000;
          v18 = 2 * v14;
          v14 = (2 * v14) | 1;
          v19 = v18 + 2;
          if (v18 + 2 < v13)
          {
            v20 = expf(*(v17 + 1744));
            if (v20 > expf(*(v17 + 2744)))
            {
              v15 = v17 + 2000;
              v14 = v19;
            }
          }

          KB::Candidate::operator=(v16, v15);
        }

        while (v14 <= (v13 - 2) / 2);
        v4 -= 125;
        if (v15 == v4)
        {
          KB::Candidate::operator=(v15, v29);
        }

        else
        {
          KB::Candidate::operator=(v15, v4);
          KB::Candidate::operator=(v4, v29);
          v21 = v15 - a1 + 1000;
          if (v21 >= 1001)
          {
            v22 = (0x1CAC083126E978D5 * (v21 >> 3) - 2) >> 1;
            v23 = a1 + 1000 * v22;
            v24 = expf(*(v23 + 744));
            if (v24 > expf(*(v15 + 744)))
            {
              KB::Candidate::Candidate(v30, v15);
              do
              {
                v25 = v23;
                KB::Candidate::operator=(v15, v23);
                if (!v22)
                {
                  break;
                }

                v22 = (v22 - 1) >> 1;
                v23 = a1 + 1000 * v22;
                v26 = expf(*(v23 + 744));
                v15 = v25;
              }

              while (v26 > expf(v31));
              KB::Candidate::operator=(v25, v30);
              KB::Candidate::~Candidate(v30);
            }
          }
        }

        KB::Candidate::~Candidate(v29);
      }

      while (v13-- > 2);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = expf(*(a1 + 1744));
        v9 = expf(*(a1 + 744));
        v10 = expf(*(a2 - 256));
        if (v8 <= v9)
        {
          if (v10 <= v8)
          {
            goto LABEL_43;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((a1 + 1000), (a2 - 1000));
          v16 = expf(*(a1 + 1744));
          if (v16 <= expf(*(a1 + 744)))
          {
            goto LABEL_43;
          }

          v6 = (a1 + 1000);
          goto LABEL_6;
        }

        if (v10 <= v8)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
          v19 = expf(*(a2 - 256));
          if (v19 <= expf(*(a1 + 1744)))
          {
            goto LABEL_43;
          }

          v7 = (a1 + 1000);
        }

        else
        {
          v7 = a1;
        }

        v6 = (a2 - 1000);
        goto LABEL_27;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a2 - 1000);
        goto LABEL_43;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a1 + 3000, a2 - 1000);
        goto LABEL_43;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    goto LABEL_43;
  }

  if (v4 != 2)
  {
LABEL_14:
    v11 = a1 + 2000;
    v12 = expf(*(a1 + 1744));
    v13 = expf(*(a1 + 744));
    v14 = expf(*(a1 + 2744));
    if (v12 <= v13)
    {
      if (v14 <= v12 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((a1 + 1000), (a1 + 2000)), v17 = expf(*(a1 + 1744)), v17 <= expf(*(a1 + 744))))
      {
LABEL_32:
        v21 = a1 + 3000;
        if (a1 + 3000 != a2)
        {
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v24 = expf(*(v21 + 744));
            if (v24 > expf(*(v11 + 744)))
            {
              KB::Candidate::Candidate(v32, v21);
              v25 = v22;
              while (1)
              {
                KB::Candidate::operator=((a1 + v25 + 3000), (a1 + v25 + 2000));
                if (v25 == -2000)
                {
                  break;
                }

                v26 = expf(v33);
                v27 = expf(*(a1 + v25 + 1744));
                v25 -= 1000;
                if (v26 <= v27)
                {
                  v28 = (a1 + v25 + 3000);
                  goto LABEL_40;
                }
              }

              v28 = a1;
LABEL_40:
              KB::Candidate::operator=(v28, v32);
              if (++v23 == 8)
              {
                v29 = v21 + 1000 == a2;
                KB::Candidate::~Candidate(v32);
                goto LABEL_44;
              }

              KB::Candidate::~Candidate(v32);
            }

            v11 = v21;
            v22 += 1000;
            v21 += 1000;
            if (v21 == a2)
            {
              goto LABEL_43;
            }
          }
        }

        goto LABEL_43;
      }

      v18 = (a1 + 1000);
      v15 = a1;
    }

    else
    {
      if (v14 <= v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
        v20 = expf(*(a1 + 2744));
        if (v20 <= expf(*(a1 + 1744)))
        {
          goto LABEL_32;
        }

        v15 = (a1 + 1000);
      }

      else
      {
        v15 = a1;
      }

      v18 = (a1 + 2000);
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v15, v18);
    goto LABEL_32;
  }

  v5 = expf(*(a2 - 256));
  if (v5 > expf(*(a1 + 744)))
  {
    v6 = (a2 - 1000);
LABEL_6:
    v7 = a1;
LABEL_27:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v6);
  }

LABEL_43:
  v29 = 1;
LABEL_44:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - a1) >> 3))
    {
      v8 = (0x395810624DD2F1AALL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 1000 * v8;
      v10 = 0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2;
      if (v10 < a2)
      {
        v11 = expf(*(v9 + 744));
        if (v11 > expf(*(v9 + 1744)))
        {
          v9 += 1000;
          v8 = v10;
        }
      }

      v12 = expf(*(v9 + 744));
      if (v12 <= expf(*(v4 + 744)))
      {
        KB::Candidate::Candidate(v19, v4);
        do
        {
          v13 = v9;
          KB::Candidate::operator=(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v14 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = a1 + 1000 * v8;
          v15 = v14 + 2;
          if (v14 + 2 < a2)
          {
            v16 = expf(*(v9 + 744));
            if (v16 > expf(*(v9 + 1744)))
            {
              v9 += 1000;
              v8 = v15;
            }
          }

          v17 = expf(*(v9 + 744));
          v4 = v13;
        }

        while (v17 <= expf(v20));
        KB::Candidate::operator=(v13, v19);
        KB::Candidate::~Candidate(v19);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void TIInputManager::autocorrections(TIInputManager *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*(this + 144))
  {
    if (*(this + 728) != 1)
    {
      v7 = this + 32;
      if (!*(this + 16))
      {
        goto LABEL_13;
      }

      TIInputManager::legacy_input_stem(this, v10);
      if (v7 == v10)
      {
        if (v12 && v11 == 1)
        {
          free(v12);
        }

        goto LABEL_6;
      }

      v8 = KB::String::equal((this + 32), v10, 1);
      if (v12 && v11 == 1)
      {
        free(v12);
      }

      if (!v8)
      {
LABEL_13:
        TIInputManager::lookup(this, 0, 1, a2, a3);
        goto LABEL_14;
      }
    }

LABEL_6:
    *(a3 + 100) = 0x10000000000000;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 108) = 0;
    *(a3 + 110) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
LABEL_14:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *MEMORY[0x277D85DE8];

  TIInputManager::lookup(this, 0, 1, a2, a3);
}

void TIInputManager::~TIInputManager(TIInputManager *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD9060;
  v2 = *(this + 75);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 93);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*(this + 89));
  v4 = *(this + 79);
  LXVulgarWordUsageDatabasePerformMaintenance();
  v22 = (this + 648);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v22);
  v5 = *(this + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 80) = 0;
  v6 = *(this + 79);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 79) = 0;
  v7 = *(this + 77);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 74);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v22 = (this + 552);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v22);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 544));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 536));
  v9 = *(this + 61);
  if (v9)
  {
    *(this + 62) = v9;
    operator delete(v9);
  }

  v10 = *(this + 60);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 56);
  if (v11 && *(this + 446) == 1)
  {
    free(v11);
  }

  std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*(this + 47));
  v12 = *(this + 45);
  if (v12)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v12);
  }

  v13 = *(this + 42);
  if (v13 && *(this + 334) == 1)
  {
    free(v13);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(this + 37);
  v14 = *(this + 35);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 33);
  if (v15)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v15);
  }

  v16 = *(this + 30);
  if (v16 && *(this + 238) == 1)
  {
    free(v16);
  }

  v17 = *(this + 28);
  *(this + 28) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table(this + 176);
  v18 = *(this + 17);
  if (v18)
  {
    CFRelease(v18);
  }

  *(this + 17) = 0;
  v19 = *(this + 14);
  if (v19 && *(this + 110) == 1)
  {
    free(v19);
  }

  v20 = *(this + 9);
  if (v20 && *(this + 70) == 1)
  {
    free(v20);
  }

  v21 = *(this + 5);
  if (v21 && *(this + 38) == 1)
  {
    free(v21);
  }

  v22 = (this + 8);
  std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v22);
}

void std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*a1);
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void *>>>::destroy[abi:nn200100]<std::pair<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*a1);
    std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      a1[9] = v3;
      operator delete(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      a1[6] = v4;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 4);
        if (v6 && *(v4 - 34) == 1)
        {
          free(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[7];
      if (v3 && *(v2 + 54) == 1)
      {
        free(v3);
      }

      v4 = v2[3];
      if (v4)
      {
        if (*(v2 + 22) == 1)
        {
          free(v4);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

uint64_t TIInputManager::LockedInput::locked_length(TIInputManager::LockedInput *this)
{
  v1 = *(this + 1);
  if (*this <= v1)
  {
    return v1;
  }

  else
  {
    return *this;
  }
}

unsigned int *TIInputManager::LockedInput::set_shadow_locked_length(unsigned int *this, unsigned int a2)
{
  v2 = *this;
  if (*this <= a2)
  {
    v2 = a2;
  }

  *this = v2;
  return this;
}

unsigned int *TIInputManager::LockedInput::set_accepted_locked_length(unsigned int *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  v4 = this[1];
  if (*this <= a2)
  {
    v3 = a2;
  }

  if (v4 >= a3)
  {
    v4 = a3;
  }

  *this = v3;
  this[1] = v4;
  return this;
}

unsigned int *TIInputManager::LockedInput::set_deletion_locked_length(unsigned int *this, unsigned int a2)
{
  this[1] = a2;
  if (*this > a2)
  {
    *this = a2;
  }

  return this;
}

uint32x2_t TIInputManager::LockedInput::drop_input_prefix_of_length(uint32x2_t *this, unsigned int a2)
{
  result = vqsub_u32(*this, vdup_n_s32(a2));
  *this = result;
  return result;
}

void TIInputManager::TIInputManager(uint64_t a1)
{
  *a1 = &unk_283FD9060;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 34) = 16;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x100000;
  *(a1 + 108) = 0;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_22CC88AB0;
  *(a1 + 160) = 1028443341;
  *(a1 + 164) = 0x300000000;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 234) = 16;
  *(a1 + 238) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v2 = 0;
  *__p = 0u;
  operator new();
}

void TIInputManager::load_dictionaries(uint64_t a1, const __CFString *a2)
{
  v3 = *(*(a1 + 264) + 24);
  v4 = *(v3 + 32);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if ((*(a1 + 738) & 1) == 0)
  {
    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
    {
      if (TI_IS_INTERNAL_INSTALL::is_internal_install)
      {
        v25 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorDecayRate", a2, -0.347, -10.0, -0.001);
        v22 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorPathWeight", v5, 5.0, 0.01, 100.0);
        v20 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorTotalPseudoWeight", v6, 5.0, 0.01, 100.0);
        v8 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorMinThreshold", v7, 1.0, 0.01, 100.0);
        v21 = v8;
        *&v9 = __PAIR64__(LODWORD(v22), LODWORD(v25));
        *(&v9 + 1) = __PAIR64__(LODWORD(v8), LODWORD(v20));
        v26 = v9;
        v23 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorNeutralThreshold", v10, 2.0, 0.01, 100.0);
        v12 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorMaxThreshold", v11, 5.0, 0.01, 100.0);
        v13 = __PAIR64__(LODWORD(v12), LODWORD(v23));
        if (v23 < v21 || v12 < v23)
        {
          v14 = v23 * 0.5;
          if ((v23 * 0.5) >= v21)
          {
            v14 = v21;
          }

          v15 = v26;
          *(&v15 + 3) = v14;
          v26 = v15;
          if (v12 < (v23 + v23))
          {
            v12 = v23 + v23;
          }

          *(&v13 + 1) = v12;
        }

        v24 = v13;
      }

      else
      {
        v26 = xmmword_22CC88AC0;
        v24 = 0x40A0000040000000;
      }

      v27 = 0;
      v28 = 0;
      v29 = v26;
      *&v30 = v24;
      *(&v30 + 1) = CFAbsoluteTimeGetCurrent();
      v31 = 0;
      v16 = a1 + 376;
      std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*(a1 + 376));
      v17 = v27;
      *(a1 + 368) = &v27;
      *(a1 + 376) = v17;
      v18 = v28;
      *(a1 + 384) = v28;
      if (v18)
      {
        v17[2] = v16;
        v27 = 0;
        v28 = 0;
        v17 = 0;
      }

      else
      {
        *(a1 + 368) = v16;
      }

      v19 = v30;
      *(a1 + 392) = v29;
      *(a1 + 408) = v19;
      *(a1 + 424) = v31;
      std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(v17);
    }
  }

  operator new();
}

void TIInputManager::set_locale_identifier(TIInputManager *this, const KB::String *a2)
{
  KB::String::operator=((this + 104), a2);
  KB::cf_string_impl<KB::String>(localeIdentifier, a2);
  v4 = localeIdentifier[0];
  v5 = CFLocaleCreate(0, localeIdentifier[0]);
  v6 = *(this + 17);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 17) = v5;
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 28))
  {
    v7 = *(a2 + 1);
    if (!v7)
    {
      v7 = a2 + 16;
    }

    if (*a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(localeIdentifier, v8);
    (*(**(this + 28) + 448))();
    if (v10 < 0)
    {
      operator delete(localeIdentifier[0]);
    }
  }
}

double TIInputManager::set_filter_specification_overrides(TIInputManager *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 93);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 93) = cf;
  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*(this + 89));
  *(this + 88) = this + 712;
  result = 0.0;
  *(this + 712) = 0u;
  *(this + 43) = 0u;
  return result;
}

uint64_t TIInputManager::legacy_input_start_index(TIInputManager *this)
{
  v2 = *(this + 24);
  result = v2 + 1;
  v4 = 40 * v2 - 8;
  do
  {
    if (!--result)
    {
      break;
    }

    v5 = *(*(this + 1) + v4);
    v4 -= 40;
  }

  while ((v5 & 0x40) == 0);
  return result;
}

uint64_t TIInputManager::legacy_input_end_index(TIInputManager *this)
{
  result = *(this + 24);
  v3 = *(this + 1);
  v4 = -858993459 * ((*(this + 2) - v3) >> 3);
  v5 = v4 - result;
  if (v4 > result)
  {
    v6 = (v3 + 40 * result + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 40;
      if ((v7 & 0x40) != 0)
      {
        break;
      }

      ++result;
      if (!--v5)
      {
        return v4;
      }
    }
  }

  return result;
}

void TIInputManager::add_input(TIInputManager *this, const KB::String *a2, unsigned int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = TIInputManager::favonius_layout(this);
  v7 = *(*v6 + 200);
  if (((*(*v6 + 16) - *(*v6 + 8)) >> 3) >> 1 < v7 || v7 > 0xB)
  {
    v9 = a3 | 0x20;
  }

  else
  {
    v9 = a3;
  }

  KB::String::String(v35, a2);
  v37 = v9;
  v10 = *(this + 1);
  v11 = *(this + 24);
  v12 = (v10 + 40 * v11);
  v14 = *(this + 2);
  v13 = *(this + 3);
  if (v14 >= v13)
  {
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v10) >> 3) + 1;
    if (v21 > 0x666666666666666)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v10) >> 3);
    v23 = 2 * v22;
    if (2 * v22 <= v21)
    {
      v23 = v21;
    }

    if (v22 >= 0x333333333333333)
    {
      v24 = 0x666666666666666;
    }

    else
    {
      v24 = v23;
    }

    v34 = this + 8;
    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v24);
    }

    v25 = 40 * v11;
    v30 = 0;
    v31 = v25;
    v32 = v25;
    v33 = 0;
    if (!v11)
    {
      if (!v25)
      {
        v40 = this + 8;
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(1uLL);
      }

      v31 = 40 * v11;
      v32 = v31;
    }

    KB::String::String(v25, v35);
    *(40 * v11 + 0x20) = v37;
    v32 += 40;
    std::vector<KB::Input>::__swap_out_circular_buffer(this + 8, &v30, v12);
    std::__split_buffer<KB::Input>::~__split_buffer(&v30);
  }

  else if (v12 == v14)
  {
    KB::String::String(*(this + 2), v35);
    *(v14 + 8) = v37;
    *(this + 2) = v14 + 40;
  }

  else
  {
    std::vector<KB::Input>::__move_range(this + 8, v10 + 40 * v11, *(this + 2), v12 + 40);
    v15 = v12 <= v35;
    v16 = *(this + 2) > v35;
    v18 = v15 && v16;
    v17 = !v15 || !v16;
    v19 = 40;
    if (v17)
    {
      v19 = 0;
    }

    if (v12 != &v35[v19])
    {
      KB::String::operator=(v12, &v35[v19]);
      v20 = 32;
      if (v18)
      {
        v20 = 72;
      }

      *(v12 + 8) = *&v35[v20];
    }
  }

  v26 = 0;
  ++*(this + 24);
  *(this + 728) = 0;
  v27 = *(a2 + 1);
  if (!v27)
  {
    v27 = a2 + 16;
  }

  if (*v27 == 32)
  {
    v26 = v27[1] == 0;
  }

  (*(**(this + 28) + 48))(*(this + 28), 1, v26 & (v9 >> 7));
  if ((v9 & 4) != 0)
  {
    (*(**(this + 28) + 136))(*(this + 28));
    v28 = *(this + 28);
    TIInputManager::input_substring(this + 4, 0, *(this + 24), &v38);
    (*(*v28 + 144))(v28, this + 472, &v38, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
    if (v39[0])
    {
      if (BYTE6(v38) == 1)
      {
        free(v39[0]);
      }
    }
  }

  if (v36 && v35[6] == 1)
  {
    free(v36);
  }

  v29 = *MEMORY[0x277D85DE8];
}

KB::String *std::vector<KB::Input>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    v9 = (a2 + v6 - a4);
    result = *(a1 + 8);
    do
    {
      v11 = KB::String::String(result, v9);
      *(v11 + 8) = *(v9 + 8);
      v9 = (v9 + 40);
      result = (v11 + 40);
    }

    while (v9 < a3);
  }

  *(a1 + 8) = result;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      if (v7 != v6)
      {
        result = KB::String::operator=((v6 + v12 - 40), (v7 + v12 - 40));
        *(v6 + v12 - 8) = *(v7 + v12 - 8);
      }

      v12 -= 40;
    }

    while (v13 != v12);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<KB::Input>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, KB::String *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v7, a3, v9);
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

uint64_t std::__split_buffer<KB::Input>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      v5 = *(v2 - 32);
      if (v5 && *(v2 - 34) == 1)
      {
        free(v5);
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

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(KB::String *a1, KB::String *a2, KB::String *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      KB::String::String(this, v6);
      *(this + 8) = *(v6 + 8);
      v6 = (v6 + 40);
      this = (this + 40);
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 1);
      if (v7)
      {
        if (*(v5 + 6) == 1)
        {
          free(v7);
        }
      }

      v5 = (v5 + 40);
    }

    while (v5 != a2);
  }
}

void TIInputManager::set_input(TIInputManager *this, const KB::String *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = (this + 8);
  TIInputManager::input_substring(this + 4, 0, *(this + 24), v76);
  if (KB::String::contains(v76, 0x2019u))
  {
    WORD2(v73[0]) = 0;
    BYTE6(v73[0]) = 0;
    v73[1] = "'";
    LODWORD(v73[0]) = 1048577;
    BYTE1(v74) = 0;
    KB::String::replace_char(v76, v73, 8217, &v80);
    KB::String::operator=(v76, &v80);
    if (*(&v80 + 1) && BYTE6(v80) == 1)
    {
      free(*(&v80 + 1));
    }

    if (v73[1] && BYTE6(v73[0]) == 1)
    {
      free(v73[1]);
    }
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  v5 = *a2;
  v6 = v76[0];
  if (v5 <= v76[0])
  {
    v7 = v78 ? v78 : &v79;
    v8 = *(a2 + 1) ? *(a2 + 1) : a2 + 16;
    if (!strncmp(v7 + v76[0] - v5, v8, v5))
    {
      v73[0] = v7;
      LODWORD(v73[1]) = 0;
      HIDWORD(v73[1]) = v6;
      LODWORD(v74) = 0;
      KB::String::iterator::initialize(v73);
      KB::String::find(v76, a2, v68);
      v80 = *v73;
      v81 = v74;
      v43 = v69;
      if (LODWORD(v73[1]) == v69)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        do
        {
          ++v44;
          KB::String::iterator::operator++(&v80);
        }

        while (DWORD2(v80) != v43);
      }

      v50 = 0;
      v51 = 0;
      for (i = 40 * v44; ; i += 40)
      {
        v53 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          KB::String::compute_length(a2);
          v53 = *(a2 + 2);
        }

        if (v51 >= v53)
        {
          break;
        }

        v54 = *v4;
        v55 = (*v4 + i);
        if (v50 >= v67)
        {
          v56 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - v65) >> 3);
          v57 = v56 + 1;
          if (v56 + 1 > 0x666666666666666)
          {
            goto LABEL_112;
          }

          if (0x999999999999999ALL * ((v67 - v65) >> 3) > v57)
          {
            v57 = 0x999999999999999ALL * ((v67 - v65) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v67 - v65) >> 3) >= 0x333333333333333)
          {
            v58 = 0x666666666666666;
          }

          else
          {
            v58 = v57;
          }

          v83 = &v65;
          if (v58)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v58);
          }

          v59 = 40 * v56;
          KB::String::String((40 * v56), v55);
          *(v59 + 32) = *(v54 + i + 32);
          v50 = (40 * v56 + 40);
          v60 = (v59 + v65 - v66);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v65, v66, v60);
          v61 = v65;
          v62 = v67;
          v65 = v60;
          v66 = (v59 + 40);
          v67 = 0;
          v81 = v61;
          v82 = v62;
          *&v80 = v61;
          *(&v80 + 1) = v61;
          std::__split_buffer<KB::Input>::~__split_buffer(&v80);
        }

        else
        {
          KB::String::String(v50, (*v4 + i));
          *(v50 + 8) = *(v55 + 8);
          v50 += 40;
        }

        v66 = v50;
        ++v51;
      }
    }
  }

  v9 = *(this + 1);
  for (j = *(this + 2); j != v9; j -= 40)
  {
    v11 = *(j - 32);
    if (v11)
    {
      if (*(j - 34) == 1)
      {
        free(v11);
      }
    }
  }

  *(this + 2) = v9;
  KB::String::operator=((this + 32), a2);
  v12 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v12 = *(a2 + 2);
  }

  std::vector<KB::Input>::reserve(v4, v12);
  v13 = v65;
  v14 = v66;
  v15 = v66 - v65;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - v65) >> 3);
  if (v16 == *a2)
  {
    if (v4 != &v65)
    {
      v17 = *(this + 3);
      v18 = *(this + 1);
      if (v17 - v18 < v15)
      {
        if (v18)
        {
          v19 = *(this + 2);
          v20 = *(this + 1);
          if (v19 != v18)
          {
            do
            {
              v21 = *(v19 - 4);
              if (v21 && *(v19 - 34) == 1)
              {
                free(v21);
              }

              v19 = (v19 - 40);
            }

            while (v19 != v18);
            v20 = *v4;
          }

          *(this + 2) = v18;
          operator delete(v20);
          v17 = 0;
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
        }

        v22 = 0xCCCCCCCCCCCCCCCDLL * (v17 >> 3);
        v23 = 0x999999999999999ALL * (v17 >> 3);
        if (v23 <= v16)
        {
          v23 = v16;
        }

        if (v22 >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v23;
        }

        if (v24 <= 0x666666666666666)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v24);
        }

LABEL_112:
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v45 = *(this + 2);
      v46 = v45 - v18;
      if (v45 - v18 >= v15)
      {
        if (v65 != v66)
        {
          do
          {
            if (v13 != v18)
            {
              KB::String::operator=(v18, v13);
              *(v18 + 8) = *(v13 + 8);
            }

            v13 = (v13 + 40);
            v18 = (v18 + 40);
          }

          while (v13 != v14);
          v45 = *(this + 2);
        }

        while (v45 != v18)
        {
          v63 = *(v45 - 4);
          if (v63 && *(v45 - 34) == 1)
          {
            free(v63);
          }

          v45 -= 40;
        }

        *(this + 2) = v18;
      }

      else
      {
        v47 = (v65 + v46);
        if (v45 != v18)
        {
          do
          {
            if (v13 != v18)
            {
              KB::String::operator=(v18, v13);
              *(v18 + 8) = *(v13 + 8);
            }

            v13 = (v13 + 40);
            v18 = (v18 + 40);
            v46 -= 40;
          }

          while (v46);
          v45 = *(this + 2);
        }

        v48 = v45;
        if (v47 != v14)
        {
          v48 = v45;
          do
          {
            v49 = KB::String::String(v48, v47);
            *(v49 + 8) = *(v47 + 8);
            v47 = (v47 + 40);
            v48 = (v49 + 40);
          }

          while (v47 != v14);
        }

        *(this + 2) = v48;
      }
    }
  }

  else
  {
    KB::String::String(v73, a2);
    v75 = 0;
    while (1)
    {
      v25 = KB::UTF8Iterator::next(v73);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = u_isupper(v25) != 0;
      KB::String::String(v71, v26);
      KB::String::String(v68, v71);
      v70 = v27;
      v28 = *(this + 2);
      v29 = *(this + 3);
      if (v28 >= v29)
      {
        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - *v4) >> 3);
        v33 = v32 + 1;
        if (v32 + 1 > 0x666666666666666)
        {
          goto LABEL_112;
        }

        v34 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v4) >> 3);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x333333333333333)
        {
          v35 = 0x666666666666666;
        }

        else
        {
          v35 = v33;
        }

        v83 = v4;
        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v35);
        }

        v36 = 40 * v32;
        KB::String::String(v36, v68);
        *(v36 + 32) = v70;
        v31 = (v36 + 40);
        v37 = *(this + 1);
        v38 = *(this + 2);
        v39 = (v36 + v37 - v38);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v37, v38, v39);
        v40 = *(this + 1);
        *(this + 1) = v39;
        *(this + 2) = v31;
        v41 = *(this + 3);
        *(this + 3) = 0;
        v81 = v40;
        v82 = v41;
        *&v80 = v40;
        *(&v80 + 1) = v40;
        std::__split_buffer<KB::Input>::~__split_buffer(&v80);
      }

      else
      {
        v30 = KB::String::String(v28, v68);
        *(v30 + 8) = v70;
        v31 = v30 + 40;
      }

      *(this + 2) = v31;
      if (v69 && v68[6] == 1)
      {
        free(v69);
      }

      if (v72 && v71[6] == 1)
      {
        free(v72);
      }
    }

    if (v73[1])
    {
      v42 = BYTE6(v73[0]) == 1;
    }

    else
    {
      v42 = 0;
    }

    if (v42)
    {
      free(v73[1]);
    }
  }

  *(this + 24) = -858993459 * ((*(this + 2) - *(this + 1)) >> 3);
  KB::String::clear((this + 64));
  *(this + 728) = 0;
  *(this + 27) = 0;
  (*(**(this + 28) + 136))(*(this + 28));
  *&v80 = &v65;
  std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v80);
  if (v78 && v77 == 1)
  {
    free(v78);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void *std::vector<KB::Input>::reserve(void *result, unint64_t a2)
{
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result[1] - v8;
    v10 = result;
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(a2);
  }

  return result;
}

void TIInputManager::or_input_flags_from_input(TIInputManager *this, const KB::String *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  KB::String::String(v9, a2);
  v13 = 0;
  v3 = v10;
  if (!v10)
  {
    KB::String::compute_length(v9);
    v3 = v10;
  }

  v4 = *(this + 1);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v4) >> 3) == v3)
  {
    for (i = (v4 + 32); ; i += 10)
    {
      v6 = KB::UTF8Iterator::next(v9);
      if (!v6)
      {
        break;
      }

      *i |= u_isupper(v6) != 0;
    }
  }

  if (v12)
  {
    v7 = v11 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void TIInputManager::delete_suffix_from_input(TIInputManager *this, const KB::String *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0x100000;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = *(this + 24);
  if (v3)
  {
    v5 = 0;
    v6 = -1;
    do
    {
      TIInputManager::input_substring(this + 4, v3 + v6, ++v5, v13);
      KB::String::operator=(&v15, v13);
      if (v14)
      {
        v7 = v13[6] == 1;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        free(v14);
      }

      v8 = KB::String::equal(a2, &v15, 1);
      v3 = *(this + 24);
      --v6;
    }

    while (v5 < v3 && !v8);
    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  do
  {
    TIInputManager::delete_from_input(this);
    --v10;
  }

  while (v10);
  if (v18)
  {
    v11 = v17 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void TIInputManager::delete_from_input(TIInputManager *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(this + 24);
  if (v1)
  {
    v3 = *(this + 28);
    TIInputManager::input_substring(this + 4, 0, v1, v11);
    (*(*v3 + 144))(v3, this + 472, v11, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
    if (v12 && v11[6] == 1)
    {
      free(v12);
    }

    if (*(this + 24) && -858993459 * ((*(this + 2) - *(this + 1)) >> 3))
    {
      KB::String::clear((this + 32));
      v4 = *(this + 24) - 1;
      *(this + 24) = v4;
      v5 = *(this + 2);
      v6 = *(this + 1) + 40 * v4;
      v7 = (v6 + 40);
      if (v6 + 40 != v5)
      {
        do
        {
          v6 = v7;
          KB::String::operator=((v7 - 40), v7);
          *(v6 - 8) = *(v6 + 32);
          v7 = (v6 + 40);
        }

        while (v6 + 40 != v5);
        v5 = *(this + 2);
      }

      while (v5 != v6)
      {
        v8 = *(v5 - 32);
        if (v8 && *(v5 - 34) == 1)
        {
          free(v8);
        }

        v5 -= 40;
      }

      *(this + 2) = v6;
      v9 = *(this + 24);
      *(this + 55) = v9;
      if (*(this + 54) > v9)
      {
        *(this + 54) = v9;
      }

      *(this + 728) = 1;
      (*(**(this + 28) + 56))(*(this + 28));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

_DWORD *TIInputManager::lock_input(_DWORD *this)
{
  v1 = this[24];
  v2 = this[54];
  if (v2 <= v1)
  {
    v2 = this[24];
  }

  if (this[55] < v1)
  {
    v1 = this[55];
  }

  this[54] = v2;
  this[55] = v1;
  return this;
}

void TIInputManager::drop_input_prefix(KB::String **this, unsigned int a2)
{
  v3 = (this + 1);
  std::vector<KB::Input>::erase((this + 1), this[1], (this[1] + 40 * a2));
  v3[11].i32[0] -= a2;
  v3[26] = vqsub_u32(v3[26], vdup_n_s32(a2));

  KB::String::clear(&v3[7]);
}

KB::String *std::vector<KB::Input>::erase(uint64_t a1, KB::String *this, KB::String *a3)
{
  if (a3 != this)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = this;
    if (a3 != v6)
    {
      do
      {
        if (v4 != v7)
        {
          KB::String::operator=(v7, v4);
          *(v7 + 8) = *(v4 + 8);
        }

        v4 = (v4 + 40);
        v7 = (v7 + 40);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *(v6 - 4);
      if (v8 && *(v6 - 34) == 1)
      {
        free(v8);
      }

      v6 = (v6 - 40);
    }

    *(a1 + 8) = v7;
  }

  return this;
}

void TIInputManager::accept_input(TIInputManager *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  v3 = *(this + 54);
  if (v3 <= v2)
  {
    v3 = *(this + 24);
  }

  if (*(this + 55) < v2)
  {
    v2 = *(this + 55);
  }

  *(this + 54) = v3;
  *(this + 55) = v2;
  TIInputManager::legacy_input_stem(this, v6);
  KB::String::operator=(this + 64, v6);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t TIInputManager::set_input_index(TIInputManager *this, unsigned int a2)
{
  v2 = -858993459 * ((*(this + 2) - *(this + 1)) >> 3);
  if (v2 >= a2)
  {
    v2 = a2;
  }

  *(this + 24) = v2;
  v3 = **(this + 28);
  if (*(this + 736) == 1)
  {
    return (*(v3 + 64))();
  }

  else
  {
    return (*(v3 + 136))();
  }
}

void TIInputManager::text_accepted(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4, int a5, uint64_t a6)
{
  v77 = *MEMORY[0x277D85DE8];
  v12 = (a1 + 8);
  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v69);
  if (a2 != a3 && !KB::String::equal(a2, a3, 1))
  {
    KB::String::operator=((a1 + 64), v69);
    TIInputManager::input_flags_vector(a1, &__p);
    v14 = a3[2];
    if (!a3[2])
    {
      KB::String::compute_length(a3);
      v14 = a3[2];
    }

    v15 = *(a1 + 96);
    v49 = a4;
    if (v15 >= v14)
    {
      v17 = *(a1 + 96);
      if (!v14)
      {
        KB::String::compute_length(a3);
        v14 = a3[2];
        v17 = *(a1 + 96);
      }

      v16 = v15 - v14;
      v15 = v17;
    }

    else
    {
      v16 = 0;
    }

    std::vector<KB::Input>::erase(v12, (*(a1 + 8) + 40 * v16), (*(a1 + 8) + 40 * v15));
    *(a1 + 96) = v16;
    if (*(a2 + 1))
    {
      v18 = *(a2 + 1);
    }

    else
    {
      v18 = (a2 + 8);
    }

    v54 = v18;
    v19 = *a2;
    v55 = 0;
    v56 = v19;
    v57 = 0;
    KB::String::iterator::initialize(&v54);
    v50 = v18;
    v51 = v19;
    v52 = v19;
    v53 = 0;
    KB::String::iterator::initialize(&v50);
    v48 = v16;
    v20 = v16;
    if (v55 != v51)
    {
      do
      {
        KB::String::String(v67, v57);
        v21 = (*(a1 + 8) + 40 * *(a1 + 96));
        KB::String::String(v64, v67);
        v66 = 0;
        v23 = *(a1 + 16);
        v22 = *(a1 + 24);
        if (v23 >= v22)
        {
          v24 = *(a1 + 8);
          v25 = 1 - 0x3333333333333333 * ((v23 - v24) >> 3);
          if (v25 > 0x666666666666666)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v26 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v24) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x333333333333333)
          {
            v27 = 0x666666666666666;
          }

          else
          {
            v27 = v25;
          }

          v63 = v12;
          if (v27)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v27);
          }

          v28 = (8 * ((v21 - v24) >> 3));
          v60 = 0;
          v61[0] = v28;
          v61[1] = v28;
          v62 = 0;
          if (!(0xCCCCCCCCCCCCCCCDLL * ((v21 - v24) >> 3)))
          {
            if (!v28)
            {
              if (v21 == v24)
              {
                v29 = 1;
              }

              else
              {
                v29 = 0x999999999999999ALL * ((v21 - v24) >> 3);
              }

              v76 = v63;
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v29);
            }

            v61[0] = (8 * ((v21 - v24) >> 3));
            v61[1] = v61[0];
          }

          v30 = KB::String::String(v28, v64);
          *(v30 + 8) = v66;
          v61[1] = (v61[1] + 40);
          std::vector<KB::Input>::__swap_out_circular_buffer(v12, &v60, v21);
          std::__split_buffer<KB::Input>::~__split_buffer(&v60);
        }

        else if (v21 == v23)
        {
          KB::String::String(*(a1 + 16), v64);
          *(v23 + 8) = v66;
          *(a1 + 16) = v23 + 40;
        }

        else
        {
          std::vector<KB::Input>::__move_range(v12, v21, *(a1 + 16), v21 + 40);
          if (v21 != v64)
          {
            KB::String::operator=(v21, v64);
            *(v21 + 8) = v66;
          }
        }

        if (v65 && v64[6] == 1)
        {
          free(v65);
        }

        ++*(a1 + 96);
        if (v68 && v67[6] == 1)
        {
          free(v68);
        }

        KB::String::iterator::operator++(&v54);
      }

      while (v55 != v51);
      v20 = *(a1 + 96);
    }

    v31 = *(a1 + 224);
    TIInputManager::input_substring(v12, 0, v20, &v71);
    (*(*v31 + 104))(&v60, v31, &v71, a3, v69, v49, a2, a6);
    if (v74 && v73 == 1)
    {
      free(v74);
    }

    if ((a6 & 1) == 0 && (v61[0] - v60) >= 5 && *(v61[0] - 1) == -1 && *(v61[0] - 2) == -1)
    {
      (*(**(a1 + 224) + 136))(*(a1 + 224));
    }

    if (v48 >= *(a1 + 96))
    {
      v42 = v60;
      if (v60)
      {
LABEL_74:
        v61[0] = v42;
        operator delete(v42);
      }
    }

    else
    {
      v33 = v48;
      v34 = a5 & 0xFFFFFFFE;
      v35 = *v12;
      v36 = 40 * v48;
      do
      {
        has_uppercase_characters = KB::string_has_uppercase_characters((v35 + v36), v32);
        v38 = has_uppercase_characters;
        if (v36)
        {
          v39 = 0;
        }

        else
        {
          v39 = v34 == 2;
        }

        v40 = v39 && has_uppercase_characters;
        if ((v40 & a6) != 0)
        {
          v41 = has_uppercase_characters | 2;
        }

        else
        {
          v41 = has_uppercase_characters;
        }

        v42 = v60;
        if (v33 < (v61[0] - v60) >> 2)
        {
          v43 = *(v60 + v33);
          if (v43 != -1)
          {
            v44 = __p.__begin_[v43];
            if (v38)
            {
              v45 = v44 & 0x12;
            }

            else
            {
              v45 = 0;
            }

            v46 = v44 & 0x2C | v41 | v45;
            if ((v41 & ((v44 & 1) == 0)) != 0)
            {
              v41 = v46 | 0x10;
            }

            else
            {
              v41 = v46;
            }
          }
        }

        v35 = *(a1 + 8);
        *(v35 + v36 + 32) = v41;
        ++v33;
        v36 += 40;
      }

      while (v33 < *(a1 + 96));
      if (v42)
      {
        goto LABEL_74;
      }
    }

    begin = __p.__begin_;
    if (__p.__begin_)
    {
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  (*(**(a1 + 224) + 104))(v59);
  begin = v59[0];
  if (v59[0])
  {
    v59[1] = v59[0];
LABEL_76:
    operator delete(begin);
  }

LABEL_77:
  v71 = 0x100000;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  KB::String::operator=((*(*(a1 + 264) + 24) + 56), &v71);
  if (v74 && v73 == 1)
  {
    free(v74);
  }

  v71 = 0x100000;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  KB::String::operator=((a1 + 32), &v71);
  if (v74 && v73 == 1)
  {
    free(v74);
  }

  if (v70 && v69[6] == 1)
  {
    free(v70);
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t TIInputManager::set_autoshift(uint64_t this, int a2)
{
  v2 = *(this + 8);
  if (-858993459 * ((*(this + 16) - v2) >> 3))
  {
    v3 = *(v2 + 32);
    v4 = v3 & 0xFFFFFFFD;
    if ((v3 & a2) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = v5 | v4;
  }

  return this;
}

uint64_t TIInputManager::is_uppercase(TIInputManager *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (-858993459 * ((*(this + 2) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 32) & 1;
  }
}

BOOL TIInputManager::session_contains_flag(TIInputManager *this, int a2)
{
  TIInputManager::input_flags_vector(this, &v10);
  if (v10.__end_ != v10.__begin_)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v10.__begin_[v3] & a2;
      v6 = v5 != 0;
      v3 = v4++;
      if (v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = v10.__end_ - v10.__begin_ > v3;
      }
    }

    while (v7);
    goto LABEL_9;
  }

  v6 = 0;
  v8 = 0;
  if (v10.__end_)
  {
LABEL_9:
    operator delete(v10.__begin_);
    return v6;
  }

  return v8;
}

void TIInputManager::autocorrection(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v6);
  if (v6[1] == v6[0])
  {
    bzero(a2, 0x3E8uLL);
    KB::Candidate::Candidate(a2);
  }

  else
  {
    KB::Candidate::Candidate(a2, v6[0]);
  }

  if (v10)
  {
    v3 = v9[38] == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v10);
  }

  v5 = v9;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = &v8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = &v7;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = v6;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t TIInputManager::user_dictionary(TIInputManager *this)
{
  v1 = *(*(*(this + 33) + 24) + 24);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

KB::String *TIInputManager::single_character_completions_for_shortcut_prefix@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(this + 33) + 24) + 24);
  if (v4 && (v5 = *v4) != 0)
  {
    *a3 = 0x100000;
    *(a3 + 4) = 0;
    *(a3 + 6) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    this = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>((v5 + 48), a2);
    if (this)
    {

      return KB::String::operator=(a3, (this + 48));
    }
  }

  else
  {
    *a3 = 0x100000;
    *(a3 + 4) = 0;
    *(a3 + 6) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return this;
}

uint64_t TIInputManager::maximum_shortcut_length(TIInputManager *this)
{
  v1 = *(*(*(this + 33) + 24) + 24);
  if (v1 && (v2 = *v1) != 0)
  {
    return *(v2 + 88);
  }

  else
  {
    return 0;
  }
}

BOOL TIInputManager::has_user_explicit_shift(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2 >> 2;
  v5 = 1;
  do
  {
    v6 = (*(v1 + 4 * v3) & 0x13) == 1;
    result = v6;
    v3 = v5++;
  }

  while (!v6 && v4 > v3);
  return result;
}

uint64_t TIInputManager::apply_custom_conversions(TIInputManager *this, CandidateCollection *a2)
{
  result = *(this + 73);
  if (result)
  {
    return (*(*result + 64))(result, a2);
  }

  return result;
}

uint64_t TIInputManager::should_correct_explicitly_shifted_word(TIInputManager *this)
{
  v1 = *(this + 73);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1;
  }
}

uint64_t TIInputManager::should_promote_case_variants_of_top_candidate(TIInputManager *this)
{
  result = *(this + 73);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void TIInputManager::drop_input_prefix_and_update_autocorrection_engine(uint32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a1[28];
  TIInputManager::input_substring(&a1[1], 0, a1[12].i32[0], v8);
  (*(**&v6 + 144))(v6, a1 + 59, v8, a1[12].u32[0], -858993459 * ((*&a1[2] - *&a1[1]) >> 3));
  if (v10 && v9 == 1)
  {
    free(v10);
  }

  TIInputManager::input_substring(&a1[1], 0, a2, v8);
  std::vector<KB::Input>::erase(&a1[1], *&a1[1], (*&a1[1] + 40 * a2));
  a1[12].i32[0] -= a2;
  a1[27] = vqsub_u32(a1[27], vdup_n_s32(a2));
  KB::String::clear(&a1[8]);
  (*(a3 + 16))(a3);
  (*(**&a1[28] + 128))(*&a1[28], a1 + 59, a2, v8);
  if (v10 && v9 == 1)
  {
    free(v10);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t TIInputManager::set_input_context(TIInputManager *this, const KB::String *a2, const KB::LanguageModelContext *a3)
{
  KB::String::operator=((this + 440), a2);

  return KB::LanguageModelContext::operator=(this + 472, a3);
}

void TIInputManager::sync_with_input_from_UI(TIInputManager *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 28);
  TIInputManager::input_substring(this + 4, 0, *(this + 24), v4);
  (*(*v2 + 144))(v2, this + 472, v4, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
  if (v5 && v4[6] == 1)
  {
    free(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void TIInputManager::tokenize_input_context(const KB::String *a1@<X1>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = " \n\t";
  v5 = 1048579;
  v9 = 0;
  KB::string_split_after(a1, &v5, a2);
  if (v8)
  {
    v3 = v7 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
}

unsigned int *TIInputManager::set_typing_model(TIInputManager *this, unsigned int **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(this + 73);
  if (v4)
  {
    v5 = *TIInputManager::favonius_layout(this);
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    (*(*v4 + 16))(&v12, v4, &v11);
    (*(*v3 + 24))(v3, &v12);
    if (v12)
    {
      v6 = atomic_load(v12 + 2);
      if (v6 == 1)
      {
        (*(*v12 + 8))();
      }

      else
      {
        atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
      }
    }

    if (v11)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v11);
    }
  }

  v7 = *(this + 28);
  v10 = v3;
  (*(*v7 + 176))(v7, &v10);
  result = v10;
  if (v10)
  {
    v9 = atomic_load(v10 + 2);
    if (v9 == 1)
    {
      return (*(*v10 + 40))();
    }

    else
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t TIInputManager::set_candidate_generator(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 224);
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 192))(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = atomic_load(v6 + 2);
    if (v5 == 1)
    {
      return (*(*v6 + 8))();
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TIInputManager::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 224);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 208))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

uint64_t TIInputManager::set_search_algorithm(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 224);
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 224))(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = atomic_load(v6 + 2);
    if (v5 == 1)
    {
      return (*(*v6 + 16))();
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TIInputManager::set_word_medial_punctuation_predicate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 600);
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  *(a1 + 600) = aBlock;
  if (v4)
  {

    _Block_release(v4);
  }
}

BOOL TIInputManager::candidate_contains_space(TIInputManager *this, const KB::Candidate *a2)
{
  v3 = *(this + 444);
  if (*(this + 444))
  {
    v4 = *(this + 112);
    if (!v4)
    {
      v4 = this + 904;
    }
  }

  else
  {
    KB::Candidate::compute_string(this);
    v3 = *(this + 444);
    v4 = *(this + 112);
    if (!v4)
    {
      v4 = this + 904;
    }

    if (!*(this + 444))
    {
      v5 = v4;
      return v5 - v4 != v3;
    }
  }

  v5 = v4;
  while (*v5 != 32)
  {
    if (++v5 == &v4[v3])
    {
      v5 = &v4[v3];
      return v5 - v4 != v3;
    }
  }

  return v5 - v4 != v3;
}

uint64_t TIInputManager::period_ends_sentence_after_word(TIInputManager *this, const KB::String *a2, uint64_t a3)
{
  KB::DictionaryContainer::lookup(*(this + 33), &v27);
  v6 = v27;
  v7 = v28;
  if (v27 != v28)
  {
    while (1)
    {
      v29 = &unk_283FDCF10;
      v30 = 1;
      if (!KB::InputSegmentFilter::string_preserves_surface_form_features(&v29, v6, a2, 0, 0))
      {
        break;
      }

      v6 += 240;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_10;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 240; i != v7; i += 240)
      {
        v29 = &unk_283FDCF10;
        v30 = 1;
        if (KB::InputSegmentFilter::string_preserves_surface_form_features(&v29, i, a2, 0, 0))
        {
          KB::String::operator=(v6, i);
          KB::ByteString::operator=((v6 + 32), (i + 32));
          v9 = *(i + 48);
          *(v6 + 56) = *(i + 56);
          *(v6 + 48) = v9;
          KB::String::operator=(v6 + 64, (i + 64));
          v10 = *(i + 96);
          v11 = *(i + 112);
          v12 = *(i + 144);
          *(v6 + 128) = *(i + 128);
          *(v6 + 144) = v12;
          *(v6 + 96) = v10;
          *(v6 + 112) = v11;
          KB::String::operator=(v6 + 160, (i + 160));
          *(v6 + 192) = *(i + 192);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v6 + 200, (i + 200));
          v6 += 240;
        }
      }
    }
  }

LABEL_10:
  std::vector<KB::Word>::erase(&v27, v6, v28);
  if (v27 == v28)
  {
    v23 = 1;
  }

  else
  {
    v14 = KB::string_capitalization(a2, v13);
    v15 = v27;
    v16 = v28;
    if (v27 == v28)
    {
      v25 = 0;
      goto LABEL_27;
    }

    v17 = v14;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = (a3 & 1) != 0 || *(v15 + 30) == v17;
      if ((*(v15 + 104) & 0x40) == 0)
      {
        v22 = KB::String::last(v15) != 46;
        v19 |= v22 && v21;
        v20 |= v22;
      }

      v18 |= v21;
      v15 = (v15 + 240);
    }

    while (v15 != v16);
    if (v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }
  }

  v24 = *(this + 73);
  v25 = (v24 == 0) & v23;
  if (v24 && (v23 & 1) != 0)
  {
    v25 = (*(*v24 + 32))(v24, a2, a3);
  }

LABEL_27:
  v29 = &v27;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v29);
  return v25;
}

_BYTE *TIInputManager::set_uses_text_checker(_BYTE *this, int a2)
{
  this[734] = a2;
  if (a2)
  {
    return _text_checker(1);
  }

  return this;
}

TIInputManager *TIInputManager::clear_continuous_path(TIInputManager *this)
{
  result = (*(**(this + 28) + 352))(*(this + 28));
  *(this + 108) = -1;
  v3 = *(this + 46);
  if (v3 != (this + 376))
  {
    do
    {
      if ((*(v3 + 108) - 2) > 3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          do
          {
            result = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            result = *(v3 + 16);
            v5 = *result == v3;
            v3 = result;
          }

          while (!v5);
        }
      }

      else
      {
        result = std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::erase(this + 46, v3);
      }

      v3 = result;
    }

    while (result != (this + 376));
  }

  return result;
}

uint64_t TIInputManager::add_touch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 296) || (v7 = *(a1 + 360)) == 0 || ((*(v7 + 16) - *(v7 + 8)) & 0x7FFFFFFF8) != 0)
  {
    v6 = *(a1 + 224);
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), &appendedString);
    (*(*v6 + 144))(v6, a1 + 472, &appendedString, *(a1 + 96), -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    if (v11)
    {
      if (BYTE6(appendedString) == 1)
      {
        free(v11);
      }
    }

    TIInputManager::favonius_layout(a1);
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t TIInputManager::delete_from_favonius_stroke_history(TIInputManager *this)
{
  v1 = *(this + 28);
  v2 = TIInputManager::favonius_layout(this);
  v3 = *(*v1 + 96);

  return v3(v1, v2);
}

uint64_t TIInputManager::set_key_layout(uint64_t a1, atomic_uint **a2)
{
  v4 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v5, 1u);
  }

  result = *(a1 + 360);
  *(a1 + 360) = v5;
  if (result)
  {

    return WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(result);
  }

  return result;
}

uint64_t TIInputManager::set_layout_uses_two_hands(uint64_t this, char a2)
{
  *(this + 320) = a2;
  v2 = *(this + 360);
  if (v2)
  {
    *(v2 + 112) = a2;
  }

  return this;
}

KB::String *TIInputManager::set_primary2secondary_character_map_entry(uint64_t a1, void *a2, KB::String *a3)
{
  v4 = (std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>((a1 + 176), a2) + 6);

  return KB::String::operator=(v4, a3);
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
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
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 2 != a2 && !KB::String::equal((v12 + 2), a2, 1))
  {
    goto LABEL_21;
  }

  return v12;
}

void TIInputManager::candidates_for_string(TIInputManager *a1, const KB::String *a2, int a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  TIInputManager::create_autocorrection_engine_with_synthetic_typing(a1, a2);
}

void std::__function::__func<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0,std::allocator<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v77 = *MEMORY[0x277D85DE8];
  v10 = *v9;
  v11 = *(v9 + 8);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v12 = *(v5 + 8);
  __dst = 0;
  v55 = 0;
  __p = 0;
  if (v11 != v10)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&__p, (v11 - v10) >> 3);
  }

  (*(*v12 + 48))(&v56, v12, 4, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v56)
  {
    if (*(v12 + 76))
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    (*(*v12 + 72))(&v74, v12, *(v8 + 16));
    KB::Candidate::Candidate(v73, *(v8 + 16), v12[72]);
    if (v76 == 1)
    {
      KB::Candidate::Candidate(v71, &v74, v12[72]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v71[0] = 0;
    }

    v72 = v14;
    v15 = *(v8 + 16);
    v16 = *(v15 + 4);
    if (*(v15 + 4) || (KB::String::compute_length(*(v8 + 16)), v16 = *(v15 + 4), *(v15 + 4)))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    *v47 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v50);
    language_modeling::v1::LinguisticContext::LinguisticContext(&v51);
    memset(v52, 0, 24);
    bzero(v70, 0x3E8uLL);
    KB::Candidate::Candidate(v70);
    KB::CandidateCollection::CandidateCollection(v42, v7);
    KB::Candidate::Candidate(v67, v73);
    v65[0] = 0;
    v66 = 0;
    if (v72 == 1)
    {
      KB::Candidate::Candidate(v65, v71);
      v66 = 1;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    KB::LanguageModelContext::LanguageModelContext(v32, &v46);
    KB::String::String(v63, *(v8 + 24));
    KB::Candidate::Candidate(v62, v70);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(v68, v67, v65, &v39, v32, v63, v62, 4);
    KB::Candidate::~Candidate(v62);
    if (v64 && v63[6] == 1)
    {
      free(v64);
    }

    v31[0] = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v31);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v36);
    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v66 == 1)
    {
      KB::Candidate::~Candidate(v65);
    }

    KB::Candidate::~Candidate(v67);
    v69 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v17 = *(v12 + 17);
    v18 = v12[72];
    v19 = *(v12 + 33);
    v30 = v19;
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
    }

    v20 = *(v12 + 35);
    v28 = *(v12 + 34);
    v29 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(v31, v17, v18, &v30, &v28, *(v12 + 75), (v12 + 158), Mutable);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v30)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v30);
    }

    (*(*v56 + 24))(v56, v7, v68, v31);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    TIInputManager::apply_case_changes(v12, v7, &v59, 0, **(v8 + 32), 0);
    cf = &v59;
    std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&cf);
    TIInputManager::apply_shortcut_conversions(v12, v7, v21, 0);
    if (*(v12 + 76))
    {
      v22 = KB::CandidateFilterFlags::candidate_filter_flag_type(v10, v11);
      v23 = &kGenericFlagDesc;
      if (v22 == 1)
      {
        v23 = &kPostLMFlagDesc;
      }

      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = &kPreLMFlagDesc;
      }

      KB::String::String(&v59, v24);
      v25 = *(v12 + 76);
      v26 = *(v8 + 16);
      cf = 0;
      (*(*v25 + 24))(v25, v26, 4, &v59, v42, Mutable, v7, &cf, v28);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v60 && BYTE6(v59) == 1)
      {
        free(v60);
      }
    }

    KB::CandidateFilterResources::~CandidateFilterResources(v31);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(v68);
    v68[0] = &v45;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = &v44;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = &v43;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = v42;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    KB::Candidate::~Candidate(v70);
    v68[0] = v52;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v68);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v51);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v50);
    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }

    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v46 + 1));
    }

    if (v72 == 1)
    {
      KB::Candidate::~Candidate(v71);
    }

    KB::Candidate::~Candidate(v73);
    if (v76 == 1 && v75 && BYTE6(v74) == 1)
    {
      free(v75);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  if (v10)
  {
    operator delete(v10);
  }

  v27 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0,std::allocator<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void TIInputManager::predictions_for_string(TIInputManager *a1, uint64_t a2, int a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  TIInputManager::create_autocorrection_engine(a1);
}

void std::__function::__func<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0,std::allocator<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v51 = v6;
  v7 = v5;
  v116 = *MEMORY[0x277D85DE8];
  v10 = *v8;
  v9 = *(v8 + 8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v11 = *(v5 + 8);
  v12 = **(v5 + 16);
  v90 = 0;
  __p = 0;
  __dst = 0;
  if (v9 != v10)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&__p, (v9 - v10) >> 3);
  }

  (*(*v11 + 48))(&v91, v11, v12, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v91)
  {
    if (*(v11 + 608))
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    (*(*v11 + 72))(&v108, v11, *(v7 + 24));
    KB::Candidate::Candidate(v107, *(v7 + 24), *(v11 + 288));
    v49 = v9;
    if (v110 == 1)
    {
      KB::Candidate::Candidate(v105, &v108, *(v11 + 288));
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v105[0] = 0;
    }

    v50 = v10;
    v106 = v14;
    v15 = *(v7 + 24);
    v16 = *(v15 + 4);
    if (*(v15 + 4) || (KB::String::compute_length(*(v7 + 24)), v16 = *(v15 + 4), *(v15 + 4)))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
    }

    v17 = *(v11 + 136);
    v18 = *(v11 + 288);
    v19 = *(v11 + 264);
    v86 = v19;
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
    }

    v20 = *(v11 + 280);
    v84 = *(v11 + 272);
    v85 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(v87, v17, v18, &v86, &v84, *(v11 + 600), v11 + 632, Mutable);
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v85);
    }

    if (v86)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v86);
    }

    KB::CandidateCollection::CandidateCollection(v80, v51);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v77);
    language_modeling::v1::LinguisticContext::LinguisticContext(&v78);
    memset(v79, 0, 24);
    bzero(v104, 0x3E8uLL);
    KB::Candidate::Candidate(v104);
    v21 = KB::String::last((v11 + 440));
    KB::Candidate::Candidate(v100, v107);
    v98[0] = 0;
    v99 = 0;
    if (v106 == 1)
    {
      KB::Candidate::Candidate(v98, v105);
      v99 = 1;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    KB::LanguageModelContext::LanguageModelContext(v63, &v73);
    KB::String::String(v96, *(v7 + 32));
    KB::Candidate::Candidate(v95, v104);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(v101, v100, v98, &v70, v63, v96, v95, **(v7 + 16));
    KB::Candidate::~Candidate(v95);
    if (v97 && v96[6] == 1)
    {
      free(v97);
    }

    v111 = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v111);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v68);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v67);
    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v99 == 1)
    {
      KB::Candidate::~Candidate(v98);
    }

    KB::Candidate::~Candidate(v100);
    v103 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v102 = v21 == 46;
    (*(*v91 + 24))(v91, v51, v101, v87);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v22 = *(v7 + 24);
    v23 = *(v22 + 4);
    if (!*(v22 + 4))
    {
      KB::String::compute_length(*(v7 + 24));
      v23 = *(v22 + 4);
    }

    std::vector<KB::Input>::reserve(&v60, v23);
    v24 = *(v7 + 24);
    v25 = *(v24 + 1);
    if (!v25)
    {
      v25 = v24 + 8;
    }

    v56 = v25;
    v57 = 0;
    v58 = *v24;
    v59 = 0;
    KB::String::iterator::initialize(&v56);
    v26 = *v24;
    v27 = *(v24 + 1);
    if (!v27)
    {
      v27 = (v24 + 8);
    }

    v52 = v27;
    v53 = v26;
    v54 = v26;
    v55 = 0;
    KB::String::iterator::initialize(&v52);
    if (v57 != v53)
    {
      do
      {
        KB::String::String(&cf, v59);
        if (v61 >= v62)
        {
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v60) >> 3) + 1;
          if (v30 > 0x666666666666666)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          if (0x999999999999999ALL * ((v62 - v60) >> 3) > v30)
          {
            v30 = 0x999999999999999ALL * ((v62 - v60) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v62 - v60) >> 3) >= 0x333333333333333)
          {
            v31 = 0x666666666666666;
          }

          else
          {
            v31 = v30;
          }

          v115 = &v60;
          if (v31)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v31);
          }

          v32 = (8 * ((v61 - v60) >> 3));
          KB::String::String(v32, &cf);
          v32[8] = 0;
          v29 = (v32 + 10);
          v33 = (v32 + v60 - v61);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v60, v61, v33);
          v34 = v60;
          v35 = v62;
          v60 = v33;
          v61 = v29;
          v62 = 0;
          v113 = v34;
          v114 = v35;
          v111 = v34;
          v112 = v34;
          std::__split_buffer<KB::Input>::~__split_buffer(&v111);
        }

        else
        {
          v28 = KB::String::String(v61, &cf);
          *(v28 + 8) = 0;
          v29 = (v28 + 40);
        }

        v61 = v29;
        if (v94 && BYTE6(cf) == 1)
        {
          free(v94);
        }

        KB::String::iterator::operator++(&v56);
      }

      while (v57 != v53);
      v24 = *(v7 + 24);
    }

    v36 = *v24;
    if (*v24)
    {
      v37 = *(v24 + 1);
      if (!v37)
      {
        v37 = (v24 + 8);
      }

      v111 = v37;
      LODWORD(v112) = 0;
      HIDWORD(v112) = v36;
      LODWORD(v113) = 0;
      KB::String::iterator::initialize(&v111);
      v38 = u_isupper(v113);
      v39 = v60;
      v10 = v50;
      if (v38)
      {
        *(v60 + 8) = 3;
      }
    }

    else
    {
      v39 = v60;
      v10 = v50;
    }

    TIInputManager::apply_case_changes(v11, v51, &v60, -858993459 * ((v61 - v39) >> 3), 0, 0);
    TIInputManager::apply_shortcut_conversions(v11, v51, v40, 0);
    if (*(v11 + 608))
    {
      v41 = Mutable;
      v42 = KB::CandidateFilterFlags::candidate_filter_flag_type(v10, v49);
      v43 = &kGenericFlagDesc;
      if (v42 == 1)
      {
        v43 = &kPostLMFlagDesc;
      }

      if (v42)
      {
        v44 = v43;
      }

      else
      {
        v44 = &kPreLMFlagDesc;
      }

      KB::String::String(&v111, v44);
      (*(**(v11 + 224) + 488))(&cf);
      v45 = *(v11 + 608);
      v46 = *(v7 + 24);
      v47 = cf;
      v56 = cf;
      if (cf)
      {
        CFRetain(cf);
        v56 = v47;
      }

      Mutable = v41;
      (*(*v45 + 24))(v45, v46, 0, &v111, v80, v41, v51, &v56);
      if (v56)
      {
        CFRelease(v56);
      }

      v56 = 0;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v112 && BYTE6(v111) == 1)
      {
        free(v112);
      }
    }

    v111 = &v60;
    std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v111);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(v101);
    KB::Candidate::~Candidate(v104);
    v101[0] = v79;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v101);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v78);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v77);
    if (v74)
    {
      *(&v74 + 1) = v74;
      operator delete(v74);
    }

    if (*(&v73 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v73 + 1));
    }

    v101[0] = &v83;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = &v82;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = &v81;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = v80;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    KB::CandidateFilterResources::~CandidateFilterResources(v87);
    if (v106 == 1)
    {
      KB::Candidate::~Candidate(v105);
    }

    KB::Candidate::~Candidate(v107);
    if (v110 == 1 && v109 && BYTE6(v108) == 1)
    {
      free(v109);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v92);
  }

  if (v10)
  {
    operator delete(v10);
  }

  v48 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0,std::allocator<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9268;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void TIInputManager::phrase_candidates_for_string(TIInputManager *this@<X0>, const KB::String *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  KB::StaticDictionary::candidates_for_string(*(*(this + 33) + 16), a2, 0, a4);
  if (!a3 || KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon == 1 && *(this + 144))
  {
    v8 = *(a4 + 8) - *a4;
    v9 = *(this + 33);
    v10 = *(v9 + 8);
    KB::DynamicDictionary::retrieve_phrase_candidates(*(v9 + 24), a2);
    v11 = *(a4 + 8);
    v12 = (v8 + *a4);
    if (v12 != v11)
    {
      v14 = *(this + 33);
      while (2)
      {
        KB::DictionaryContainer::lookup(v14, &v31);
        for (i = v31; i != v32; i += 120)
        {
          if (!*(i + 28))
          {
            goto LABEL_50;
          }

          v16 = *(i + 1);
          if (!v16)
          {
            v16 = i + 8;
          }

          v17 = *i;
          if (*i)
          {
            v18 = *i;
            v19 = v16;
            while (*v19 != 45)
            {
              ++v19;
              if (!--v18)
              {
                v19 = &v17[v16];
                break;
              }
            }
          }

          else
          {
            v19 = v16;
          }

          if ((v19 - v16) == v17)
          {
LABEL_50:
            if ((i[53] & 4) != 0 || *(i + 31))
            {
              v33 = &v31;
              std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v33);
              v13 = v11;
              if (v12 != v11)
              {
                v20 = (v12 + 240);
                if ((v12 + 240) == v11)
                {
                  v13 = v12;
                }

                else
                {
                  v13 = v12;
                  do
                  {
                    v21 = v20;
                    KB::DictionaryContainer::lookup(v14, &v31);
                    for (j = v31; ; j += 120)
                    {
                      if (j == v32)
                      {
                        v33 = &v31;
                        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v33);
                        KB::String::operator=(v13, v21);
                        KB::ByteString::operator=((v13 + 32), v12 + 136);
                        v27 = *(v12 + 36);
                        *(v13 + 56) = *(v12 + 74);
                        *(v13 + 48) = v27;
                        KB::String::operator=(v13 + 64, (v12 + 304));
                        v28 = *(v12 + 21);
                        v29 = *(v12 + 22);
                        v30 = *(v12 + 24);
                        *(v13 + 128) = *(v12 + 23);
                        *(v13 + 144) = v30;
                        *(v13 + 96) = v28;
                        *(v13 + 112) = v29;
                        KB::String::operator=(v13 + 160, (v12 + 400));
                        *(v13 + 192) = *(v12 + 432);
                        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v13 + 200, v12 + 55);
                        v13 += 240;
                        goto LABEL_44;
                      }

                      if (!*(j + 28))
                      {
                        goto LABEL_51;
                      }

                      v23 = *(j + 1);
                      if (!v23)
                      {
                        v23 = j + 8;
                      }

                      v24 = *j;
                      if (*j)
                      {
                        v25 = *j;
                        v26 = v23;
                        while (*v26 != 45)
                        {
                          ++v26;
                          if (!--v25)
                          {
                            v26 = &v24[v23];
                            break;
                          }
                        }
                      }

                      else
                      {
                        v26 = v23;
                      }

                      if ((v26 - v23) == v24)
                      {
LABEL_51:
                        if ((j[53] & 4) != 0 || *(j + 31))
                        {
                          break;
                        }
                      }
                    }

                    v33 = &v31;
                    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v33);
LABEL_44:
                    v20 = (v21 + 240);
                    v12 = v21;
                  }

                  while ((v21 + 240) != v11);
                }
              }

              goto LABEL_47;
            }
          }
        }

        v33 = &v31;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v33);
        v12 = (v12 + 240);
        if (v12 != v11)
        {
          continue;
        }

        break;
      }
    }

    v13 = v11;
LABEL_47:
    std::vector<KB::Word>::erase(a4, v13, *(a4 + 8));
  }
}

void TIInputManager::phrase_completed_by_word(uint64_t a1@<X0>, KB::String *a2@<X1>, KB::String *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  v105[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    bzero(a7, 0x3E8uLL);
    v13 = *MEMORY[0x277D85DE8];

    KB::Candidate::Candidate(a7);
    return;
  }

  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), buf);
  v12 = buf == a2 || KB::String::equal(a2, buf, 1);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  TIInputManager::tokenize_input_context(a2, &v74);
  v73 = 0.0;
  v66 = a7;
  if ((KB::LanguageModelContext::is_linguistically_void((a1 + 472)) & 1) == 0 && (v14 = *(a1 + 272)) != 0 && (*(*v14 + 16))(v14))
  {
    v15 = (*(**(a1 + 272) + 448))(*(a1 + 272), a1 + 472, &v73);
  }

  else
  {
    v15 = 0;
  }

  TIInputManager::tokenize_input_context((a1 + 440), &v71);
  v16 = *(a1 + 576);
  v17 = v71;
  if (v16)
  {
    v18 = v72[0];
    KB::String::String(buf, v16);
    if (v17 != v18 && v17 != buf)
    {
      do
      {
        if (KB::String::equal(v17, buf, 1))
        {
          break;
        }

        v17 = (v17 + 32);
        if (v17 == v18)
        {
          break;
        }
      }

      while (v17 != buf);
    }

    if (v17 != v18)
    {
      for (i = (v17 + 32); i != v18; i = (i + 32))
      {
        if (i != buf && !KB::String::equal(i, buf, 1))
        {
          KB::String::operator=(v17, i);
          v17 = (v17 + 32);
        }
      }
    }

    v20 = v72[0];
    if (v17 != v72[0])
    {
      while (v20 != v17)
      {
        v21 = *(v20 - 3);
        if (v21 && *(v20 - 26) == 1)
        {
          free(v21);
        }

        v20 = (v20 - 32);
      }

      v72[0] = v17;
    }

    if (*&buf[8])
    {
      v22 = buf[6] == 1;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      free(*&buf[8]);
    }

    v17 = v71;
  }

  v24 = v74;
  v23 = v75;
  v25 = v75 - v74;
  v26 = (v75 - v74) >> 5;
  if (v26 >= 1)
  {
    v27 = a5;
    v28 = v72[0];
    if (v72[1] - v72[0] >= v25)
    {
      while (v24 != v23)
      {
        KB::String::String(v28, v24);
        v24 = (v24 + 32);
        v28 = (v28 + 32);
      }

      v72[0] = v28;
    }

    else
    {
      v29 = v26 + ((v72[0] - v17) >> 5);
      if (v29 >> 59)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v30 = v72[1] - v17;
      if ((v72[1] - v17) >> 4 > v29)
      {
        v29 = v30 >> 4;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFE0)
      {
        v31 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      *&buf[32] = &v71;
      if (v31)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(v31);
      }

      v32 = (32 * ((v72[0] - v17) >> 5));
      *buf = 0;
      *&buf[8] = v32;
      *&buf[24] = 0;
      v33 = v32 + v25;
      do
      {
        v32 = (KB::String::String(v32, v24) + 32);
        v24 = (v24 + 32);
        v25 -= 32;
      }

      while (v25);
      *&buf[16] = v33;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(v28, v72[0], v33);
      *&buf[16] += v72[0] - v28;
      v72[0] = v28;
      v34 = (*&buf[8] + v71 - v28);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(v71, v28, v34);
      v35 = v71;
      v36 = v72[1];
      v71 = v34;
      *v72 = *&buf[16];
      *&buf[16] = v35;
      *&buf[24] = v36;
      *buf = v35;
      *&buf[8] = v35;
      std::__split_buffer<KB::String>::~__split_buffer(buf);
    }

    a5 = v27;
  }

  v63 = a6;
  v65 = v12;
  if (v12)
  {
    v37 = 1;
  }

  else
  {
    v37 = (v75 - v74) >> 5;
  }

  if (v37 > 4)
  {
LABEL_134:
    bzero(v66, 0x3E8uLL);
    KB::Candidate::Candidate(v66);
    goto LABEL_135;
  }

  v38 = 4;
  v64 = a5;
  while (v38 > (v72[0] - v71) >> 5 || v38 == 1 && !a5)
  {
LABEL_133:
    if (v37 > --v38)
    {
      goto LABEL_134;
    }
  }

  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 0;
  *&buf[8] = 0;
  buf[16] = 0;
  KB::string_join(v72[0] - 16 * v38, v72[0], buf, v102);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  if (v104)
  {
    v39 = v104;
  }

  else
  {
    v39 = v105;
  }

  if (v102[0])
  {
    v40 = v102[0];
    v41 = v39;
    while (*v41 != 10)
    {
      ++v41;
      if (!--v40)
      {
        v41 = v39 + v102[0];
        break;
      }
    }
  }

  else
  {
    v41 = v39;
  }

  if (v41 - v39 != v102[0])
  {
    if (v104 && v103 == 1)
    {
      free(v104);
    }

    goto LABEL_133;
  }

  TIInputManager::phrase_candidates_for_string(a1, v102, a5, &v69);
  if (v69 == v70)
  {
    goto LABEL_129;
  }

  if (v65)
  {
    KB::String::operator=(a3, v102);
  }

  else
  {
    v96.lexicon_id = 0x100000;
    LOWORD(v96.word_id) = 0;
    BYTE2(v96.word_id) = 0;
    v97 = 0;
    v98 = 0;
    KB::string_join(v72[0] - 16 * v38, (v74 + v72[0] - v75), &v96, v99);
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v93);
    KB::String::String(buf, v99);
    KB::String::append(buf, v93);
    KB::String::operator=(a3, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    if (v95 && v94 == 1)
    {
      free(v95);
    }

    if (v101 && v100 == 1)
    {
      free(v101);
    }

    if (v97 && BYTE2(v96.word_id) == 1)
    {
      free(v97);
    }
  }

  v43 = v69;
  v42 = v70;
  if (v69 == v70)
  {
LABEL_129:
    *buf = &v69;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](buf);
    if (v104)
    {
      if (v103 == 1)
      {
        free(v104);
      }
    }

    a5 = v64;
    goto LABEL_133;
  }

  while (1)
  {
    *buf = &unk_283FDCF10;
    *&buf[8] = 1;
    if (!KB::InputSegmentFilter::string_preserves_surface_form_features(buf, v43, v102, 0, 0))
    {
      goto LABEL_123;
    }

    v45 = *(v43 + 136);
    if (v15 != v45 && v45 != 0 && v15 != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v52 = "";
        if (*v43)
        {
          v52 = *(v43 + 8);
          if (!v52)
          {
            v52 = (v43 + 16);
          }
        }

        *buf = 136316162;
        *&buf[4] = "phrase_completed_by_word";
        *&buf[12] = 2080;
        *&buf[14] = v52;
        *&buf[22] = 1024;
        *&buf[24] = v45;
        *&buf[28] = 1024;
        *&buf[30] = v15;
        *&buf[34] = 2048;
        *&buf[36] = v73;
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Phrase candidate  %s was found but is not from the most probable lexicon (word.lexicon_id = %d, current_lexicon_id = %d; language confidence = %f)", buf, 0x2Cu);
      }

      goto LABEL_123;
    }

    v48 = *(v43 + 104);
    if ((v48 & 0x800012) != 0 || (*(v43 + 104) & 0x2080) == 0x80 || (v48 & 0x2042000) == 0x2000000)
    {
      if (a4)
      {
        KB::String::String(v76, a3);
        v78 = 1;
        create_candidate_from_word(v66, v43, v76);
        if (v78 != 1)
        {
          goto LABEL_178;
        }

        v58 = v77;
        if (!v77)
        {
          goto LABEL_178;
        }

        v59 = v76[6];
        goto LABEL_160;
      }

      goto LABEL_123;
    }

    if (*(a1 + 731) != 1)
    {
      v54 = TILocaleIdentifierForLexiconID(*(v43 + 136));
      KB::string_to_lowercase(v43, v54, v99);
      v96 = *(v43 + 136);
      KB::Word::Word(buf, v99, &v96, 0);
      if (v101 && v100 == 1)
      {
        free(v101);
      }

      v56 = KB::string_capitalization(a3, v55);
      v57 = v85 & 0xFFFFFFFE;
      if (v56 == 1)
      {
        ++v57;
      }

      v86 = v56;
      v85 = v57;
      KB::Word::capitalized_string(buf, v99);
      v79 = 0x100000;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      KB::String::operator=(&v79, v99);
      v83 = 1;
      create_candidate_from_word(v66, v43, &v79);
      if (v83 == 1 && v82 && v81 == 1)
      {
        free(v82);
      }

      if (v101 && v100 == 1)
      {
        free(v101);
      }

      KB::Word::~Word(buf);
      goto LABEL_178;
    }

    if (*(v43 + 224) && KB::CollatorWrapper::sortkey_starts_with((*(*(a1 + 264) + 8) + 72), v43, a3))
    {
      break;
    }

    if (v38 == 1 && !*a3)
    {
      TIInputManager::apply_shift_context_to_prediction(a1, v63, v43);
      goto LABEL_157;
    }

    v49 = KB::string_capitalization(a3, v44);
    v50 = *(v43 + 120);
    if ((v49 & ~v50) == 0)
    {
      goto LABEL_157;
    }

    if ((v49 & ~v50) == 1)
    {
      v60 = *(v43 + 104);
      if ((v60 & 0x20) == 0)
      {
        *(v43 + 120) = v50 | 1;
        v61 = v50 >= 2;
        v62 = v60 & 0xFFFFFFDE;
        if (!v61)
        {
          ++v62;
        }

        *(v43 + 104) = v62;
      }

LABEL_157:
      v87[0] = 0;
      v89 = 0;
      create_candidate_from_word(v66, v43, v87);
      if (v89 != 1)
      {
        goto LABEL_178;
      }

      v58 = v88;
      if (!v88)
      {
        goto LABEL_178;
      }

      v59 = v87[6];
LABEL_160:
      if (v59 == 1)
      {
        free(v58);
      }

      goto LABEL_178;
    }

LABEL_123:
    v43 += 240;
    if (v43 == v42)
    {
      goto LABEL_129;
    }
  }

  if (!v65)
  {
    v96.lexicon_id = 0x100000;
    LOWORD(v96.word_id) = 0;
    BYTE2(v96.word_id) = 0;
    v97 = 0;
    v98 = 0;
    KB::string_join(v72[0] - 16 * v38, (v74 + v72[0] - v75), &v96, v99);
    TIInputManager::input_substring((a1 + 8), 0, -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3), v93);
    KB::String::String(buf, v99);
    KB::String::append(buf, v93);
    KB::String::operator=(a3, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    if (v95 && v94 == 1)
    {
      free(v95);
    }

    if (v101 && v100 == 1)
    {
      free(v101);
    }

    if (v97 && BYTE2(v96.word_id) == 1)
    {
      free(v97);
    }
  }

  v90[0] = 0;
  v92 = 0;
  create_candidate_from_word(v66, v43, v90);
  if (v92 == 1)
  {
    v58 = v91;
    if (v91)
    {
      v59 = v90[6];
      goto LABEL_160;
    }
  }

LABEL_178:
  *buf = &v69;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](buf);
  if (v104 && v103 == 1)
  {
    free(v104);
  }

LABEL_135:
  *buf = &v71;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v74;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](buf);
  v53 = *MEMORY[0x277D85DE8];
}

void create_candidate_from_word(KB::Candidate *a1, uint64_t a2, KB::String *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a3 + 32) == 1)
  {
    KB::String::String(v12, a3);
  }

  else
  {
    KB::Word::capitalized_string(a2, v12);
  }

  KB::Candidate::Candidate(a1, v12, 0);
  if (v13)
  {
    v5 = v12[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v13);
  }

  if ((*(a2 + 105) & 1) != 0 && *a1)
  {
    v6 = 240 * *a1;
    v7 = (*(a1 + 1) + 104);
    do
    {
      *v7 |= 0x100u;
      v7 += 60;
      v6 -= 240;
    }

    while (v6);
  }

  if (*(a2 + 224))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 1) + 200;
      v10 = 240 * v8;
      do
      {
        if (v9 - 200 != a2)
        {
          *(v9 + 32) = *(a2 + 232);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v9, *(a2 + 216));
        }

        v9 += 240;
        v10 -= 240;
      }

      while (v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::__split_buffer<KB::String>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      v5 = *(v2 - 24);
      if (v5 && *(v2 - 26) == 1)
      {
        free(v5);
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

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(KB::String *this, KB::String *a2, uint64_t a3)
{
  if (this != a2)
  {
    v5 = this;
    v6 = this;
    do
    {
      *a3 = 0x100000;
      *(a3 + 4) = 0;
      *(a3 + 6) = 0;
      *(a3 + 8) = 0;
      KB::String::operator=(a3, v6);
      v6 = (v6 + 32);
      a3 += 32;
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 1);
      if (v7)
      {
        if (*(v5 + 6) == 1)
        {
          free(v7);
        }
      }

      v5 = (v5 + 32);
    }

    while (v5 != a2);
  }
}

uint64_t TIInputManager::word_has_surface_form(TIInputManager *this, const KB::Word *a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::ko, "ko");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::ko, &dword_22CA55000);
  }

  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::ta, "ta");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::ta, &dword_22CA55000);
  }

  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::chr, "chr");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::chr, &dword_22CA55000);
  }

  v4 = *(this + 52);
  if (TIInputManager::word_has_surface_form(KB::Word const&)const::ko <= v4 && (*(this + 14) ? (v5 = *(this + 14)) : (v5 = this + 120), qword_280FAC2C8 ? (v6 = qword_280FAC2C8) : (v6 = algn_280FAC2D0), !strncmp(v5, v6, TIInputManager::word_has_surface_form(KB::Word const&)const::ko)))
  {
    is_tamil_script = 0;
  }

  else if (TIInputManager::word_has_surface_form(KB::Word const&)const::ta <= v4 && (*(this + 14) ? (v7 = *(this + 14)) : (v7 = this + 120), qword_280FAC2A8 ? (v8 = qword_280FAC2A8) : (v8 = algn_280FAC2B0), !strncmp(v7, v8, TIInputManager::word_has_surface_form(KB::Word const&)const::ta)))
  {
    KB::Word::capitalized_string(a2, v27);
    v12 = v29;
    if (v29)
    {
      v13 = v29;
    }

    else
    {
      v13 = v30;
    }

    *&v23 = v13;
    v14 = v27[0];
    DWORD2(v23) = 0;
    HIDWORD(v23) = v27[0];
    LODWORD(v24) = 0;
    KB::String::iterator::initialize(&v23);
    v19 = v13;
    v20 = v14;
    v21 = v14;
    v22 = 0;
    KB::String::iterator::initialize(&v19);
    v25 = v23;
    v26 = v24;
    v15 = v20;
    if (DWORD2(v23) == v20)
    {
      is_tamil_script = 0;
    }

    else
    {
      do
      {
        is_tamil_script = character_is_tamil_script();
        if (is_tamil_script)
        {
          break;
        }

        KB::String::iterator::operator++(&v25);
      }

      while (DWORD2(v25) != v15);
      v12 = v29;
    }

    if (v12)
    {
      v16 = v28 == 1;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      free(v12);
    }
  }

  else if (TIInputManager::word_has_surface_form(KB::Word const&)const::chr <= v4)
  {
    if (*(this + 14))
    {
      v10 = *(this + 14);
    }

    else
    {
      v10 = this + 120;
    }

    if (qword_280FAC288)
    {
      v11 = qword_280FAC288;
    }

    else
    {
      v11 = algn_280FAC290;
    }

    is_tamil_script = strncmp(v10, v11, TIInputManager::word_has_surface_form(KB::Word const&)const::chr) != 0;
  }

  else
  {
    is_tamil_script = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return is_tamil_script;
}

uint64_t TIInputManager::dictionary_contains_word(TIInputManager *this, const KB::String *a2, const KB::String *a3, char a4)
{
  v5 = *(this + 33);
  if (!v5)
  {
    return 0;
  }

  KB::DictionaryContainer::lookup(v5, &v20);
  v9 = v21;
  v10 = v20;
  if (v20 == v21)
  {
    v11 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v14 = ___ZNK14TIInputManager24dictionary_contains_wordERKN2KB6StringES3_b_block_invoke;
    v15 = &__block_descriptor_tmp_30;
    v16 = this;
    v17 = a3;
    v18 = a2;
    v19 = a4;
    do
    {
      v11 = (v14)(v13, v10);
      if (v11)
      {
        break;
      }

      v10 += 240;
    }

    while (v10 != v9);
  }

  v22 = &v20;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v22);
  return v11;
}

BOOL ___ZNK14TIInputManager24dictionary_contains_wordERKN2KB6StringES3_b_block_invoke(uint64_t a1, const KB::Word *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  has_surface_form = TIInputManager::word_has_surface_form(v4, a2);
  v6 = 48;
  if (has_surface_form)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  v8 = *(*(v4 + 33) + 8);
  KB::Word::capitalized_string(a2, v18);
  v10 = KB::CollatorWrapper::sortkey_compare_strings((v8 + 72), v18, v7, v9);
  if (v20)
  {
    v11 = v19 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    free(v20);
  }

  v16 = 0;
  if (v10)
  {
    goto LABEL_15;
  }

  KB::Word::capitalized_string(a2, v18);
  v17[1] = 1;
  v17[0] = &unk_283FDCF10;
  v12 = KB::InputSegmentFilter::string_preserves_surface_form_features(v17, v18, v7, &v16, 0);
  if (v20 && v19 == 1)
  {
    free(v20);
  }

  if (!v12 || (v16 & 1) != 0)
  {
LABEL_15:
    v13 = 0;
  }

  else if (*(a1 + 56) == 1)
  {
    KB::Word::capitalized_string(a2, v18);
    v13 = v18 == v7 || KB::String::equal(v18, v7, 1);
    if (v20 && v19 == 1)
    {
      free(v20);
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void TIInputManager::matching_words_from_dictionary(TIInputManager *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *(this + 33);
  if (v7)
  {
    KB::DictionaryContainer::lookup(v7, &v22);
    v11 = v23;
    v12 = v22;
    if (v22 != v23)
    {
      v26 = this;
      KB::String::String(v27, a3);
      KB::String::String(v29, a2);
      v31 = a4;
      do
      {
        v13 = v26;
        if (TIInputManager::word_has_surface_form(v26, v12))
        {
          v14 = v27;
        }

        else
        {
          v14 = v29;
        }

        v15 = *(*(v13 + 33) + 8);
        KB::Word::capitalized_string(v12, &v32);
        v17 = KB::CollatorWrapper::sortkey_compare_strings((v15 + 72), &v32, v14, v16);
        if (v33)
        {
          v18 = BYTE6(v32) == 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          free(v33);
        }

        v24 = 0;
        if (!v17)
        {
          KB::Word::capitalized_string(v12, &v32);
          v25[0] = &unk_283FDCF10;
          v25[1] = 1;
          v19 = KB::InputSegmentFilter::string_preserves_surface_form_features(v25, &v32, v14, &v24, 0);
          if (v33 && BYTE6(v32) == 1)
          {
            free(v33);
          }

          if (v19 && (v24 & 1) == 0)
          {
            if ((v31 & 1) == 0)
            {
              goto LABEL_24;
            }

            KB::Word::capitalized_string(v12, &v32);
            v20 = KB::String::equal(&v32, v14, 1);
            if (v33 && BYTE6(v32) == 1)
            {
              free(v33);
            }

            if (v20)
            {
LABEL_24:
              std::vector<KB::Word>::push_back[abi:nn200100](a5, v12);
            }
          }
        }

        v12 = (v12 + 240);
      }

      while (v12 != v11);
      if (v30 && v29[6] == 1)
      {
        free(v30);
      }

      if (v28 && v27[6] == 1)
      {
        free(v28);
      }
    }

    v32 = &v22;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v32);
  }

  v21 = *MEMORY[0x277D85DE8];
}

BOOL TIInputManager::is_input_hit_test_corrected(TIInputManager *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 24) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 24);
  }

  if (v3 <= a2)
  {
    return 0;
  }

  LODWORD(v4) = a2;
  if ((*(**(this + 28) + 280))(*(this + 28)))
  {
    return 1;
  }

  while (v3 - 1 != v4)
  {
    v4 = (v4 + 1);
    if ((*(**(this + 28) + 280))(*(this + 28), v4))
    {
      return v4 < v3;
    }
  }

  LODWORD(v4) = v3;
  return v4 < v3;
}

uint64_t KB::FilterZeroProbability::filter_candidates(KB::FilterZeroProbability *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v8[0] = &unk_283FD96F0;
  v8[3] = v8;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterZeroProbability", v8);
  result = std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__function::__func<KB::FilterZeroProbability::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterZeroProbability::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v3 = *a3;
  v4 = expf(*(a2 + 744));
  v5 = v4;
  if (v3 && v4 == 0.0)
  {
    KB::String::append(v3, "omega=0", 0xFFFFuLL);
  }

  return v5 == 0.0;
}

uint64_t KB::FilterIncomplete::filter_candidates(KB::FilterIncomplete *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v8[0] = &unk_283FD9738;
  v8[3] = v8;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterIncomplete", v8);
  result = std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<KB::FilterIncomplete::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterIncomplete::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, void *a2, KB::String **a3)
{
  if (*a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = *(v4 + 132);
  v6 = *(v4 - 108);
  v3 = (v5 & 0x10000000 | v6 & 0x20000000) != 0;
  if (*a3)
  {
    v7 = (v5 & 0x10000000 | v6 & 0x20000000) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = "no";
    if ((v5 & 0x10000000) != 0)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if ((v6 & 0x20000000) != 0)
    {
      v8 = "yes";
    }

    KB::String::append_format(*a3, "needs_prefix=%s, needs_suffix=%s", v9, v8);
    return 1;
  }

  return v3;
}

uint64_t KB::FilterControlCharacters::filter_candidates(KB::FilterControlCharacters *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v8[0] = &unk_283FD9780;
  v8[3] = v8;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterControlCharacters", v8);
  result = std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__function::__func<KB::FilterControlCharacters::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterControlCharacters::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v4 = *a3;
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  has_control_characters = KB::string_has_control_characters((a2 + 888), a2);
  v6 = has_control_characters;
  if (v4)
  {
    v7 = !has_control_characters;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    KB::String::append_format(v4, "candidate word contains control characters");
  }

  return v6;
}

uint64_t KB::FilterNotSuggestibleForInput::filter_candidates(KB::FilterNotSuggestibleForInput *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(this + 9) != 1)
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 2);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v9 = *(v8 + 8);
  result = WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  v11 = *a2;
  v12 = *(a2 + 1);
  if (*a2 != v12)
  {
    while (1)
    {
      if ((*(*(v11 + 8) + 240 * *v11 - 134) & 0x80) == 0)
      {
        result = KB::CandidateFilter::candidate_matches_input(v11, a3, v9 + 144);
        if (result)
        {
          break;
        }
      }

      v11 += 1000;
      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    KB::Candidate::Candidate(v24, a3);
    v13 = *(a4 + 2);
    if (v13)
    {
      atomic_fetch_add(v13, 1u);
    }

    v14 = *(v13 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::__value_func[abi:nn200100](v23, v14 + 144);
    v15 = *(this + 8);
    v18 = *(this + 8);
    v19 = *(this + 3);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v16 = *(a4 + 7);
    operator new();
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}