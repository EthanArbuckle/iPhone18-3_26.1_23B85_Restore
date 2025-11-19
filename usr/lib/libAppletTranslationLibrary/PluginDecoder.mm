@interface PluginDecoder
+ (id)decoderWithData:(uint64_t)a1;
+ (id)persistentContext:(id)a3;
- (id).cxx_construct;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)p_data;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)p_data;
- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)p_data;
- (id)initWithData:(id)a1;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)p_data;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)p_data;
- (uint64_t)classChecker;
@end

@implementation PluginDecoder

+ (id)decoderWithData:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [[PluginDecoder alloc] initWithData:v2];

  return v3;
}

- (id)initWithData:(id)a1
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = PluginDecoder;
    a1 = objc_msgSendSuper2(&v11, sel_init);
    if (a1)
    {
      OVM::Deserialize(v3, v9);
      if (v10)
      {
        v4 = caulk::expected<std::shared_ptr<OVM::Script>,OVM::Error>::value(v9);
        [(PluginDecoder *)a1 initWithData:v4, v9];
      }

      else
      {
        v5 = ATLLogObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          ctu::join<std::__wrap_iter<std::string const*>>(v9[0], v9[1], ", ", 2uLL, &v8);
          [(PluginDecoder *)&v8 initWithData:buf, v5];
        }

        caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(v9);
        a1 = 0;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)p_data
{
  v84[0] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v51 = 3;
  v52 = 0;
  v53 = 2;
  LODWORD(v69) = 3;
  v70 = v12;
  v71 = 2;
  v72 = 3;
  v73 = v13;
  v74 = 2;
  v75 = 3;
  v76 = v14;
  v77 = 2;
  v78 = 3;
  v79 = v15;
  v80 = 2;
  v81 = 4;
  v82 = &v51;
  v83 = 3;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v48, &v69, v84, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v47 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "getAppletStateAndHistory");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v48, &v44, _MergedGlobals, &v69);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if ((v72 & 1) == 0)
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v69, v70, ", ", 2uLL, &__p);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v67 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v69, v70, ", ", 2uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = [v20 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!p_data)
      {
        goto LABEL_53;
      }
    }

    else if (!p_data)
    {
      goto LABEL_53;
    }

    v29 = *p_data;
    v26 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = v31;
      v63[0] = v17;
      v63[1] = v29;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    }

    else
    {
      v64 = *MEMORY[0x277CCA450];
      v65 = v17;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    }

    goto LABEL_42;
  }

  if (p_data)
  {
    if (v51 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v53 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *p_data = v52;
  }

  if (v69 == 3)
  {
    if (v71 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v17 = v70;
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = v17;
      p_data = &v17->__r_.__value_.__l.__data_;
      goto LABEL_53;
    }

    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (p_data)
    {
      v37 = *p_data;
      v38 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      if (*p_data)
      {
        v40 = *MEMORY[0x277CCA7E8];
        v54[0] = *MEMORY[0x277CCA450];
        v54[1] = v40;
        v55[0] = v35;
        v55[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      }

      else
      {
        v56 = *MEMORY[0x277CCA450];
        v57 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      }
      v41 = ;
      *p_data = [v38 errorWithDomain:@"ATL" code:8 userInfo:v41];
    }

    goto LABEL_52;
  }

  v22 = ATLLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v69;
    _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = [v23 initWithFormat:@"Plugin returned wrong dynamic type %d", v69];
  v17 = v24;
  if (p_data)
  {
    v25 = *p_data;
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v28 = *MEMORY[0x277CCA7E8];
      v58[0] = *MEMORY[0x277CCA450];
      v58[1] = v28;
      v59[0] = v24;
      v59[1] = v25;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    }

    else
    {
      v60 = *MEMORY[0x277CCA450];
      v61 = v24;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    }

    v32 = LABEL_42:;
    *p_data = [v26 errorWithDomain:@"ATL" code:8 userInfo:v32];

LABEL_52:
    p_data = 0;
  }

LABEL_53:

  if ((v72 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v42 = *MEMORY[0x277D85DE8];

  return p_data;
}

- (uint64_t)classChecker
{
  if (result)
  {
    if ([PluginDecoder classChecker]::onceToken != -1)
    {
      [PluginDecoder classChecker];
    }

    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)p_data
{
  v90[0] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v54 = 3;
  v55 = 0;
  v56 = 2;
  LODWORD(v72) = 3;
  v73 = v14;
  v74 = 2;
  v75 = 3;
  v76 = v15;
  v77 = 2;
  v78 = 3;
  v79 = v16;
  v80 = 2;
  v81 = 3;
  v82 = v17;
  v83 = 2;
  v84 = 3;
  v85 = v18;
  v86 = 2;
  v87 = 4;
  v88 = &v54;
  v89 = 3;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v51, &v72, v90, 6uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v50 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "parseHCIEvent");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v51, &v47, _MergedGlobals, &v72);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if ((v75 & 1) == 0)
  {
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v72, v73, ", ", 2uLL, &__p);
      v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v70 = v22;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v72, v73, ", ", 2uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = [v23 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!p_data)
      {
        goto LABEL_53;
      }
    }

    else if (!p_data)
    {
      goto LABEL_53;
    }

    v32 = *p_data;
    v29 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v65[0] = *MEMORY[0x277CCA450];
      v65[1] = v34;
      v66[0] = v20;
      v66[1] = v32;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    }

    else
    {
      v67 = *MEMORY[0x277CCA450];
      v68 = v20;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    }

    goto LABEL_42;
  }

  if (p_data)
  {
    if (v54 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v56 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *p_data = v55;
  }

  if (v72 == 3)
  {
    if (v74 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v20 = v73;
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = v20;
      p_data = &v20->__r_.__value_.__l.__data_;
      goto LABEL_53;
    }

    v36 = ATLLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v37;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v39 = v38;
    if (p_data)
    {
      v40 = *p_data;
      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      if (*p_data)
      {
        v43 = *MEMORY[0x277CCA7E8];
        v57[0] = *MEMORY[0x277CCA450];
        v57[1] = v43;
        v58[0] = v38;
        v58[1] = v40;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      }

      else
      {
        v59 = *MEMORY[0x277CCA450];
        v60 = v38;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      }
      v44 = ;
      *p_data = [v41 errorWithDomain:@"ATL" code:8 userInfo:v44];
    }

    goto LABEL_52;
  }

  v25 = ATLLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v72;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  v27 = [v26 initWithFormat:@"Plugin returned wrong dynamic type %d", v72];
  v20 = v27;
  if (p_data)
  {
    v28 = *p_data;
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v31;
      v62[0] = v27;
      v62[1] = v28;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64 = v27;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    }

    v35 = LABEL_42:;
    *p_data = [v29 errorWithDomain:@"ATL" code:8 userInfo:v35];

LABEL_52:
    p_data = 0;
  }

