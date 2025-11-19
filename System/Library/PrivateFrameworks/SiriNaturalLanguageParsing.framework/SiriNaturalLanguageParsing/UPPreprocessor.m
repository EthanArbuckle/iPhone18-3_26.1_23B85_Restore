@interface UPPreprocessor
+ (vector<nl_featurization::span_matching::MatchedSpan,)buildMatchedSpanListFromQuerySpans:(id)a2;
- (UPPreprocessor)initWithLocale:(id)a3 featurizer:(const AbstractFeaturizer *)a4;
- (id)preprocess:(id)a3 error:(id *)a4;
@end

@implementation UPPreprocessor

- (id)preprocess:(id)a3 error:(id *)a4
{
  v135 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v5 = SNLPOSLoggerForCategory(7);
  v6 = os_signpost_id_generate(v5);

  v7 = SNLPOSLoggerForCategory(7);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "UaaP Preprocessing", "", buf, 2u);
  }

  v9 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP Preprocessing", buf, 2u);
  }

  v10 = [(NSLocale *)self->_locale localeIdentifier];
  v11 = v10;
  std::string::basic_string[abi:ne200100]<0>(&v120, [v10 UTF8String]);
  v12 = [v86 utterance];
  v13 = v12;
  std::string::basic_string[abi:ne200100]<0>(buf, [v12 UTF8String]);
  if ((v94.__r_.__value_.__r.__words[0] & 0x8000000000000000) == 0)
  {
    v14 = buf;
  }

  else
  {
    v14 = *buf;
  }

  if ((v94.__r_.__value_.__r.__words[0] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v94.__r_.__value_.__r.__words[0]);
  }

  else
  {
    v15 = *&buf[8];
  }

  toU16String(v14, v15, &v122);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[0]) < 0)
  {
    operator delete(*buf);
  }

  v87 = [MEMORY[0x277CBEB18] array];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v16 = [v86 tokens];
  v17 = [v16 countByEnumeratingWithState:&v116 objects:v134 count:16];
  if (!v17)
  {
LABEL_22:

    memset(v115, 0, 24);
    v24 = [v86 tokens];
    v25 = [v24 count];
    if (0xAAAAAAAAAAAAAAABLL * ((*&v115[1] - *&v115[0]) >> 4) < v25)
    {
      if (v25 <= 0x555555555555555)
      {
        v94.__r_.__value_.__r.__words[2] = v115;
        std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(v25);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v26 = [v86 tokens];
    v27 = [v26 countByEnumeratingWithState:&v111 objects:v131 count:16];
    if (v27)
    {
      v28 = *v112;
      obj = v26;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v112 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v111 + 1) + 8 * i);
          *buf = [v30 begin];
          *&buf[8] = [v30 end];
          v31 = [v30 value];
          v32 = v31;
          std::string::basic_string[abi:ne200100]<0>(__p, [v31 UTF8String]);
          if (v106 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          if (v106 >= 0)
          {
            v34 = HIBYTE(v106);
          }

          else
          {
            v34 = __p[1];
          }

          toU16String(v33, v34, &v94);
          LOBYTE(v95) = 0;
          v35 = *(&v115[0] + 1);
          if (*(&v115[0] + 1) >= *&v115[1])
          {
            v37 = 0xAAAAAAAAAAAAAAABLL * ((*(&v115[0] + 1) - *&v115[0]) >> 4);
            v38 = v37 + 1;
            if (v37 + 1 > 0x555555555555555)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*&v115[1] - *&v115[0]) >> 4) > v38)
            {
              v38 = 0x5555555555555556 * ((*&v115[1] - *&v115[0]) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v115[1] - *&v115[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v39 = 0x555555555555555;
            }

            else
            {
              v39 = v38;
            }

            v102 = v115;
            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(v39);
            }

            v40 = 16 * ((*(&v115[0] + 1) - *&v115[0]) >> 4);
            v99 = 0;
            v100 = v40;
            *(&v101 + 1) = 0;
            *v40 = *buf;
            v41 = *&v94.__r_.__value_.__l.__data_;
            *(v40 + 32) = *(&v94.__r_.__value_.__l + 2);
            *(v40 + 16) = v41;
            memset(&v94, 0, sizeof(v94));
            *(v40 + 40) = v95;
            *&v101 = 48 * v37 + 48;
            v42 = 48 * v37 + *&v115[0] - *(&v115[0] + 1);
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::Token>,nl_featurization::Token*>(v115, *&v115[0], *(&v115[0] + 1), v40 + *&v115[0] - *(&v115[0] + 1));
            v43 = *&v115[0];
            v44 = *&v115[1];
            *&v115[0] = v42;
            v90 = v101;
            *(v115 + 8) = v101;
            *&v101 = v43;
            *(&v101 + 1) = v44;
            v100 = v43;
            v99 = v43;
            std::__split_buffer<nl_featurization::Token>::~__split_buffer(&v99);
            *(&v115[0] + 1) = v90;
            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            **(&v115[0] + 1) = *buf;
            v36 = *&v94.__r_.__value_.__l.__data_;
            *(v35 + 32) = *(&v94.__r_.__value_.__l + 2);
            *(v35 + 16) = v36;
            memset(&v94, 0, sizeof(v94));
            *(v35 + 40) = v95;
            *(&v115[0] + 1) = v35 + 48;
          }

          if (SHIBYTE(v106) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v26 = obj;
        v27 = [obj countByEnumeratingWithState:&v111 objects:v131 count:16];
      }

      while (v27);
    }

    v45 = objc_opt_class();
    v46 = [v86 spans];
    if (v45)
    {
      [v45 buildMatchedSpanListFromQuerySpans:v46];
    }

    else
    {
      v109 = 0uLL;
      v110 = 0;
    }

    *__p = v115[0];
    v52 = *&v115[1];
    memset(v115, 0, 24);
    v107 = v109;
    v106 = v52;
    v108 = v110;
    v109 = 0uLL;
    v110 = 0;
    (*(self->__featurizer->var0 + 2))(&v99);
    v81 = v99;
    v82 = v100;
    v83 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v99) >> 4);
    if (v100 != v99)
    {
      v53 = 0;
      if (v83 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v99) >> 4);
      }

      do
      {
        v55 = v99 + v53;
        if (*(v99 + v53 + 39) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(buf, *(v55 + 16), *(v55 + 24));
        }

        else
        {
          v56 = *(v55 + 16);
          v94.__r_.__value_.__r.__words[0] = *(v55 + 32);
          *buf = v56;
        }

        v57 = SNLPOSLoggerForCategory(3);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          morphun::util::StringUtils::to_string();
          v58 = v125 >= 0 ? &v123 : v123;
          LODWORD(v129) = 136315138;
          *(&v129 + 4) = v58;
          _os_log_impl(&dword_22284A000, v57, OS_LOG_TYPE_DEBUG, "Featurized token with text=%s", &v129, 0xCu);
          if (SHIBYTE(v125) < 0)
          {
            operator delete(v123);
          }
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[0]) < 0)
        {
          operator delete(*buf);
        }

        v53 += 48;
        --v54;
      }

      while (v54);
    }

    v129 = 0uLL;
    v130 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v129, *(&v101 + 1), v102, (v102 - *(&v101 + 1)) >> 3);
    if (*(&v129 + 1) - v129 == 16 && *v129 == v83)
    {
      if (v82 != v81)
      {
        v59 = 0;
        v60 = *(v129 + 8);
        v61 = *(MEMORY[0x277D82818] + 64);
        v62 = *(MEMORY[0x277D82818] + 72);
        obja = v61;
        v91 = *MEMORY[0x277D82818];
        v63 = v83;
        if (v83 <= 1)
        {
          v63 = 1;
        }

        v85 = v63;
        do
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
          LOBYTE(v123) = 91;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, &v123, 1);
          if (v60)
          {
            v127 = v59;
            v125 = 0;
            v123 = 0;
            v124 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v123, &v127, &v128, 2uLL);
          }

          LOBYTE(v123) = 93;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, &v123, 1);
          v64 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            std::stringbuf::str();
            v65 = &v123;
            if (v125 < 0)
            {
              v65 = v123;
            }

            LODWORD(v127) = 136315138;
            *(&v127 + 4) = v65;
            _os_log_impl(&dword_22284A000, v64, OS_LOG_TYPE_DEBUG, "Token span labels: %s", &v127, 0xCu);
            if (SHIBYTE(v125) < 0)
            {
              operator delete(v123);
            }
          }

          *buf = v91;
          *&buf[*(v91 - 24)] = obja;
          v94.__r_.__value_.__r.__words[0] = v62;
          v94.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v97 < 0)
          {
            operator delete(v96);
          }

          v94.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v94.__r_.__value_.__r.__words[2]);
          std::iostream::~basic_iostream();
          MEMORY[0x223DC4C10](&v98);
          ++v59;
        }

        while (v59 != v85);
      }

      v66 = [v87 firstObject];
      v67 = [v66 getDimension];

      *buf = 0;
      std::vector<float>::vector[abi:ne200100](&v127, v67 * v83);
      if (v82 != v81)
      {
        v68 = 0;
        v69 = 0;
        if (v83 <= 1)
        {
          v70 = 1;
        }

        else
        {
          v70 = v83;
        }

        do
        {
          v71 = [v87 objectAtIndexedSubscript:v69];
          v72 = [v71 getCoordinates];

          if (v67)
          {
            v73 = 0;
            v74 = v68;
            v75 = v67;
            do
            {
              v76 = [v72 objectAtIndexedSubscript:v73];
              [v76 floatValue];
              *(v127 + v74) = v77;

              ++v73;
              v74 += 4;
              --v75;
            }

            while (v75);
          }

          ++v69;
          v68 += 4 * v67;
        }

        while (v69 != v70);
      }

      memset(buf, 0, sizeof(buf));
      v94.__r_.__value_.__r.__words[0] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(buf, *(&v101 + 1), v102, (v102 - *(&v101 + 1)) >> 3);
      v95 = 0;
      *&v94.__r_.__value_.__r.__words[1] = 0uLL;
      if (v104 != v103)
      {
        std::vector<int>::__vallocate[abi:ne200100](&v94.__r_.__value_.__l.__size_, (v104 - v103) >> 3);
      }

      v123 = (0xAAAAAAAAAAAAAAABLL * ((v100 - v99) >> 4));
      v124 = 1;
      v125 = v67;
      memset(v92, 0, sizeof(v92));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v92, &v123, &v126, 3uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Span label shape incorrect.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *v117;
