void sub_2228A6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  a51 = (a11 + 48);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a51);
  v52 = *(a11 + 24);
  if (v52)
  {
    *(a11 + 32) = v52;
    operator delete(v52);
  }

  v53 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v53;
    operator delete(v53);
  }

  a51 = &a34;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a51);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

const void *nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "tokenText argument is empty");
    goto LABEL_11;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 144), a2);
  if (!v4)
  {
    if (*(a1 + 104))
    {
      v5 = (a1 + 96);
      return *v5;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Encountered unknown token text and the vocabulary hasno special unknown token");
LABEL_11:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  v5 = v4 + 5;
  return *v5;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2228A66F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getExpandedSpanLabels(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int *a4@<X3>, std::string **a5@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (*(v7 + 48))
  {
    nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::convertMatcherNamesToLabelComponents(a1, (v7 + 8), a4, &v47);
    v10 = v50;
    if (v50 >= v51)
    {
      v15 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v49, a2);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v50, *a2, *(a2 + 8));
      }

      else
      {
        v11 = *a2;
        v50->__r_.__value_.__r.__words[2] = *(a2 + 16);
        *&v10->__r_.__value_.__l.__data_ = v11;
      }

      v15 = v10 + 1;
    }

    v50 = v15;
    v16 = v47;
    v17 = v48;
    if (v47 != v48)
    {
      v43 = a5;
      do
      {
        nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getProcessedSpanLabel(*(v7 + 48), a2, v16 + 8, a3, a4, &__p);
        v18 = v50;
        if (v50 >= v51)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v51 - v49) >> 3) > v21)
          {
            v21 = 0x5555555555555556 * ((v51 - v49) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v51 - v49) >> 3) >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          v52.__end_cap_.__value_ = &v49;
          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v49, v22);
          }

          v23 = 8 * ((v50 - v49) >> 3);
          v24 = *&__p.__r_.__value_.__l.__data_;
          *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v23 = v24;
          memset(&__p, 0, sizeof(__p));
          v25 = (24 * v20 + 24);
          v26 = (24 * v20 - (v50 - v49));
          memcpy((v23 - (v50 - v49)), v49, v50 - v49);
          v27 = v49;
          v28 = v51;
          v49 = v26;
          v50 = v25;
          v51 = 0;
          v52.__first_ = v27;
          v52.__end_ = v27;
          v52.__end_cap_.__value_ = v28;
          v52.__begin_ = v27;
          std::__split_buffer<std::string>::~__split_buffer(&v52);
          v50 = v25;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v19 = *&__p.__r_.__value_.__l.__data_;
          v50->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
          *&v18->__r_.__value_.__l.__data_ = v19;
          v50 = v18 + 1;
        }

        v29 = *(v7 + 56);
        if (v29)
        {
          if (*(v29 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v29, *(v29 + 1));
          }

          else
          {
            v30 = *v29;
            __p.__r_.__value_.__r.__words[2] = *(v29 + 2);
            *&__p.__r_.__value_.__l.__data_ = v30;
          }

          v45 = 1;
          nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::makeVocabLabel(a2, v16 + 8, &__p, &v46);
          v31 = v50;
          if (v50 >= v51)
          {
            v33 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v51 - v49) >> 3) > v34)
            {
              v34 = 0x5555555555555556 * ((v51 - v49) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v51 - v49) >> 3) >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v34;
            }

            v52.__end_cap_.__value_ = &v49;
            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v49, v35);
            }

            v36 = (8 * ((v50 - v49) >> 3));
            *v36 = v46;
            v32 = (24 * v33 + 24);
            v37 = (24 * v33 - (v50 - v49));
            memcpy(v36 - (v50 - v49), v49, v50 - v49);
            v38 = v49;
            v39 = v51;
            v49 = v37;
            v50 = v32;
            v51 = 0;
            v52.__first_ = v38;
            v52.__end_ = v38;
            v52.__end_cap_.__value_ = v39;
            v52.__begin_ = v38;
            std::__split_buffer<std::string>::~__split_buffer(&v52);
          }

          else
          {
            *&v50->__r_.__value_.__l.__data_ = *&v46.__r_.__value_.__l.__data_;
            v31->__r_.__value_.__r.__words[2] = v46.__r_.__value_.__r.__words[2];
            v32 = v31 + 1;
          }

          v50 = v32;
          if ((v45 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v16 += 32;
      }

      while (v16 != v17);
      v15 = v50;
      a5 = v43;
    }

    v40 = v51;
    *a5 = v49;
    a5[1] = v15;
    a5[2] = v40;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v52.__first_ = &v47;
    std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&v52);
  }

  else
  {
    v12 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a4;
      if (v13 >= 8)
      {
        v41 = SNLPOSLoggerForCategory(4);
        v14 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v52.__first_) = 136315394;
          *(&v52.__first_ + 4) = "<UNDEFINED_COMPONENT>";
          WORD2(v52.__begin_) = 2048;
          *(&v52.__begin_ + 6) = v13;
          _os_log_impl(&dword_22284A000, v41, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v52, 0x16u);
        }
      }

      else
      {
        v14 = off_2784B6F30[v13];
      }

      LODWORD(v52.__first_) = 136315138;
      *(&v52.__first_ + 4) = v14;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] Warning: encountered span missing label", &v52, 0xCu);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  v52.__first_ = &v49;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v52);
  v42 = *MEMORY[0x277D85DE8];
}

void sub_2228A6BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  a11 = &a25;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a28;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::span_matching::SpanTruncator::truncate(uint64_t result, uint64_t *a2, unsigned int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 < ((a2[1] - *a2) >> 5))
  {
    v5 = result;
    v6 = *(result + 40);
    if (v6 > 6)
    {
      v7 = 4;
    }

    else
    {
      v7 = dword_2229DA4F4[v6];
    }

    v8 = SNLPOSLoggerForCategory(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    v9 = *(v5 + 40);
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = "PSC";
LABEL_26:
          v11 = "[insights-snlp-psc]: ";
          goto LABEL_31;
        }

        v10 = "LVC";
        goto LABEL_15;
      }

      if (v9 == 6)
      {
        v10 = "SSU";
        goto LABEL_30;
      }

      if (v9 == 7)
      {
        v10 = "UNKNOWN";
        goto LABEL_22;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v10 = "UaaP";
          goto LABEL_18;
        }

        v10 = "OWL";
        goto LABEL_28;
      }

      if (!v9)
      {
        v11 = "[insights-snlp-nlv4]: ";
        v10 = "NLv4";
        goto LABEL_31;
      }

      if (v9 == 1)
      {
        v10 = "SNLC";
LABEL_11:
        v11 = "[insights-snlp-snlc]: ";
LABEL_31:
        v13 = (a2[1] - *a2) >> 5;
        v16 = 136315906;
        v17 = v10;
        v18 = 2080;
        v19 = v11;
        v20 = 2048;
        v21 = v13;
        v22 = 1024;
        v23 = a3;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sThe model has received %lu spans. Truncating this list of spans to %u spans.", &v16, 0x26u);
LABEL_32:
        result = nlv4_inference_orchestrator::span_matching::SpanTruncator::truncateSpans(v5, a2, a3);
        goto LABEL_33;
      }
    }

    v15 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "<UNDEFINED_COMPONENT>";
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v16, 0x16u);
    }

    v9 = *(v5 + 40);
    v10 = "<UNDEFINED_COMPONENT>";
    if (v9 > 2)
    {
      if (v9 <= 4)
      {
        if (v9 != 3)
        {
          goto LABEL_26;
        }

LABEL_18:
        v11 = "[insights-snlp-uaap]: ";
        goto LABEL_31;
      }

      if (v9 != 5)
      {
        if (v9 != 6)
        {
          goto LABEL_22;
        }

LABEL_30:
        v11 = "[insights-snlp-ssu]: ";
        goto LABEL_31;
      }

LABEL_15:
      v11 = "[insights-snlp-lvc]: ";
      goto LABEL_31;
    }

    if (!v9)
    {
      v11 = "[insights-snlp-nlv4]: ";
      goto LABEL_31;
    }

    if (v9 == 1)
    {
      goto LABEL_11;
    }

    if (v9 != 2)
    {
LABEL_22:
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v16, 0x16u);
      }

      goto LABEL_31;
    }

LABEL_28:
    v11 = "[insights-snlp-owl]: ";
    goto LABEL_31;
  }

LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::featurize(uint64_t a1, uint64_t a2, uint64_t a3, sirinluexternal::LegacyNLContext *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabels(a1, a4, a3, &v30);
  v5 = 0uLL;
  memset(&v29, 0, sizeof(v29));
  v6 = v31;
  if (v31)
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v29, v6 + 1);
      v6 = *v6;
    }

    while (v6);
    v5 = *&v29.__begin_;
  }

  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v5 + 1) - v5) >> 3));
  if (*(&v5 + 1) == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v5, *(&v5 + 1), v8, 1);
  v9 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v29.__end_ - v29.__begin_) >> 3) > v9)
  {
    v10 = &v29.__begin_[v9];
    memset(&v34, 0, sizeof(v34));
    *buf = &v34;
    buf[8] = 0;
    if (v10 != v29.__end_)
    {
      std::vector<std::string>::__vallocate[abi:ne200100](&v34, 0xAAAAAAAAAAAAAAABLL * ((v29.__end_ - v10) >> 3));
    }

    itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(__p, &v29);
    v11 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 56);
      if (v12 >= 8)
      {
        v14 = SNLPOSLoggerForCategory(4);
        v13 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          *&buf[12] = 2048;
          *&buf[14] = v12;
          _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v13 = off_2784B6F30[v12];
      }

      v15 = *(a1 + 8);
      v16 = __p;
      if (v33 < 0)
      {
        v16 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v29.__end_ - v29.__begin_) >> 3);
      v36 = 2048;
      v37 = v15;
      v38 = 2080;
      v39 = v16;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEFAULT, "[%s] Number of context features (%lu) exceeds maximum limit (%lu): truncating by removing features %s", buf, 0x2Au);
    }

    std::vector<std::string>::resize(&v29, *(a1 + 8));
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    *buf = &v34;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(v27, &v29);
  v18 = (a1 + 56);
  v17 = *(a1 + 56);
  if (v17 > 6)
  {
    v19 = 4;
  }

  else
  {
    v19 = dword_2229DA4F4[v17];
  }

  v20 = SNLPOSLoggerForCategory(v19);
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
LABEL_55:
    itfm_inference_orchestrator::context::Embedder::embed(a1 + 32, &v29);
  }

  v21 = *v18;
  if (*v18 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v22 = "SSU";
        goto LABEL_51;
      }

      if (v21 == 7)
      {
        v22 = "UNKNOWN";
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 == 4)
      {
        v22 = "PSC";
        goto LABEL_47;
      }

      if (v21 == 5)
      {
        v22 = "LVC";
        goto LABEL_35;
      }
    }
  }

  else if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = "OWL";
      goto LABEL_49;
    }

    if (v21 == 3)
    {
      v22 = "UaaP";
      goto LABEL_39;
    }
  }

  else
  {
    if (!v21)
    {
      v23 = "[insights-snlp-nlv4]: ";
      v22 = "NLv4";
      goto LABEL_52;
    }

    if (v21 == 1)
    {
      v22 = "SNLC";
LABEL_30:
      v23 = "[insights-snlp-snlc]: ";
LABEL_52:
      v25 = v27;
      if (v28 < 0)
      {
        v25 = v27[0];
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = v23;
      v36 = 2080;
      v37 = v25;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "[%s] %sITFM context: %s", buf, 0x20u);
      goto LABEL_55;
    }
  }

  v26 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "<UNDEFINED_COMPONENT>";
    *&buf[12] = 2048;
    *&buf[14] = v21;
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
  }

  v21 = *v18;
  v22 = "<UNDEFINED_COMPONENT>";
  if (*v18 > 2)
  {
    if (v21 <= 4)
    {
      if (v21 != 3)
      {
        if (v21 != 4)
        {
          goto LABEL_43;
        }

LABEL_47:
        v23 = "[insights-snlp-psc]: ";
        goto LABEL_52;
      }

LABEL_39:
      v23 = "[insights-snlp-uaap]: ";
      goto LABEL_52;
    }

    if (v21 != 5)
    {
      if (v21 != 6)
      {
        goto LABEL_43;
      }

LABEL_51:
      v23 = "[insights-snlp-ssu]: ";
      goto LABEL_52;
    }

LABEL_35:
    v23 = "[insights-snlp-lvc]: ";
    goto LABEL_52;
  }

  if (!v21)
  {
    v23 = "[insights-snlp-nlv4]: ";
    goto LABEL_52;
  }

  if (v21 == 1)
  {
    goto LABEL_30;
  }

  if (v21 != 2)
  {
LABEL_43:
    v24 = SNLPOSLoggerForCategory(4);
    v23 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }

    goto LABEL_52;
  }

LABEL_49:
  v23 = "[insights-snlp-owl]: ";
  goto LABEL_52;
}

void sub_2228A7BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a58);
  __p = &a20;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabels(itfm_inference_orchestrator::context::ContextFeaturizer *this@<X0>, sirinluexternal::LegacyNLContext *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 80) == 1 && *this <= 1u)
  {
    v9 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(this + 14);
      if (v10 >= 8)
      {
        v12 = SNLPOSLoggerForCategory(4);
        v11 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v11 = off_2784B6F30[v10];
      }

      v13 = *this;
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = v13;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] Warning: Legacy NL context features were supplied, but the asset directory major version (%u) does not support these. These will not be featurized.", buf, 0x12u);
    }
  }

  memset(buf, 0, sizeof(buf));
  v53 = 1065353216;
  if (*(a2 + 80) == 1)
  {
    itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromLegacyNlContext(this, a2, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(buf, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v51[2]);
    v14 = *__p;
    *__p = 0;
    if (v14)
    {
      operator delete(v14);
    }

    if ((*(a2 + 80) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 = *(a2 + 16) != 2;
    v16 = *&buf[24] == 0;
  }

  else
  {
    v16 = 1;
    v15 = 1;
  }

  if (*(a3 + 112) == 1)
  {
    v17 = *(a3 + 8) != *(a3 + 16);
    v18 = *(a3 + 32) != *(a3 + 40);
    if (*(a3 + 88) != *(a3 + 96))
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 1065353216;
LABEL_27:
      v23 = SNLPOSLoggerForCategory(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(this + 14);
        if (v24 >= 8)
        {
          v28 = SNLPOSLoggerForCategory(4);
          v25 = "<UNDEFINED_COMPONENT>";
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "<UNDEFINED_COMPONENT>";
            v50 = 2048;
            *v51 = v24;
            _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
          }
        }

        else
        {
          v25 = off_2784B6F30[v24];
        }

        *__p = 136315138;
        *&__p[4] = v25;
        _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEBUG, "[%s] Using context featurization labels extracted from the NL Context", __p, 0xCu);
      }

      if ((*(a3 + 112) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromNLContext(this, a3, __p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a4, __p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v51[2]);
      v29 = *__p;
      *__p = 0;
      if (v29)
      {
        operator delete(v29);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 73);
      if (*(a2 + 80) == 1)
      {
        v30 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(this + 14);
          if (v31 >= 8)
          {
            v33 = SNLPOSLoggerForCategory(4);
            v32 = "<UNDEFINED_COMPONENT>";
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "<UNDEFINED_COMPONENT>";
              v50 = 2048;
              *v51 = v31;
              _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
            }
          }

          else
          {
            v32 = off_2784B6F30[v31];
          }

          *__p = 136315138;
          *&__p[4] = v32;
          _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_DEBUG, "[%s] Warning: The request's nlContext contains a SDA. Skipping featurization for the legacy context.", __p, 0xCu);
        }
      }

      goto LABEL_55;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  if (v18 || v15 && v17)
  {
    goto LABEL_27;
  }

  v19 = SNLPOSLoggerForCategory(2);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v20)
    {
      v21 = *(this + 14);
      if (v21 >= 8)
      {
        v34 = SNLPOSLoggerForCategory(4);
        v22 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v50 = 2048;
          *v51 = v21;
          _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
        }
      }

      else
      {
        v22 = off_2784B6F30[v21];
      }

      *__p = 136315138;
      *&__p[4] = v22;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] Failed to extract any labels from NL Context or Legacy NL Context", __p, 0xCu);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 70);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 73);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 67);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 64);
  }

  else
  {
    if (v20)
    {
      v26 = *(this + 14);
      if (v26 >= 8)
      {
        v35 = SNLPOSLoggerForCategory(4);
        v27 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v50 = 2048;
          *v51 = v26;
          _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
        }
      }

      else
      {
        v27 = off_2784B6F30[v26];
      }

      *__p = 136315138;
      *&__p[4] = v27;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] SDA not featurized; using featurized labels from Legacy NL Context instead", __p, 0xCu);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 70);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 67);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, this + 64);
    v36 = *&buf[16];
    if (*&buf[16])
    {
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, v36 + 2);
        v36 = *v36;
      }

      while (v36);
    }
  }

