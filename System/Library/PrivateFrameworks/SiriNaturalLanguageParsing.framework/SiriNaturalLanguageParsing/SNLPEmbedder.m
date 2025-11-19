@interface SNLPEmbedder
+ (const)getTokenCleanValueString:(id)a3 error:(id *)a4;
- (id)getEmbeddings:(id)a3;
- (id)getEmbeddingsBySentence:(id)a3;
- (id)getEmbeddingsBySentenceWithError:(id)a3 error:(id *)a4;
- (id)getEmbeddingsWithError:(id)a3 error:(id *)a4;
- (id)initFromAssetDirectoryURL:(id)a3;
- (id)initFromAssetDirectoryURLWithError:(id)a3 error:(id *)a4;
- (id)initFromSourceVocabPath:(id)a3 bertModelPath:(id)a4 bertConfigPath:(id)a5 reformulatorPath:(id)a6;
- (id)initFromSourceVocabPathWithError:(id)a3 bertModelPath:(id)a4 bertConfigPath:(id)a5 reformulatorPath:(id)a6 error:(id *)a7;
- (void)warmup;
@end

@implementation SNLPEmbedder

- (void)warmup
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "Warming up SNLPEmbedder", &buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(&__sz, "hello");
  *&v9[8] = 0;
  *v9 = 0;
  *&v9[16] = 5;
  *&v9[24] = 0;
  v9[26] = 0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  std::string::basic_string[abi:ne200100]<0>(&v4, "world");
  *v5 = xmmword_2229D2980;
  *&v5[16] = 11;
  *&v5[24] = 0;
  v5[26] = 0;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __sz;
  }

  *v13 = *v9;
  *&v13[11] = *&v9[11];
  memset(v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, v10, *(&v10 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v10 + 1) - v10) >> 3));
  v15 = *&v11[1];
  v16 = *&v11[3];
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v4;
  }

  *v18 = *v5;
  *&v18[11] = *&v5[11];
  memset(v19, 0, sizeof(v19));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v19, v6, *(&v6 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v6 + 1) - v6) >> 3));
  v20 = *&v7[1];
  v21 = *&v7[3];
  memset(v3, 0, sizeof(v3));
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*>(v3, &buf, v22, 2uLL);
}

- (id)getEmbeddings:(id)a3
{
  v8 = 0;
  v3 = [(SNLPEmbedder *)self getEmbeddingsWithError:a3 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "OWL error in : getEmbeddings", v7, 2u);
    }
  }

  return v3;
}

- (id)getEmbeddingsWithError:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);

  v6 = SNLPOSLoggerForCategory(7);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Embeddings Overall", "", &buf, 2u);
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embeddings Overall", &buf, 2u);
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v9 = [v41 tokenChain];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(&v53, [v9 tokensCount]);

  std::string::basic_string[abi:ne200100]<0>(&v52, "");
  std::string::basic_string[abi:ne200100]<0>(&v51, "");
  v10 = [v41 text];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v41 text];
      LODWORD(buf) = 138739971;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Incoming request.text: %{sensitive}@", &buf, 0xCu);
    }

    v14 = [v41 text];
    v15 = v14;
    v16 = [v14 UTF8String];

    if (!v16)
    {
      v17 = SNLPOSLoggerForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v41 text];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Bad request.text: %@", &buf, 0xCu);
      }
    }

    MEMORY[0x223DC46D0](&v52, v16);
    MEMORY[0x223DC46D0](&v51, v16);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = [v41 tokenChain];
  v20 = [v19 tokens];

  v21 = [v20 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (!v21)
  {
LABEL_29:

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v43, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = v52;
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = v51;
    }

    memset(v45, 0, sizeof(v45));
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(v45, v53, v54, 0x6DB6DB6DB6DB6DB7 * ((v54 - v53) >> 4));
    v37 = *(*(self->_cppOrchestrator.__ptr_ + 23) + 8);
    (*(*v37 + 56))(v37);
    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddings(self->_cppOrchestrator.__ptr_, &v43);
  }

  v22 = *v48;
