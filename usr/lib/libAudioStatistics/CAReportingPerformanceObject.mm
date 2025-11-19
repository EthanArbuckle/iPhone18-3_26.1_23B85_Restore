@interface CAReportingPerformanceObject
- (CAReportingPerformanceObject)initWithProcessIdentifiers:(id)a3;
- (id).cxx_construct;
- (id)endAndReturnPerformanceMetrics;
- (void)abandon;
- (void)begin;
- (void)setConfiguration:(id)a3;
- (void)setSessions:(void *)a3;
@end

@implementation CAReportingPerformanceObject

- (CAReportingPerformanceObject)initWithProcessIdentifiers:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (CAReportingUtilityIsInternalBuild())
  {
    v21.receiver = self;
    v21.super_class = CAReportingPerformanceObject;
    v5 = [(CAReportingPerformanceObject *)&v21 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      [(CAReportingPerformanceObject *)v5 setProcessIdentifiers:v6];

      v7 = objc_alloc_init(MEMORY[0x29EDBA020]);
      [(CAReportingPerformanceObject *)v5 setSessionsLock:v7];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            v13 = [(CAReportingPerformanceObject *)v5 processIdentifiers];
            [v13 addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (void)setConfiguration:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v6 lock];

  objc_storeStrong(&self->_configuration, a3);
  v7 = [(NSDictionary *)self->_configuration objectForKey:@"CAReportingPerfProcesses"];

  if (v7)
  {
    [(NSDictionary *)self->_configuration objectForKey:@"CAReportingPerfProcesses"];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v8 = v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [(CAReportingPerformanceObject *)self processIdentifiers];
          v14 = [v13 containsObject:v12];

          if ((v14 & 1) == 0)
          {
            v15 = [(CAReportingPerformanceObject *)self processIdentifiers];
            [v15 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v16 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v16 unlock];

  v17 = *MEMORY[0x29EDCA608];
}

- (void)begin
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v2 lock];

  v3 = [(CAReportingPerformanceObject *)self sessions];
  if (v3[1] != *v3)
  {
    v4 = 0;
    do
    {
      v5 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4);
      v6 = pc_session_destroy();
      if (v6)
      {
        v7 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v49.__r_.__value_.__r.__words[0] = strerror(v6);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v49.__r_.__value_.__l.__data_);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
          *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 100;
          WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf.__r_.__value_.__r.__words[2]) = v6;
          v59 = 2080;
          *v60 = *&v63[6];
          _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
          if (v62 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v8 = [(CAReportingPerformanceObject *)self sessions];
      ++v4;
    }

    while (v4 < (v8[1] - *v8) >> 3);
  }

  v9 = [(CAReportingPerformanceObject *)self sessions];
  v9[1] = *v9;
  v10 = [(CAReportingPerformanceObject *)self sessions];
  v11 = [(CAReportingPerformanceObject *)self processIdentifiers];
  std::vector<pc_session *>::reserve(v10, [v11 count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = [(CAReportingPerformanceObject *)self processIdentifiers];
  v13 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v13)
  {
    v14 = *v55;
    v46 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        __errnum = 0;
        v17 = *MEMORY[0x29EDCA610];
        v18 = pc_session_create();
        if (!v18)
        {
          v20 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = __errnum;
            v52 = strerror(__errnum);
            caulk::slog::detail::string_converter::string_converter<char *>(&buf, &v52);
            v22 = *&v60[6];
            v23 = __error();
            v48 = strerror(*v23);
            caulk::slog::detail::string_converter::string_converter<char *>(&v49, &v48);
            LODWORD(__p.__r_.__value_.__l.__data_) = 136316162;
            *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = 133;
            WORD1(__p.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(__p.__r_.__value_.__r.__words[2]) = v21;
            v62 = 2080;
            *v63 = v22;
            *&v63[8] = 2080;
            *&v63[10] = v51;
            _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_create failed { (*__error())=%i, strerror=%s, strerror((*__error()))=%s }", &__p, 0x2Cu);
            if (v50 == 1 && SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            if (v59 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_21;
        }

        [v16 intValue];
        v19 = pc_session_set_procpid();
        if (v19)
        {
          v20 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v49.__r_.__value_.__r.__words[0] = strerror(v19);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v49.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 111;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v19;
            v59 = 2080;
            *v60 = *&v63[6];
            _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_set_procpid failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v62 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_21:

          continue;
        }

        v24 = pc_session_add_metric();
        if (v24)
        {
          v25 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v49.__r_.__value_.__r.__words[0] = strerror(v24);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v49.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 117;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v24;
            v59 = 2080;
            *v60 = *&v63[6];
            _os_log_impl(&dword_296C89000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_add_metric for kPCMetricDirtyMemRecentPeakID failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v62 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        pc_session_add_metric();
        if (v24)
        {
          v26 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v49.__r_.__value_.__r.__words[0] = strerror(v24);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v49.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 122;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v24;
            v59 = 2080;
            *v60 = *&v63[6];
            _os_log_impl(&dword_296C89000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_add_metric for kPCMetricDirtyMemPeakDeltaID failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v62 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v27 = pc_session_begin();
        if (v27)
        {
          v28 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v49.__r_.__value_.__r.__words[0] = strerror(v27);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v49.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 127;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v27;
            v59 = 2080;
            *v60 = *&v63[6];
            _os_log_impl(&dword_296C89000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_begin failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v62 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          v29 = [(CAReportingPerformanceObject *)self sessions];
          v30 = v29;
          v32 = v29[1];
          v31 = v29[2];
          if (v32 >= v31)
          {
            v34 = (v32 - *v29) >> 3;
            if ((v34 + 1) >> 61)
            {
              std::vector<pc_session *>::__throw_length_error[abi:ne200100]();
            }

            v35 = v31 - *v29;
            v36 = v35 >> 2;
            if (v35 >> 2 <= (v34 + 1))
            {
              v36 = v34 + 1;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v37 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<pc_session *>>(v29, v37);
            }

            v38 = (8 * v34);
            *v38 = v18;
            v33 = 8 * v34 + 8;
            v39 = v29[1] - *v29;
            v40 = v38 - v39;
            memcpy(v38 - v39, *v29, v39);
            v41 = *v30;
            *v30 = v40;
            v30[1] = v33;
            v30[2] = 0;
            if (v41)
            {
              operator delete(v41);
            }

            v12 = v46;
          }

          else
          {
            *v32 = v18;
            v33 = (v32 + 1);
          }

          v30[1] = v33;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v13);
  }

  [(CAReportingPerformanceObject *)self setHostApplicationDisplayID:@"unknown"];
  v42 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:@"HostApplicationDisplayID"];
  [(CAReportingPerformanceObject *)self setHostApplicationDisplayID:v42];

  v43 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 142;
    _os_log_impl(&dword_296C89000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=begin", &__p, 0x12u);
  }

  v44 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v44 unlock];

  v45 = *MEMORY[0x29EDCA608];
}

- (id)endAndReturnPerformanceMetrics
{
  v53 = *MEMORY[0x29EDCA608];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = objc_opt_new();
  if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::once != -1)
  {
    [CAReportingPerformanceObject endAndReturnPerformanceMetrics];
  }

  v3 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v3 lock];

  v4 = 0;
  *&v5 = 136315394;
  v34 = v5;
  while (1)
  {
    v6 = [(CAReportingPerformanceObject *)self sessions];
    if (v4 >= (v6[1] - *v6) >> 3)
    {
      break;
    }

    if (*(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4))
    {
      v7 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4);
      v8 = pc_session_end();
      if (v8)
      {
        v9 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v35 = strerror(v8);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v35);
          *buf = 136315906;
          v46 = "CAReportingPerformanceUtility.mm";
          v47 = 1024;
          v48 = 172;
          v49 = 1024;
          v50 = v8;
          v51 = 2080;
          v52 = v44;
          _os_log_impl(&dword_296C89000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_end failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
          if (v43 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v10 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4);
      procname = pc_session_get_procname();
      if (procname)
      {
        v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:procname];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"Unknown";
        }

        v14 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        [v37[5] setObject:v14 forKeyedSubscript:v13];

        v15 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4);
        v16 = v13;
        values = pc_session_get_values();
        if (values)
        {
          v18 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v35 = strerror(values);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v35);
            *buf = 136315906;
            v46 = "CAReportingPerformanceUtility.mm";
            v47 = 1024;
            v48 = 199;
            v49 = 1024;
            v50 = values;
            v51 = 2080;
            v52 = v44;
            _os_log_impl(&dword_296C89000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_get_values failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v43 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled == 1)
        {
          v19 = [(CAReportingPerformanceObject *)self hostApplicationDisplayID];
          v20 = [v37[5] objectForKeyedSubscript:v16];
          [v20 setObject:v19 forKeyedSubscript:@"HostApplicationDisplayID"];

          v21 = CAReportingUtilityGenerateServiceNameFromServiceType(self->_serviceType);
          v22 = [v37[5] objectForKeyedSubscript:v16];
          [v22 setObject:v21 forKeyedSubscript:@"serviceType"];
        }
      }

      else
      {
        v24 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = v34;
          *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = 207;
          _os_log_impl(&dword_296C89000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_get_procname failed", &__p, 0x12u);
        }
      }

      v25 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4);
      v26 = pc_session_destroy();
      if (v26)
      {
        v27 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v35 = strerror(v26);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v35);
          *buf = 136315906;
          v46 = "CAReportingPerformanceUtility.mm";
          v47 = 1024;
          v48 = 212;
          v49 = 1024;
          v50 = v26;
          v51 = 2080;
          v52 = v44;
          _os_log_impl(&dword_296C89000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
          if (v43 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else
    {
      v23 = *AA_PerformanceUtilityCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = v34;
        *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = 166;
        _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempting to end invalid pc_session", &__p, 0x12u);
      }
    }

    ++v4;
  }

  v28 = [(CAReportingPerformanceObject *)self sessions];
  v28[1] = *v28;
  v29 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = v34;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 218;
    _os_log_impl(&dword_296C89000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=destroy", &__p, 0x12u);
  }

  v30 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v30 unlock];

  v31 = v37[5];
  _Block_object_dispose(&v36, 8);

  v32 = *MEMORY[0x29EDCA608];

  return v31;
}

BOOL __62__CAReportingPerformanceObject_endAndReturnPerformanceMetrics__block_invoke()
{
  result = CAReportingUtilityReadBooleanPref(&cfstr_CareportingEna.isa, &cfstr_ComAppleCoreau_0.isa);
  [CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled = result;
  return result;
}

void __62__CAReportingPerformanceObject_endAndReturnPerformanceMetrics__block_invoke_24(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[2] = *MEMORY[0x29EDCA608];
  v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a7];
  if (v12)
  {
    if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled == 1)
    {
      v20[0] = @"value";
      v13 = [MEMORY[0x29EDBA070] numberWithDouble:a2];
      v20[1] = @"unit";
      v21[0] = v13;
      v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a9];
      v21[1] = v14;
      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v16 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      [v16 setObject:v15 forKeyedSubscript:v12];
    }

    else
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v18 = v12;
      v14 = [MEMORY[0x29EDBA070] numberWithDouble:a2];
      v19 = v14;
      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v13 addEntriesFromDictionary:v15];
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)abandon
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v3 lock];

  v4 = [(CAReportingPerformanceObject *)self sessions];
  if (*v4 != v4[1])
  {
    v5 = [(CAReportingPerformanceObject *)self sessions];
    if (v5[1] != *v5)
    {
      v7 = 0;
      *&v6 = 136315906;
      v22 = v6;
      do
      {
        v8 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v7);
        v9 = pc_session_end();
        if (v9)
        {
          v10 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v23 = strerror(v9);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v23);
            *buf = v22;
            v28 = "CAReportingPerformanceUtility.mm";
            v29 = 1024;
            v30 = 239;
            v31 = 1024;
            v32 = v9;
            v33 = 2080;
            v34 = v26;
            _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_end failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v25 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v11 = *(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v7);
        v12 = pc_session_destroy();
        if (v12)
        {
          v13 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v23 = strerror(v12);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v23);
            *buf = v22;
            v28 = "CAReportingPerformanceUtility.mm";
            v29 = 1024;
            v30 = 244;
            v31 = 1024;
            v32 = v12;
            v33 = 2080;
            v34 = v26;
            _os_log_impl(&dword_296C89000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v25 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v14 = [(CAReportingPerformanceObject *)self sessions];
        ++v7;
      }

      while (v7 < (v14[1] - *v14) >> 3);
    }

    v15 = [(CAReportingPerformanceObject *)self sessions];
    v15[1] = *v15;
  }

  v16 = [(CAReportingPerformanceObject *)self processIdentifiers];
  v17 = [v16 count] == 0;

  if (!v17)
  {
    v18 = [(CAReportingPerformanceObject *)self processIdentifiers];
    [v18 removeAllObjects];
  }

  v19 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 254;
    _os_log_impl(&dword_296C89000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=abandon", &__p, 0x12u);
  }

  v20 = [(CAReportingPerformanceObject *)self sessionsLock];
  [v20 unlock];

  v21 = *MEMORY[0x29EDCA608];
}

- (void)setSessions:(void *)a3
{
  p_sessions = &self->_sessions;
  if (p_sessions != a3)
  {
    std::vector<pc_session *>::__assign_with_size[abi:ne200100]<pc_session **,pc_session **>(p_sessions, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end