LABEL_55:
  for (i = *(a4 + 16); i; i = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a4, i))
  {
    while (1)
    {
      v38 = i + 2;
      v39 = itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(*(this + 2), (i + 2));
      TokenId = itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(*(this + 2), *(this + 2));
      if ((v41 & 1) != 0 && v39 == TokenId)
      {
        break;
      }

      i = *i;
      if (!i)
      {
        goto LABEL_69;
      }
    }

    v42 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(this + 14);
      if (v43 >= 8)
      {
        v45 = SNLPOSLoggerForCategory(4);
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        v44 = "<UNDEFINED_COMPONENT>";
        if (v46)
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v50 = 2048;
          *v51 = v43;
          _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
          v44 = "<UNDEFINED_COMPONENT>";
        }
      }

      else
      {
        v44 = off_2784B6F30[v43];
      }

      if (*(i + 39) < 0)
      {
        v38 = *v38;
      }

      *__p = 136315394;
      *&__p[4] = v44;
      v50 = 2080;
      *v51 = v38;
      _os_log_impl(&dword_22284A000, v42, OS_LOG_TYPE_DEBUG, "[%s] Label '%s' not present in vocabulary. Skipping. (Is this label supported by the provided assets?)", __p, 0x16u);
    }
  }

LABEL_69:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&buf[16]);
  v47 = *buf;
  *buf = 0;
  if (v47)
  {
    operator delete(v47);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2228A848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "tokenText argument is empty");
    goto LABEL_10;
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 == v4)
  {
    v5 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a1);
    if (v4 != v5)
    {
      v4 = v5;
      return *(v4 + 56);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Encountered unknown token text and the vocabulary hasno special unknown token");
LABEL_10:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  return *(v4 + 56);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(uint64_t a1, const void **a2)
{
  if (a1 + 104 == std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a2))
  {
    return 0;
  }

  v4 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(a1 + 96, &v6, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return *(v4 + 56);
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

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  v200 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 24;
  v193 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_184;
      }

      if (v12 == 2)
      {
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1))
        {
          goto LABEL_184;
        }

LABEL_116:
        v129 = *a1;
        v197 = *(a1 + 2);
        v196 = v129;
        v130 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v130;
        v131 = v196;
        v132 = v197;
LABEL_117:
        *(a2 - 1) = v132;
        *v8 = v131;
        goto LABEL_184;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1);
      v128 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 3);
      if (v127)
      {
        if (v128)
        {
          goto LABEL_116;
        }

        v189 = *a1;
        v197 = *(a1 + 2);
        v196 = v189;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 3))
        {
          v131 = *(a1 + 24);
          v196 = v131;
          v132 = *(a1 + 5);
          v197 = v132;
          v190 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 5) = v190;
          goto LABEL_117;
        }

LABEL_184:
        v191 = *MEMORY[0x277D85DE8];
        return;
      }

      if (!v128)
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 24);
      v179 = v196;
      v197 = *(a1 + 5);
      v180 = v197;
      v181 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 5) = v181;
      *(a2 - 1) = v180;
      *v8 = v179;
LABEL_173:
      if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1))
      {
        v182 = *a1;
        v197 = *(a1 + 2);
        v196 = v182;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
      }

      goto LABEL_184;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 9))
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 72);
      v119 = v196;
      v197 = *(a1 + 11);
      v120 = v197;
      v121 = *(a2 - 1);
      *(a1 + 72) = *v8;
      *(a1 + 11) = v121;
      *(a2 - 1) = v120;
      *v8 = v119;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 9, a1 + 6))
      {
        goto LABEL_184;
      }

      v122 = *(a1 + 8);
      v123 = *(a1 + 3);
      *(a1 + 3) = *(a1 + 72);
      *(a1 + 8) = *(a1 + 11);
      *(a1 + 72) = v123;
      *(a1 + 11) = v122;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 6, a1 + 3))
      {
        goto LABEL_184;
      }

      v124 = *(a1 + 5);
      v125 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 3);
      *(a1 + 5) = *(a1 + 8);
      *(a1 + 3) = v125;
      *(a1 + 8) = v124;
      goto LABEL_173;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = a1 + 24;
      v136 = a1 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = a1;
          do
          {
            v139 = v138;
            v138 = v134;
            if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v134, v139))
            {
              v140 = *v138;
              v197 = *(v138 + 2);
              v196 = v140;
              *(v138 + 1) = 0;
              *(v138 + 2) = 0;
              *v138 = 0;
              v141 = v137;
              while (1)
              {
                v142 = &a1[v141];
                *(v142 + 24) = *&a1[v141];
                *(v142 + 5) = *&a1[v141 + 16];
                v142[23] = 0;
                *v142 = 0;
                if (!v141)
                {
                  break;
                }

                v141 -= 24;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, &a1[v141]))
                {
                  v143 = &a1[v141 + 24];
                  goto LABEL_136;
                }
              }

              v143 = a1;
LABEL_136:
              v144 = v196;
              *(v143 + 16) = v197;
              *v143 = v144;
            }

            v134 = v138 + 24;
            v137 += 24;
          }

          while (v138 + 24 != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v183 = a1;
          a1 = v134;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v134, v183))
          {
            v184 = *a1;
            v197 = *(a1 + 2);
            v196 = v184;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = 0;
            v185 = a1;
            do
            {
              v186 = v185 - 24;
              *v185 = *(v185 - 24);
              *(v185 + 2) = *(v185 - 1);
              *(v185 - 1) = 0;
              *(v185 - 24) = 0;
              v187 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v185 - 6);
              v185 = v186;
            }

            while (v187);
            v188 = v196;
            *(v186 + 2) = v197;
            *v186 = v188;
          }

          v134 = a1 + 24;
        }

        while (a1 + 24 != a2);
      }

      goto LABEL_184;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v194 = a2;
        v145 = v13 >> 1;
        v146 = v13 >> 1;
        do
        {
          v147 = v146;
          if (v145 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = &a1[24 * v148];
            if (2 * v146 + 2 < v12 && std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&a1[24 * v148], v149 + 3))
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = &a1[24 * v147];
            if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v149, v150))
            {
              v151 = *v150;
              v197 = *(v150 + 2);
              v196 = v151;
              *(v150 + 1) = 0;
              *(v150 + 2) = 0;
              *v150 = 0;
              do
              {
                v152 = v149;
                v153 = *v149;
                *(v150 + 2) = *(v149 + 2);
                *v150 = v153;
                v149[23] = 0;
                *v149 = 0;
                if (v145 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = &a1[24 * v154];
                v155 = 2 * v148 + 2;
                if (v155 < v12 && std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&a1[24 * v154], v149 + 3))
                {
                  v149 += 24;
                  v154 = v155;
                }

                v150 = v152;
                v148 = v154;
              }

              while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v149, &v196));
              v156 = v196;
              *(v152 + 2) = v197;
              *v152 = v156;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v157 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v158 = v194;
        do
        {
          v159 = 0;
          v160 = v158;
          v192 = *a1;
          *&v198 = *(a1 + 1);
          *(&v198 + 7) = *(a1 + 15);
          v195 = a1[23];
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v161 = a1;
          do
          {
            v162 = &v161[24 * v159];
            v163 = v162 + 24;
            v164 = (2 * v159) | 1;
            v165 = 2 * v159 + 2;
            if (v165 < v157)
            {
              v166 = v162 + 48;
              if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v162 + 3, v162 + 6))
              {
                v163 = v166;
                v164 = v165;
              }
            }

            v167 = *v163;
            *(v161 + 2) = *(v163 + 2);
            *v161 = v167;
            v163[23] = 0;
            *v163 = 0;
            v161 = v163;
            v159 = v164;
          }

          while (v164 <= (v157 - 2) / 2);
          if (v163 == v160 - 24)
          {
            v158 = v160 - 24;
            *v163 = v192;
            v177 = *(&v198 + 7);
            *(v163 + 1) = v198;
            *(v163 + 15) = v177;
            v163[23] = v195;
          }

          else
          {
            v168 = *(v160 - 24);
            v158 = v160 - 24;
            *(v163 + 2) = *(v160 - 1);
            *v163 = v168;
            *(v160 - 3) = v192;
            v169 = v198;
            *(v160 - 9) = *(&v198 + 7);
            *(v160 - 2) = v169;
            *(v160 - 1) = v195;
            v170 = v163 - a1 + 24;
            if (v170 >= 25)
            {
              v171 = (-2 - 0x5555555555555555 * (v170 >> 3)) >> 1;
              v172 = &a1[24 * v171];
              if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v172, v163))
              {
                v173 = *v163;
                v197 = *(v163 + 2);
                v196 = v173;
                *(v163 + 1) = 0;
                *(v163 + 2) = 0;
                *v163 = 0;
                do
                {
                  v174 = v172;
                  v175 = *v172;
                  *(v163 + 2) = *(v172 + 2);
                  *v163 = v175;
                  v172[23] = 0;
                  *v172 = 0;
                  if (!v171)
                  {
                    break;
                  }

                  v171 = (v171 - 1) >> 1;
                  v172 = &a1[24 * v171];
                  v163 = v174;
                }

                while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v172, &v196));
                v176 = v196;
                *(v174 + 2) = v197;
                *v174 = v176;
              }
            }
          }
        }

        while (v157-- > 2);
      }

      goto LABEL_184;
    }

    v14 = v12 >> 1;
    v15 = &a1[24 * (v12 >> 1)];
    if (v11 >= 0xC01)
    {
      v16 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, a1);
      v17 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, v15);
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v197 = *(a1 + 2);
          v196 = v18;
          v19 = *v8;
          *(a1 + 2) = *(a2 - 1);
          *a1 = v19;
        }

        else
        {
          v36 = *a1;
          v197 = *(a1 + 2);
          v196 = v36;
          v37 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v37;
          v38 = v196;
          *(v15 + 2) = v197;
          *v15 = v38;
          if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, v15))
          {
            goto LABEL_28;
          }

          v39 = *v15;
          v197 = *(v15 + 2);
          v196 = v39;
          v40 = *v8;
          *(v15 + 2) = *(a2 - 1);
          *v15 = v40;
        }

        v41 = v196;
        *(a2 - 1) = v197;
        *v8 = v41;
      }

      else if (v17)
      {
        v24 = *v15;
        v197 = *(v15 + 2);
        v196 = v24;
        v25 = *v8;
        *(v15 + 2) = *(a2 - 1);
        *v15 = v25;
        v26 = v196;
        *(a2 - 1) = v197;
        *v8 = v26;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, a1))
        {
          v27 = *a1;
          v197 = *(a1 + 2);
          v196 = v27;
          v28 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v28;
          v29 = v196;
          *(v15 + 2) = v197;
          *v15 = v29;
        }
      }

LABEL_28:
      v42 = &a1[24 * v14 - 24];
      v43 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v42, a1 + 3);
      v44 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v193, v42);
      if (v43)
      {
        if (v44)
        {
          v196 = *(a1 + 24);
          v45 = v196;
          v197 = *(a1 + 5);
          v46 = v197;
          v47 = *(a2 - 4);
          *(a1 + 24) = *v193;
          *(a1 + 5) = v47;
          *(a2 - 4) = v46;
          *v193 = v45;
        }

        else
        {
          v196 = *(a1 + 24);
          v60 = v196;
          v197 = *(a1 + 5);
          v61 = v197;
          v62 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v42;
          *(a1 + 5) = v62;
          *&a1[24 * v14 - 8] = v61;
          *v42 = v60;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v193, v42))
          {
            v63 = *v42;
            v197 = *&a1[24 * v14 - 8];
            v196 = v63;
            v64 = *v193;
            *&a1[24 * v14 - 8] = *(a2 - 4);
            *v42 = v64;
            v65 = v196;
            *(a2 - 4) = v197;
            *v193 = v65;
          }
        }
      }

      else if (v44)
      {
        v48 = *v42;
        v197 = *&a1[24 * v14 - 8];
        v196 = v48;
        v49 = *v193;
        *&a1[24 * v14 - 8] = *(a2 - 4);
        *v42 = v49;
        v50 = v196;
        *(a2 - 4) = v197;
        *v193 = v50;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v42, a1 + 3))
        {
          v196 = *(a1 + 24);
          v51 = v196;
          v197 = *(a1 + 5);
          v52 = v197;
          v53 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v42;
          *(a1 + 5) = v53;
          *&a1[24 * v14 - 8] = v52;
          *v42 = v51;
        }
      }

      v66 = &a1[24 * v14];
      v67 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, a1 + 6);
      v68 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 9, v66 + 3);
      if (v67)
      {
        if (v68)
        {
          v69 = *(a1 + 3);
          v196 = v69;
          v70 = *(a1 + 8);
          v197 = v70;
          v71 = *(a2 - 7);
          *(a1 + 3) = *v9;
          *(a1 + 8) = v71;
        }

        else
        {
          v196 = *(a1 + 3);
          v78 = v196;
          v197 = *(a1 + 8);
          v79 = v197;
          v80 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v80;
          *(v66 + 5) = v79;
          *(v66 + 24) = v78;
          if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 9, v66 + 3))
          {
            goto LABEL_48;
          }

          v81 = *(v66 + 24);
          v197 = *(v66 + 5);
          v196 = v81;
          v82 = *v9;
          *(v66 + 5) = *(a2 - 7);
          *(v66 + 24) = v82;
          v69 = v196;
          v70 = v197;
        }

        *(a2 - 7) = v70;
        *v9 = v69;
      }

      else if (v68)
      {
        v72 = *(v66 + 24);
        v197 = *(v66 + 5);
        v196 = v72;
        v73 = *v9;
        *(v66 + 5) = *(a2 - 7);
        *(v66 + 24) = v73;
        v74 = v196;
        *(a2 - 7) = v197;
        *v9 = v74;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, a1 + 6))
        {
          v196 = *(a1 + 3);
          v75 = v196;
          v197 = *(a1 + 8);
          v76 = v197;
          v77 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v77;
          *(v66 + 5) = v76;
          *(v66 + 24) = v75;
        }
      }