LABEL_16:
  v23 = 0;
  while (1)
  {
    if (*v48 != v22)
    {
      objc_enumerationMutation(v20);
    }

    v24 = *(*(&v47 + 1) + 8 * v23);
    v25 = objc_opt_class();
    v46 = 0;
    v26 = [v25 getTokenCleanValueString:v24 error:&v46];
    v27 = v46;
    v28 = v27;
    if (!v26)
    {
      break;
    }

    if (([v24 isWhitespace] & 1) == 0)
    {
      v29 = [v24 cleanValue];
      v30 = [v29 length] == 0;

      if (!v30)
      {
        std::string::basic_string[abi:ne200100]<0>(&buf, v26);
        *v58 = 0;
        *&v58[8] = [v24 begin];
        *&v58[16] = [v24 end];
        *&v58[24] = 0;
        v58[26] = 0;
        memset(v59, 0, sizeof(v59));
        v31 = v54;
        if (v54 >= v55)
        {
          v35 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(&v53, &buf);
        }

        else
        {
          v32 = buf;
          *(v54 + 16) = v57;
          *v31 = v32;
          v57 = 0;
          buf = 0uLL;
          v33 = *&v58[11];
          *(v31 + 24) = *v58;
          *(v31 + 35) = v33;
          *(v31 + 64) = 0;
          *(v31 + 72) = 0;
          *(v31 + 56) = 0;
          *(v31 + 56) = *v59;
          *(v31 + 72) = *&v59[16];
          memset(v59, 0, 24);
          v34 = *&v59[40];
          *(v31 + 80) = *&v59[24];
          *(v31 + 96) = v34;
          v35 = v31 + 112;
        }

        v54 = v35;
        v43.__r_.__value_.__r.__words[0] = v59;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v43);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(buf);
        }
      }
    }

    if (v21 == ++v23)
    {
      v21 = [v20 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }
  }

  if (a4)
  {
    v36 = v27;
    *a4 = v28;
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  *&buf = &v53;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&buf);

  v38 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)getEmbeddingsBySentence:(id)a3
{
  v8 = 0;
  v3 = [(SNLPEmbedder *)self getEmbeddingsBySentenceWithError:a3 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "OWL error in : getEmbeddingsBySentence", v7, 2u);
    }
  }

  return v3;
}

- (id)getEmbeddingsBySentenceWithError:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v46 = 0;
  v48 = 0;
  v31 = a3;
  v5 = [v31 tokenChain];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(&v46, [v5 tokensCount]);

  std::string::basic_string[abi:ne200100]<0>(&__s, "");
  std::string::basic_string[abi:ne200100]<0>(&v44, "");
  v6 = [v31 text];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [v31 text];
    v9 = v8;
    MEMORY[0x223DC46D0](&__s, [v8 UTF8String]);

    v10 = [v31 text];
    v11 = v10;
    MEMORY[0x223DC46D0](&v44, [v10 UTF8String]);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [v31 tokenChain];
  v13 = [v12 tokens];

  v14 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v14)
  {
LABEL_16:

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = __s;
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = v44;
    }

    memset(v38, 0, sizeof(v38));
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(v38, v46, v47, 0x6DB6DB6DB6DB6DB7 * ((v47 - v46) >> 4));
    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddingsBySentence(self->_cppOrchestrator.__ptr_, &v36);
  }

  v15 = *v41;