LABEL_53:

  if ((v75 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v72;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v45 = *MEMORY[0x277D85DE8];

  return p_data;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)p_data
{
  v84[0] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v51 = 3;
  v52 = 0;
  v53 = 2;
  LODWORD(v69) = 3;
  v70 = v12;
  v71 = 2;
  v72 = 3;
  v73 = v13;
  v74 = 2;
  v75 = 3;
  v76 = v14;
  v77 = 2;
  v78 = 3;
  v79 = v15;
  v80 = 2;
  v81 = 4;
  v82 = &v51;
  v83 = 3;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v48, &v69, v84, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v47 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "GetAppletProperties");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v48, &v44, _MergedGlobals, &v69);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if ((v72 & 1) == 0)
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v69, v70, ", ", 2uLL, &__p);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v67 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v69, v70, ", ", 2uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = [v20 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!p_data)
      {
        goto LABEL_53;
      }
    }

    else if (!p_data)
    {
      goto LABEL_53;
    }

    v29 = *p_data;
    v26 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = v31;
      v63[0] = v17;
      v63[1] = v29;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    }

    else
    {
      v64 = *MEMORY[0x277CCA450];
      v65 = v17;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    }

    goto LABEL_42;
  }

  if (p_data)
  {
    if (v51 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v53 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *p_data = v52;
  }

  if (v69 == 3)
  {
    if (v71 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v17 = v70;
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = v17;
      p_data = &v17->__r_.__value_.__l.__data_;
      goto LABEL_53;
    }

    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (p_data)
    {
      v37 = *p_data;
      v38 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      if (*p_data)
      {
        v40 = *MEMORY[0x277CCA7E8];
        v54[0] = *MEMORY[0x277CCA450];
        v54[1] = v40;
        v55[0] = v35;
        v55[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      }

      else
      {
        v56 = *MEMORY[0x277CCA450];
        v57 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      }
      v41 = ;
      *p_data = [v38 errorWithDomain:@"ATL" code:8 userInfo:v41];
    }

    goto LABEL_52;
  }

  v22 = ATLLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v69;
    _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = [v23 initWithFormat:@"Plugin returned wrong dynamic type %d", v69];
  v17 = v24;
  if (p_data)
  {
    v25 = *p_data;
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v28 = *MEMORY[0x277CCA7E8];
      v58[0] = *MEMORY[0x277CCA450];
      v58[1] = v28;
      v59[0] = v24;
      v59[1] = v25;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    }

    else
    {
      v60 = *MEMORY[0x277CCA450];
      v61 = v24;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    }

    v32 = LABEL_42:;
    *p_data = [v26 errorWithDomain:@"ATL" code:8 userInfo:v32];

LABEL_52:
    p_data = 0;
  }

LABEL_53:

  if ((v72 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v42 = *MEMORY[0x277D85DE8];

  return p_data;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)p_data
{
  v85[0] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v52 = 3;
  v53 = 0;
  v54 = 2;
  LODWORD(v70) = 3;
  v71 = v13;
  v72 = 2;
  v73 = 3;
  v74 = v14;
  v75 = 2;
  v76 = 3;
  v77 = v15;
  v78 = 2;
  v79 = 3;
  v80 = v12;
  v81 = 2;
  v82 = 4;
  v83 = &v52;
  v84 = 3;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v49, &v70, v85, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v48 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "processEndOfTransaction");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v49, &v45, _MergedGlobals, &v70);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if ((v73 & 1) == 0)
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v70, v71, ", ", 2uLL, &__p);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v68 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v70, v71, ", ", 2uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = [v20 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!p_data)
      {
        goto LABEL_55;
      }
    }

    else if (!p_data)
    {
      goto LABEL_55;
    }

    v23 = *p_data;
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v26 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v26;
      v64[0] = v22;
      v64[1] = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    }

    else
    {
      v65 = *MEMORY[0x277CCA450];
      v66 = v22;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    }

    goto LABEL_44;
  }

  if (p_data)
  {
    if (v52 == 3)
    {
      if (v54 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v17 = v53;
    }

    else
    {
      v17 = 0;
    }

    *p_data = v17;
  }

  if (v70 == 3)
  {
    if (v72 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = v71;
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = v22;
      p_data = &v22->__r_.__value_.__l.__data_;
      goto LABEL_55;
    }

    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v35;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v37 = v36;
    if (p_data)
    {
      v38 = *p_data;
      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      if (*p_data)
      {
        v41 = *MEMORY[0x277CCA7E8];
        v55[0] = *MEMORY[0x277CCA450];
        v55[1] = v41;
        v56[0] = v36;
        v56[1] = v38;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      }

      else
      {
        v57 = *MEMORY[0x277CCA450];
        v58 = v36;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      }
      v42 = ;
      *p_data = [v39 errorWithDomain:@"ATL" code:8 userInfo:v42];
    }

    goto LABEL_54;
  }

  v28 = ATLLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v70;
    _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithFormat:@"Plugin returned wrong dynamic type %d", v70];
  v22 = v30;
  if (p_data)
  {
    v31 = *p_data;
    v24 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v33 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v33;
      v60[0] = v30;
      v60[1] = v31;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62 = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    }

    v27 = LABEL_44:;
    *p_data = [v24 errorWithDomain:@"ATL" code:8 userInfo:v27];