LABEL_48:
      v83 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, v42);
      v84 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, v15);
      if (!v83)
      {
        if (v84)
        {
          v86 = *v15;
          v197 = *(v15 + 2);
          v196 = v86;
          *v15 = *(v66 + 24);
          *(v15 + 2) = *(v66 + 5);
          v87 = v196;
          *(v66 + 5) = v197;
          *(v66 + 24) = v87;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, v42))
          {
            v88 = *v42;
            v197 = *(v42 + 2);
            v196 = v88;
            *v42 = *v15;
            *(v42 + 2) = *(v15 + 2);
            v89 = v196;
            *(v15 + 2) = v197;
            *v15 = v89;
          }
        }

        goto LABEL_57;
      }

      if (v84)
      {
        v85 = *v42;
        v197 = *(v42 + 2);
        v196 = v85;
        *v42 = *(v66 + 24);
        *(v42 + 2) = *(v66 + 5);
      }

      else
      {
        v90 = *v42;
        v197 = *(v42 + 2);
        v196 = v90;
        *v42 = *v15;
        *(v42 + 2) = *(v15 + 2);
        v91 = v196;
        *(v15 + 2) = v197;
        *v15 = v91;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, v15))
        {
LABEL_57:
          v94 = *a1;
          v197 = *(a1 + 2);
          v196 = v94;
          v95 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v95;
          v96 = v196;
          *(v15 + 2) = v197;
          *v15 = v96;
          goto LABEL_58;
        }

        v92 = *v15;
        v197 = *(v15 + 2);
        v196 = v92;
        *v15 = *(v66 + 24);
        *(v15 + 2) = *(v66 + 5);
      }

      v93 = v196;
      *(v66 + 5) = v197;
      *(v66 + 24) = v93;
      goto LABEL_57;
    }

    v20 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, v15);
    v21 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1);
    if (!v20)
    {
      if (v21)
      {
        v30 = *a1;
        v197 = *(a1 + 2);
        v196 = v30;
        v31 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v31;
        v32 = v196;
        *(a2 - 1) = v197;
        *v8 = v32;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, v15))
        {
          v33 = *v15;
          v197 = *(v15 + 2);
          v196 = v33;
          v34 = *a1;
          *(v15 + 2) = *(a1 + 2);
          *v15 = v34;
          v35 = v196;
          *(a1 + 2) = v197;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v197 = *(v15 + 2);
      v196 = v22;
      v23 = *v8;
      *(v15 + 2) = *(a2 - 1);
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v197 = *(v15 + 2);
      v196 = v54;
      v55 = *a1;
      *(v15 + 2) = *(a1 + 2);
      *v15 = v55;
      v56 = v196;
      *(a1 + 2) = v197;
      *a1 = v56;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v197 = *(a1 + 2);
      v196 = v57;
      v58 = *v8;
      *(a1 + 2) = *(a2 - 1);
      *a1 = v58;
    }

    v59 = v196;
    *(a2 - 1) = v197;
    *v8 = v59;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 - 3, a1))
    {
      v97 = *a1;
      v199 = *(a1 + 2);
      v198 = v97;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v98 = a1;
      do
      {
        v99 = v98;
        v98 += 24;
      }

      while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v98, &v198));
      v100 = a2;
      if (v99 == a1)
      {
        v100 = a2;
        do
        {
          if (v98 >= v100)
          {
            break;
          }

          v100 -= 24;
        }

        while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v100, &v198));
      }

      else
      {
        do
        {
          v100 -= 24;
        }

        while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v100, &v198));
      }

      v10 = v98;
      if (v98 < v100)
      {
        v101 = v100;
        do
        {
          v196 = *v10;
          v102 = v196;
          v197 = *(v10 + 2);
          v103 = v197;
          v104 = *(v101 + 2);
          *v10 = *v101;
          *(v10 + 2) = v104;
          *(v101 + 2) = v103;
          *v101 = v102;
          do
          {
            v10 += 24;
          }

          while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v10, &v198));
          do
          {
            v101 -= 24;
          }

          while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v101, &v198));
        }

        while (v10 < v101);
      }

      v105 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v105);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v106;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v107 = v198;
      *(v10 - 1) = v199;
      *v105 = v107;
      if (v98 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2))
      {
        a2 = v10 - 24;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_184;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v199 = *(a1 + 2);
      v198 = v109;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, a2 - 3))
      {
        v10 = a1;
        do
        {
          v10 += 24;
        }

        while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, v10));
      }

      else
      {
        v110 = a1 + 24;
        do
        {
          v10 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, v110);
          v110 = v10 + 24;
        }

        while (!v111);
      }

      v112 = a2;
      if (v10 < a2)
      {
        v112 = a2;
        do
        {
          v112 -= 24;
        }

        while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, v112));
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v197 = *(v10 + 2);
        v196 = v113;
        v114 = *v112;
        *(v10 + 2) = *(v112 + 2);
        *v10 = v114;
        v115 = v196;
        *(v112 + 2) = v197;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, v10));
        do
        {
          v112 -= 24;
        }

        while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v198, v112));
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v198;
      *(v10 - 1) = v199;
      *v116 = v118;
    }
  }

  v133 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
}

uint64_t itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(uint64_t a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "[", 1);
  for (i = *a2; i != a2[1]; i += 24)
  {
    if (i != *a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " ", 1);
    }

    v4 = *(i + 23);
    if (v4 >= 0)
    {
      v5 = i;
    }

    else
    {
      v5 = *i;
    }

    if (v4 >= 0)
    {
      v6 = *(i + 23);
    }

    else
    {
      v6 = *(i + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "]", 1);
  std::stringbuf::str();
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v14);
}

void sub_2228A9A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    result = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (result)
    {
      v17 = result < 0;
    }

    if (!v17)
    {
      return result;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

uint64_t nlv4_inference_orchestrator::span_matching::RelativeThresholdMatchingSpansFilter::filterMatchingSpans@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 1065353216;
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*a2 == v5)
  {
    memset(v55, 0, sizeof(v55));
    v56 = 1065353216;
    goto LABEL_35;
  }

  do
  {
    v7 = v6[5];
    if (!v7 || !*(v7 + 40) || !nlv4_inference_orchestrator::span_matching::hasProbability(v6, (a1 + 8)))
    {
      goto LABEL_30;
    }

    v8 = *(*(**(v6[8] + 56) + 24) + 8);
    v9 = v6[6];
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v55, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      *&v55[16] = *(v9 + 2);
      *v55 = v10;
    }

    v11 = std::__string_hash<char>::operator()[abi:ne200100](&v57, v55);
    v12 = *(&v57 + 1);
    if (!*(&v57 + 1) || ((v13 = v11, v14 = vcnt_s8(*(&v57 + 8)), v14.i16[0] = vaddlv_u8(v14), v15 = v14.u32[0], v14.u32[0] > 1uLL) ? (v11 >= *(&v57 + 1) ? (v16 = v11 % *(&v57 + 1)) : (v16 = v11)) : (v16 = (*(&v57 + 1) - 1) & v11), (v17 = *(v57 + 8 * v16)) == 0 || (v18 = *v17) == 0))
    {
LABEL_27:
      *buf = v55;
      *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v57, v55) + 5) = v8;
      goto LABEL_28;
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v13)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v19 >= v12)
        {
          v19 %= v12;
        }
      }

      else
      {
        v19 &= v12 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_27;
      }

LABEL_24:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](&v57, v18 + 2, v55))
    {
      goto LABEL_24;
    }

    *buf = v55;
    if (*(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v57, v55) + 5) < v8)
    {
      goto LABEL_27;
    }

LABEL_28:
    if ((v55[23] & 0x80000000) != 0)
    {
      operator delete(*v55);
    }

LABEL_30:
    v6 += 11;
  }

  while (v6 != v5);
  v20 = v58;
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  if (v58)
  {
    do
    {
      v21 = *(a1 + 16);
      v22 = *(v20 + 5);
      *buf = v20 + 2;
      *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, v20 + 2) + 5) = v21 * v22;
      v20 = *v20;
    }

    while (v20);
  }

LABEL_35:
  v25 = *(a1 + 8);
  v24 = (a1 + 8);
  v23 = v25;
  if (v25 >= 8)
  {
    v27 = SNLPOSLoggerForCategory(4);
    v26 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      v63 = 2048;
      v64 = v23;
      _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v26 = off_2784B6F30[v23];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v26);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v29 = *a2;
  v28 = *(a2 + 8);
  if (*a2 != v28)
  {
    while (2)
    {
      hasProbability = nlv4_inference_orchestrator::span_matching::hasProbability(v29, v24);
      v31 = 0.0;
      if (hasProbability)
      {
        v31 = *(*(**(v29[8] + 56) + 24) + 8);
      }

      v32 = v29[6];
      if (*(v32 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, *v32, *(v32 + 1));
      }

      else
      {
        v33 = *v32;
        v60.__r_.__value_.__r.__words[2] = *(v32 + 2);
        *&v60.__r_.__value_.__l.__data_ = v33;
      }

      v34 = v29[5];
      if (v34)
      {
        v35 = *(v34 + 40);
        v36 = v35 == 0;
        if (v35 && ((hasProbability ^ 1) & 1) == 0)
        {
          v61 = &v60;
          v36 = v31 > *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v60.__r_.__value_.__l.__data_) + 5);
        }
      }

      else
      {
        v36 = 1;
      }

      v37 = SNLPOSLoggerForCategory(4);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
      if (hasProbability)
      {
        if (v38)
        {
          v39 = __p;
          if (v54 < 0)
          {
            v39 = __p[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v60;
          }

          else
          {
            v40 = v60.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = v39;
          v63 = 2080;
          v64 = v40;
          v65 = 2048;
          v66 = v31;
          v67 = 1024;
          v68 = v36;
          v41 = v37;
          v42 = "[%s] Span %s [score %f] was kept?: %{BOOL}d";
          v43 = 38;
          goto LABEL_65;
        }
      }

      else if (v38)
      {
        v44 = __p;
        if (v54 < 0)
        {
          v44 = __p[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v60;
        }

        else
        {
          v45 = v60.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v44;
        v63 = 2080;
        v64 = v45;
        v65 = 1024;
        LODWORD(v66) = v36;
        v41 = v37;
        v42 = "[%s] Span %s [no score] was kept?: %{BOOL}d";
        v43 = 28;
LABEL_65:
        _os_log_impl(&dword_22284A000, v41, OS_LOG_TYPE_DEBUG, v42, buf, v43);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
        if (!v36)
        {
          goto LABEL_71;
        }
      }

      else if (!v36)
      {
LABEL_71:
        v29 += 11;
        if (v29 == v28)
        {
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

    std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a3, v29);
    goto LABEL_71;
  }

LABEL_72:
  v46 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = __p;
    if (v54 < 0)
    {
      v47 = __p[0];
    }

    v48 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v49 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3);
    *buf = 136315650;
    *&buf[4] = v47;
    v63 = 2048;
    v64 = v48;
    v65 = 2048;
    v66 = *&v49;
    _os_log_impl(&dword_22284A000, v46, OS_LOG_TYPE_DEBUG, "[%s] Span filtering: %lu out of %lu spans kept", buf, 0x20u);
  }

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v55);
  result = std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&v57);
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228AA20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

void std::__tree<unsigned long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long>::destroy(*a1);
    std::__tree<unsigned long>::destroy(a1[1]);

    operator delete(a1);
  }
}

void nlv4_inference_orchestrator::vocabulary::Vocabulary::getPadToken(nlv4_inference_orchestrator::vocabulary::Vocabulary *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 30))
  {
    if (*(this + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 24);
      a2->__r_.__value_.__r.__words[2] = *(this + 5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  a2[1].__r_.__value_.__s.__data_[0] = v3;
}

uint64_t *std::vector<float>::resize(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, v11);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2229D1B30)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2229D1B20)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::featurizeSpans(uint64_t a1@<X0>, const sirinluinternal::MatchingSpan **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8)))
  {
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8));
    if (!v10)
    {
      goto LABEL_11;
    }

    if (*(v10 + 16) == 1)
    {
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8));
      if (v11)
      {
        if (*(v11 + 16) == 1)
        {
          v12 = *(v11 + 10);
          a5[1] = 0u;
          a5[2] = 0u;
          *a5 = 0u;
          nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::featurize((a1 + 784), a5, a2, a3, a4, v12);
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_11:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "The NLv4 model config does not contain a setting for the maximum number of matching spans, max_num_spans_tokens.  Inference cannot continue.");
  exception = __cxa_allocate_exception(0x10uLL);
  if (v17 >= 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = v16[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, v14);
  std::runtime_error::runtime_error(exception, &v15);
  exception->__vftable = &unk_2835E9238;
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

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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

uint64_t psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaMessagePayloadPromptOverride@<X0>(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[56] = 0;
  result = *(a2 + 32);
  if (result)
  {
    result = snlp::common::text_uso_graph::isMessageContentPrompt(result);
    if (result)
    {
      v6 = 0;
      psc_inference_orchestrator::orchestration::PSCOverrideGenerator::buildPSCOverrideITFMResponse(a1, &v6, buf);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228AAA08(_Unwind_Exception *exception_object)
{
  v4 = v3;
  *(v2 + 8) = v4;
  if (*(v1 + 56) == 1)
  {
    MEMORY[0x223DC3310](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::selflogging::logBackgroundUpdateStarted(uint64_t a1)
{
  v2 = [SNLPSSUSELFLoggingUtils logBackgroundUpdateStarted:snlp::ssu::selflogging::convertBackgroundUpdateType(a1)];
  v3 = v2;
  if (v2 && [v2 hasLowInt] && (objc_msgSend(v3, "hasHighInt") & 1) != 0)
  {
    v1 = [v3 lowInt];
    [v3 highInt];
  }

  return v1;
}

void *std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    do
    {
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void snlp::ssu::matcher::SSUMatcher::handleUserShortcutsDatabaseChanged(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 344));
  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Handling user shortcuts database change with %lu total configured shortcuts.", &v6, 0xCu);
  }

  snlp::ssu::matcher::SSUPersister::updateCacheForUserShortcutsIfRequired(a1 + 64, a2);
}

void snlp::ssu::usershortcut::computeHash(uint64_t *a1)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v1 = *a1;
  v2 = a1[1];
  v23 = &v33;
  v24 = 0;
  if (v2 != v1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 4);
    if (v3 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v3);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(0, 0, &v30, 0, 0, 0);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<double>::reserve(&v30, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4));
  v4 = v33;
  v5 = v34;
  if (v33 == v34)
  {
    v11 = v31;
  }

  else
  {
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](&v23, v4);
      v7 = v4 + 24;
      v8 = std::__string_hash<char>::operator()[abi:ne200100](&v23, v7);
      v9 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47)) + 3864292196u));
      v10 = v31;
      if (v31 >= v32)
      {
        v12 = v30;
        v13 = v31 - v30;
        v14 = v31 - v30;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v16 = v32 - v30;
        if ((v32 - v30) >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v30, v17);
        }

        *(8 * v14) = v9;
        v11 = (8 * v14 + 8);
        memcpy(0, v12, v13);
        v18 = v30;
        v30 = 0;
        v31 = v11;
        v32 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v31 = v9;
        v11 = v10 + 1;
      }

      v31 = v11;
      v4 = v7 + 24;
    }

    while (v4 != v5);
  }

  v19 = v30;
  if (v30 == v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = *v19++;
      v20 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v21) ^ ((0xC6A4A7935BD1E995 * v21) >> 47))) ^ v20);
    }

    while (v19 != v11);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v23);
  *(&v25 + *(v25 - 24) + 8) = *(&v25 + *(v25 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x223DC4940](&v25, v20);
  std::stringbuf::str();
  v23 = *MEMORY[0x277D82818];
  v22 = *(MEMORY[0x277D82818] + 72);
  *(&v23 + *(v23 - 3)) = *(MEMORY[0x277D82818] + 64);
  v25 = v22;
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](&v29);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v23 = &v33;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v23);
}