LABEL_5:
  v16 = 0;
  while (1)
  {
    if (*v41 != v15)
    {
      objc_enumerationMutation(v13);
    }

    v17 = *(*(&v40 + 1) + 8 * v16);
    v18 = objc_opt_class();
    v39 = 0;
    v19 = [v18 getTokenCleanValueString:v17 error:&v39];
    v20 = v39;
    v21 = v20;
    if (!v19)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v19);
    *v34 = 0;
    *&v34[8] = [v17 begin];
    *&v34[16] = [v17 end];
    *&v34[24] = 0;
    v34[26] = 0;
    memset(v35, 0, 56);
    v22 = v47;
    if (v47 >= v48)
    {
      v26 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(&v46, __p);
    }

    else
    {
      v23 = *__p;
      *(v47 + 16) = v33;
      *v22 = v23;
      __p[1] = 0;
      v33 = 0;
      __p[0] = 0;
      v24 = *&v34[11];
      *(v22 + 24) = *v34;
      *(v22 + 35) = v24;
      *(v22 + 64) = 0;
      *(v22 + 72) = 0;
      *(v22 + 56) = 0;
      *(v22 + 56) = v35[0];
      *(v22 + 72) = *&v35[1];
      memset(v35, 0, 24);
      v25 = *(&v35[2] + 8);
      *(v22 + 80) = *(&v35[1] + 8);
      *(v22 + 96) = v25;
      v26 = v22 + 112;
    }

    v47 = v26;
    v36.__r_.__value_.__r.__words[0] = v35;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v36);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 == ++v16)
    {
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }
  }

  if (a4)
  {
    v27 = v20;
    *a4 = v21;
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  __p[0] = &v46;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](__p);

  v28 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)initFromSourceVocabPath:(id)a3 bertModelPath:(id)a4 bertConfigPath:(id)a5 reformulatorPath:(id)a6
{
  v12 = 0;
  v6 = [(SNLPEmbedder *)self initFromSourceVocabPathWithError:a3 bertModelPath:a4 bertConfigPath:a5 reformulatorPath:a6 error:&v12];
  v7 = v12;
  v8 = v6;
  if (v7)
  {
    v9 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "OWL error in : initFromSourceVocabPath", v11, 2u);
    }
  }

  return v8;
}

- (id)initFromSourceVocabPathWithError:(id)a3 bertModelPath:(id)a4 bertConfigPath:(id)a5 reformulatorPath:(id)a6 error:(id *)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = SNLPEmbedder;
  [(SNLPEmbedder *)&v30 init];
  v15 = v11;
  std::string::basic_string[abi:ne200100]<0>(&v29, [v11 UTF8String]);
  v16 = v12;
  std::string::basic_string[abi:ne200100]<0>(&v28, [v12 UTF8String]);
  v17 = v13;
  std::string::basic_string[abi:ne200100]<0>(&v27, [v13 UTF8String]);
  v18 = v14;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v14 UTF8String]);
  v19 = SNLPOSLoggerForCategory(7);
  v20 = os_signpost_id_generate(v19);

  v21 = SNLPOSLoggerForCategory(7);
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "OWL Embedder Orchestrator Init", "", buf, 2u);
  }

  v23 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embedder Orchestrator Init", buf, 2u);
  }

  operator new();
}

- (id)initFromAssetDirectoryURL:(id)a3
{
  v9 = 0;
  v3 = [(SNLPEmbedder *)self initFromAssetDirectoryURLWithError:a3 error:&v9];
  v4 = v9;
  v5 = v3;
  if (v4)
  {
    v6 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "OWL error in : initFromAssetDirectoryURL", v8, 2u);
    }
  }

  return v5;
}

- (id)initFromAssetDirectoryURLWithError:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SNLPEmbedder;
  [(SNLPEmbedder *)&v15 init];
  v6 = v5;
  *buf = [v5 fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, buf);
  v7 = SNLPOSLoggerForCategory(7);
  v8 = os_signpost_id_generate(v7);

  v9 = SNLPOSLoggerForCategory(7);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "OWL Embedder Orchestrator Init", "", buf, 2u);
  }

  v11 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embedder Orchestrator Init", buf, 2u);
  }

  operator new();
}

+ (const)getTokenCleanValueString:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 hasCleanValue] || (objc_msgSend(v5, "cleanValue"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (a4)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA470];
      v26[0] = *MEMORY[0x277CCA450];
      v26[1] = v17;
      v27[0] = @"Encountered a token without a clean value";
      v27[1] = @"Encountered a token without a clean value";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      *a4 = [v16 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v9];
LABEL_10:
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v7 = [v5 cleanValue];
  v8 = [v7 UTF8String];

  if (!v8)
  {
    if (a4)
    {
      v9 = [MEMORY[0x277CCAB68] string];
      for (i = 0; ; ++i)
      {
        v11 = [v5 cleanValue];
        v12 = [v11 length];

        if (i >= v12)
        {
          break;
        }

        v13 = [v5 cleanValue];
        v14 = [v13 characterAtIndex:i];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%x]", v14];
        [v9 appendString:v15];
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit invalid token clean value: %s", objc_msgSend(v9, "UTF8String")];
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA470];
      v24[0] = *MEMORY[0x277CCA450];
      v24[1] = v22;
      v25[0] = v20;
      v25[1] = v20;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *a4 = [v21 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v23];

      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

@end