LABEL_54:
    p_data = 0;
  }

LABEL_55:

  if ((v73 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v70;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v43 = *MEMORY[0x277D85DE8];

  return p_data;
}

- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v97[0] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v58 = 3;
  v59 = 0;
  v60 = 2;
  LODWORD(v76) = 3;
  v77 = v15;
  v78 = 2;
  v79 = 3;
  v80 = v16;
  v81 = 2;
  v82 = 3;
  v83 = v17;
  v84 = 2;
  v85 = 3;
  v86 = v18;
  v87 = 2;
  v88 = 3;
  v89 = v19;
  v90 = 2;
  v91 = 3;
  v92 = v20;
  v93 = 2;
  v94 = 4;
  v95 = &v58;
  v96 = 3;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v55, &v76, v97, 7uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v54 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "getServiceProviderDataWithEncryptionScheme");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v55, &v51, _MergedGlobals, &v76);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if ((v79 & 1) == 0)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v76, v77, ", ", 2uLL, &__p);
      v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v74 = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v76, v77, ", ", 2uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v27 = [v25 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!a9)
      {
        goto LABEL_54;
      }
    }

    else if (!a9)
    {
      goto LABEL_54;
    }

    v28 = *a9;
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*a9)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v69[0] = *MEMORY[0x277CCA450];
      v69[1] = v31;
      v70[0] = v27;
      v70[1] = v28;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    }

    else
    {
      v71 = *MEMORY[0x277CCA450];
      v72 = v27;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    }

    v32 = LABEL_44:;
    *a9 = [v29 errorWithDomain:@"ATL" code:8 userInfo:v32];

    goto LABEL_54;
  }

  if (a9)
  {
    if (v58 == 3)
    {
      if (v60 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v22 = v59;
    }

    else
    {
      v22 = 0;
    }

    *a9 = v22;
  }

  if (v76 != 3)
  {
    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v76;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Plugin returned wrong dynamic type %d", v76];
    v27 = v36;
    if (!a9)
    {
      goto LABEL_54;
    }

    v37 = *a9;
    v29 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    if (*a9)
    {
      v39 = *MEMORY[0x277CCA7E8];
      v65[0] = *MEMORY[0x277CCA450];
      v65[1] = v39;
      v66[0] = v36;
      v66[1] = v37;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    }

    else
    {
      v67 = *MEMORY[0x277CCA450];
      v68 = v36;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    }

    goto LABEL_44;
  }

  if (v78 != 2)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v27 = v77;
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v27 = v27;
    v33 = v27;
    goto LABEL_55;
  }

  v40 = ATLLogObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = objc_opt_class();
    LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
    *(__p.__r_.__value_.__r.__words + 4) = v41;
    _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
  }

  v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
  v43 = v42;
  if (a9)
  {
    v44 = *a9;
    v50 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    if (*a9)
    {
      v46 = *MEMORY[0x277CCA7E8];
      v61[0] = *MEMORY[0x277CCA450];
      v61[1] = v46;
      v62[0] = v42;
      v62[1] = v44;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    }

    else
    {
      v63 = *MEMORY[0x277CCA450];
      v64 = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    }
    v47 = ;
    *a9 = [v50 errorWithDomain:@"ATL" code:8 userInfo:v47];
  }