void sub_2228AB348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v13 = *(v11 - 136);
  if (v13)
  {
    *(v11 - 128) = v13;
    operator delete(v13);
  }

  a11 = (v11 - 112);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUPersister::updateCacheForUserShortcutsIfRequired(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  snlp::ssu::usershortcut::computeHash(a2);
  snlp::ssu::matcher::SSUPersister::userShortcutsRequireUpdate();
}

void sub_2228AB7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 145) < 0)
  {
    operator delete(*v36);
  }

  _Unwind_Resume(exception_object);
}

BOOL snlp::ssu::usershortcut::operator<(const void **a1, const void **a2)
{
  v4 = *(a2 + 23);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v4 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v4 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  v12 = v6 < v8;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    return 1;
  }

  if (v6 != v8 || memcmp(v7, v9, v6))
  {
    return 0;
  }

  v16 = a2[3];
  v15 = a2 + 3;
  v14 = v16;
  v17 = *(v15 + 23);
  v20 = a1[3];
  v19 = a1 + 3;
  v18 = v20;
  v21 = *(v19 + 23);
  v22 = v21 >= 0 ? *(v19 + 23) : v19[1];
  v23 = v21 >= 0 ? v19 : v18;
  v24 = v17 >= 0 ? *(v15 + 23) : v15[1];
  v25 = v17 >= 0 ? v15 : v14;
  v26 = (v24 >= v22 ? v22 : v24);
  v27 = memcmp(v23, v25, v26);
  v28 = v22 < v24;
  if (v27)
  {
    return v27 < 0;
  }

  return v28;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v54 = &v55;
      v55 = 0;
      v11 = a2 - 6;
      if (snlp::ssu::usershortcut::operator<(a2 - 6, result))
      {
        v12 = *v11;
        *(v5 + 16) = *(a2 - 4);
        *v5 = v12;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v11 = 0;
        v13 = *(a2 - 3);
        *(v5 + 40) = *(a2 - 1);
        *(v5 + 24) = v13;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        v14 = *v8;
        *(v5 + 64) = v8[2];
        *(v5 + 48) = v14;
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        v15 = v8 + 3;
      }

      else
      {
        v31 = *v8;
        *(v5 + 16) = v8[2];
        *v5 = v31;
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        v32 = *(v8 + 3);
        *(v5 + 40) = v8[5];
        *(v5 + 24) = v32;
        v8[4] = 0;
        v8[5] = 0;
        v8[3] = 0;
        v33 = *v11;
        *(v5 + 64) = *(a2 - 4);
        *(v5 + 48) = v33;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v11 = 0;
        v15 = a2 - 3;
      }

      v34 = *v15;
      *(v5 + 88) = v15[2];
      *(v5 + 72) = v34;
      v15[1] = 0;
      v15[2] = 0;
      *v15 = 0;
      v55 = 1;
    }

    else
    {
      if (a4 == 1)
      {
        v9 = *result;
        *(a5 + 16) = result[2];
        *a5 = v9;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v10 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v10;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        return result;
      }

      if (a4 > 8)
      {
        v36 = &result[6 * (a4 >> 1)];
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(result, v36, a3, a4 >> 1, a5, a4 >> 1);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(&v8[6 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v5 + 48 * (a4 >> 1), a4 - (a4 >> 1));
        v37 = 0;
        v53 = v5;
        v54 = &v55;
        v55 = 0;
        v38 = v36;
        while (v38 != a2)
        {
          if (snlp::ssu::usershortcut::operator<(v38, v8))
          {
            v39 = *v38;
            *(v5 + 16) = v38[2];
            *v5 = v39;
            v38[1] = 0;
            v38[2] = 0;
            *v38 = 0;
            v40 = *(v38 + 3);
            *(v5 + 40) = v38[5];
            *(v5 + 24) = v40;
            v38[4] = 0;
            v38[5] = 0;
            v38[3] = 0;
            v38 += 6;
          }

          else
          {
            v41 = *v8;
            *(v5 + 16) = v8[2];
            *v5 = v41;
            v8[1] = 0;
            v8[2] = 0;
            *v8 = 0;
            v42 = *(v8 + 3);
            *(v5 + 40) = v8[5];
            *(v5 + 24) = v42;
            v8[4] = 0;
            v8[5] = 0;
            v8[3] = 0;
            v8 += 6;
          }

          v55 = ++v37;
          v5 += 48;
          if (v8 == v36)
          {
            if (v38 == a2)
            {
              goto LABEL_45;
            }

            v43 = 0;
            do
            {
              v44 = &v38[v43];
              v45 = v5 + v43 * 8;
              v46 = *&v38[v43];
              *(v45 + 16) = v38[v43 + 2];
              *v45 = v46;
              v44[1] = 0;
              v44[2] = 0;
              *v44 = 0;
              v47 = *&v38[v43 + 3];
              *(v45 + 40) = v38[v43 + 5];
              *(v45 + 24) = v47;
              v44[4] = 0;
              v44[5] = 0;
              v44[3] = 0;
              ++v37;
              v43 += 6;
            }

            while (v44 + 6 != a2);
            goto LABEL_44;
          }
        }

        if (v8 == v36)
        {
          goto LABEL_45;
        }

        v48 = 0;
        do
        {
          v49 = v5 + v48 * 8;
          v50 = &v8[v48];
          v51 = *&v8[v48];
          *(v49 + 16) = v8[v48 + 2];
          *v49 = v51;
          v50[1] = 0;
          v50[2] = 0;
          *v50 = 0;
          v52 = *&v8[v48 + 3];
          *(v49 + 40) = v8[v48 + 5];
          *(v49 + 24) = v52;
          v50[4] = 0;
          v50[5] = 0;
          v50[3] = 0;
          ++v37;
          v48 += 6;
        }

        while (v50 + 6 != v36);
LABEL_44:
        v55 = v37;
      }

      else
      {
        if (result == a2)
        {
          return result;
        }

        v53 = a5;
        v54 = &v55;
        v16 = *result;
        *(a5 + 16) = result[2];
        *a5 = v16;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v17 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v17;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        v55 = 1;
        v18 = (result + 6);
        if (result + 6 != a2)
        {
          v19 = 0;
          v20 = a5;
          do
          {
            v21 = v18;
            v22 = (v20 + 48);
            if (snlp::ssu::usershortcut::operator<(v18, v20))
            {
              *v22 = *v20;
              *(v20 + 64) = *(v20 + 16);
              *v20 = 0;
              *(v20 + 8) = 0;
              v23 = *(v20 + 24);
              *(v20 + 16) = 0;
              *(v20 + 24) = 0;
              *(v20 + 72) = v23;
              *(v20 + 88) = *(v20 + 40);
              ++v55;
              v24 = v5;
              *(v20 + 32) = 0;
              *(v20 + 40) = 0;
              if (v20 != v5)
              {
                v25 = v19;
                while (1)
                {
                  v24 = v5 + v25;
                  if (!snlp::ssu::usershortcut::operator<(v21, (v5 + v25 - 48)))
                  {
                    break;
                  }

                  if (*(v24 + 23) < 0)
                  {
                    operator delete(*v24);
                  }

                  v26 = v5 + v25;
                  *v24 = *(v5 + v25 - 48);
                  *(v24 + 16) = *(v5 + v25 - 32);
                  *(v5 + v25 - 25) = 0;
                  *(v24 - 48) = 0;
                  if (*(v5 + v25 + 47) < 0)
                  {
                    operator delete(*(v26 + 24));
                  }

                  *(v26 + 24) = *(v26 - 24);
                  *(v26 + 40) = *(v26 - 8);
                  *(v26 - 1) = 0;
                  *(v26 - 24) = 0;
                  v25 -= 48;
                  if (!v25)
                  {
                    v24 = v5;
                    break;
                  }
                }
              }

              if (*(v24 + 23) < 0)
              {
                operator delete(*v24);
              }

              v27 = *v21;
              *(v24 + 16) = v21[2];
              *v24 = v27;
              *(v8 + 71) = 0;
              *v21 = 0;
              if (*(v24 + 47) < 0)
              {
                operator delete(*(v24 + 24));
              }

              v28 = *(v8 + 9);
              *(v24 + 40) = v8[11];
              *(v24 + 24) = v28;
              *(v8 + 95) = 0;
              *(v8 + 72) = 0;
            }

            else
            {
              v29 = *v21;
              *(v20 + 64) = v21[2];
              *v22 = v29;
              v21[1] = 0;
              v21[2] = 0;
              *v21 = 0;
              v30 = *(v8 + 9);
              *(v20 + 88) = v8[11];
              *(v20 + 72) = v30;
              v8[10] = 0;
              v8[11] = 0;
              v8[9] = 0;
              ++v55;
            }

            v18 = v21 + 6;
            v19 += 48;
            v20 += 48;
            v8 = v21;
          }

          while (v21 + 6 != a2);
        }
      }
    }

LABEL_45:
    v53 = 0;
    return std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v53);
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (snlp::ssu::usershortcut::operator<(a2 - 6, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(a1, (a2 - 6));
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v15 = (a1 + 6);
        if (a1 + 6 != a2)
        {
          v16 = 0;
          v17 = a1;
          do
          {
            v18 = v15;
            if (snlp::ssu::usershortcut::operator<(v15, v17))
            {
              v44 = *v18;
              v45 = v18[2];
              v18[1] = 0;
              v18[2] = 0;
              *v18 = 0;
              v46 = *(v17 + 9);
              v47 = v17[11];
              v17[9] = 0;
              v17[10] = 0;
              v17[11] = 0;
              v19 = v16;
              while (1)
              {
                v20 = v19;
                v21 = (a1 + v19);
                if (*(v21 + 71) < 0)
                {
                  operator delete(v21[6]);
                }

                *(v21 + 3) = *v21;
                v21[8] = v21[2];
                *(v21 + 23) = 0;
                *v21 = 0;
                if (*(v21 + 95) < 0)
                {
                  operator delete(v21[9]);
                }

                v22 = a1 + v20;
                v23 = *(a1 + v20 + 24);
                v21[11] = *(a1 + v20 + 40);
                *(v21 + 9) = v23;
                v22[47] = 0;
                v22[24] = 0;
                if (!v20)
                {
                  break;
                }

                v19 = v20 - 48;
                if (!snlp::ssu::usershortcut::operator<(&v44, (a1 + v20 - 48)))
                {
                  v24 = (a1 + v20);
                  v25 = a1 + v20 + 24;
                  goto LABEL_26;
                }
              }

              v25 = (v22 + 24);
              v24 = a1;
LABEL_26:
              if (*(v24 + 23) < 0)
              {
                operator delete(*v24);
              }

              *v24 = v44;
              v24[2] = v45;
              if (*(v24 + 47) < 0)
              {
                operator delete(*v25);
              }

              *v25 = v46;
              *(v25 + 16) = v47;
            }

            v15 = v18 + 6;
            v16 += 48;
            v17 = v18;
          }

          while (v18 + 6 != a2);
        }
      }
    }

    else
    {
      v10 = a5;
      v12 = a4 >> 1;
      v13 = &a1[6 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v43 = 0;
        *&v44 = a5;
        *(&v44 + 1) = &v43;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5);
        v43 = a4 >> 1;
        v26 = a4 - v12;
        v27 = v10 + 48 * v12;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(&a1[6 * (a4 >> 1)], a2, a3, v26, v27);
        v43 = a4;
        v28 = v10 + 48 * a4;
        v29 = a1 + 23;
        v30 = v27;
        while (v30 != v28)
        {
          v31 = (v29 - 23);
          v32 = snlp::ssu::usershortcut::operator<(v30, v10);
          v33 = *v29;
          if (v32)
          {
            if (v33 < 0)
            {
              operator delete(*v31);
            }

            v34 = *v30;
            *(v29 - 7) = *(v30 + 16);
            *v31 = v34;
            *(v30 + 23) = 0;
            *v30 = 0;
            if (v29[24] < 0)
            {
              operator delete(*(v29 + 1));
            }

            v35 = *(v30 + 24);
            *(v29 + 17) = *(v30 + 40);
            *(v29 + 1) = v35;
            *(v30 + 47) = 0;
            *(v30 + 24) = 0;
            v30 += 48;
          }

          else
          {
            if (v33 < 0)
            {
              operator delete(*v31);
            }

            v36 = *v10;
            *(v29 - 7) = *(v10 + 16);
            *v31 = v36;
            *(v10 + 23) = 0;
            *v10 = 0;
            if (v29[24] < 0)
            {
              operator delete(*(v29 + 1));
            }

            v37 = *(v10 + 24);
            *(v29 + 17) = *(v10 + 40);
            *(v29 + 1) = v37;
            *(v10 + 47) = 0;
            *(v10 + 24) = 0;
            v10 += 48;
          }

          v29 += 48;
          if (v10 == v27)
          {
            while (v30 != v28)
            {
              if (*v29 < 0)
              {
                operator delete(*(v29 - 23));
              }

              v41 = *v30;
              *(v29 - 7) = *(v30 + 16);
              *(v29 - 23) = v41;
              *(v30 + 23) = 0;
              *v30 = 0;
              if (v29[24] < 0)
              {
                operator delete(*(v29 + 1));
              }

              v42 = *(v30 + 24);
              *(v29 + 17) = *(v30 + 40);
              *(v29 + 1) = v42;
              *(v30 + 47) = 0;
              *(v30 + 24) = 0;
              v30 += 48;
              v29 += 48;
            }

            goto LABEL_61;
          }
        }

        while (v10 != v27)
        {
          v38 = (v29 - 23);
          if (*v29 < 0)
          {
            operator delete(*v38);
          }

          v39 = *v10;
          *(v29 - 7) = *(v10 + 16);
          *v38 = v39;
          *(v10 + 23) = 0;
          *v10 = 0;
          if (v29[24] < 0)
          {
            operator delete(*(v29 + 1));
          }

          v40 = *(v10 + 24);
          *(v29 + 17) = *(v10 + 40);
          *(v29 + 1) = v40;
          *(v10 + 47) = 0;
          *(v10 + 24) = 0;
          v10 += 48;
          v29 += 48;
        }

LABEL_61:
        std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v44);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(v13, a2, a3, v14, v10, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, v13, a2, v12, v14, v10, a6);
      }
    }
  }
}