LABEL_16:
  v19 = 0;
  while (1)
  {
    if (*v117 != v18)
    {
      objc_enumerationMutation(v16);
    }

    v20 = *(*(&v116 + 1) + 8 * v19);
    v21 = [v86 embeddingsByToken];
    v22 = [v21 objectForKeyedSubscript:v20];
    v23 = [v22 firstObject];

    if (!v23)
    {
      break;
    }

    [v87 addObject:v23];

    if (v17 == ++v19)
    {
      v17 = [v16 countByEnumeratingWithState:&v116 objects:v134 count:16];
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  v47 = MEMORY[0x277CCACA8];
  v48 = [v20 value];
  v49 = [v47 stringWithFormat:@"No embeddings are associated with token %@", v48];

  v50 = MEMORY[0x277CCA9B8];
  v132 = *MEMORY[0x277CCA450];
  v133 = v49;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
  *a4 = [v50 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v51];

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  v78 = *MEMORY[0x277D85DE8];

  return 0;
}

- (UPPreprocessor)initWithLocale:(id)a3 featurizer:(const AbstractFeaturizer *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UPPreprocessor;
  v8 = [(UPPreprocessor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, a3);
    v9->__featurizer = a4;
  }

  return v9;
}

+ (vector<nl_featurization::span_matching::MatchedSpan,)buildMatchedSpanListFromQuerySpans:(id)a2
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v7)
  {
    v9 = *v47;
    *&v8 = 67109634;
    v38 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        if ([v11 type] == 2)
        {
          v12 = [v11 category];
          v13 = v12;
          std::string::basic_string[abi:ne200100]<0>(&buf, [v12 UTF8String]);
          if ((SBYTE7(v52) & 0x80u) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          if ((SBYTE7(v52) & 0x80u) == 0)
          {
            v15 = BYTE7(v52);
          }

          else
          {
            v15 = *(&buf + 1);
          }

          toU16String(p_buf, v15, &v45);
          if (SBYTE7(v52) < 0)
          {
            operator delete(buf);
          }

          uaap::UPDataDetector::labelToUaapType(&v45, &v42);
          if (v44)
          {
            LODWORD(v40) = [v11 range];
            v16 = [v11 range];
            [v11 range];
            HIDWORD(v40) = v17 + v16;
            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v45;
            }

            v20 = SNLPOSLoggerForCategory(3);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = [UPUtilities stdU16ToNSString:&__p];
              *&buf = __PAIR64__(v40, v38);
              WORD4(buf) = 1024;
              *(&buf + 10) = HIDWORD(v40);
              HIWORD(buf) = 2112;
              *&v52 = v21;
              _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "Adding matching span (%u -> %u) with label %@", &buf, 0x18u);
            }

            var1 = retstr->var1;
            var2 = retstr->var2;
            if (var1 >= var2)
            {
              v25 = (var1 - retstr->var0) >> 5;
              v26 = v25 + 1;
              if ((v25 + 1) >> 59)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v27 = var2 - retstr->var0;
              if (v27 >> 4 > v26)
              {
                v26 = v27 >> 4;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFE0)
              {
                v28 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              v53 = retstr;
              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(v28);
              }

              v29 = 32 * v25;
              *&buf = 0;
              *(&buf + 1) = v29;
              *(&v52 + 1) = 0;
              *v29 = v40;
              v30 = *&__p.__r_.__value_.__l.__data_;
              *(v29 + 24) = *(&__p.__r_.__value_.__l + 2);
              *(v29 + 8) = v30;
              memset(&__p, 0, sizeof(__p));
              *&v52 = 32 * v25 + 32;
              v31 = retstr->var1;
              v32 = (32 * v25 + retstr->var0 - v31);
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(retstr, retstr->var0, v31, v29 + retstr->var0 - v31);
              var0 = retstr->var0;
              retstr->var0 = v32;
              v34 = retstr->var2;
              v39 = v52;
              *&retstr->var1 = v52;
              *&v52 = var0;
              *(&v52 + 1) = v34;
              *&buf = var0;
              *(&buf + 1) = var0;
              std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(&buf);
              v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              retstr->var1 = v39;
              if (v35 < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *var1 = v40;
              v24 = *&__p.__r_.__value_.__l.__data_;
              *(var1 + 3) = *(&__p.__r_.__value_.__l + 2);
              *(var1 + 8) = v24;
              retstr->var1 = (var1 + 32);
            }

            if ((v44 & 1) != 0 && v43 < 0)
            {
              operator delete(v42);
            }
          }

          else
          {
            v18 = SNLPOSLoggerForCategory(3);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v11 category];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v19;
              _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "Warning: discarding data detector matching span with unknown category %@", &buf, 0xCu);
            }
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v7);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

@end