LABEL_54:
  v33 = 0;
LABEL_55:

  if ((v79 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v76;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)p_data
{
  v85 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v52 = 3;
  v53 = 0;
  v54 = 2;
  LODWORD(v70) = 3;
  v71 = v12;
  v72 = 2;
  v73 = 3;
  v74 = v13;
  v75 = 2;
  v76 = 3;
  v77 = v14;
  v78 = 2;
  v79 = 3;
  v80 = v15;
  v81 = 2;
  v82 = 4;
  v83 = &v52;
  v84 = 3;
  v50 = 0;
  v51 = 0;
  __p = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&__p, &v70, &v85, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v48 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "getServiceProviderData");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &v69, &__p, &v45, _MergedGlobals, &v70);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if ((v73 & 1) == 0)
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v70, v71, ", ", 2uLL, &v69);
      v19 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v68 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(v70, v71, ", ", 2uLL, &v69);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v69;
    }

    else
    {
      v21 = v69.__r_.__value_.__r.__words[0];
    }

    v22 = [v20 initWithFormat:@"Script execution failure: %s", v21];
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
      if (!p_data)
      {
        goto LABEL_55;
      }
    }

    else if (!p_data)
    {
      goto LABEL_55;
    }

    v23 = *p_data;
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v26 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v26;
      v64[0] = v22;
      v64[1] = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    }

    else
    {
      v65 = *MEMORY[0x277CCA450];
      v66 = v22;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    }

    goto LABEL_44;
  }

  if (p_data)
  {
    if (v52 == 3)
    {
      if (v54 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v17 = v53;
    }

    else
    {
      v17 = 0;
    }

    *p_data = v17;
  }

  if (v70 == 3)
  {
    if (v72 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = v71;
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = v22;
      p_data = &v22->__r_.__value_.__l.__data_;
      goto LABEL_55;
    }

    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      LODWORD(v69.__r_.__value_.__l.__data_) = 138412290;
      *(v69.__r_.__value_.__r.__words + 4) = v35;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &v69, 0xCu);
    }

    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v37 = v36;
    if (p_data)
    {
      v38 = *p_data;
      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      if (*p_data)
      {
        v41 = *MEMORY[0x277CCA7E8];
        v55[0] = *MEMORY[0x277CCA450];
        v55[1] = v41;
        v56[0] = v36;
        v56[1] = v38;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      }

      else
      {
        v57 = *MEMORY[0x277CCA450];
        v58 = v36;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      }
      v42 = ;
      *p_data = [v39 errorWithDomain:@"ATL" code:8 userInfo:v42];
    }

    goto LABEL_54;
  }

  v28 = ATLLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v69.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v69.__r_.__value_.__r.__words[0]) = v70;
    _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &v69, 8u);
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithFormat:@"Plugin returned wrong dynamic type %d", v70];
  v22 = v30;
  if (p_data)
  {
    v31 = *p_data;
    v24 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    if (*p_data)
    {
      v33 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v33;
      v60[0] = v30;
      v60[1] = v31;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62 = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    }

    v27 = LABEL_44:;
    *p_data = [v24 errorWithDomain:@"ATL" code:8 userInfo:v27];

LABEL_54:
    p_data = 0;
  }

LABEL_55:

  if ((v73 & 1) == 0)
  {
    v69.__r_.__value_.__r.__words[0] = &v70;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v69);
  }

  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  v43 = *MEMORY[0x277D85DE8];

  return p_data;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

+ (id)persistentContext:(id)a3
{
  v3 = a3;
  if (+[PluginDecoder(IndirectMethods) persistentContext:]::onceToken != -1)
  {
    +[PluginDecoder(IndirectMethods) persistentContext:];
  }

  v4 = [+[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = +[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

uint64_t __52__PluginDecoder_IndirectMethods__persistentContext___block_invoke()
{
  +[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)initWithData:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(a3);
}

- (void)initWithData:(os_log_t)log .cold.2(char *a1, uint8_t *buf, os_log_t log)
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
  _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize script %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

@end