void sub_2228AC318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        ++v4;
        v5 += 48;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2228AC770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<snlp::ssu::cache::SSUCacheFileVersion>::~optional(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUPersister::lookupExistingCacheVersion(uint64_t a1@<X0>, std::__fs::filesystem::path *a2@<X1>, std::string *a3@<X8>)
{
  snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(*(a1 + 32), (a1 + 8), a2, v8);
  v4 = v8[0];
  if (v8[0] == v8[1])
  {
    v6 = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (*(v8[0] + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(v8[0] + 32), *(v8[0] + 40));
    }

    else
    {
      v5 = *(v8[0] + 32);
      a3->__r_.__value_.__r.__words[2] = *(v8[0] + 48);
      *&a3->__r_.__value_.__l.__data_ = v5;
    }

    if (*(v4 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a3 + 1, *(v4 + 56), *(v4 + 64));
    }

    else
    {
      v7 = *(v4 + 56);
      a3[1].__r_.__value_.__r.__words[2] = *(v4 + 72);
      *&a3[1].__r_.__value_.__l.__data_ = v7;
    }

    v6 = 1;
  }

  a3[2].__r_.__value_.__s.__data_[0] = v6;
  v9 = v8;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_2228AC860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  a12 = &a9;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(uint64_t a1@<X0>, std::string *a2@<X1>, std::__fs::filesystem::path *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(a1, a2, &a3->__pn_, &v43.__pn_);
  v41 = 0uLL;
  v42 = 0;
  std::recursive_mutex::lock((a1 + 24));
  std::__fs::filesystem::__status(&v43, 0);
  if (v47[0] == 2)
  {
    MEMORY[0x223DC4A70](&v39, &v43, 0, 0);
    v7 = v39;
    v8 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = v40;
      v38.__imp_.__ptr_ = v7;
      v38.__imp_.__cntrl_ = v8;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v38.__imp_.__ptr_ = v39;
      v38.__imp_.__cntrl_ = 0;
    }

    while (v38.__imp_.__ptr_)
    {
      v10 = std::__fs::filesystem::directory_iterator::__dereference(&v38);
      v11 = v10;
      if (((1 << v10[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
      {
        std::__fs::filesystem::__status(v10, 0);
        v12 = v47[0];
      }

      else
      {
        v12 = v10[3].__pn_.__r_.__value_.__s.__data_[0];
      }

      if (v12 == 1)
      {
        if (SHIBYTE(v11->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v11->__pn_.__r_.__value_.__l.__data_, v11->__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          pn = v11->__pn_;
        }

        snlp::ssu::cache::SSUCacheDirectory::buildResultForCacheFile(a1, a3, &v43, &pn);
      }

      v13 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = &v43;
        if ((v43.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v43.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v11->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v11->__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v14;
        v45 = 2080;
        v46 = v15;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "Found non-regular-file entry in directory %s: %s. Skipping.", buf, 0x16u);
      }

      std::__fs::filesystem::directory_iterator::__increment(&v38, 0);
    }

    if (v38.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38.__imp_.__cntrl_);
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    std::recursive_mutex::unlock((a1 + 24));
    v16 = v41;
    if (v41 == *(&v41 + 1))
    {
      v33 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = &v43;
        if ((v43.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v43.__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Could not find any cache files in directory: %s", buf, 0xCu);
      }
    }

    else
    {
      v36 = v41;
      v17 = *(v41 + 55);
      if (v17 >= 0)
      {
        v18 = *(v41 + 55);
      }

      else
      {
        v18 = *(v41 + 40);
      }

      v19 = (v41 + 79);
      while (1)
      {
        v20 = *(v19 - 24);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v19 - 39);
        }

        if (v18 != v20)
        {
          break;
        }

        v22 = v17 >= 0 ? (v16 + 32) : *(v16 + 32);
        v23 = v21 >= 0 ? v19 - 47 : *(v19 - 47);
        if (memcmp(v22, v23, v18))
        {
          break;
        }

        v24 = *(v16 + 79);
        if (v24 >= 0)
        {
          v25 = *(v16 + 79);
        }

        else
        {
          v25 = *(v16 + 64);
        }

        v26 = *v19;
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(v19 - 15);
        }

        if (v25 != v26)
        {
          break;
        }

        v28 = v24 >= 0 ? (v16 + 56) : *(v16 + 56);
        v29 = v27 >= 0 ? v19 - 23 : *(v19 - 23);
        if (memcmp(v28, v29, v25))
        {
          break;
        }

        v30 = v19 + 25;
        v19 += 104;
        if (v30 == *(&v16 + 1))
        {
          *a4 = v36;
          *(a4 + 16) = v42;
          v42 = 0;
          v41 = 0uLL;
          goto LABEL_68;
        }
      }

      v31 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = &v43;
        if ((v43.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v43.__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v32;
        _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Encountered cache files of different versions in directory: %s", buf, 0xCu);
      }
    }

    snlp::ssu::cache::SSUCacheDirectory::healByRemovingDirectory(a1, &v43);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    std::recursive_mutex::unlock((a1 + 24));
  }

LABEL_68:
  *buf = &v41;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v43.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__pn_.__r_.__value_.__l.__data_);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2228ACEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void **buf)
{
  buf = &a25;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2228ACF50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34)
{
  std::optional<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~optional(&a34);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::recursive_mutex::unlock((v34 + 24));
  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = (*(*v37 + 16))(v37);
      LODWORD(a34) = 136315138;
      *(&a34 + 4) = v39;
      _os_log_impl(&dword_22284A000, v38, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &a34, 0xCu);
    }

    *a10 = 0;
    a10[1] = 0;
    a10[2] = 0;
    __cxa_end_catch();
    JUMPOUT(0x2228ACE90);
  }

  JUMPOUT(0x2228ACEFCLL);
}

void snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(snlp::ssu::cache::SSUCacheDirectory *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(a1, &v10);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v8.__pn_, a2);
  std::__fs::filesystem::operator/[abi:ne200100](&v9, &v10, &v8);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a3);
  std::__fs::filesystem::operator/[abi:ne200100](a4, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2228AD130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(snlp::ssu::cache::SSUCacheDirectory *this@<X0>, std::string *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::SSUCacheDirectory::kLocalesDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](a2, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2228AD1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2228AD6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlv4_inference_orchestrator::orchestration::Token::~Token(&STACK[0x2A0]);
  nlv4_inference_orchestrator::orchestration::Token::~Token(&a65);
  nlv4_inference_orchestrator::orchestration::Token::~Token(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      v13 = *(a2 + v7 + 35);
      *(a4 + v7 + 56) = 0;
      v14 = a4 + v7 + 56;
      *(v14 - 21) = v13;
      *(v14 - 32) = v12;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *(a2 + v7 + 56), *(a2 + v7 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 64) - *(a2 + v7 + 56)) >> 3));
      v15 = *(a2 + v7 + 96);
      *(v11 + 80) = *(a2 + v7 + 80);
      *(v11 + 96) = v15;
      v7 += 112;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2228AD94C(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddings(nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator *this, const nlv4_inference_orchestrator::orchestration::EmbedderRequest *a2)
{
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Request Preprocess", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Request Preprocess", buf, 2u);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::preprocessRequest(this, a2);
}

void sub_2228ADDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(&a39);
  nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput::~BertPreprocessingOutput(&a69);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::reformulateTokens(uint64_t a1@<X0>, const nlv4_inference_orchestrator::orchestration::Token **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(a3, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  v6 = *a2;
  for (i = a2[1]; v6 != i; v6 = (v6 + 112))
  {
    nlv4_inference_orchestrator::pre_processing::Reformulator::applyReformulationToToken((a1 + 192), v6, __p);
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v12 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(a3, __p);
    }

    else
    {
      v9 = *__p;
      *(v8 + 16) = v14;
      *v8 = v9;
      __p[1] = 0;
      v14 = 0;
      __p[0] = 0;
      v10 = *(v15 + 11);
      *(v8 + 24) = v15[0];
      *(v8 + 35) = v10;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v8 + 56) = v16;
      *(v8 + 72) = v17;
      v16 = 0uLL;
      v17 = 0;
      v11 = v19;
      *(v8 + 80) = v18;
      *(v8 + 96) = v11;
      v12 = v8 + 112;
    }

    a3[1] = v12;
    v20 = &v16;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2228ADF58(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

void *std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *(v6 + 24);
      *(a4 + 35) = *(v6 + 35);
      *(a4 + 24) = v8;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      v9 = *(v6 + 96);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = v9;
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v5);
      v5 += 112;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<nlv4_inference_orchestrator::orchestration::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::pre_processing::Reformulator::applyReformulationToToken(nlv4_inference_orchestrator::pre_processing::Reformulator *this@<X0>, const nlv4_inference_orchestrator::orchestration::Token *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6 != v7)
  {
    while (1)
    {
      v8 = *(a2 + 23);
      if ((v8 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 1);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      memset(__p, 0, 41);
      v10 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v9, &v9[v8], __p, v6);
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v10)
      {
        break;
      }

      v6 += 88;
      if (v6 == v7)
      {
        goto LABEL_26;
      }
    }

    memset(__p, 0, 24);
    v11 = *(a2 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 1);
    }

    if (*(v6 + 87) >= 0)
    {
      v13 = (v6 + 64);
    }

    else
    {
      v13 = *(v6 + 64);
    }

    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(__p, v12, &v12[v11], v6, v13);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v15 = __p[0];
  }

LABEL_26:
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 1));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 2);
  }

  *(a3 + 56) = 0;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 35) = *(a2 + 35);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3 + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  v14 = *(a2 + 6);
  *(a3 + 80) = *(a2 + 5);
  *(a3 + 96) = v14;
  std::string::operator=(a3, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_2228AE31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>::construct[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token,nlv4_inference_orchestrator::orchestration::Token const&,0>(std::string *this, __int128 *a2)
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
  v6 = *(a2 + 35);
  this[2].__r_.__value_.__l.__size_ = 0;
  *(&this[1].__r_.__value_.__r.__words[1] + 3) = v6;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  result = a2[5];
  v8 = a2[6];
  *&this[3].__r_.__value_.__r.__words[1] = result;
  *&this[4].__r_.__value_.__l.__data_ = v8;
  return result;
}

void sub_2228AE410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordTokenChain@<X0>(uint64_t a1@<X0>, void *a2@<X1>, sirinluinternal::SubwordTokenChain *a3@<X8>)
{
  sirinluinternal::SubwordTokenChain::SubwordTokenChain(a3);
  result = (*(**(*(a1 + 184) + 8) + 16))(*(*(a1 + 184) + 8));
  if (result && *a2 != a2[1])
  {
    nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(*(a1 + 184));
    v6 = *a2;
    if (*(*a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      v12.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v12.__r_.__value_.__l.__data_ = v7;
    }

    v8 = a2[1];
    if (*(v8 - 89) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(v8 - 112), *(v8 - 104));
    }

    else
    {
      v9 = *(v8 - 112);
      v11.__r_.__value_.__r.__words[2] = *(v8 - 96);
      *&v11.__r_.__value_.__l.__data_ = v9;
    }

    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordToken(&v12, 0, 0, v10);
    PB::PtrVector<sirinluinternal::SubwordToken>::emplace_back<sirinluinternal::SubwordToken&>();
  }

  return result;
}

void sub_2228AE714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  MEMORY[0x223DC3200](v28);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  v1 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "max_seq_length");
  v2 = (*(*v1 + 8))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2228AE82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::basic_string<char16_t>>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordToken@<X0>(const std::string *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  sirinluinternal::SubwordToken::SubwordToken(a4);
  v8 = *(a4 + 8);
  if (!v8)
  {
    operator new();
  }

  result = std::string::operator=(v8, a1);
  *(a4 + 24) |= 3u;
  *(a4 + 16) = a3;
  *(a4 + 20) = a2;
  return result;
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordTokens(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    memset(v6, 0, sizeof(v6));
    nl_sentencepiece::SentencepieceModel::encodeUtterance(a3, **(a1 + 16), a2);
    v7 = v6;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2228AEB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void nl_sentencepiece::SentencepieceModel::encodeUtterance(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  (*(*a2 + 136))(v7, a2, v5, v6, a1);
  sentencepiece::util::Status::~Status(v7);
}

void sub_2228AEBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceText::SentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2835E3280;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  return a1;
}

void sub_2228AEC90(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::forward(E5RT::ExecutionStreamOperation **this, const nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v4 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Executing reshapable E5-ML inference.", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::BertModuleInputType(buf, a2);
  if (v73 != 1 || v71 == v72)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v69, "sequence Length tensor incorrectly specified for Dynamic E5ML module, Bert reshape failed!");
    std::runtime_error::runtime_error(exception, &v69);
    exception->__vftable = &unk_2835E9238;
  }

  nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::reshapeStream(this, *v71, &v69);
  v5 = SNLPOSLoggerForCategory(7);
  v6 = os_signpost_id_generate(v5);
  v7 = SNLPOSLoggerForCategory(7);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Reshaping Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v9 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN Reshaping Bert E5ML Inference network", v68, 2u);
  }

  v10 = this[76];
  E5RT::ExecutionStreamOperation::ReshapeOperation();
  v11 = SNLPOSLoggerForCategory(7);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v11))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v12, OS_SIGNPOST_INTERVAL_END, v6, "Reshaping Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v13 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "END Reshaping Bert E5ML Inference network", v68, 2u);
  }

  v14 = SNLPOSLoggerForCategory(7);
  v15 = os_signpost_id_generate(v14);
  v16 = SNLPOSLoggerForCategory(7);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Binding to Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v18 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN Binding to Bert E5ML Inference network", v68, 2u);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(this + 54);
  v19 = SNLPOSLoggerForCategory(7);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v19))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v20, OS_SIGNPOST_INTERVAL_END, v15, "Binding to Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v21 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEFAULT, "END Binding to Bert E5ML Inference network", v68, 2u);
  }

  v22 = SNLPOSLoggerForCategory(7);
  v23 = os_signpost_id_generate(v22);
  v24 = SNLPOSLoggerForCategory(7);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24;
    if (os_signpost_enabled(v24))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "Setting inputs of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v26 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEFAULT, "BEGIN Setting inputs of Bert E5ML Inference network", v68, 2u);
  }

  (*(*this + 21))(this, buf);
  v27 = SNLPOSLoggerForCategory(7);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = v27;
    if (os_signpost_enabled(v27))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v28, OS_SIGNPOST_INTERVAL_END, v23, "Setting inputs of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v29 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v29, OS_LOG_TYPE_DEFAULT, "END Setting inputs of Bert E5ML Inference network", v68, 2u);
  }

  v30 = SNLPOSLoggerForCategory(7);
  v31 = os_signpost_id_generate(v30);
  v32 = SNLPOSLoggerForCategory(7);
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = v32;
    if (os_signpost_enabled(v32))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "Encode Operation of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v34 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_DEFAULT, "BEGIN Encode Operation of Bert E5ML Inference network", v68, 2u);
  }

  v35 = this[57];
  v36 = this[77];
  v66 = this[76];
  v67 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v37 = SNLPOSLoggerForCategory(7);
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = v37;
    if (os_signpost_enabled(v37))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v38, OS_SIGNPOST_INTERVAL_END, v31, "Encode Operation of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v39 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v39, OS_LOG_TYPE_DEFAULT, "END Encode Operation of Bert E5ML Inference network", v68, 2u);
  }

  v40 = SNLPOSLoggerForCategory(7);
  v41 = os_signpost_id_generate(v40);
  v42 = SNLPOSLoggerForCategory(7);
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v43 = v42;
    if (os_signpost_enabled(v42))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "Execute Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v44 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_DEFAULT, "BEGIN Execute Bert E5ML Inference network", v68, 2u);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(this[57]);
  v45 = SNLPOSLoggerForCategory(7);
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v46 = v45;
    if (os_signpost_enabled(v45))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v46, OS_SIGNPOST_INTERVAL_END, v41, "Execute Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v47 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v47, OS_LOG_TYPE_DEFAULT, "END Execute Bert E5ML Inference network", v68, 2u);
  }

  v48 = SNLPOSLoggerForCategory(7);
  v49 = os_signpost_id_generate(v48);
  v50 = SNLPOSLoggerForCategory(7);
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v51 = v50;
    if (os_signpost_enabled(v50))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "Reset Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v52 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v52, OS_LOG_TYPE_DEFAULT, "BEGIN Reset Bert E5ML Inference network", v68, 2u);
  }

  E5RT::ExecutionStream::ResetStream(this[57]);
  v53 = SNLPOSLoggerForCategory(7);
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v54 = v53;
    if (os_signpost_enabled(v53))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v54, OS_SIGNPOST_INTERVAL_END, v49, "Reset Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v55 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v55, OS_LOG_TYPE_DEFAULT, "END Reset Bert E5ML Inference network", v68, 2u);
  }

  v56 = SNLPOSLoggerForCategory(7);
  v57 = os_signpost_id_generate(v56);
  v58 = SNLPOSLoggerForCategory(7);
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v59 = v58;
    if (os_signpost_enabled(v58))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "Get Outputs of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v60 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v60, OS_LOG_TYPE_DEFAULT, "BEGIN Get Outputs of Bert E5ML Inference network", v68, 2u);
  }

  (*(*this + 22))(this);
  v61 = SNLPOSLoggerForCategory(7);
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v62 = v61;
    if (os_signpost_enabled(v61))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v62, OS_SIGNPOST_INTERVAL_END, v57, "Get Outputs of Bert E5ML Inference network", "", v68, 2u);
    }
  }

  v63 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v63, OS_LOG_TYPE_DEFAULT, "END Get Outputs of Bert E5ML Inference network", v68, 2u);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(this + 54);
  v64 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *v68 = 0;
    _os_log_impl(&dword_22284A000, v64, OS_LOG_TYPE_DEBUG, "Success Executing reshapable E5-ML inference.", v68, 2u);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&v69);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(buf);
}

void sub_2228AF8A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

      __cxa_end_catch();
      JUMPOUT(0x2228AF790);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_2228AF914(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
LABEL_6:
  JUMPOUT(0x2228AF798);
}

void nlv4_inference_orchestrator::inference_engine::BertModule::getTensorOutputs(nlv4_inference_orchestrator::inference_engine::BertModule *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v4 = a2 + 104;
  *(a2 + 152) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  (*(*this + 96))(v7);
  v5 = v8;
  *a2 = *v7;
  *(a2 + 16) = v5;
  v6 = v10;
  *(a2 + 24) = *__p;
  *(a2 + 40) = v6;
  std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](a2 + 48);
  if (*(this + 424) == 1)
  {
    (*(*this + 104))(v7, this);
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100]<snlp::common::tensor::InferenceTensor,void>(a2 + 48, v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](v4);
  if (*(this + 425) == 1)
  {
    (*(*this + 112))(v7, this);
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100]<snlp::common::tensor::InferenceTensor,void>(v4, v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(nlv4_inference_orchestrator::inference_engine::BertModuleInputType *this)
{
  if (*(this + 376) == 1)
  {
    v2 = *(this + 44);
    if (v2)
    {
      *(this + 45) = v2;
      operator delete(v2);
    }

    v3 = *(this + 41);
    if (v3)
    {
      *(this + 42) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 320) == 1)
  {
    v4 = *(this + 37);
    if (v4)
    {
      *(this + 38) = v4;
      operator delete(v4);
    }

    v5 = *(this + 34);
    if (v5)
    {
      *(this + 35) = v5;
      operator delete(v5);
    }
  }

  if (*(this + 264) == 1)
  {
    v6 = *(this + 30);
    if (v6)
    {
      *(this + 31) = v6;
      operator delete(v6);
    }

    v7 = *(this + 27);
    if (v7)
    {
      *(this + 28) = v7;
      operator delete(v7);
    }
  }

  if (*(this + 208) == 1)
  {
    v8 = *(this + 23);
    if (v8)
    {
      *(this + 24) = v8;
      operator delete(v8);
    }

    v9 = *(this + 20);
    if (v9)
    {
      *(this + 21) = v9;
      operator delete(v9);
    }
  }

  if (*(this + 152) == 1)
  {
    v10 = *(this + 16);
    if (v10)
    {
      *(this + 17) = v10;
      operator delete(v10);
    }

    v11 = *(this + 13);
    if (v11)
    {
      *(this + 14) = v11;
      operator delete(v11);
    }
  }

  if (*(this + 96) == 1)
  {
    v12 = *(this + 9);
    if (v12)
    {
      *(this + 10) = v12;
      operator delete(v12);
    }

    v13 = *(this + 6);
    if (v13)
    {
      *(this + 7) = v13;
      operator delete(v13);
    }
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    *(this + 1) = v15;
    operator delete(v15);
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228AFC94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<nlv4_inference_orchestrator::orchestration::EmbeddingTensor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<nlv4_inference_orchestrator::orchestration::EmbeddingTensor,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v7 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v7;
      operator delete(v7);
    }

    *(a1 + 72) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v8;
    result = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = result;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(void **this, const nlv4_inference_orchestrator::orchestration::EmbeddingTensor *a2)
{
  v4 = *(a2 + 3);
  v5 = *a2;
  v6 = *(a2 + 5);
  v7 = *a2 + 4 * v6;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v7, (4 * v4 - 4) * v6 + v5, ((4 * v4 - 4) * v6 - 4 * v6) >> 2);
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  if (&__p != this)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this, __p, v10, (v10 - __p) >> 2);
  }

  v8 = *(a2 + 5);
  this[3] = (v4 - 2);
  this[4] = 1;
  this[5] = v8;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2228AFE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::postProcessBertOutput(nlv4_inference_orchestrator::orchestration::EmbeddingTensor *a1@<X2>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(&v28, a1);
  memset(&v24, 0, sizeof(v24));
  v26 = 0uLL;
  v27 = 0;
  if (*(a1 + 224) == 1)
  {
    nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(&v20.__r_.__value_.__l.__data_, (a1 + 152));
    v24 = v20;
    v25 = __p;
    v26 = v22;
    v27 = v23;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(&v17, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  v11 = v17;
  v10 = v18;
  if (v17 + 112 != v18)
  {
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = *(v11 + 112);
      *(v11 + 16) = *(v11 + 128);
      *(v11 + 135) = 0;
      *(v11 + 112) = 0;
      v12 = v11 + 112;
      *(v11 + 24) = *(v11 + 136);
      *(v11 + 35) = *(v11 + 147);
      std::vector<std::string>::__vdeallocate((v11 + 56));
      *(v11 + 56) = *(v11 + 168);
      *(v11 + 72) = *(v11 + 184);
      *(v11 + 176) = 0;
      *(v11 + 184) = 0;
      *(v11 + 168) = 0;
      v13 = *(v11 + 208);
      v14 = v11 + 224;
      *(v11 + 80) = *(v11 + 192);
      *(v11 + 96) = v13;
      v11 += 112;
    }

    while (v14 != v10);
    v10 = v18;
    v11 = v12;
  }

  while (v10 != v11)
  {
    v10 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v10);
  }

  v18 = v11;
  std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v11 - 112);
  v18 = v11 - 112;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(&v22, v17, v18, 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 4));
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a5, v28, v29, (v29 - v28) >> 2);
  *(a5 + 24) = v30;
  *(a5 + 40) = v31;
  if (SHIBYTE(v33) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 48), v32, *(&v32 + 1));
  }

  else
  {
    *(a5 + 48) = v32;
    *(a5 + 64) = v33;
  }

  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  v15 = v24.__r_.__value_.__r.__words[0];
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a5 + 72, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_, (v24.__r_.__value_.__l.__size_ - v24.__r_.__value_.__r.__words[0]) >> 2);
  *(a5 + 96) = v25;
  v16 = SHIBYTE(v27);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 120), v26, *(&v26 + 1));
  }

  else
  {
    *(a5 + 120) = v26;
    *(a5 + 136) = v27;
  }

  *(a5 + 152) = 0;
  *(a5 + 144) = 1;
  *(a5 + 224) = 0;
  if (*(a1 + 144) == 1)
  {
    *(a5 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a5 + 152, *(a1 + 9), *(a1 + 10), (*(a1 + 10) - *(a1 + 9)) >> 2);
    *(a5 + 176) = *(a1 + 6);
    *(a5 + 192) = *(a1 + 14);
    if (*(a1 + 143) < 0)
    {
      std::string::__init_copy_ctor_external((a5 + 200), *(a1 + 15), *(a1 + 16));
    }

    else
    {
      *(a5 + 200) = *(a1 + 120);
      *(a5 + 216) = *(a1 + 17);
    }

    *(a5 + 224) = 1;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 232), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a5 + 232) = v20;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 256), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a5 + 256) = __p;
  }

  *(a5 + 280) = 0;
  *(a5 + 288) = 0;
  *(a5 + 296) = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(a5 + 280, v22, *(&v22 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v22 + 1) - v22) >> 4));
  MEMORY[0x223DC31E0](a5 + 304, a4);
  v34 = &v22;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v20.__r_.__value_.__r.__words[0] = &v17;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v16 < 0)
  {
    operator delete(v26);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_2228B02F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  v31 = *v28;
  if (*v28)
  {
    *(v26 + 160) = v31;
    operator delete(v31);
  }

  if (*(v26 + 224) == 1)
  {
    nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v28);
  }

  std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::~optional(v27);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v26);
  nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(&__p);
  __p = &a10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a26);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor((v29 - 176));
  _Unwind_Resume(a1);
}

void sub_2228B03FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a15) < 0)
  {
    operator delete(a13);
  }

  JUMPOUT(0x2228B03D4);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228B0484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 112;
        std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput::~BertPreprocessingOutput(nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput *this)
{
  MEMORY[0x223DC3200](this + 192);
  v4 = (this + 168);
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 160) == 1)
  {
    v2 = *(this + 17);
    if (v2)
    {
      *(this + 18) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 128) == 1)
  {
    v4 = (this + 104);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 10) = v3;
      operator delete(v3);
    }
  }

  v4 = (this + 48);
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vdeallocate(void **a1)
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
        v3 -= 112;
        std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v3);
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

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_2228B06EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(const void **this@<X0>, const sirinluexternal::NLContext *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = (this + 14);
  if (v6 == v7)
  {
    v8 = (this + 8);
  }

  if (v8[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *v8, *(v8 + 1));
    v6 = *(a2 + 11);
    v7 = *(a2 + 12);
  }

  else
  {
    v32 = *v8;
  }

  if (v6 == v7)
  {
    v9 = (this + 20);
  }

  else
  {
    v9 = (this + 26);
  }

  if (v9[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *v9, *(v9 + 1));
  }

  else
  {
    v31 = *v9;
  }

  v10 = *(a2 + 8);
  for (i = *(a2 + 1); ; ++i)
  {
    if (i == *(a2 + 2))
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v31.__r_.__value_.__l.__data_, this + 47);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
      goto LABEL_20;
    }

    v12 = *i;
    if (*(*i + 24) || *(v12 + 16) || *(v12 + 8))
    {
      break;
    }
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v31.__r_.__value_.__l.__data_, this + 44);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
LABEL_20:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  for (j = *(a2 + 1); j != *(a2 + 2); j += 8)
  {
    if (*(*j + 16))
    {
      nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
    }
  }

  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  if (v14 != v15)
  {
    do
    {
      if (*(*v14 + 16))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
      }

      ++v14;
    }

    while (v14 != v15);
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
  }

  while (1)
  {
    if (v14 == v15)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 44);
      v17 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, __p);
      v18 = v17;
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
        if (!v18)
        {
          goto LABEL_52;
        }
      }

      else if (!v17)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = *v14;
    if (*(*v14 + 24) || *(v16 + 16) || *(v16 + 8))
    {
      break;
    }

    ++v14;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 44);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
  v19 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, __p);
  v20 = v19;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
    if (!v20)
    {
      goto LABEL_52;
    }
  }

  else if (!v19)
  {
    goto LABEL_52;
  }

LABEL_50:
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(a3, __p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_52:
  v21 = *(a2 + 11);
  v22 = *(a2 + 12);
  if (v21 != v22)
  {
    do
    {
      v23 = *v21;
      nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(this, *v21, __p);
      for (k = v30; k; k = *k)
      {
        v24 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, k + 2);
      }

      if (!*(v23 + 32))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::handleBelowVerbPaths(v24, a3, this + 5);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v30);
      v26 = __p[0];
      __p[0] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      ++v21;
    }

    while (v21 != v22);
    v21 = *(a2 + 11);
    v22 = *(a2 + 12);
  }

  while (v21 != v22)
  {
    v27 = *v21;
    if ((*v21)[8] || v27[7] || v27[5] || v27[4] || v27[3] || v27[1])
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 17, this + 44);
      v28 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_74;
    }

    ++v21;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 17, this + 47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, this + 50);
LABEL_74:
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(v28, a3);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_2228B0C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v30);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::context::Embedder::embed(uint64_t a1, uint64_t *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  __src = 0;
  v26 = 0;
  v27 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v24 = 0;
  }

  else
  {
    do
    {
      v5 = itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(*a1, v2);
      TokenId = itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(*a1, *a1);
      v7 = v5;
      if ((v8 & 1) != 0 && v7 == TokenId)
      {
        v9 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(a1 + 16);
          if (v10 >= 8)
          {
            v20 = SNLPOSLoggerForCategory(4);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            v11 = "<UNDEFINED_COMPONENT>";
            if (v21)
            {
              *buf = 136315394;
              *&buf[4] = "<UNDEFINED_COMPONENT>";
              *&buf[12] = 2048;
              *&buf[14] = v10;
              _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
              v11 = "<UNDEFINED_COMPONENT>";
            }
          }

          else
          {
            v11 = off_2784B6F30[v10];
          }

          v22 = v2;
          if (*(v2 + 23) < 0)
          {
            v22 = *v2;
          }

          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = v22;
          _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] Warning: cannot embed OOV token '%s'.\n", buf, 0x16u);
        }
      }

      else
      {
        v12 = v26;
        if (v26 >= v27)
        {
          v14 = __src;
          v15 = v26 - __src;
          v16 = (v26 - __src) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v18 = v27 - __src;
          if ((v27 - __src) >> 1 > v17)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
          }

          *(4 * v16) = v7;
          v13 = 4 * v16 + 4;
          memcpy(0, v14, v15);
          v23 = __src;
          __src = 0;
          v26 = v13;
          v27 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v26 = v7;
          v13 = (v12 + 1);
        }

        v26 = v13;
      }

      v2 += 24;
    }

    while (v2 != v3);
    v24 = (v26 - __src) >> 2;
  }

  v28[0] = 1;
  v28[1] = v24;
  memset(buf, 0, sizeof(buf));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, v28, buf, 2uLL);
}

void sub_2228B0FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(_BYTE *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    do
    {
      v4 = &__src[2 * v3++];
    }

    while (*(v4 + 1));
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
    }

    if (v3 >= 0xB)
    {
      if ((v3 | 3) == 0xB)
      {
        v6 = 13;
      }

      else
      {
        v6 = (v3 | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v6);
    }

    __dst[23] = v3;
    v5 = __dst;
    if (v3)
    {
      memmove(__dst, __src, 2 * v3);
      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    __dst[23] = 0;
  }

  v5 = __dst;
LABEL_15:
  *&v5[2 * v3] = 0;
  return __dst;
}

uint64_t uaap::UPDataDetector::matchSpansInner(uint64_t result, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  if (a3)
  {
    v6 = result;
    result = DDScannerScanString();
    if (result)
    {
      v24 = *a4;
      v25 = *(a4 + 2);
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      *a4 = 0;
      v7 = *v6;
      result = DDScannerCopyResultsWithOptions();
      v9 = a2[1];
      v8 = a2[2];
      if (v9 >= v8)
      {
        v10 = *a2;
        v11 = v9 - *a2;
        v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) + 1;
        if (v12 > 0x666666666666666)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v12;
        }

        v29 = a2;
        if (v14)
        {
          if (v14 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v15 = 8 * (v11 >> 3);
        v26 = 0;
        v27 = v15;
        *v15 = v24;
        *(v15 + 16) = v25;
        *(v15 + 24) = result;
        *(v15 + 32) = MEMORY[0x277CBE550];
        v28 = (v15 + 40);
        v16 = v15 - v11;
        v32 = v15 - v11;
        v33 = v15 - v11;
        v30[0] = a2;
        v30[1] = &v32;
        v30[2] = &v33;
        if (v10 == v9)
        {
          v31 = 1;
        }

        else
        {
          v17 = v10;
          v18 = 8 * (v11 >> 3) - v11;
          do
          {
            v19 = *v17;
            *(v18 + 16) = *(v17 + 16);
            *v18 = v19;
            *v17 = 0;
            *(v17 + 8) = 0;
            v20 = *(v17 + 24);
            *(v17 + 16) = 0;
            *(v17 + 24) = 0;
            *(v18 + 24) = v20;
            *(v18 + 32) = *(v17 + 32);
            v17 += 40;
            v18 += 40;
          }

          while (v17 != v9);
          v33 = v18;
          v31 = 1;
          do
          {
            std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(v10);
            v10 += 40;
          }

          while (v10 != v9);
        }

        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap::UPDataDetectorResult>,uaap::UPDataDetectorResult*>>::~__exception_guard_exceptions[abi:ne200100](v30);
        v21 = *a2;
        *a2 = v16;
        v22 = a2[2];
        v23 = v28;
        *(a2 + 1) = v28;
        *&v28 = v21;
        *(&v28 + 1) = v22;
        v26 = v21;
        v27 = v21;
        std::__split_buffer<uaap::UPDataDetectorResult>::~__split_buffer(&v26);
        result = 0;
        a2[1] = v23;
      }

      else
      {
        *(v9 + 16) = v25;
        *(v9 + 24) = result;
        *v9 = v24;
        *(v9 + 32) = MEMORY[0x277CBE550];
        a2[1] = v9 + 40;
      }
    }
  }

  return result;
}

void sub_2228B1388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      std::vector<std::basic_string<char16_t>>::clear[abi:ne200100](a4);
      sentencepiece::SentencePieceText::SentencePieceText(&v15, 0);
      (*(*a1 + 232))(a1, a2, a3, &v15);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v20)
        {
          v10 = v20 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v19)
        {
          v11 = *(a4 + 8);
          v12 = 8 * v19;
          do
          {
            v13 = *(*v10 + 48);
            if (v11 >= *(a4 + 16))
            {
              v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
              ++v11;
            }

            *(a4 + 8) = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v15);
    }

    else
    {
      v15 = 13;
      v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "(", 1);
      MEMORY[0x223DC4920](&v16, 415);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, a5);
      v16 = *MEMORY[0x277D82828];
      *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
      v17 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v17 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v18);
      std::ostream::~ostream();
      MEMORY[0x223DC4C10](&v23);
    }
  }
}

double sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
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

void std::vector<sentencepiece::unigram::anonymous namespace::Hypothesis *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::insertToFeatureStore(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    itfm_inference_orchestrator::context::ContextFeaturizer::makeContextResponse();
  }

  v2 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 56);
    if (v3 >= 8)
    {
      v5 = SNLPOSLoggerForCategory(4);
      v4 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "<UNDEFINED_COMPONENT>";
        v13 = 2048;
        v14 = v3;
        _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v11, 0x16u);
      }
    }

    else
    {
      v4 = off_2784B6F30[v3];
    }

    v11 = 136315138;
    v12 = v4;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "[%s] Skipping insertion of ITFM context featurizer response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", &v11, 0xCu);
  }

  v6 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 56);
    if (v7 >= 8)
    {
      v9 = SNLPOSLoggerForCategory(4);
      v8 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "<UNDEFINED_COMPONENT>";
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v11, 0x16u);
      }
    }

    else
    {
      v8 = off_2784B6F30[v7];
    }

    v11 = 136315138;
    v12 = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Unable to insert context featurizer response into FeatureStore", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sentencepiece::bpe::Model::SampleEncode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sentencepiece::util::Status::~Status(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sentencepiece::util::Status::~Status(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_2835E3B08;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    RandomGenerator = 0;
    while (1)
    {
      v34 = *v31;
      v35 = (v32 - v31) >> 3;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 = (v37 + 8 * v36 + 8);
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = *(v37 + 1);
            v42 = *(*v37 + 8);
            v43 = *(v41 + 8);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              v37 = (v37 + 8);
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = (v32 - 8);
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          v31 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(v31, v37 + 8, ((v37 + 8) - v31) >> 3);
        }
      }

      v66 = (v66 - 8);
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!RandomGenerator)
        {
          RandomGenerator = sentencepiece::random::GetRandomGenerator(v31);
        }

        v51 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator);
        if ((v51 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *(__p + 8 * v46), v45);
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(v57);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v59);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2228B24D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](&a33);
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(&a18);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

void sub_2228B2670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228B26F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      v13 = *(a2 + v7 + 35);
      *(a4 + v7 + 56) = 0;
      v14 = a4 + v7 + 56;
      *(v14 - 21) = v13;
      *(v14 - 32) = v12;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *(a2 + v7 + 56), *(a2 + v7 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 64) - *(a2 + v7 + 56)) >> 3));
      v15 = *(a2 + v7 + 96);
      *(v11 + 80) = *(a2 + v7 + 80);
      *(v11 + 96) = v15;
      v7 += 112;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2228B27F4(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::preprocessRequest(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  memset(&v3[3], 0, 73);
  nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::reformulateTokens(a1, (a2 + 48), v3);
  std::string::basic_string[abi:ne200100]<0>(&v15, "[CLS]");
  *v16 = 0;
  *&v16[8] = 0;
  *&v16[23] = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *&v16[16] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "[SEP]");
  __p[3] = 0;
  __p[4] = 0;
  *(v10 + 7) = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10[0] = 0;
  v14 = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v15;
  }

  *v20 = *v16;
  *&v20[11] = *&v16[11];
  memset(v21, 0, sizeof(v21));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v21, v17, *(&v17 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v17 + 1) - v17) >> 3));
  v22 = *&v18[1];
  v23 = *&v18[3];
  memset(v2, 0, sizeof(v2));
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*>(v2, &v19, v24, 1uLL);
}

void sub_2228B327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  a11 = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a14 = &a17;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v66 = *(v64 - 224);
  if (v66)
  {
    *(v64 - 216) = v66;
    operator delete(v66);
  }

  if (__p)
  {
    a64 = __p;
    operator delete(__p);
  }

  MEMORY[0x223DC3200](&a49);
  __p = &a21;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a49 = &a24;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a49);
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType::~EspressoBertModelInputType(&a27);
  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](uint64_t a1)
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

    *(a1 + 48) = 0;
  }

  return a1;
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::forward(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  std::chrono::steady_clock::now();
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Input Preprocess", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Input Preprocess", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateBertInput(this, a2);
}

void sub_2228B3F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a53);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a62);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a71);
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(v71);
  nlv4_inference_orchestrator::inference_engine::BertModuleOutputType::~BertModuleOutputType(&STACK[0x240]);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

uint64_t std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    *(a1 + 72) = 0;
  }

  return a1;
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbedderResponse::~EmbedderResponse(void **this)
{
  MEMORY[0x223DC3200](this + 38);
  v5 = this + 35;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 224) == 1)
  {
    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    v2 = this[19];
    if (v2)
    {
      this[20] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 144) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    v3 = this[9];
    if (v3)
    {
      this[10] = v3;
      operator delete(v3);
    }
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v4 = *this;
  if (*this)
  {
    this[1] = v4;
    operator delete(v4);
  }
}

uint64_t psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaIntercomPayloadPromptOverride@<X0>(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[56] = 0;
  result = *(a2 + 32);
  if (result)
  {
    result = snlp::common::text_uso_graph::isIntercomPayloadPrompt(result);
    if (result)
    {
      v6 = 0;
      psc_inference_orchestrator::orchestration::PSCOverrideGenerator::buildPSCOverrideITFMResponse(a1, &v6, buf);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2228B44C0(_Unwind_Exception *a1, uint64_t a2, std::__split_buffer<std::string> *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__split_buffer<std::string>::~__split_buffer(&a11);
  if (*(v11 + 56) == 1)
  {
    MEMORY[0x223DC3310](v11);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::embed(nlv4_inference_orchestrator::context::Embedder *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  __src = 0;
  v17 = 0;
  v18 = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    do
    {
      v4 = v3 + 2;
      v5 = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(this, (v3 + 2));
      if ((*(this + 26) & 1) != 0 && v5 == *(this + 12))
      {
        v6 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          if (*(v3 + 39) < 0)
          {
            v4 = *v4;
          }

          *buf = 136315650;
          *&buf[4] = "NLv4";
          *&buf[12] = 2080;
          *&buf[14] = "[insights-snlp-nlv4]: ";
          *&buf[22] = 2080;
          v21 = v4;
          _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] %sRejecting '%s'.\n", buf, 0x20u);
        }
      }

      else
      {
        v7 = v17;
        if (v17 >= v18)
        {
          v9 = __src;
          v10 = v17 - __src;
          v11 = (v17 - __src) >> 2;
          v12 = v11 + 1;
          if ((v11 + 1) >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v13 = v18 - __src;
          if ((v18 - __src) >> 1 > v12)
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

          *(4 * v11) = v5;
          v8 = 4 * v11 + 4;
          memcpy(0, v9, v10);
          v15 = __src;
          __src = 0;
          v17 = v8;
          v18 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v17 = v5;
          v8 = (v7 + 1);
        }

        v17 = v8;
      }

      v3 = *v3;
    }

    while (v3);
    if (__src != v17)
    {
      v19[0] = 1;
      v19[1] = (v17 - __src) >> 2;
      memset(buf, 0, sizeof(buf));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, v19, buf, 2uLL);
    }
  }

  nlv4_inference_orchestrator::context::Embedder::setEmptyContext(this);
}

void sub_2228B47C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v20);
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

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logFeatureTensor(int *a1, uint64_t **a2)
{
  v71[20] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2 - *a2 != 24)
  {
    v7 = SNLPOSLoggerForCategory(4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_84;
    }

    v8 = *a1;
    if (v8 >= 8)
    {
      v13 = SNLPOSLoggerForCategory(4);
      v9 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v62 = 2048;
        *v63 = v8;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v9 = off_2784B6F30[v8];
    }

    *buf = 136315138;
    *&buf[4] = v9;
    v14 = "[%s] Warning: Featurised spans shape not 3-dim";
LABEL_54:
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, v14, buf, 0xCu);
    goto LABEL_84;
  }

  v5 = 1;
  while (v3 != v2)
  {
    v6 = *v3;
    v3 += 8;
    v5 = (v5 * v6);
  }

  v10 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    if (v11 >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      v12 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v62 = 2048;
        *v63 = v11;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v12 = off_2784B6F30[v11];
    }

    v16 = **a2;
    v17 = (*a2)[1];
    v18 = (*a2)[2];
    *buf = 136316162;
    *&buf[4] = v12;
    v62 = 2048;
    *v63 = v16;
    *&v63[8] = 2048;
    v64 = v17;
    v65 = 2048;
    v66 = v18;
    v67 = 2048;
    v68 = v5;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] [Span Tensor] shape=%lu,%lu,%lu num_elems=%lu", buf, 0x34u);
  }

  if (v5 != (a2[4] - a2[3]) >> 2)
  {
    v7 = SNLPOSLoggerForCategory(4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_84;
    }

    v42 = *a1;
    if (v42 >= 8)
    {
      v48 = SNLPOSLoggerForCategory(4);
      v43 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v62 = 2048;
        *v63 = v42;
        _os_log_impl(&dword_22284A000, v48, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v43 = off_2784B6F30[v42];
    }

    *buf = 136315138;
    *&buf[4] = v43;
    v14 = "[%s] Warning: Span shape not consistent with data";
    goto LABEL_54;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v19 = *a2;
  v20 = **a2;
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (v19[1])
      {
        v22 = 0;
        do
        {
          v23 = v19[2];
          if (v23)
          {
            for (j = 0; j < v23; ++j)
            {
              v25 = j + v23 * (v22 + i * v19[1]);
              v26 = a2[3];
              if (v25 < (a2[4] - v26) >> 2)
              {
                v27 = *(v26 + v25);
                v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63[2], "[Span Token] i=", 15);
                v29 = MEMORY[0x223DC4940](v28, i);
                v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " j=", 3);
                v31 = MEMORY[0x223DC4940](v30, v22);
                v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " k=", 3);
                v33 = MEMORY[0x223DC4940](v32, j);
                v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " id=", 4);
                v35 = MEMORY[0x223DC4940](v34, v27);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " token=", 7);
                nlv4_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken((a1 + 12), v27, &__p);
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

                v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, p_p, size);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v19 = *a2;
              }

              v23 = v19[2];
            }
          }

          ++v22;
        }

        while (v22 < v19[1]);
        v20 = *v19;
      }
    }
  }

  v40 = *a1;
  if (v40 > 6)
  {
    v41 = 4;
  }

  else
  {
    v41 = dword_2229DA4F4[v40];
  }

  v44 = SNLPOSLoggerForCategory(v41);
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_81;
  }

  v45 = *a1;
  if (*a1 > 3)
  {
    if (v45 > 5)
    {
      if (v45 == 6)
      {
        v46 = "SSU";
LABEL_75:
        v47 = "[insights-snlp-ssu]: ";
        goto LABEL_76;
      }

      if (v45 == 7)
      {
        v46 = "UNKNOWN";
        goto LABEL_67;
      }
    }

    else
    {
      if (v45 == 4)
      {
        v46 = "PSC";
LABEL_71:
        v47 = "[insights-snlp-psc]: ";
        goto LABEL_76;
      }

      if (v45 == 5)
      {
        v46 = "LVC";
        goto LABEL_59;
      }
    }
  }

  else if (v45 > 1)
  {
    if (v45 == 2)
    {
      v46 = "OWL";
LABEL_73:
      v47 = "[insights-snlp-owl]: ";
      goto LABEL_76;
    }

    if (v45 == 3)
    {
      v46 = "UaaP";
      goto LABEL_63;
    }
  }

  else
  {
    if (!v45)
    {
      v47 = "[insights-snlp-nlv4]: ";
      v46 = "NLv4";
      goto LABEL_76;
    }

    if (v45 == 1)
    {
      v46 = "SNLC";
LABEL_50:
      v47 = "[insights-snlp-snlc]: ";
      goto LABEL_76;
    }
  }

  v53 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    *v55 = 136315394;
    *&v55[4] = "<UNDEFINED_COMPONENT>";
    v56 = 2048;
    v57 = v45;
    _os_log_impl(&dword_22284A000, v53, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v55, 0x16u);
  }

  v45 = *a1;
  v46 = "<UNDEFINED_COMPONENT>";
  if (*a1 > 2)
  {
    if (v45 <= 4)
    {
      if (v45 != 3)
      {
        if (v45 != 4)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

LABEL_63:
      v47 = "[insights-snlp-uaap]: ";
      goto LABEL_76;
    }

    if (v45 != 5)
    {
      if (v45 != 6)
      {
        goto LABEL_67;
      }

      goto LABEL_75;
    }

LABEL_59:
    v47 = "[insights-snlp-lvc]: ";
    goto LABEL_76;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      goto LABEL_50;
    }

    if (v45 != 2)
    {
LABEL_67:
      v49 = SNLPOSLoggerForCategory(4);
      v47 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v55 = 136315394;
        *&v55[4] = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v56 = 2048;
        v57 = v45;
        _os_log_impl(&dword_22284A000, v49, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v55, 0x16u);
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v47 = "[insights-snlp-nlv4]: ";
LABEL_76:
  std::stringbuf::str();
  if (v58 >= 0)
  {
    v50 = v55;
  }

  else
  {
    v50 = *v55;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
  *(__p.__r_.__value_.__r.__words + 4) = v46;
  WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
  *(&__p.__r_.__value_.__r.__words[1] + 6) = v47;
  HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
  v60 = v50;
  _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_DEBUG, "[%s] %s%s", &__p, 0x20u);
  if (v58 < 0)
  {
    operator delete(*v55);
  }

LABEL_81:
  *buf = *MEMORY[0x277D82818];
  v51 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v63[2] = v51;
  v64 = MEMORY[0x277D82878] + 16;
  if (v70 < 0)
  {
    operator delete(v69);
  }

  v64 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v65);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](v71);
LABEL_84:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_2228B5204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a22 = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82818] + 64);
  a24 = v42;
  a25 = MEMORY[0x277D82878] + 16;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  a25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a26);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](&a41);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::insertToFeatureStore(int *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::createLoggingSpanFeaturizerResponse();
  }

  v2 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    if (v3 >= 8)
    {
      v5 = SNLPOSLoggerForCategory(4);
      v4 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "<UNDEFINED_COMPONENT>";
        v13 = 2048;
        v14 = v3;
        _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v4 = off_2784B6F30[v3];
    }

    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "[%s] Skipping insertion of matched spans featurized response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", buf, 0xCu);
  }

  v6 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a1;
    if (v7 >= 8)
    {
      v9 = SNLPOSLoggerForCategory(4);
      v8 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "<UNDEFINED_COMPONENT>";
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v8 = off_2784B6F30[v7];
    }

    *buf = 136315138;
    v12 = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Unable to insert span featurizer response into FeatureStore", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void std::vector<std::pair<nlv4_inference_orchestrator::orchestration::IndexedToken,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 168;
        v7 = (v4 - 24);
        std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v7);
        MEMORY[0x223DC3250](v6);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::featurize(uint64_t a1)
{
  *__p = 0u;
  v2 = 0u;
  v3 = 1065353216;
  nlv4_inference_orchestrator::context::Embedder::embed((a1 + 72), __p);
}

void sub_2228B59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a18);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::setEmptyContext(nlv4_inference_orchestrator::context::Embedder *this)
{
  v5 = *MEMORY[0x277D85DE8];
  *&__p = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(this, this + 208);
  v3 = 0;
  v4 = 0;
  v2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>();
}

void sub_2228B5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::featurize(const void **a1, _BYTE *a2, sirinluexternal::NLContext *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(a1 + 38, a3, v15);
  *v12 = 0u;
  *v13 = 0u;
  v14 = 1065353216;
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractSalientEntityContextLabels(a1 + 38, a3, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v12, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&__p_14[2]);
    v6 = *__p;
    *__p = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = v13[0];
    if (v13[0])
    {
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v15, v7 + 2);
        v7 = *v7;
      }

      while (v7);
    }
  }

  v8 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315394;
    *&__p[4] = "NLv4";
    __p_12 = 2080;
    *__p_14 = "[insights-snlp-nlv4]: ";
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sFeaturizing the following context labels in NLv4ParserRequest.\n", __p, 0x16u);
  }

  v9 = v16;
  if (v16)
  {
    do
    {
      v10 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = v9 + 16;
        if (v9[39] < 0)
        {
          v11 = *v11;
        }

        *__p = 136315650;
        *&__p[4] = "NLv4";
        __p_12 = 2080;
        *__p_14 = "[insights-snlp-nlv4]: ";
        *&__p_14[8] = 2080;
        *&v20 = v11;
        _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] %s%s", __p, 0x20u);
      }

      v9 = *v9;
    }

    while (v9);
  }

  a2[48] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v15, a1) != 0;
  a2[49] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v15, a1 + 3) != 0;
  a2[50] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v15, a1 + 6) != 0;
  nlv4_inference_orchestrator::context::Embedder::embed((a1 + 9), v15);
}

void sub_2228B5F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFME5MLModel::forward(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v10, *a2, a2[1], (a2[1] - *a2) >> 3);
  memset(v11, 0, sizeof(v11));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v11, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  memset(v12, 0, sizeof(v12));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v12, a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  memset(v13, 0, sizeof(v13));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  memset(v14, 0, sizeof(v14));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v14, a2[12], a2[13], (a2[13] - a2[12]) >> 3);
  memset(v15, 0, sizeof(v15));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, a2[15], a2[16], (a2[16] - a2[15]) >> 2);
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16, a2[18], a2[19], (a2[19] - a2[18]) >> 3);
  memset(v17, 0, sizeof(v17));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v17, a2[21], a2[22], (a2[22] - a2[21]) >> 2);
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::forward(*(a1 + 8), v10, &v6);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, v6, v7, (v7 - v6) >> 3);
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a3 + 3), __p, v9, (v9 - __p) >> 2);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(v10);
}

void sub_2228B6100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  v36 = *v34;
  if (*v34)
  {
    *(v34 + 8) = v36;
    operator delete(v36);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&a15);
  _Unwind_Resume(a1);
}

void sub_2228B61B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2228B61ACLL);
}

uint64_t itfm_inference_orchestrator::inference_engine::ITFME5MLModule::forward@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a2[1] - *a2 <= 8uLL || (v5 = a2[12], (a2[13] - v5) <= 8) || (v6 = a2[6], (a2[7] - v6) <= 0x10))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = *(v5 + 8);
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::reshapeStream(a1, *(*a2 + 8), *(v6 + 16), v15);
  v9 = *(a1 + 176);
  E5RT::ExecutionStreamOperation::ReshapeOperation();
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(a1);
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::setInputs(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(a1 + 184);
  v13 = *(a1 + 176);
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 24));
  E5RT::ExecutionStream::ResetStream(*(a1 + 24));
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::getOutputs(a1, a3);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(a1);
  return std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v15);
}

void sub_2228B62C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::string *a12, void *__p, uint64_t a14, void *__pa, char a16, uint64_t a17, char a18)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v18);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&a18);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFME5MLModule::reshapeStream(itfm_inference_orchestrator::inference_engine::ITFME5MLModule *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 88);
    if (v9 >= 8)
    {
      v11 = SNLPOSLoggerForCategory(4);
      v10 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v10 = off_2784B6F30[v9];
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Reshaping encoder input stream.", buf, 0xCu);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(buf, "utterance_tokens_embedder_emb_dim");
  v12 = *(this + 88);
  if (v12 >= 8)
  {
    v14 = SNLPOSLoggerForCategory(4);
    v13 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315394;
      v28 = "<UNDEFINED_COMPONENT>";
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v27, 0x16u);
    }
  }

  else
  {
    v13 = off_2784B6F30[v12];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v13);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf))
  {
    v15 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf);
    if (!v15)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v15 + 16) == 1)
    {
      v16 = 0;
      v17 = v15[5] & 0xFFFFFF00;
      v18 = *(v15 + 10);
      goto LABEL_25;
    }

    v19 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = __p;
      if (v25 < 0)
      {
        v22 = __p[0];
      }

      *v27 = 136315138;
      v28 = v22;
      v21 = "[%s] Could not reshape because the relevant dimensions could not be read from the config.";
LABEL_23:
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_ERROR, v21, v27, 0xCu);
    }
  }

  else
  {
    v19 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = __p;
      if (v25 < 0)
      {
        v20 = __p[0];
      }

      *v27 = 136315138;
      v28 = v20;
      v21 = "[%s] Could not reshape because the relevant dimensions could not be found in the config.";
      goto LABEL_23;
    }
  }

  v16 = 1;
LABEL_25:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if ((buf[23] & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_32;
    }

LABEL_31:
    __p[0] = 1;
    __p[1] = a2;
    v25 = a3;
    memset(buf, 0, 24);
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, __p, buf, 3uLL);
  }

  operator delete(*buf);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2228B6B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  E5RT::TensorDataType::~TensorDataType(&a25);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(uint64_t a1, uint64_t a2)
{
  *v26 = 0u;
  *v27 = 0u;
  v28 = 1065353216;
  for (i = *(a2 + 16); i; i = *i)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ".primitive_String");
    v4 = *(i + 39);
    if (v4 < 0)
    {
      v5 = i[2];
      v6 = i[3];
    }

    else
    {
      v5 = (i + 2);
      v6 = *(i + 39);
    }

    if ((v31 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v8 = v31;
    }

    else
    {
      v8 = __p[1];
    }

    if (v8)
    {
      if (v6 >= v8)
      {
        v9 = &v5[v6];
        v10 = *v7;
        v11 = v5;
        do
        {
          v12 = v6 - v8;
          if (v12 == -1)
          {
            break;
          }

          v13 = memchr(v11, v10, v12 + 1);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          if (!memcmp(v13, v7, v8))
          {
            if (v14 == v9 || v14 - v5 == -1)
            {
              break;
            }

            goto LABEL_22;
          }

          v11 = v14 + 1;
          v6 = v9 - (v14 + 1);
        }

        while (v6 >= v8);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v26, i + 2);
      goto LABEL_33;
    }

LABEL_22:
    if ((v4 & 0x80000000) != 0)
    {
      v15 = i[2];
      v4 = i[3];
      if (v8)
      {
LABEL_24:
        v16 = &v15[v4];
        if (v4 >= v8)
        {
          v19 = *v7;
          v20 = v15;
          do
          {
            if (v4 - v8 == -1)
            {
              break;
            }

            v21 = memchr(v20, v19, v4 - v8 + 1);
            if (!v21)
            {
              break;
            }

            v17 = v21;
            if (!memcmp(v21, v7, v8))
            {
              goto LABEL_26;
            }

            v20 = v17 + 1;
            v4 = v16 - (v17 + 1);
          }

          while (v4 >= v8);
        }

        v17 = v16;
LABEL_26:
        if (v17 == v16)
        {
          v18 = -1;
        }

        else
        {
          v18 = v17 - v15;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = (i + 2);
      if (v8)
      {
        goto LABEL_24;
      }
    }

    v18 = 0;
LABEL_31:
    std::string::basic_string(&v29, (i + 2), 0, v18, &v32);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v26, &v29.__r_.__value_.__l.__data_);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

LABEL_33:
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a2, v26);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v27[0]);
  v22 = v26[0];
  v26[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  nlv4_inference_orchestrator::context::generateUserStatedTaskPaths(v26, *(a2 + 16));
  v23 = v27[0];
  if (v27[0])
  {
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, v23 + 2);
      v23 = *v23;
    }

    while (v23);
    v24 = v27[0];
  }

  else
  {
    v24 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v24);
  v25 = v26[0];
  v26[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_2228B6E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void nlv4_inference_orchestrator::context::generateUserStatedTaskPaths(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2)
  {
    v2 = a2;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, "SystemOffered.offered_act.UserStatedTask");
      std::string::basic_string[abi:ne200100]<0>(v37, "SystemOffered.offered_act.UserWantedToProceed");
      v3 = *(v2 + 39);
      if (v3 < 0)
      {
        v4 = v2[2];
        v5 = v2[3];
      }

      else
      {
        v4 = (v2 + 2);
        v5 = *(v2 + 39);
      }

      if ((v41 & 0x80u) == 0)
      {
        v6 = &v39;
      }

      else
      {
        v6 = v39;
      }

      if ((v41 & 0x80u) == 0)
      {
        v7 = v41;
      }

      else
      {
        v7 = v40;
      }

      if (v7)
      {
        if (v5 >= v7)
        {
          v8 = &v4[v5];
          v9 = *v6;
          v10 = v4;
          while (1)
          {
            v11 = v5 - v7;
            if (v11 == -1)
            {
              break;
            }

            v12 = memchr(v10, v9, v11 + 1);
            if (!v12)
            {
              break;
            }

            v13 = v12;
            if (!memcmp(v12, v6, v7))
            {
              if (v13 == v8 || v13 - v4 == -1)
              {
                goto LABEL_55;
              }

              goto LABEL_22;
            }

            v10 = v13 + 1;
            v5 = v8 - (v13 + 1);
            if (v5 < v7)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_22:
      if ((v3 & 0x80000000) != 0)
      {
        v14 = v2[2];
        v3 = v2[3];
        if (v7)
        {
LABEL_24:
          v15 = &v14[v3];
          if (v3 >= v7)
          {
            v28 = *v6;
            v29 = v14;
            do
            {
              if (v3 - v7 == -1)
              {
                break;
              }

              v30 = memchr(v29, v28, v3 - v7 + 1);
              if (!v30)
              {
                break;
              }

              v16 = v30;
              if (!memcmp(v30, v6, v7))
              {
                goto LABEL_26;
              }

              v29 = v16 + 1;
              v3 = v15 - (v16 + 1);
            }

            while (v3 >= v7);
          }

          v16 = v15;
LABEL_26:
          if (v16 == v15)
          {
            v17 = -1;
          }

          else
          {
            v17 = v16 - v14;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v14 = (v2 + 2);
        if (v7)
        {
          goto LABEL_24;
        }
      }

      v17 = 0;
LABEL_31:
      std::string::basic_string(&v33, (v2 + 2), 0, v17, &v32);
      if ((v38 & 0x80u) == 0)
      {
        v18 = v37;
      }

      else
      {
        v18 = v37[0];
      }

      if ((v38 & 0x80u) == 0)
      {
        v19 = v38;
      }

      else
      {
        v19 = v37[1];
      }

      v20 = std::string::append(&v33, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = v41;
      if ((v41 & 0x80u) != 0)
      {
        v22 = v40;
      }

      v23 = *(v2 + 39);
      if ((v23 & 0x8000000000000000) != 0)
      {
        v23 = v2[3];
      }

      std::string::basic_string(&v32, (v2 + 2), v22 + v17, v23, v42);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      v26 = std::string::append(&v34, v24, size);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v36 = v26->__r_.__value_.__r.__words[2];
      *__p = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, __p);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_55:
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (v41 < 0)
      {
        operator delete(v39);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_2228B7268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a10);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::logFeatureTensor(nlv4_inference_orchestrator::vocabulary::Vocabulary *a1, unint64_t **a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    v18 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v19 = "Warning: Context shape not 2-dim";
LABEL_23:
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 2u);
    goto LABEL_24;
  }

  v4 = (*a2)[1] * **a2;
  v5 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = **a2;
    v6 = (*a2)[1];
    *buf = 134218496;
    v23 = v7;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v4;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[NLv4IO Context Tensor] shape=%lu,%lu num_elems=%lu", buf, 0x20u);
  }

  if (v4 != (a2[4] - a2[3]) >> 2)
  {
    v18 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v19 = "Warning: Context shape not consistent with data";
    goto LABEL_23;
  }

  v8 = *a2;
  v9 = **a2;
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = v8[1];
      if (v11)
      {
        for (j = 0; j < v11; ++j)
        {
          v13 = j + i * v11;
          v14 = a2[3];
          if (v13 < (a2[4] - v14) >> 2)
          {
            v15 = *(v14 + v13);
            v16 = SNLPOSLoggerForCategory(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              nlv4_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(a1, v15, &__p);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 134218754;
              v23 = i;
              v24 = 2048;
              v25 = j;
              v26 = 2048;
              v27 = v15;
              v28 = 2080;
              v29 = p_p;
              _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_DEBUG, "[NLv4IO Context Token] i=%lu j=%lu id=%lu token=%s", buf, 0x2Au);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          v8 = *a2;
          v11 = (*a2)[1];
        }

        v9 = *v8;
      }
    }
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
}

void *std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}