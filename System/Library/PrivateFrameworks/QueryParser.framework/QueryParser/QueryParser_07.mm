void sub_1C65F5EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  a15 = &a24;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL std::string::starts_with[abi:ne200100](uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return std::string_view::starts_with[abi:ne200100](v8, __s, v4);
}

void QP::QueryParserEngine::setEmbeddingString(QP::QueryParserEngine *this, const __CFString *a2, const __CFDictionary *a3, BOOL a4, BOOL a5, char a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if ((a6 & 1) == 0 && *(*(this + 13) + 32) == 1)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v9 = parserLogger(void)::log;
    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(this + 1) + 48);
      v11 = *(*(this + 13) + 24) > 0;
      *buf = 134218240;
      v26 = v10;
      v27 = 1024;
      v28 = v11;
      v12 = "[QPNLU][qid=%ld] skipping embedding generation for the same queryID && previous request (error: %d)";
      v13 = v9;
      v14 = 18;
LABEL_26:
      _os_log_impl(&dword_1C6584000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (*(*(this + 1) + 61) == 1)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v15 = parserLogger(void)::log;
    if (!os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v16 = *(*(this + 1) + 48);
    *buf = 134217984;
    v26 = v16;
    v12 = "[QPNLU][qid=%ld] not generating query embedding due to missing annotations (lexicon-based safety resources)";
    goto LABEL_25;
  }

  v17 = *(this + 13);
  if (!v17)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v15 = parserLogger(void)::log;
    if (!os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v19 = *(*(this + 1) + 48);
    *buf = 134217984;
    v26 = v19;
    v12 = "[QPNLU][qid=%ld] not generating query embedding due to no embedder available";
LABEL_25:
    v13 = v15;
    v14 = 12;
    goto LABEL_26;
  }

  if ((QP::Embedder::shouldEmbedLanguage(v17, a3, &v24) & 1) == 0)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v15 = parserLogger(void)::log;
    if (!os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v20 = *(*(this + 1) + 48);
    *buf = 134217984;
    v26 = v20;
    v12 = "[QPNLU][qid=%ld] not generating query embedding due to failed language check";
    goto LABEL_25;
  }

  if (v24 || QP::Embedder::shouldEmbedString(*(this + 13), a2))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___ZN2QP17QueryParserEngine18setEmbeddingStringEPK10__CFStringPK14__CFDictionarybbby_block_invoke;
    v23[3] = &__block_descriptor_tmp_62;
    v23[4] = this;
    v23[5] = a3;
    QP::QueryParserEngine::embeddingString(this, a2, v18, 0, 0, v23);
    goto LABEL_27;
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v15 = parserLogger(void)::log;
  if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(this + 1) + 48);
    *buf = 134217984;
    v26 = v22;
    v12 = "[QPNLU][qid=%ld] not generating query embedding due to failed string check in non-CJK";
    goto LABEL_25;
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
}

void QP::QueryParserEngine::embeddingString(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v119 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v107 = Mutable;
  v12 = CFArrayCreateMutable(v9, 0, v10);
  v106 = v12;
  v13 = CFAttributedStringCreateMutable(v9, 0);
  v105 = v13;
  if (Mutable)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v95 = a6;
    v16 = (a1 + 1);
    v15 = a1[1];
    if (*(v15 + 64) == 1 && a1[11])
    {
      IsSearchToolSearch = SPQueryKindIsSearchToolSearch(*(v15 + 192));
      v15 = *v16;
    }

    else
    {
      IsSearchToolSearch = 0;
    }

    replacement = a2;
    if (*(v15 + 8) == 10)
    {
      v17 = 1;
    }

    else
    {
      v17 = *(v15 + 59);
    }

    IsSpotlightUISearch = SPQueryKindIsSpotlightUISearch(*(v15 + 192));
    IsShortcutsSearch = QPQueryKindIsShortcutsSearch(*(*v16 + 192));
    v20 = *v16;
    if (IsSpotlightUISearch)
    {
      v21 = 0;
    }

    else if (*(v20 + 8) == 10)
    {
      v21 = *(v20 + 59);
    }

    else
    {
      v21 = 1;
    }

    v22 = v17 & 1;
    v23 = v21 & 1;
    if (!IsShortcutsSearch && *(v20 + 63) == 1 && (v24 = a1[10]) != 0)
    {
      v26 = *(v24 + 48);
      v25 = *(v24 + 56);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v94 = v26 != 0;
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        v20 = *v16;
      }

      else
      {
        v94 = v26 != 0;
      }
    }

    else
    {
      v94 = 0;
    }

    if ((*(v20 + 60) & 1) == 0)
    {
      v27 = a1[5];
      if (v27)
      {
        cf = 0;
        p_cf = &cf;
        v103 = 0x2000000000;
        v104 = 0;
        v114.__r_.__value_.__r.__words[0] = 0;
        v114.__r_.__value_.__l.__size_ = &v114;
        v114.__r_.__value_.__r.__words[2] = 0x3802000000;
        v115 = __Block_byref_object_copy__63;
        v117 = 0;
        v118 = 0;
        v116 = __Block_byref_object_dispose__64;
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 0x40000000;
        v98[2] = ___ZN2QP17QueryParserEngine15embeddingStringEPK10__CFStringybbU13block_pointerFvPK9__CFArrayS6_NS_25QPQueryEmbeddingErrorCodeEE_block_invoke;
        v98[3] = &unk_1E82674A0;
        v98[5] = &v114;
        v98[6] = a1;
        v99 = v22;
        v98[4] = &cf;
        v100 = v23;
        QP::Lexer::enumerateAnnotations(v27, v98);
        if (p_cf[3])
        {
          if (parserLogger(void)::token != -1)
          {
            QP::QueryParserEngine::init();
          }

          v28 = parserLogger(void)::log;
          if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            v53 = *(*v16 + 48);
            v54 = p_cf[3];
            v55 = *(*v16 + 8);
            v57 = *(v114.__r_.__value_.__l.__size_ + 40);
            v56 = *(v114.__r_.__value_.__l.__size_ + 48);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134219010;
            *(buf.__r_.__value_.__r.__words + 4) = v53;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v54;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
            v109 = v55;
            v110 = 2048;
            v111 = v57;
            v112 = 2048;
            v113 = v56;
            _os_log_error_impl(&dword_1C6584000, v28, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] %@ query token for context '%lu' in range {location: %ld, length: %ld}, avoid embedding search", &buf, 0x34u);
            if (parserLogger(void)::token != -1)
            {
              QP::QueryParserEngine::init();
            }
          }

          v29 = os_signpost_id_generate(parserLogger(void)::log);
          if (parserLogger(void)::token != -1)
          {
            QP::QueryParserEngine::init();
          }

          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v30 = parserLogger(void)::log;
            if (os_signpost_enabled(parserLogger(void)::log))
            {
              v31 = *(*v16 + 48);
              v32 = p_cf[3];
              v33 = *(*v16 + 8);
              v35 = *(v114.__r_.__value_.__l.__size_ + 40);
              v34 = *(v114.__r_.__value_.__l.__size_ + 48);
              LODWORD(buf.__r_.__value_.__l.__data_) = 134219010;
              *(buf.__r_.__value_.__r.__words + 4) = v31;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
              v109 = v33;
              v110 = 2048;
              v111 = v35;
              v112 = 2048;
              v113 = v34;
              _os_signpost_emit_with_name_impl(&dword_1C6584000, v30, OS_SIGNPOST_EVENT, v29, "QPParserSensitiveQuery", "[QPNLU][qid=%ld] %@ query token for context '%lu' in range {location: %ld, length: %ld}, avoid embedding search", &buf, 0x34u);
            }
          }

          (*(v95 + 16))(v95, 0, 0, 2);
          _Block_object_dispose(&v114, 8);
          _Block_object_dispose(&cf, 8);
          goto LABEL_175;
        }

        _Block_object_dispose(&v114, 8);
        _Block_object_dispose(&cf, 8);
      }
    }

    if (!v22)
    {
      goto LABEL_101;
    }

    v120.location = 0;
    v120.length = 0;
    CFAttributedStringReplaceString(v13, v120, a2);
    if (IsSearchToolSearch)
    {
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      v36 = parserLogger(void)::log;
      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(*v16 + 48);
        LODWORD(v114.__r_.__value_.__l.__data_) = 134217984;
        *(v114.__r_.__value_.__r.__words + 4) = v37;
        _os_log_impl(&dword_1C6584000, v36, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Getting embedding string from LLM parser", &v114, 0xCu);
      }

      EmbeddingString = *(a1[11] + 104);
      goto LABEL_76;
    }

    v39 = *v16;
    if (*(*v16 + 63) == 1)
    {
      v40 = a1[10];
      if (v40)
      {
        v42 = *(v40 + 48);
        v41 = *(v40 + 56);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          if (!v42)
          {
            goto LABEL_75;
          }

          v39 = *v16;
        }

        else if (!v42)
        {
          goto LABEL_75;
        }

        if (*(v39 + 62) == 1)
        {
          v43 = a1[10];
          v44 = *(v43 + 48);
          v45 = *(v43 + 56);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          isIntentUnsafe = QP::U2Parser::isIntentUnsafe(v44);
          v47 = isIntentUnsafe;
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            if (v47)
            {
LABEL_60:
              if (parserLogger(void)::token != -1)
              {
                QP::QueryParserEngine::init();
              }

              v48 = parserLogger(void)::log;
              if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
              {
                QP::QueryParserEngine::embeddingString((a1 + 1), v48);
              }

              v49 = os_signpost_id_generate(parserLogger(void)::log);
              if (parserLogger(void)::token != -1)
              {
                QP::QueryParserEngine::init();
              }

              if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v50 = parserLogger(void)::log;
                if (os_signpost_enabled(parserLogger(void)::log))
                {
                  v51 = *(*v16 + 48);
                  v52 = *(*v16 + 8);
                  LODWORD(v114.__r_.__value_.__l.__data_) = 134218240;
                  *(v114.__r_.__value_.__r.__words + 4) = v51;
                  WORD2(v114.__r_.__value_.__r.__words[1]) = 2048;
                  *(&v114.__r_.__value_.__r.__words[1] + 6) = v52;
                  _os_signpost_emit_with_name_impl(&dword_1C6584000, v50, OS_SIGNPOST_EVENT, v49, "QPParserUnsafeIntent", "[QPNLU][qid=%ld] Unsafe intent for context '%lu', avoid embedding search", &v114, 0x16u);
                }
              }

              (*(v95 + 16))(v95, 0, 0, 3);
              goto LABEL_175;
            }
          }

          else if (isIntentUnsafe)
          {
            goto LABEL_60;
          }
        }

        v58 = *(*v16 + 8);
        if (v58 > 0xD || ((1 << v58) & 0x2A01) == 0)
        {
          if (parserLogger(void)::token != -1)
          {
            QP::QueryParserEngine::init();
          }

          v89 = parserLogger(void)::log;
          if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v90 = *(*v16 + 48);
            LODWORD(v114.__r_.__value_.__l.__data_) = 134217984;
            *(v114.__r_.__value_.__r.__words + 4) = v90;
            _os_log_impl(&dword_1C6584000, v89, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Getting embedding string from U2 parser", &v114, 0xCu);
          }

          v91 = a1[10];
          v92 = *(v91 + 48);
          v93 = *(v91 + 56);
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          EmbeddingString = QP::U2Parser::getEmbeddingString(v92);
          if (v93)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v93);
          }

LABEL_76:
          if (v13)
          {
            v59.length = CFAttributedStringGetLength(v13);
            if (EmbeddingString)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v59.length = 0;
            if (EmbeddingString)
            {
LABEL_78:
              v59.location = 0;
              CFAttributedStringReplaceAttributedString(v13, v59, EmbeddingString);
              if (parserLogger(void)::token != -1)
              {
                QP::QueryParserEngine::init();
              }

              v60 = parserLogger(void)::log;
              if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v61 = *(*v16 + 48);
                if (replacement)
                {
                  Length = CFStringGetLength(replacement);
                  if (v13)
                  {
LABEL_83:
                    v63 = CFAttributedStringGetLength(v13);
                    goto LABEL_93;
                  }
                }

                else
                {
                  Length = 0;
                  if (v13)
                  {
                    goto LABEL_83;
                  }
                }

                v63 = 0;
LABEL_93:
                LODWORD(v114.__r_.__value_.__l.__data_) = 134218496;
                *(v114.__r_.__value_.__r.__words + 4) = v61;
                WORD2(v114.__r_.__value_.__r.__words[1]) = 2048;
                *(&v114.__r_.__value_.__r.__words[1] + 6) = Length;
                HIWORD(v114.__r_.__value_.__r.__words[2]) = 2048;
                v115 = v63;
                _os_log_impl(&dword_1C6584000, v60, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Modified photo embedding string (len: %ld) -> (len: %ld)", &v114, 0x20u);
                if (!v13)
                {
                  goto LABEL_108;
                }

LABEL_94:
                String = CFAttributedStringGetString(v13);
                MutableCopy = CFStringCreateMutableCopy(v9, 0, String);
                v66 = MutableCopy;
                v114.__r_.__value_.__r.__words[0] = MutableCopy;
                if (MutableCopy)
                {
                  CFStringTrimWhitespace(MutableCopy);
                  if (CFStringGetLength(v66) < 1)
                  {
                    if (parserLogger(void)::token != -1)
                    {
                      QP::QueryParserEngine::init();
                    }

                    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                    {
                      QP::QueryParserEngine::embeddingString((a1 + 1));
                    }

                    v13 = 0;
                  }

                  else
                  {
                    CFArrayAppendValue(Mutable, v13);
                    CFArrayAppendValue(v12, @"_kMDItemPhotoEmbedding");
                    v13 = 1;
                  }

                  CFRelease(v66);
LABEL_108:
                  if (!v23)
                  {
LABEL_165:
                    if (v13)
                    {
                      if (parserLogger(void)::token != -1)
                      {
                        QP::QueryParserEngine::init();
                      }

                      v86 = parserLogger(void)::log;
                      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                      {
                        v87 = *(*v16 + 48);
                        LODWORD(v114.__r_.__value_.__l.__data_) = 134218240;
                        *(v114.__r_.__value_.__r.__words + 4) = v87;
                        WORD2(v114.__r_.__value_.__r.__words[1]) = 2048;
                        *(&v114.__r_.__value_.__r.__words[1] + 6) = v13;
                        _os_log_impl(&dword_1C6584000, v86, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Requesting %ld query embeddings", &v114, 0x16u);
                      }

                      (*(v95 + 16))(v95, Mutable, v12, 0);
                    }

                    else
                    {
                      if (parserLogger(void)::token != -1)
                      {
                        QP::QueryParserEngine::init();
                      }

                      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        QP::QueryParserEngine::embeddingString(v16);
                      }
                    }

                    goto LABEL_175;
                  }

                  memset(&buf, 0, sizeof(buf));
                  if (IsSearchToolSearch)
                  {
                    v67 = a1[11];
                    if (*(v67 + 159) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v114, *(v67 + 136), *(v67 + 144));
                    }

                    else
                    {
                      v114 = *(v67 + 136);
                    }

                    buf = v114;
                    size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
                    v68 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
                    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      size = buf.__r_.__value_.__l.__size_;
                    }

                    if (size)
                    {
                      if (parserLogger(void)::token != -1)
                      {
                        QP::QueryParserEngine::init();
                      }

                      v70 = parserLogger(void)::log;
                      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        v71 = *(*v16 + 48);
                        p_buf = buf.__r_.__value_.__r.__words[0];
                        if (v68 >= 0)
                        {
                          p_buf = &buf;
                        }

                        LODWORD(v114.__r_.__value_.__l.__data_) = 134218242;
                        *(v114.__r_.__value_.__r.__words + 4) = v71;
                        WORD2(v114.__r_.__value_.__r.__words[1]) = 2080;
                        *(&v114.__r_.__value_.__r.__words[1] + 6) = p_buf;
                        _os_log_error_impl(&dword_1C6584000, v70, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Not requesting a text query embedding based on LLM QU parse because %s", &v114, 0x16u);
                        LOBYTE(v68) = *(&buf.__r_.__value_.__s + 23);
                      }

LABEL_163:
                      if ((v68 & 0x80) != 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    LOBYTE(v68) = 0;
                  }

                  cf = 0;
                  if (v94)
                  {
                    if (parserLogger(void)::token != -1)
                    {
                      QP::QueryParserEngine::init();
                    }

                    v73 = parserLogger(void)::log;
                    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = *(*v16 + 48);
                      LODWORD(v114.__r_.__value_.__l.__data_) = 134217984;
                      *(v114.__r_.__value_.__r.__words + 4) = v74;
                      _os_log_impl(&dword_1C6584000, v73, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Getting embedding string from U2 parser", &v114, 0xCu);
                    }

                    v75 = a1[10];
                    v76 = *(v75 + 48);
                    v77 = *(v75 + 56);
                    if (v77)
                    {
                      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v78 = QP::U2Parser::getEmbeddingString(v76);
                    if (v77)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
                    }

                    if (v78)
                    {
                      v79 = CFAttributedStringGetString(v78);
                      v80 = CFStringCreateMutableCopy(v9, 0, v79);
                      nlp::CFScopedPtr<__CFString *>::reset(&cf, v80);
                    }

                    else
                    {
                      if (parserLogger(void)::token != -1)
                      {
                        QP::QueryParserEngine::init();
                      }

                      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        QP::QueryParserEngine::embeddingString(v16);
                      }
                    }

                    v81 = cf;
                    if (!cf)
                    {
LABEL_152:
                      if (parserLogger(void)::token != -1)
                      {
                        QP::QueryParserEngine::init();
                      }

                      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        QP::QueryParserEngine::embeddingString(v16);
                      }

LABEL_161:
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      goto LABEL_163;
                    }
                  }

                  else
                  {
                    v81 = CFStringCreateMutableCopy(v9, 0, replacement);
                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    cf = v81;
                    if (!v81)
                    {
                      goto LABEL_152;
                    }
                  }

                  CFStringTrimWhitespace(v81);
                  if (CFStringGetLength(cf) < 1)
                  {
                    if (parserLogger(void)::token != -1)
                    {
                      QP::QueryParserEngine::init();
                    }

                    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                    {
                      QP::QueryParserEngine::embeddingString(v16);
                    }
                  }

                  else
                  {
                    if (parserLogger(void)::token != -1)
                    {
                      QP::QueryParserEngine::init();
                    }

                    v82 = parserLogger(void)::log;
                    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      v83 = *(*v16 + 48);
                      if (replacement)
                      {
                        v84 = CFStringGetLength(replacement);
                      }

                      else
                      {
                        v84 = 0;
                      }

                      v85 = cf;
                      if (cf)
                      {
                        v85 = CFStringGetLength(cf);
                      }

                      LODWORD(v114.__r_.__value_.__l.__data_) = 134218496;
                      *(v114.__r_.__value_.__r.__words + 4) = v83;
                      WORD2(v114.__r_.__value_.__r.__words[1]) = 2048;
                      *(&v114.__r_.__value_.__r.__words[1] + 6) = v84;
                      HIWORD(v114.__r_.__value_.__r.__words[2]) = 2048;
                      v115 = v85;
                      _os_log_impl(&dword_1C6584000, v82, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Modified text embedding string (len: %ld) -> (len: %ld)", &v114, 0x20u);
                    }

                    CFArrayAppendValue(Mutable, cf);
                    CFArrayAppendValue(v12, @"_kMDItemPrimaryTextEmbedding");
                    ++v13;
                  }

                  goto LABEL_161;
                }

                if (parserLogger(void)::token != -1)
                {
                  QP::QueryParserEngine::init();
                }

                if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
                {
                  QP::QueryParserEngine::embeddingString((a1 + 1));
                }

LABEL_101:
                v13 = 0;
                goto LABEL_108;
              }

LABEL_89:
              if (!v13)
              {
                goto LABEL_108;
              }

              goto LABEL_94;
            }
          }

          v59.location = 0;
          CFAttributedStringReplaceString(v13, v59, &stru_1F45E9EA0);
          if (parserLogger(void)::token != -1)
          {
            QP::QueryParserEngine::init();
          }

          if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QP::QueryParserEngine::embeddingString((a1 + 1));
          }

          goto LABEL_89;
        }
      }
    }

LABEL_75:
    EmbeddingString = 0;
    goto LABEL_76;
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_ERROR))
  {
    QP::QueryParserEngine::embeddingString(a1);
  }

LABEL_175:
  if (v105)
  {
    CFRelease(v105);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  v88 = *MEMORY[0x1E69E9840];
}

void sub_1C65F7108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, const void *a27, const void *a28, void *__p)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  nlp::CFScopedPtr<__CFAttributedString *>::reset(&a26, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a27, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a28, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP17QueryParserEngine18setEmbeddingStringEPK10__CFStringPK14__CFDictionarybbby_block_invoke(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (a4 >= 1)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v9 = parserLogger(void)::log;
    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(v8 + 8) + 48);
      v16 = 134217984;
      v17 = v10;
      _os_log_impl(&dword_1C6584000, v9, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] obtained error while processing embedding", &v16, 0xCu);
    }
  }

  *(*(v8 + 104) + 24) = a4;
  if (theArray && a3 && (Count = CFArrayGetCount(theArray), Count == CFArrayGetCount(a3)) && CFArrayGetCount(theArray) >= 1)
  {
    if (*(*(v8 + 8) + 60))
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    QP::Embedder::setInputs(*(v8 + 104), theArray, a3, *(a1 + 40), *v12);
  }

  else
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v13 = parserLogger(void)::log;
    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(v8 + 8) + 48);
      v16 = 134217984;
      v17 = v14;
      _os_log_impl(&dword_1C6584000, v13, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] not generating embedding for empty / invalid embedding inputs / keys array", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

__n128 __Block_byref_object_copy__63(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN2QP17QueryParserEngine15embeddingStringEPK10__CFStringybbU13block_pointerFvPK9__CFArrayS6_NS_25QPQueryEmbeddingErrorCodeEE_block_invoke(uint64_t result, __CFString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = result;
  v10 = *(result + 48);
  if (*(result + 56) == 1)
  {
    result = CFStringsAreEqual(@"OFFENSIVE", a2);
    if (result || (result = CFStringsAreEqual(@"PHOTOSENSITIVE", a2), result))
    {
      *(*(*(v9 + 32) + 8) + 24) = a2;
      v11 = *(*(v9 + 40) + 8);
      *(v11 + 40) = a3;
      *(v11 + 48) = a4;
      *a5 = 1;
    }
  }

  if (*(v9 + 57) == 1 && *(*(v10 + 8) + 8) == 2)
  {
    result = CFStringsAreEqual(@"OFFENSIVE", a2);
    if (result || (result = CFStringsAreEqual(@"TEXTSENSITIVE", a2), result))
    {
      *(*(*(v9 + 32) + 8) + 24) = a2;
      v12 = *(*(v9 + 40) + 8);
      *(v12 + 40) = a3;
      *(v12 + 48) = a4;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t QP::QueryParserEngine::string(QP::QueryParserEngine *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *(v1 + 440);
  }

  else
  {
    return 0;
  }
}

void QP::QueryParserEngine::setDate(QP::QueryParserEngine *this, const __CFDate *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    QP::ParserConfiguration::setDate(v2, a2);
  }
}

uint64_t QP::QueryParserEngine::getDate(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t QP::QueryParserEngine::getCalendar(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 96);
  }

  else
  {
    return 0;
  }
}

void QP::QueryParserEngine::updateWithOptions(QP::ParserConfiguration **this, const __CFDictionary *a2, int a3)
{
  if (this[1])
  {
    if (a3)
    {
      QP::QueryParserEngine::loadKnowledgeSource(this, a2);
    }

    QP::ParserConfiguration::update(this[1]);
    QP::Lexer::updateResources(this[5]);
    QP::Lexer::clear(this[5]);
    QP::Parser::clear(this[10]);
    v4 = this[11];
    if (v4)
    {

      QP::LLMParser::clear(v4);
    }
  }
}

uint64_t QP::QueryParserEngine::updateEntitySearch(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    QP::Lexer::updateTagger(*(this + 40));
    v2 = *(**(v1 + 96) + 48);

    return v2();
  }

  return this;
}

_DWORD *QP::QueryParserEngine::setFormat(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 8);
  if (result)
  {
    return QP::ParserConfiguration::setParserFormat(result, a2, a3);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setCustomFieldSpecifications(QP::QueryParserEngine *this, const __CFDictionary *a2, int a3)
{
  result = *(this + 1);
  if (result)
  {
    result = QP::ParserConfiguration::setCustomFieldSpecifications(result, a2, a3);
    if (result)
    {
      v5 = *(this + 14);
      if (v5)
      {
        QPSpotlightKnowledgeSourceSetCustomFields(v5, *(*(this + 1) + 232));
      }

      return 1;
    }
  }

  return result;
}

QP::ParserConfiguration *QP::QueryParserEngine::setContextIdentifier(QP::QueryParserEngine *this, const __CFString *a2, int a3)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setAppContext(result, a2, a3);
  }

  return result;
}

QP::ParserConfiguration *QP::QueryParserEngine::setCustomResourceDirectory(QP::QueryParserEngine *this, const __CFURL *a2, int a3)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setCustomResourceDirectory(result, a2, a3);
  }

  return result;
}

uint64_t QP::QueryParserEngine::getCustomResourceDirectory(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 176);
  }

  else
  {
    return 0;
  }
}

uint64_t QP::QueryParserEngine::setLoadAnnotations(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setAnnotationsEnabled(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setIgnoreAttributedParses(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setIgnoreAttributedParses(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setIgnoreFutureDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setIgnoreFutureDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setIgnorePastDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setIgnorePastDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setIgnoreRecurringDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setIgnoreRecurringDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setResolveFutureDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setResolveFutureDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setResolvePastDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setResolvePastDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setResolveConcreteDates(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setResolveConcreteDates(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setUsePartOfSpeech(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setUsePartOfSpeech(result, a2);
  }

  return result;
}

BOOL QP::Parse::isValid(CFStringRef *this)
{
  if (!*this)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *this);
  CFStringTrimWhitespace(MutableCopy);
  v4 = this[8];
  v3 = this[9];
  Length = CFStringGetLength(MutableCopy);
  v6 = 0;
  if (!v4 && v3 == Length)
  {
    v6 = this[5] == this[4];
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v6;
}

void sub_1C65F780C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::enumerateParseResults(void *a1, uint64_t a2)
{
  if (!a1[1])
  {
    return;
  }

  if (!a1[10])
  {
    return;
  }

  if (!a1[12])
  {
    return;
  }

  v27 = 0;
  v3 = a1[7];
  v4 = a1[8];
  if (v3 == v4)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  allocator = *MEMORY[0x1E695E480];
  v10 = -1;
  do
  {
    v11 = a1[12];
    v12 = *(v3 + 8);
    v25 = *v3;
    v26 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v11 + 32))(v11, &v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v13)
    {
      if (v6 && !QP::Parse::isValid(*v3) && (v10 != *(*v3 + 64) || v7 != *(*v3 + 72)))
      {
        v27 = 0;
LABEL_39:
        (*(a2 + 16))(a2, v6, &v27);
        CFRelease(v6);
        goto LABEL_40;
      }

      v15 = *(a1[12] + 56);
      if (v15)
      {
        Copy = CFDictionaryCreateCopy(allocator, v15);
        if (!v6)
        {
          goto LABEL_28;
        }
      }

      else
      {
        Copy = 0;
        if (!v6)
        {
LABEL_28:
          v10 = *(*v3 + 64);
          v7 = *(*v3 + 72);
          v6 = Copy;
          goto LABEL_29;
        }
      }

      (*(a2 + 16))(a2, v6, &v27);
      CFRelease(v6);
      goto LABEL_28;
    }

    v8 = *v3;
    v17 = *(v3 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v9 = v17;
LABEL_29:
    v3 += 16;
  }

  while (v3 != v4);
  v27 = 0;
  if (v6)
  {
    goto LABEL_39;
  }

  if (v8)
  {
    v18 = a1[12];
    v23 = v8;
    v24 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 32))(v18, &v23);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v19 = *(a1[12] + 56);
    if (v19)
    {
      v20 = CFDictionaryCreateCopy(allocator, v19);
      if (v20)
      {
        v22 = 0;
        (*(a2 + 16))(a2, v20, &v22);
        CFRelease(v20);
      }
    }
  }

LABEL_40:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1C65F7A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void QP::QueryParserEngine::enumerateSuggestionResults(void *a1, uint64_t a2)
{
  if (a1[1] && a1[10] && a1[12])
  {
    v26 = 0;
    v25 = 0;
    v4 = a1[7];
    v5 = a1[8];
    if (v4 == v5)
    {
      goto LABEL_41;
    }

    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = -1;
    v9 = -1;
    while (1)
    {
      cf = 0;
      if (*(*v4 + 40) >= v8)
      {
        v10 = a1[12];
        v11 = v4[1];
        v22 = *v4;
        v23 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = (*(*v10 + 32))(v10, &v22);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v12)
        {
          v13 = a1[12];
          v14 = *(v13 + 64);
          if (v14)
          {
            Copy = CFDictionaryCreateCopy(v7, v14);
            v13 = a1[12];
            cf = Copy;
          }

          else
          {
            Copy = 0;
          }

          v16 = *(v13 + 80);
          if (v16 > v9)
          {
            if (CFDictionaryGetCount(Copy))
            {
              v17 = CFRetain(Copy);
              if (v6)
              {
                CFRelease(v6);
                Copy = cf;
              }

              v6 = v17;
LABEL_34:
              v26 = v6;
              v8 = *(*v4 + 40);
              v9 = *(a1[12] + 80);
              if (Copy)
              {
                CFRelease(Copy);
              }

              goto LABEL_36;
            }

            v16 = *(a1[12] + 80);
          }

          if (v16 >= v9)
          {
            if (v6 && CFDictionaryGetCount(v6))
            {
              v18 = v26;
              (*(a2 + 16))(a2, v26, &v25);
              if (v18)
              {
                CFRelease(v18);
              }

              v26 = 0;
            }

            Copy = cf;
            v6 = CFRetain(cf);
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_34;
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          v25 = 1;
        }

        v8 = *(*v4 + 40);
        v9 = *(a1[12] + 80);
      }

      else
      {
        v25 = 1;
      }

LABEL_36:
      v4 += 2;
      if (v4 == v5)
      {
        v25 = 0;
        if (v6 && CFDictionaryGetCount(v6))
        {
          v19 = v26;
          (*(a2 + 16))(a2, v26, &v25);
          if (!v19)
          {
            return;
          }

LABEL_42:
          CFRelease(v19);
          return;
        }

LABEL_41:
        v20 = a1[10];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = ___ZN2QP17QueryParserEngine26enumerateSuggestionResultsEU13block_pointerFvPK14__CFDictionaryPbE_block_invoke;
        v21[3] = &unk_1E82674C8;
        v21[4] = a2;
        v21[5] = a1;
        QP::Parser::enumerateTokenCompletions(v20, v21);
        v19 = v26;
        if (!v26)
        {
          return;
        }

        goto LABEL_42;
      }
    }
  }
}

void sub_1C65F7DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP17QueryParserEngine26enumerateSuggestionResultsEU13block_pointerFvPK14__CFDictionaryPbE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 96);
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  v10 = 0;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 24))(v4, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *(*(v3 + 96) + 64);
  if (v6)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v6);
    v10 = Copy;
    if (Copy)
    {
      (*(*(a1 + 32) + 16))();
      CFRelease(Copy);
    }
  }
}

void sub_1C65F7EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::QueryParserEngine::copyCompletions(QP::QueryParserEngine *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (*(this + 1))
  {
    v2 = *(this + 10);
    if (v2)
    {
      if (*(this + 12))
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = ___ZN2QP17QueryParserEngine15copyCompletionsEv_block_invoke;
        v5[3] = &unk_1E82674F0;
        v5[4] = &v6;
        QP::Parser::enumerateCompletions(v2, v5);
      }
    }
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1C65F7FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QP::QueryParserEngine::copyLastTokenCompletedQuery(QP::QueryParserEngine *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = *(this + 5);
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2QP17QueryParserEngine27copyLastTokenCompletedQueryEv_block_invoke;
    v5[3] = &unk_1E8267518;
    v5[4] = &v6;
    QP::Lexer::enumerateLastTokenCompletedQueries(v2, v5);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1C65F80CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::enumerateDateRangeParses(uint64_t a1, const __CFDictionary *a2, __CFString *a3, __CFDictionary *a4, __CFString *a5, __CFDictionary *a6, uint64_t a7)
{
  v10 = QP::Formatter::copyDisplayStringWithStartAndEndDateForRange(*(a1 + 96), a3, a4, a5, a6);
  if (v10)
  {
    v11 = v10;
    QP::QueryParserEngine::setString(a1, v10, a2, 0, 0, 0, 0, 0);
    QP::QueryParserEngine::enumerateParseResults(a1, a7);
    CFRelease(v11);
  }
}

void sub_1C65F818C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFDataRef QP::QueryParserEngine::copyQueryEmbeddingData(QP::QueryParserEngine *this)
{
  v1 = *(*(this + 13) + 16);
  if (v1)
  {
    return CFDataCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

CFAttributedStringRef QP::QueryParserEngine::copyAttributedInput(QP::QueryParserEngine *this)
{
  v1 = *(*(this + 5) + 448);
  if (v1)
  {
    return CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

void QP::QueryParserEngine::cancelWithQueryReference(QP::Embedder **this, CFDictionaryRef theDict)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"queryID"))
  {
    Value = CFDictionaryGetValue(theDict, @"queryID");
    valuePtr = -1;
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    if (valuePtr != -1)
    {
      QP::Embedder::cancelWithQueryID(this[13], valuePtr);
    }
  }
}

os_log_t ___ZL12parserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QueryParserEngine");
  parserLogger(void)::log = result;
  return result;
}

void QP::Parser::Parser(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = *a3;
  v5 = a3[1];
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[4] = *a4;
  v6 = a4[1];
  a1[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<QP::U2Parser,std::allocator<QP::U2Parser>,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,0>();
}

void sub_1C65F83F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x1C695B850](v15, 0x1020C402AAE87FCLL);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = (v13 + 24);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a12);
  nlp::CFScopedPtr<__CFArray *>::reset(v14, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v13 + 8), 0);
  std::unique_ptr<QP::GraphStructureStack>::reset[abi:ne200100](v13, 0);
  v17 = v12[7];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v12[5];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v12[3];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v12[1];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

QP::GraphStructureStack *std::unique_ptr<QP::GraphStructureStack>::reset[abi:ne200100](QP::GraphStructureStack **a1, QP::GraphStructureStack *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::GraphStructureStack::~GraphStructureStack(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

void *std::__shared_ptr_emplace<QP::U2Parser>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,std::allocator<QP::U2Parser>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E9148;
  std::construct_at[abi:ne200100]<QP::U2Parser,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,QP::U2Parser*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<QP::U2Parser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E9148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::construct_at[abi:ne200100]<QP::U2Parser,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,QP::U2Parser*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  v11 = *a3;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v9 = *a4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::U2Parser::U2Parser(a1, &v13, &v11, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return a1;
}

void sub_1C65F8710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::construct_at[abi:ne200100]<QP::U2Parser,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,QP::U2Parser*>(v10 + 8);
  _Unwind_Resume(a1);
}

void QP::U2Parser::~U2Parser(QP::U2Parser *this)
{
  nlp::CFScopedPtr<__CFAttributedString const*>::reset(this + 26, 0);
  v5 = (this + 184);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 160);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v5);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 19, 0);
  std::__tree<unsigned int>::destroy(this + 128, *(this + 17));
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

void QP::GraphStructureStack::~GraphStructureStack(QP::GraphStructureStack *this)
{
  v3 = (this + 64);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void QP::PhotosFormatter::PhotosFormatter(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  QP::SpotlightFormatter::SpotlightFormatter(a1, v6, v5);
}

void sub_1C65F896C(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v2, 0xC400A2AC0F1);
  v4 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v4)
  {
    MEMORY[0x1C695B850](v4, 0xC400A2AC0F1);
  }

  QP::SpotlightFormatter::~SpotlightFormatter(v1);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::SpotlightFormatter(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(*a2 + 184);
  QP::Formatter::Formatter(a1, v7, v6);
}

void sub_1C65F8CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void QP::Formatter::Formatter(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *a1 = &unk_1F45E8238;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  operator new();
}

void sub_1C65F8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  QP::Formatter::Formatter(v14 + 8);
  nlp::CFScopedPtr<__CFAttributedString *>::reset(v13, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v11 + 24), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(v12, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v11 + 8), 0);
  std::unique_ptr<QP::DateFormatter>::reset[abi:ne200100](v11, 0);
  v16 = *(v10 + 32);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

const void **std::unique_ptr<QP::DateFormatter>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::DateFormatter::~DateFormatter(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

void QP::RemindersParserFormatter::RemindersParserFormatter(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  QP::Formatter::Formatter(a1, v6, v5);
}

void sub_1C65F90FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::PhotosParserFormatter::PhotosParserFormatter(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  QP::Formatter::Formatter(a1, v6, v5);
}

void sub_1C65F91CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::VisualGenerationFormatter::VisualGenerationFormatter(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  QP::Formatter::Formatter(a1, v6, v5);
}

void sub_1C65F92C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  QP::Formatter::~Formatter(v12);
  _Unwind_Resume(a1);
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void *std::__shared_ptr_emplace<QP::ParserConfiguration>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const*&,std::allocator<QP::ParserConfiguration>,0>(void *a1, const __CFDictionary **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E91B8;
  QP::ParserConfiguration::ParserConfiguration((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<QP::ParserConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E91B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void *std::__shared_ptr_emplace<QP::ParserGrammar>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<QP::ParserConfiguration> &,std::allocator<QP::ParserGrammar>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E9208;
  std::construct_at[abi:ne200100]<QP::ParserGrammar,std::shared_ptr<QP::ParserConfiguration> &,QP::ParserGrammar*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<QP::ParserGrammar>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E9208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::construct_at[abi:ne200100]<QP::ParserGrammar,std::shared_ptr<QP::ParserConfiguration> &,QP::ParserGrammar*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::ParserGrammar::ParserGrammar(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1C65F96D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<QP::Lexer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::allocator<QP::Lexer>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E9258;
  std::construct_at[abi:ne200100]<QP::Lexer,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,QP::Lexer*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<QP::Lexer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E9258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::construct_at[abi:ne200100]<QP::Lexer,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,QP::Lexer*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Lexer::Lexer(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_1C65F98BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::~Parser(QP::Parser *this)
{
  v6 = (this + 112);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 88);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v6);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 9, 0);
  std::unique_ptr<QP::GraphStructureStack>::reset[abi:ne200100](this + 8, 0);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void QP::LLMParser::~LLMParser(QP::LLMParser *this)
{
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  nlp::CFScopedPtr<__CFAttributedString const*>::reset(this + 13, 0);
  v5 = (this + 80);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 56);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v5);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 6, 0);
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

void QP::Embedder::~Embedder(const void **this)
{
  nlp::CFScopedPtr<__CFData const*>::reset(this + 2, 0);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 48);
  return result;
}

void OUTLINED_FUNCTION_2_0()
{

  JUMPOUT(0x1C695B850);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1C65FA488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = QPQueryParserManager;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id dateComponentsForDate(NSDictionary *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v3 = [(NSDictionary *)v1 objectForKeyedSubscript:@"d"];

  if (v3)
  {
    v4 = [(NSDictionary *)v1 objectForKeyedSubscript:@"d"];
    [v2 setDay:{objc_msgSend(v4, "intValue")}];
  }

  v5 = [(NSDictionary *)v1 objectForKeyedSubscript:@"M"];

  if (v5)
  {
    v6 = [(NSDictionary *)v1 objectForKeyedSubscript:@"M"];
    [v2 setMonth:{objc_msgSend(v6, "intValue")}];
  }

  v7 = [(NSDictionary *)v1 objectForKeyedSubscript:@"y"];

  if (v7)
  {
    v8 = [(NSDictionary *)v1 objectForKeyedSubscript:@"y"];
    [v2 setYear:{objc_msgSend(v8, "intValue")}];
  }

  v9 = [(NSDictionary *)v1 objectForKeyedSubscript:@"E"];

  if (v9)
  {
    v10 = [(NSDictionary *)v1 objectForKeyedSubscript:@"E"];
    [v2 setWeekday:{objc_msgSend(v10, "intValue")}];
  }

  v11 = [(NSDictionary *)v1 objectForKeyedSubscript:@"F"];

  if (v11)
  {
    v12 = [(NSDictionary *)v1 objectForKeyedSubscript:@"F"];
    [v2 setWeekdayOrdinal:{objc_msgSend(v12, "intValue")}];
  }

  v13 = [(NSDictionary *)v1 objectForKeyedSubscript:@"W"];

  if (v13)
  {
    v14 = [(NSDictionary *)v1 objectForKeyedSubscript:@"W"];
    [v2 setWeekOfMonth:{objc_msgSend(v14, "intValue")}];
  }

  v15 = [(NSDictionary *)v1 objectForKeyedSubscript:@"w"];

  if (v15)
  {
    v16 = [(NSDictionary *)v1 objectForKeyedSubscript:@"w"];
    [v2 setWeekOfYear:{objc_msgSend(v16, "intValue")}];
  }

  v17 = [(NSDictionary *)v1 objectForKeyedSubscript:@"Y"];

  if (v17)
  {
    v18 = [(NSDictionary *)v1 objectForKeyedSubscript:@"Y"];
    [v2 setYearForWeekOfYear:{objc_msgSend(v18, "intValue")}];
  }

  v19 = [(NSDictionary *)v1 objectForKeyedSubscript:@"H"];

  if (v19)
  {
    v20 = [(NSDictionary *)v1 objectForKeyedSubscript:@"H"];
    [v2 setHour:{objc_msgSend(v20, "intValue")}];
  }

  v21 = [(NSDictionary *)v1 objectForKeyedSubscript:@"m"];

  if (v21)
  {
    v22 = [(NSDictionary *)v1 objectForKeyedSubscript:@"m"];
    [v2 setMinute:{objc_msgSend(v22, "intValue")}];
  }

  v23 = [(NSDictionary *)v1 objectForKeyedSubscript:@"s"];

  if (v23)
  {
    v24 = [(NSDictionary *)v1 objectForKeyedSubscript:@"s"];
    [v2 setSecond:{objc_msgSend(v24, "intValue")}];
  }

  return v2;
}

void sub_1C65FB4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C65FB8C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_1C65FBC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C65FC0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C65FC46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose((v17 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_1C65FC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZL24queryParserManagerLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPQueryParserManager");
  v2 = queryParserManagerLogger(void)::log;
  queryParserManagerLogger(void)::log = v1;
}

uint64_t QP::RemindersParserFormatter::setParse(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = QP::Formatter::setParse(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1C65FCE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::RemindersParserFormatter::updateParseWithDateAttribute(QP::Formatter *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Formatter::updateParseWithDateAttribute(a1, a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1C65FCE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::RemindersParserFormatter::updateParseWithAttribute(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Formatter::updateParseWithAttribute(a1, a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1C65FCEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::RemindersParserFormatter::~RemindersParserFormatter(const void **this)
{
  QP::Formatter::~Formatter(this);

  JUMPOUT(0x1C695B850);
}

QP::SpellCheckWrapper *QP::SpellCheckWrapper::SpellCheckWrapper(QP::SpellCheckWrapper *this, __CFString *a2)
{
  v4 = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = [v4 firstObject];

  if (a2)
  {
    v6 = a2;

    v5 = v6;
  }

  objc_storeStrong(&QP::m_preferred_language, v5);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = getUITextCheckerClass(void)::softClass;
  v16 = getUITextCheckerClass(void)::softClass;
  if (!getUITextCheckerClass(void)::softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZL21getUITextCheckerClassv_block_invoke;
    v12[3] = &unk_1E82676E8;
    v12[4] = &v13;
    ___ZL21getUITextCheckerClassv_block_invoke(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = objc_alloc_init(v7);
  v10 = QP::m_text_checker;
  QP::m_text_checker = v9;

  return this;
}

void sub_1C65FD068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t QP::SpellCheckWrapper::spellCheck(QP::SpellCheckWrapper *this, __CFString *a2, int a3)
{
  v4 = a2;
  v5 = QP::m_text_checker;
  v6 = [(__CFString *)v4 length];
  if ([v5 rangeOfMisspelledWordInString:v4 range:0 startingAt:v6 wrap:0 language:{0, QP::m_preferred_language}] || v7 != -[__CFString length](v4, "length"))
  {
    v11 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = QP::m_text_checker;
  v9 = [(__CFString *)v4 length];
  v10 = [v8 guessesForWordRange:0 inString:v9 language:{v4, QP::m_preferred_language}];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
    goto LABEL_9;
  }

  if ([v11 count] <= 0xA)
  {
    a3 = [v11 count];
  }

  v12 = [v11 subarrayWithRange:{0, a3}];
LABEL_10:

  return v12;
}

Class ___ZL21getUITextCheckerClassv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL16UIKitLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8267708;
    v7 = 0;
    UIKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UITextChecker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL21getUITextCheckerClassv_block_invoke_cold_1();
  }

  getUITextCheckerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL16UIKitLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void QPSpotlightCacheRelease(CFArrayRef *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(*a1);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        if (CFArrayGetValueAtIndex(*a1, i))
        {
          SIGeneralTrieRelease();
        }

        CFArraySetValueAtIndex(*a1, i, 0);
      }
    }

    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t QP::SpotlightFormatter::isValid(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if (*result)
    {
      return *(result + 88) || QP::Parse::isValid(result);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t QP::SpotlightFormatter::setCompletion(QP::SpotlightFormatter *a1, const void ***a2)
{
  QP::SpotlightFormatter::clear(a1);
  QP::Formatter::clear(a1);
  v4 = a2[1];
  v107 = *a2;
  v108 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = QP::Formatter::setCompletion(a1);
  if (v108)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v108);
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  if (!**a2 || !v6[2] || !v6[3] || !v6[5] || !v6[6])
  {
    return 0;
  }

  v105[0] = 0;
  v105[1] = 0;
  v106 = 0;
  QP::getUTF8StringFromCFString(v6[4], v105);
  v103[0] = 0;
  v103[1] = 0;
  v104 = 0;
  QP::getUTF8StringFromCFString((*a2)[5], v103);
  v101[0] = 0;
  v101[1] = 0;
  v102 = 0;
  QP::getUTF8StringFromCFString((*a2)[6], v101);
  QP::ParserGrammar::symbolID(*(a1 + 3), v103);
  v7 = QP::ParserGrammar::symbolID(*(a1 + 3), v101);
  v95 = 0;
  v96 = &v95;
  v97 = 0x3002000000;
  v98 = __Block_byref_object_copy__14;
  v99 = __Block_byref_object_dispose__14;
  Mutable = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v94 = 0u;
  v9 = *(*a2 + 36);
  v10 = (*a2)[7];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 0x40000000;
  v93[2] = ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_2;
  v93[3] = &unk_1E8267748;
  v93[4] = &v95;
  QP::SpotlightFormatter::_parseAttributeKey(a1, &v94, v105, 0, v7, v9, v10, 0, v62, 0, 0, 0, 0, &__block_literal_global_17, v93, &__block_literal_global_5);
  v87 = 0;
  v88 = &v87;
  v89 = 0x3002000000;
  v90 = __Block_byref_object_copy__6;
  v91 = __Block_byref_object_dispose__7;
  v92 = 0;
  Count = CFArrayGetCount(v96[5]);
  if (Count)
  {
    v12 = CFStringCreateByCombiningStrings(v8, v96[5], @" || ");
    __p[0] = v12;
    if (CFStringGetLength(v12))
    {
      v13 = v88;
      if (Count <= 1)
      {
        v14 = CFStringCreateWithFormat(v8, 0, @"%@", v12);
      }

      else
      {
        v14 = CFStringCreateWithFormat(v8, 0, @"(%@)", v12);
      }

      nlp::CFScopedPtr<__CFString const*>::reset(v13 + 5, v14);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  v81 = 0;
  v82 = &v81;
  v83 = 0x3002000000;
  v84 = __Block_byref_object_copy__14;
  v85 = __Block_byref_object_dispose__14;
  v86 = 0;
  v86 = CFArrayCreateMutable(v8, 1, MEMORY[0x1E695E9C0]);
  v15 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  at[1] = 0.0;
  v80 = v15;
  if (v88[5])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "kQPDate");
    v16 = QP::startswith(v105, __p);
    if (SBYTE7(v74) < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      if ((*a2)[1] && (*a2)[2])
      {
        at[0] = getCurrentTime(*(*(a1 + 1) + 88), *(*(a1 + 1) + 80));
        v77 = 0;
        v78 = 0;
        v76 = 0;
        CFCalendarDecomposeAbsoluteTime(*(*(a1 + 1) + 88), at[0], "dMywE", &v78 + 4, &v78, &v77 + 4, &v77, &v76);
        *&v75[16] = -1;
        *&v17 = -1;
        *(&v17 + 1) = -1;
        v74 = v17;
        *v75 = v17;
        *__p = v17;
        v72 = -1;
        v70 = v17;
        *cf = v17;
        v69 = v17;
        std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeMonthDate");
        v18 = QP::startswith(v101, valuePtr);
        if (v68 < 0)
        {
          operator delete(valuePtr[0]);
        }

        if (v18)
        {
          std::string::basic_string[abi:ne200100]<0>(valuePtr, "1");
          if (QP::endswith(v101, valuePtr))
          {
            std::string::basic_string[abi:ne200100]<0>(v65, "11");
            v19 = !QP::endswith(v101, v65);
            if (v66 < 0)
            {
              operator delete(v65[0]);
            }
          }

          else
          {
            v19 = 0;
          }

          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v19)
          {
            v32 = 1;
LABEL_184:
            LODWORD(v74) = v32;
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "2");
          if (QP::endswith(v101, valuePtr))
          {
            std::string::basic_string[abi:ne200100]<0>(v65, "12");
            v34 = !QP::endswith(v101, v65);
            if (v66 < 0)
            {
              operator delete(v65[0]);
            }
          }

          else
          {
            v34 = 0;
          }

          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v34)
          {
            v32 = 2;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "3");
          v36 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v36)
          {
            v32 = 3;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "4");
          v38 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v38)
          {
            v32 = 4;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "5");
          v40 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v40)
          {
            v32 = 5;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "6");
          v42 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v42)
          {
            v32 = 6;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "7");
          v44 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v44)
          {
            v32 = 7;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "8");
          v46 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v46)
          {
            v32 = 8;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "9");
          v58 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v58)
          {
            v32 = 9;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "10");
          v59 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v59)
          {
            v32 = 10;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "11");
          v60 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v60)
          {
            v32 = 11;
            goto LABEL_184;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "12");
          v61 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v61)
          {
            v32 = 12;
            goto LABEL_184;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeTodayDate");
          v31 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v31)
          {
            HIDWORD(__p[1]) = HIDWORD(v78);
            *&v74 = __PAIR64__(HIDWORD(v77), v78);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeYesterdayDate");
          v33 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v33)
          {
            CFCalendarAddComponents(*(*(a1 + 1) + 88), at, 0, "d", 0xFFFFFFFFLL);
            CFCalendarDecomposeAbsoluteTime(*(*(a1 + 1) + 88), at[0], "dMy", &v78 + 4, &v78, &v77 + 4);
            HIDWORD(__p[1]) = HIDWORD(v78);
            *&v74 = __PAIR64__(HIDWORD(v77), v78);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeThisWeekDate");
          v35 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v35)
          {
            *&v75[12] = v77;
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeLastWeekDate");
          v37 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v37)
          {
            CFCalendarAddComponents(*(*(a1 + 1) + 88), at, 0, "w", 0xFFFFFFFFLL);
            CFCalendarDecomposeAbsoluteTime(*(*(a1 + 1) + 88), at[0], "wY", &v77, &v77 + 4);
            *&v75[12] = v77;
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeThisMonthDate");
          v39 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v39)
          {
            *&v74 = __PAIR64__(HIDWORD(v77), v78);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeLastMonthDate");
          v41 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v41)
          {
            CFCalendarAddComponents(*(*(a1 + 1) + 88), at, 0, "M", 0xFFFFFFFFLL);
            CFCalendarDecomposeAbsoluteTime(*(*(a1 + 1) + 88), at[0], "My", &v78, &v77 + 4);
            *&v74 = __PAIR64__(HIDWORD(v77), v78);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeThisYearDate");
          v43 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v43)
          {
            DWORD1(v74) = HIDWORD(v77);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "RelativeLastYearDate");
          v45 = QP::endswith(v101, valuePtr);
          if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (v45)
          {
            CFCalendarAddComponents(*(*(a1 + 1) + 88), at, 0, "y", 0xFFFFFFFFLL);
            CFCalendarDecomposeAbsoluteTime(*(*(a1 + 1) + 88), at[0], "y", &v77 + 4);
            DWORD1(v74) = HIDWORD(v77);
            goto LABEL_185;
          }

          std::string::basic_string[abi:ne200100]<0>(valuePtr, "CalendarDate");
          if (QP::endswith(v101, valuePtr))
          {
            v47 = (*a2)[8];
            if (v68 < 0)
            {
              operator delete(valuePtr[0]);
            }

            if (v47)
            {
              v48 = (*a2)[8];
              LODWORD(valuePtr[0]) = 0;
              Value = CFDictionaryGetValue(v48, @"d");
              if (Value)
              {
                CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
                HIDWORD(__p[1]) = valuePtr[0];
              }

              v50 = CFDictionaryGetValue(v48, @"M");
              if (v50)
              {
                CFNumberGetValue(v50, kCFNumberIntType, valuePtr);
                LODWORD(v74) = valuePtr[0];
              }

              v51 = CFDictionaryGetValue(v48, @"y");
              if (v51)
              {
                CFNumberGetValue(v51, kCFNumberIntType, valuePtr);
                DWORD1(v74) = valuePtr[0];
              }

              v52 = CFDictionaryGetValue(v48, @"E");
              if (v52)
              {
                CFNumberGetValue(v52, kCFNumberIntType, valuePtr);
                *v75 = valuePtr[0];
              }

              v53 = CFDictionaryGetValue(v48, @"w");
              if (v53)
              {
                CFNumberGetValue(v53, kCFNumberIntType, valuePtr);
                *&v75[12] = valuePtr[0];
              }

              v54 = CFDictionaryGetValue(v48, @"Y");
              if (v54)
              {
                CFNumberGetValue(v54, kCFNumberIntType, valuePtr);
                *&v75[16] = valuePtr[0];
              }

              v55 = CFDictionaryGetValue(v48, @"H");
              if (v55)
              {
                CFNumberGetValue(v55, kCFNumberIntType, valuePtr);
                LODWORD(__p[1]) = valuePtr[0];
              }

              v56 = CFDictionaryGetValue(v48, @"m");
              if (v56)
              {
                CFNumberGetValue(v56, kCFNumberIntType, valuePtr);
                HIDWORD(__p[0]) = valuePtr[0];
              }

              v57 = CFDictionaryGetValue(v48, @"s");
              if (v57)
              {
                CFNumberGetValue(v57, kCFNumberIntType, valuePtr);
                LODWORD(__p[0]) = valuePtr[0];
              }

LABEL_185:
              operator new();
            }
          }

          else if (v68 < 0)
          {
            operator delete(valuePtr[0]);
          }
        }

        v20 = 0;
        goto LABEL_60;
      }
    }

    else if (v88[5])
    {
      CFDictionarySetValue(v15, @"TEXT", (*a2)[2]);
      CFDictionarySetValue(v15, @"QUERY", v88[5]);
      v22 = *a2;
      v23 = (*a2)[1];
      if (v23)
      {
        Length = CFStringGetLength(v23);
        v22 = *a2;
        if (Length)
        {
          CFDictionarySetValue(v15, @"TOKEN", v22[1]);
          v22 = *a2;
        }
      }

      if (*(v22 + 36) == 5)
      {
        v25 = v22[7];
        if (v25)
        {
          CFDictionarySetValue(v15, @"STATUS", v25);
        }
      }

      CFArrayAppendValue(v82[5], v15);
    }
  }

  v26 = v88[5];
  if (v26 && CFStringGetLength(v26))
  {
    QP::Formatter::setSuggestionValue(a1, kQPSuggestionResultSuggestionKey, **a2);
    QP::Formatter::setSuggestionValue(a1, kQPSuggestionResultDescriptionKey, v88[5]);
    QP::Formatter::setSuggestionValue(a1, kQPSuggestionResultTokensKey, v82[5]);
    QP::Formatter::setSuggestionValue(a1, kQPSuggestionResultTypeKey, (*a2)[3]);
    __p[0] = 0;
    __p[1] = __p;
    *&v74 = 0x3002000000;
    *(&v74 + 1) = __Block_byref_object_copy__133;
    *v75 = __Block_byref_object_dispose__134;
    *&v75[8] = 0;
    *&v75[8] = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v27 = CFStringsAreEqual((*a2)[5], @"KIND");
    if (CFStringsAreEqual((*a2)[5], @"ATTACH"))
    {
      v28 = 1;
    }

    else
    {
      v28 = CFStringHasPrefix((*a2)[5], @"PROATTACH") != 0;
      if (!v27 && !v28)
      {
LABEL_57:
        QP::Formatter::setSuggestionValue(a1, kQPSuggestionResultRankCategoriesKey, *(__p[1] + 5));
        _Block_object_dispose(__p, 8);
        if (*&v75[8])
        {
          CFRelease(*&v75[8]);
        }

        v20 = 1;
        goto LABEL_60;
      }
    }

    if (v27)
    {
      valuePtr[0] = 1;
      *&v69 = 0;
      *(&v69 + 1) = &v69;
      *&v70 = 0x3002000000;
      *(&v70 + 1) = __Block_byref_object_copy__144;
      cf[0] = __Block_byref_object_dispose__145;
      cf[1] = 0;
      cf[1] = CFNumberCreate(v8, kCFNumberCFIndexType, valuePtr);
      if (*(*(&v69 + 1) + 40))
      {
        v29 = *(a1 + 3);
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 0x40000000;
        v64[2] = ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_146;
        v64[3] = &unk_1E8267790;
        v64[4] = __p;
        v64[5] = &v69;
        QP::ParserGrammar::categories(v29, v7, v64);
      }

      _Block_object_dispose(&v69, 8);
      if (cf[1])
      {
        CFRelease(cf[1]);
      }
    }

    if (v28)
    {
      valuePtr[0] = 2;
      *&v69 = 0;
      *(&v69 + 1) = &v69;
      *&v70 = 0x3002000000;
      *(&v70 + 1) = __Block_byref_object_copy__144;
      cf[0] = __Block_byref_object_dispose__145;
      cf[1] = 0;
      cf[1] = CFNumberCreate(v8, kCFNumberCFIndexType, valuePtr);
      if (*(*(&v69 + 1) + 40))
      {
        v30 = *(a1 + 3);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 0x40000000;
        v63[2] = ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_2_149;
        v63[3] = &unk_1E82677B8;
        v63[4] = __p;
        v63[5] = &v69;
        QP::ParserGrammar::categories(v30, v7, v63);
      }

      _Block_object_dispose(&v69, 8);
      nlp::CFScopedPtr<__CFNumber const*>::reset(&cf[1], 0);
    }

    goto LABEL_57;
  }

  v20 = 0;
LABEL_60:
  if (v80)
  {
    CFRelease(v80);
  }

  _Block_object_dispose(&v81, 8);
  if (v86)
  {
    CFRelease(v86);
  }

  _Block_object_dispose(&v87, 8);
  if (v92)
  {
    CFRelease(v92);
  }

  _Block_object_dispose(&v95, 8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101[0]);
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103[0]);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105[0]);
  }

  return v20;
}

void sub_1C65FE80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a71, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&a72, 0);
  _Block_object_dispose(&a73, 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v74 + 40), 0);
  _Block_object_dispose(&STACK[0x218], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x240], 0);
  _Block_object_dispose((v75 - 256), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v73 + 40), 0);
  if (*(v75 - 185) < 0)
  {
    operator delete(*(v75 - 208));
  }

  if (*(v75 - 161) < 0)
  {
    operator delete(*(v75 - 184));
  }

  if (*(v75 - 137) < 0)
  {
    operator delete(*(v75 - 160));
  }

  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::clear(QP::SpotlightFormatter *this)
{
  v2 = (this + 88);
  v3 = MEMORY[0x1E695E480];
  if (*(this + 11))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(v2, Mutable);
  }

  if (*(this + 12))
  {
    v5 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 12, v5);
  }

  if (*(this + 13))
  {
    v6 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 13, v6);
  }

  if (*(this + 14))
  {
    v7 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 14, v7);
  }

  if (*(this + 15))
  {
    v8 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 15, v8);
  }

  if (*(this + 16))
  {
    v9 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 16, v9);
  }

  if (*(this + 17))
  {
    v10 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 17, v10);
  }

  if (*(this + 18))
  {
    v11 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 18, v11);
  }

  if (*(this + 19))
  {
    v12 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
    nlp::CFScopedPtr<__CFArray *>::reset(this + 19, v12);
  }

  *(this + 100) = 0;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void QP::SpotlightFormatter::_parseAttributeKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (QP::ParserGrammar::hasTranslations(*(a1 + 24), a3))
  {
    v23 = *(a1 + 24);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 1174405120;
    v30[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke;
    v30[3] = &unk_1F45E9598;
    v32 = a5;
    v30[6] = a1;
    v30[7] = a10;
    v30[8] = a12;
    v30[9] = a11;
    v30[4] = a15;
    v30[5] = a14;
    v33 = a6;
    v30[10] = a13;
    v30[11] = a7;
    v30[12] = a8;
    v30[13] = a3;
    v24 = a2[1];
    v30[14] = *a2;
    v31 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::ParserGrammar::translations(v23, a3, v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  if (QP::ParserGrammar::hasRankingTranslations(*(a1 + 24), a3))
  {
    v25 = *(a1 + 24);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1174405120;
    v27[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_350;
    v27[3] = &unk_1F45E9608;
    v27[5] = a1;
    v27[6] = a3;
    v26 = a2[1];
    v27[7] = *a2;
    v28 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a7;
    v27[4] = a16;
    QP::ParserGrammar::rankingTranslations(v25, a3, v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }
}

void sub_1C65FEE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t QP::DateComponents::isConcreteType(_DWORD *a1, int a2)
{
  if ((a2 - 6) < 0x55)
  {
    return 1;
  }

  if (a2 != 3)
  {
    if ((a1[11] & 0x80000000) != 0)
    {
      if ((a1[10] & 0x80000000) == 0 || (a1[9] & 0x80000000) == 0 || (a1[12] & 0x80000000) == 0 || (a1[3] & 0x80000000) != 0 || (a1[4] & 0x80000000) != 0 || (a1[5] & 0x80000000) != 0)
      {
        return 0;
      }
    }

    else if ((a1[12] & 0x80000000) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  v7 = *(a1 + 48);
  if (!CFArrayGetCount(*(*(*(a1 + 32) + 8) + 40)))
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v34 = Mutable;
    v10 = *(v7 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v31 = v11;
    v32 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a1 + 56);
    }

    started = QP::DateFormatter::copyISODisplayForStartDate(v10, &v31, *(v11 + 16), 0, 1, *(a1 + 88));
    v33 = started;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v14 = *(v7 + 40);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v28 = v15;
    v29 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(a1 + 56);
    }

    v17 = QP::DateFormatter::copyISODisplayForEndDate(v14, &v28, *(v15 + 16), 0, 1, *(a1 + 88), 1);
    v30 = v17;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (a5)
    {
      MutableCopy = CFStringCreateMutableCopy(v8, 0, a5);
      v27 = MutableCopy;
      v35.length = CFStringGetLength(MutableCopy);
      v35.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%1@", started, v35, 0);
      v36.length = CFStringGetLength(MutableCopy);
      v36.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%2@", v17, v36, 0);
      CFDictionarySetValue(Mutable, @"QUERY", MutableCopy);
      v19 = *(*(a1 + 40) + 8);
      Copy = CFStringCreateCopy(v8, MutableCopy);
      nlp::CFScopedPtr<__CFString const*>::reset((v19 + 40), Copy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    else
    {
      nlp::CFScopedPtr<__CFString const*>::reset((*(*(a1 + 40) + 8) + 40), 0);
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v21 = *(v7 + 40);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = v22;
      v26 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = *(a1 + 56);
      }

      v24 = QP::DateFormatter::copyDisplayForDate(v21, &v25, *(v22 + 16), 1u, 1, *(a1 + 88));
      v27 = v24;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v24)
      {
        CFDictionarySetValue(Mutable, @"TEXT", v24);
      }

      else
      {
        CFDictionarySetValue(Mutable, @"TEXT", *(*(a1 + 72) + 16));
      }

      CFDictionarySetValue(Mutable, @"TOKEN", *(*(a1 + 72) + 8));
      CFDictionarySetValue(Mutable, @"DATE_FROM", started);
      CFDictionarySetValue(Mutable, @"DATE_TO", v17);
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), Mutable);
      if (v24)
      {
        CFRelease(v24);
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (started)
    {
      CFRelease(started);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void sub_1C65FF250(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va2, 0);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_56c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE72c43_ZTSNSt3__110shared_ptrIN2QP10CompletionEEE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE72c43_ZTSNSt3__110shared_ptrIN2QP10CompletionEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t __Block_byref_object_copy__133(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_146(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString, *(*(*(a1 + 40) + 8) + 40));
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65FF404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter13setCompletionENSt3__110shared_ptrINS_10CompletionEEE_block_invoke_2_149(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString, *(*(*(a1 + 40) + 8) + 40));
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65FF480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::setDefaultParse(uint64_t a1, uint64_t a2)
{
  QP::SpotlightFormatter::clear(a1);
  v4 = *(a2 + 8);
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Formatter::setDefaultParse(a1, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v5 = &stru_1F45E9EA0;
  if (*a2 && **a2)
  {
    v5 = **a2;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"(** = %@*cdw)", v5);
  valuePtr[1] = v7;
  QP::Formatter::setResultValue(a1, kQPParseResultDescriptionKey, v7);
  v8 = *(a1 + 8);
  if (*(v8 + 208) && *(v8 + 112))
  {
    v9 = *(v8 + 34) == 0;
    v10 = 160;
    if (!v9)
    {
      v10 = 168;
    }
  }

  else
  {
    v10 = 160;
  }

  QP::Formatter::setResultValue(a1, kQPParseResultConfidenceKey, *(a1 + v10));
  valuePtr[0] = 0;
  v11 = CFNumberCreate(v6, kCFNumberCFIndexType, valuePtr);
  if (v11)
  {
    QP::Formatter::setResultValue(a1, kQPParseResultAttributeCountKey, v11);
  }

  Copy = CFDictionaryCreateCopy(v6, *(a1 + 184));
  QP::Formatter::setResultValue(a1, kQPParseResultRankCategoriesKey, Copy);
  QP::Formatter::setResultValue(a1, kQPParseResultSuggestionKey, &stru_1F45E9EA0);
  QP::SpotlightFormatter::updateWithLastSuggestionFragment(a1);
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1C65FF660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::updateWithLastSuggestionFragment(CFArrayRef *this)
{
  Count = CFArrayGetCount(this[14]);
  if (Count)
  {
    v3 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(this[14], Count - 1);
    if (v3 == CFArrayGetCount(this[12]))
    {
      theString = CFArrayGetValueAtIndex(this[12], v3 - 1);
    }

    else
    {
      theString = 0;
    }

    if (v3 == CFArrayGetCount(this[16]))
    {
      v19 = CFArrayGetValueAtIndex(this[16], v3 - 1);
    }

    else
    {
      v19 = 0;
    }

    if (v3 == CFArrayGetCount(this[15]))
    {
      theArray = CFArrayGetValueAtIndex(this[15], v3 - 1);
    }

    else
    {
      theArray = 0;
    }

    if (v3 == CFArrayGetCount(this[17]))
    {
      v5 = CFArrayGetValueAtIndex(this[17], v3 - 1);
    }

    else
    {
      v5 = 0;
    }

    if (v3 == CFArrayGetCount(this[18]))
    {
      v6 = CFArrayGetValueAtIndex(this[18], v3 - 1);
      if (!ValueAtIndex)
      {
        return;
      }
    }

    else
    {
      v6 = 0;
      if (!ValueAtIndex)
      {
        return;
      }
    }

    if (CFStringGetLength(ValueAtIndex) && theArray && CFArrayGetCount(theArray) && v19 && theString && CFStringGetLength(theString))
    {
      v18 = ValueAtIndex;
      v7 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr[1] = Mutable;
      if (v5)
      {
        v9 = CFArrayGetCount(v5);
        if (v9 >= 1)
        {
          v10 = 0;
          do
          {
            v11 = CFArrayGetValueAtIndex(v5, v10);
            valuePtr[0] = 1;
            v12 = CFNumberCreate(v7, kCFNumberCFIndexType, valuePtr);
            if (v12)
            {
              CFDictionarySetValue(Mutable, v11, v12);
              CFRelease(v12);
            }

            ++v10;
          }

          while (v9 != v10);
        }
      }

      if (v6)
      {
        v13 = CFArrayGetCount(v6);
        if (v13 >= 1)
        {
          v14 = 0;
          do
          {
            v15 = CFArrayGetValueAtIndex(v6, v14);
            if (!CFDictionaryContainsKey(Mutable, v15))
            {
              valuePtr[0] = 2;
              v16 = CFNumberCreate(v7, kCFNumberCFIndexType, valuePtr);
              if (v16)
              {
                CFDictionarySetValue(Mutable, v15, v16);
                CFRelease(v16);
              }
            }

            ++v14;
          }

          while (v13 != v14);
        }
      }

      MutableCopy = CFStringCreateMutableCopy(v7, 0, v18);
      valuePtr[0] = MutableCopy;
      CFStringTrimWhitespace(MutableCopy);
      QP::Formatter::setSuggestionValue(this, kQPSuggestionResultSuggestionKey, MutableCopy);
      QP::Formatter::setSuggestionValue(this, kQPSuggestionResultDescriptionKey, theString);
      QP::Formatter::setSuggestionValue(this, kQPSuggestionResultRankCategoriesKey, Mutable);
      if (CFArrayGetCount(theArray))
      {
        QP::Formatter::setSuggestionValue(this, kQPSuggestionResultTokensKey, theArray);
      }

      else
      {
        v19 = @"kQPSuggestion";
      }

      QP::Formatter::setSuggestionValue(this, kQPSuggestionResultTypeKey, v19);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void sub_1C65FFA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::SpotlightFormatter::setParse(uint64_t a1, const __CFString ***a2)
{
  QP::SpotlightFormatter::clear(a1);
  QP::Formatter::clear(a1);
  v4 = a2[1];
  v71 = *a2;
  v72 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = QP::Formatter::setParse(a1, &v71);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v70 = 0;
  v6 = MEMORY[0x1E695E480];
  if (v5 && CFArrayGetCount(*(a1 + 96)))
  {
    v7 = *v6;
    Mutable = CFArrayCreateMutable(*v6, 0, MEMORY[0x1E695E9C0]);
    valuePtr = Mutable;
    if (!(*a2)[11])
    {
      Count = CFArrayGetCount(*(a1 + 96));
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
          if (CFStringGetLength(ValueAtIndex))
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }
    }

    v12 = *(a1 + 176);
    v13 = CFStringCreateByCombiningStrings(v7, Mutable, @" && ");
    cf = v13;
    if (CFArrayGetCount(Mutable) < 2)
    {
      if (!CFArrayGetCount(Mutable))
      {
        v48 = **a2;
        if (v48 && CFStringGetLength(v48))
        {
          v16 = CFStringCreateWithFormat(v7, 0, @"(** = %@*cwd)", **a2);
          v49 = *(a1 + 8);
          v50 = *(v49 + 208);
          v70 = v16;
          if (v50 && *(v49 + 112))
          {
            v51 = *(v49 + 34) == 0;
            v52 = 160;
            if (!v51)
            {
              v52 = 168;
            }
          }

          else
          {
            v52 = 160;
          }

          v12 = *(a1 + v52);
          goto LABEL_24;
        }

        v16 = @"(true)";
LABEL_23:
        v70 = v16;
LABEL_24:
        QP::Formatter::setResultValue(a1, kQPParseResultDescriptionKey, v16);
        QP::Formatter::setResultValue(a1, kQPParseResultConfidenceKey, v12);
        if (v13)
        {
          CFRelease(v13);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v5 = 1;
        goto LABEL_29;
      }

      Copy = CFStringCreateCopy(v7, v13);
    }

    else
    {
      Copy = CFStringCreateWithFormat(v7, 0, @"(%@)", v13);
    }

    v16 = Copy;
    goto LABEL_23;
  }

  v15 = a2[1];
  v68 = *a2;
  v69 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 40))(a1, &v68);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v16 = 0;
LABEL_29:
  v17 = *a2;
  valuePtr = (*a2)[5];
  if (valuePtr == 1 && *(a1 + 200) == 1)
  {
    v18 = a2[1];
    v64 = v17;
    v65 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 40))(a1, &v64);
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    v19 = 0;
    if (!v16)
    {
      return v19;
    }

LABEL_66:
    CFRelease(v16);
    return v19;
  }

  v20 = *v6;
  v21 = CFNumberCreate(*v6, kCFNumberCFIndexType, &valuePtr);
  cf = v21;
  if (v21)
  {
    QP::Formatter::setResultValue(a1, kQPParseResultAttributeCountKey, v21);
  }

  v22 = (*a2)[11];
  if (v22)
  {
    QP::Formatter::setResultValue(a1, kQPParseResultQUOutputKey, v22);
  }

  v23 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v61 = v5;
  v63[1] = v23;
  v62 = a1;
  v24 = CFArrayGetCount(*(a1 + 136));
  if (v24 >= 1)
  {
    for (j = 0; j != v24; ++j)
    {
      v26 = CFArrayGetValueAtIndex(*(a1 + 136), j);
      v27 = CFArrayGetCount(v26);
      if (v27 >= 1)
      {
        for (k = 0; k != v27; ++k)
        {
          v29 = CFArrayGetValueAtIndex(v26, k);
          v63[0] = 1;
          v30 = CFNumberCreate(v20, kCFNumberCFIndexType, v63);
          if (v30)
          {
            CFDictionarySetValue(v23, v29, v30);
            CFRelease(v30);
          }
        }
      }
    }
  }

  v31 = CFArrayGetCount(*(a1 + 144));
  if (v31 >= 1)
  {
    for (m = 0; m != v31; ++m)
    {
      v33 = CFArrayGetValueAtIndex(*(a1 + 144), m);
      v34 = CFArrayGetCount(v33);
      if (v34 >= 1)
      {
        for (n = 0; n != v34; ++n)
        {
          v36 = CFArrayGetValueAtIndex(v33, n);
          if (!CFDictionaryContainsKey(v23, v36))
          {
            v63[0] = 2;
            v37 = CFNumberCreate(v20, kCFNumberCFIndexType, v63);
            if (v37)
            {
              CFDictionarySetValue(v23, v36, v37);
              CFRelease(v37);
            }
          }
        }
      }
    }
  }

  QP::Formatter::setResultValue(a1, kQPParseResultRankCategoriesKey, v23);
  v38 = *(a1 + 8);
  if (*(v38 + 73) != 1 || (*(a1 + 201) & 1) != 0)
  {
    QP::Formatter::setResultValue(a1, kQPParseResultSuggestionKey, &stru_1F45E9EA0);
    QP::SpotlightFormatter::updateWithLastSuggestionFragment(a1);
    goto LABEL_61;
  }

  v63[0] = 0;
  if (*(v38 + 32))
  {
    v40 = @" ";
  }

  else
  {
    v40 = &stru_1F45E9EA0;
  }

  v41 = CFStringCreateByCombiningStrings(v20, *(a1 + 112), v40);
  v63[0] = v41;
  MutableCopy = CFStringCreateMutableCopy(v20, 0, v41);
  CFStringLowercase(MutableCopy, *(*(a1 + 8) + 112));
  if (CFStringGetLength(MutableCopy))
  {
    v73.length = CFStringGetLength(MutableCopy);
    v73.location = 0;
    CFStringFindAndReplace(MutableCopy, @"  ", @" ", v73, 0);
    CFStringTrimWhitespace(MutableCopy);
    QP::Formatter::setResultValue(a1, kQPParseResultSuggestionKey, MutableCopy);
    v43 = CFArrayGetCount(*(a1 + 88));
    v44 = CFArrayGetCount(*(a1 + 120));
    if (v43 < 1)
    {
      v46 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = CFArrayGetValueAtIndex(*(v62 + 11), v45);
        if (CFDictionaryGetCount(v47))
        {
          ++v46;
        }

        ++v45;
      }

      while (v43 != v45);
    }

    if (v44 < 1)
    {
      v59 = 0;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        v56 = CFArrayGetValueAtIndex(*(v62 + 15), v53);
        v57 = CFDictionaryGetCount(v56);
        v58 = v57 != 0;
        ++v53;
        if (v57)
        {
          ++v55;
        }

        if (--v44)
        {
          v58 = 0;
        }

        v54 |= v58;
      }

      while (v44);
      v59 = v54 & (v55 != 0);
      if (v46 && v46 <= 1)
      {
        v60 = v62;
        if (v55)
        {
          goto LABEL_100;
        }

        goto LABEL_99;
      }
    }

    v60 = v62;
LABEL_99:
    QP::Formatter::setSuggestionValue(v60, kQPSuggestionResultSuggestionKey, MutableCopy);
    QP::Formatter::setSuggestionValue(v60, kQPSuggestionResultDescriptionKey, v70);
    QP::Formatter::setSuggestionValue(v60, kQPSuggestionResultRankCategoriesKey, v23);
    QP::Formatter::setSuggestionValue(v60, kQPSuggestionResultTypeKey, @"kQPSuggestion");
LABEL_100:
    if (v59)
    {
      QP::SpotlightFormatter::updateWithLastSuggestionFragment(v60);
    }
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v41)
  {
    CFRelease(v41);
  }

LABEL_61:
  if (v23)
  {
    CFRelease(v23);
  }

  v19 = v61;
  if (cf)
  {
    CFRelease(cf);
  }

  v16 = v70;
  if (v70)
  {
    goto LABEL_66;
  }

  return v19;
}

void sub_1C6600230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  v12 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  v16 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  v18 = va_arg(va4, void);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va2, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va4, 0);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::getGroundedTranslations(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  v11 = *(a1 + 24);
  v12 = *a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke;
  v15[3] = &unk_1F45E9530;
  v15[5] = a1;
  v15[6] = v12;
  v13 = a2[1];
  v16 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a4;
  v18 = a5;
  v19 = a10;
  v20 = a7;
  v25 = a9;
  v14 = a3[1];
  v21 = *a3;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = a8;
  v24 = a6;
  v15[4] = v26;
  QP::ParserGrammar::translations(v11, v12 + 48, v15);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Block_object_dispose(v26, 8);
}

void sub_1C660048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Block_object_dispose((v23 - 48), 8);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1174405120;
  v24[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_2;
  v24[3] = &unk_1F45E94C8;
  v24[5] = v5;
  v24[6] = v4;
  v6 = *(a1 + 56);
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v7;
  v32 = *(a1 + 128);
  v9 = *(a1 + 96);
  v8 = *(a1 + 104);
  v26 = a2;
  v29 = v9;
  v30 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 32);
  v31 = *(a1 + 112);
  v24[4] = v10;
  QP::ParseAttribute::actionsForRoot(v4, v24);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v11 = *(v5 + 24);
    v12 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1174405120;
    v17[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_185;
    v17[3] = &__block_descriptor_tmp_188;
    v17[4] = v5;
    v17[5] = a2;
    v13 = *(a1 + 80);
    v18 = *(a1 + 64);
    v19 = v13;
    v23 = *(a1 + 128);
    v14 = *(a1 + 104);
    v20 = *(a1 + 96);
    v21 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 112);
    QP::ParserGrammar::actions(v11, (v12 + 48), kQPSymbolIdDefault, kQPSymbolIdActionDefault, v17);
    v15 = *(*(a1 + 96) + 20);
    if (v15 == 1)
    {
      v16 = @"kQPDateDistantPast";
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_13;
      }

      v16 = @"kQPDateDistantFuture";
    }

    **(a1 + 120) = v16;
LABEL_13:
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1C66006AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_2(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_3;
  v11[3] = &unk_1F45E9490;
  v11[5] = v5;
  v7 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v7;
  v17 = *(a1 + 128);
  v14 = *(a1 + 96);
  v8 = *(a1 + 112);
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 120);
  v10 = *(a1 + 32);
  v16 = v9;
  v11[4] = v10;
  QP::ParserGrammar::actions(v6, (v4 + 48), a2, a3, v11);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1C66007C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  CFStringFromString = QP::createCFStringFromString(a2);
  v24 = CFStringFromString;
  v5 = *MEMORY[0x1E695E480];
  v6 = **(a1 + 56);
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, *(a1 + 48), CFStringFromString, v6, **(a1 + 64));
  v23 = v7;
  v8 = *(a1 + 72);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, CFStringFromString);
    if (Value)
    {
      v10 = CFStringCreateWithFormat(v5, 0, @"(%@ && %@)", v7, Value);
      if (v7)
      {
        CFRelease(v7);
      }

      v23 = v10;
      v7 = v10;
    }
  }

  v11 = **(a1 + 80);
  v25.length = CFArrayGetCount(v11);
  v25.location = 0;
  if (!CFArrayContainsValue(v11, v25, v7))
  {
    CFArrayAppendValue(**(a1 + 80), v7);
  }

  if (*(a1 + 112) || !CFStringHasPrefix(CFStringFromString, @"kMDItem"))
  {
    v12 = v7;
  }

  else
  {
    v13 = *(v3 + 8);
    v15 = *(v13 + 80);
    v14 = *(v13 + 88);
    v16 = *(a1 + 72);
    v17 = *(a1 + 88);
    v18 = *(v17 + 16);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_4;
    v22[3] = &__block_descriptor_tmp_181;
    v22[4] = *(a1 + 104);
    QP::enumerateQueryWithAction(v14, v15, CFStringFromString, v16, v18, (v17 + 24), (v17 + 80), v22);
    v19 = CFStringCreateByCombiningStrings(v5, **(a1 + 104), @" && ");
    if (CFArrayGetCount(**(a1 + 104)) < 2)
    {
      v21 = **(a1 + 80);
      v27.length = CFArrayGetCount(v21);
      v27.location = 0;
      if (!CFArrayContainsValue(v21, v27, v19))
      {
        CFArrayAppendValue(**(a1 + 80), v19);
      }

      v12 = v7;
    }

    else
    {
      v12 = CFStringCreateWithFormat(v5, 0, @"(%@)", v19);
      if (v7)
      {
        CFRelease(v7);
      }

      v23 = v12;
      v20 = **(a1 + 80);
      v26.length = CFArrayGetCount(v20);
      v26.location = 0;
      if (!CFArrayContainsValue(v20, v26, v12))
      {
        CFArrayAppendValue(**(a1 + 80), v12);
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (v12)
  {
    CFRelease(v12);
    CFStringFromString = v24;
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6600A90(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_4(uint64_t a1, const void *a2)
{
  v4 = **(a1 + 32);
  v7.length = CFArrayGetCount(v4);
  v7.location = 0;
  if (!CFArrayContainsValue(v4, v7, a2))
  {
    v5 = **(a1 + 32);

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t __copy_helper_block_e8_88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE104c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[14];
  result[13] = a2[13];
  result[14] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE104c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_185(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  CFStringFromString = QP::createCFStringFromString(a2);
  v24 = CFStringFromString;
  v5 = *MEMORY[0x1E695E480];
  v6 = **(a1 + 48);
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, *(a1 + 40), CFStringFromString, v6, **(a1 + 56));
  v23 = v7;
  v8 = *(a1 + 64);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, CFStringFromString);
    if (Value)
    {
      v10 = CFStringCreateWithFormat(v5, 0, @"(%@ && %@)", v7, Value);
      if (v7)
      {
        CFRelease(v7);
      }

      v23 = v10;
      v7 = v10;
    }
  }

  v11 = **(a1 + 72);
  v25.length = CFArrayGetCount(v11);
  v25.location = 0;
  if (!CFArrayContainsValue(v11, v25, v7))
  {
    CFArrayAppendValue(**(a1 + 72), v7);
  }

  if (*(a1 + 104) || !CFStringHasPrefix(CFStringFromString, @"kMDItem"))
  {
    v12 = v7;
  }

  else
  {
    v13 = *(v3 + 8);
    v15 = *(v13 + 80);
    v14 = *(v13 + 88);
    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    v18 = *(v17 + 16);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_2_186;
    v22[3] = &__block_descriptor_tmp_187;
    v22[4] = *(a1 + 96);
    QP::enumerateQueryWithAction(v14, v15, CFStringFromString, v16, v18, (v17 + 24), (v17 + 80), v22);
    v19 = CFStringCreateByCombiningStrings(v5, **(a1 + 96), @" && ");
    if (CFArrayGetCount(**(a1 + 96)) < 2)
    {
      v21 = **(a1 + 72);
      v27.length = CFArrayGetCount(v21);
      v27.location = 0;
      if (!CFArrayContainsValue(v21, v27, v19))
      {
        CFArrayAppendValue(**(a1 + 72), v19);
      }

      v12 = v7;
    }

    else
    {
      v12 = CFStringCreateWithFormat(v5, 0, @"(%@)", v19);
      if (v7)
      {
        CFRelease(v7);
      }

      v23 = v12;
      v20 = **(a1 + 72);
      v26.length = CFArrayGetCount(v20);
      v26.location = 0;
      if (!CFArrayContainsValue(v20, v26, v12))
      {
        CFArrayAppendValue(**(a1 + 72), v12);
      }
    }

    CFArrayRemoveAllValues(**(a1 + 96));
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (v12)
  {
    CFRelease(v12);
    CFStringFromString = v24;
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6600EC4(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter23getGroundedTranslationsENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEERKN3nlp11CFScopedPtrIPK10__CFStringEESE_RSB_RNS8_IP9__CFArrayEESJ_hPK14__CFDictionary_block_invoke_2_186(uint64_t a1, const void *a2)
{
  v4 = **(a1 + 32);
  v7.length = CFArrayGetCount(v4);
  v7.location = 0;
  if (!CFArrayContainsValue(v4, v7, a2))
  {
    v5 = **(a1 + 32);

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t __copy_helper_block_e8_80c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_80c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE96c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE96c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void QP::SpotlightFormatter::getGroundedStartAndEndDate(void *a1, void *a2, const void **a3, const void **a4, _DWORD *a5)
{
  v10 = *a2;
  v11 = *(*a2 + 24);
  v12 = *(*a2 + 56);
  v48 = *(*a2 + 40);
  v49 = v12;
  v50 = *(v10 + 72);
  v47 = v11;
  v13 = *(v10 + 96);
  v45[0] = *(v10 + 80);
  v45[1] = v13;
  v15 = *(v10 + 80);
  v14 = *(v10 + 96);
  v45[2] = *(v10 + 112);
  v46 = *(v10 + 128);
  v16 = *(v10 + 40);
  v43[0] = *(v10 + 24);
  v43[1] = v16;
  v43[2] = *(v10 + 56);
  v44 = *(v10 + 72);
  v41[0] = v15;
  v41[1] = v14;
  v41[2] = *(v10 + 112);
  v42 = *(v10 + 128);
  v17 = *(v10 + 152);
  v39[0] = *(v10 + 136);
  v39[1] = v17;
  v39[2] = *(v10 + 168);
  v40 = *(v10 + 184);
  v18 = a1[2];
  v37 = a1[1];
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a2;
  }

  QP::DateConverter::resolveDateComponentsAsRange(&v37, *(v10 + 16), *(v10 + 12), v43, v41, v39, 1);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v19 = a1[1];
  if (((*(v19 + 27) & 1) != 0 || *(v19 + 26) == 1) && QP::DateComponents::isEmpty(v45) && (DWORD1(v48) & 0x80000000) != 0 && (v50 & 0x80000000) != 0)
  {
    AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v47, *(a1[1] + 96), *(a1[1] + 80));
    v21 = a1[1];
    if (*(v21 + 27) == 1 && AbsoluteTime > getCurrentTime(*(v21 + 96), *(v21 + 80)))
    {
      --*a5;
    }

    v22 = a1[1];
    if (*(v22 + 26) == 1 && AbsoluteTime < getCurrentTime(*(v22 + 96), *(v22 + 80)))
    {
      ++*a5;
    }
  }

  v23 = *(a1[1] + 112);
  if ((QP::DateComponents::isEmpty(&v47) & 1) != 0 || v50 < 0)
  {
    OffsetForDateComponentsPeriod = 1;
  }

  else
  {
    OffsetForDateComponentsPeriod = QP::getOffsetForDateComponentsPeriod(WORD2(v50), v23);
  }

  if ((QP::DateComponents::isEmpty(v45) & 1) == 0 && (v46 & 0x8000000000000000) == 0)
  {
    OffsetForDateComponentsPeriod = QP::getOffsetForDateComponentsPeriod(WORD2(v46), v23);
  }

  v25 = a1[5];
  v26 = *a2;
  v27 = a2[1];
  v35 = *a2;
  v36 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = *a2;
  }

  started = QP::DateFormatter::copyISODisplayForStartDate(v25, &v35, *(v26 + 16), 0, 1, *a5);
  nlp::CFScopedPtr<__CFString const*>::reset(a3, started);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v29 = a1[5];
  v30 = *a2;
  v31 = a2[1];
  v33 = *a2;
  v34 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    v30 = *a2;
  }

  v32 = QP::DateFormatter::copyISODisplayForEndDate(v29, &v33, *(v30 + 16), 0, 1, *a5, OffsetForDateComponentsPeriod);
  nlp::CFScopedPtr<__CFString const*>::reset(a4, v32);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1C6601314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::SpotlightFormatter::addDisplayParseAttribute(QP::SpotlightFormatter *a1, CFRange **a2, uint64_t *a3, uint64_t a4, const void **a5, CFMutableDictionaryRef *a6, void *a7, CFMutableArrayRef *a8, const void **a9, const void **a10, const void **a11)
{
  v14 = a4;
  v18 = *(a1 + 5);
  v19 = a3[1];
  v54 = *a3;
  v55 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = QP::DateFormatter::copyDisplayForDate(v18, &v54, 1, a4);
  v56 = v20;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v20)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3002000000;
    v51 = __Block_byref_object_copy__6;
    v52 = __Block_byref_object_dispose__7;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3002000000;
    v45 = __Block_byref_object_copy__6;
    v46 = __Block_byref_object_dispose__7;
    cf = 0;
    v21 = *a2;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 0x40000000;
    v41[2] = ___ZN2QP18SpotlightFormatter24addDisplayParseAttributeENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEEiRN3nlp11CFScopedPtrIPK10__CFStringEERNS8_IP14__CFDictionaryEERSB_RNS8_IP9__CFArrayEERKSC_SO_SO__block_invoke;
    v41[3] = &unk_1E8267820;
    v41[5] = &v42;
    v41[6] = a1;
    v41[4] = &v48;
    QP::ParseAttribute::actionsForRoot(v21, v41);
    v22 = v49[5];
    v23 = *MEMORY[0x1E695E480];
    if (v22)
    {
      v24 = CFStringCreateWithFormat(v23, 0, v22, v20);
      nlp::CFScopedPtr<__CFString const*>::reset(a5, v24);
      QP::SpotlightFormatter::addDisplay(a1, *a5, (*a2)[1]);
      CFDictionarySetValue(*a6, @"kQPDisplay", *a5);
      *a7 = @"kQPDateSpecial";
      if (*a9)
      {
        if (*a10)
        {
          if (*a11)
          {
            if (v43[5])
            {
              v25 = *(a1 + 1);
              if (*(v25 + 73) == 1)
              {
                BundleWithIdentifier = *(v25 + 200);
                if (BundleWithIdentifier)
                {
                  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
                  v25 = *(a1 + 1);
                }

                if (*(v25 + 8) == 2)
                {
                  v27 = @"Mail";
                }

                else
                {
                  v27 = @"Search";
                }

                v40 = copyLocalizedStringForDomain(BundleWithIdentifier, v27, @"Tokens", @"TOKEN:kQPTokenDate", *(v25 + 144));
                if (v40)
                {
                  theDict = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionarySetValue(theDict, @"QUERY", *a9);
                  CFDictionarySetValue(theDict, @"TOKEN", v43[5]);
                  CFDictionarySetValue(theDict, @"TEXT", v20);
                  CFDictionarySetValue(theDict, @"DATE_FROM", *a10);
                  CFDictionarySetValue(theDict, @"DATE_TO", *a11);
                  CFArrayAppendValue(*a8, theDict);
                  nlp::CFScopedPtr<__CFDictionary *>::reset(&theDict, 0);
                }

                nlp::CFScopedPtr<__CFString const*>::reset(&v40, 0);
              }
            }
          }
        }
      }
    }

    else
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v20);
      nlp::CFScopedPtr<__CFString const*>::reset(a5, Copy);
      QP::SpotlightFormatter::addDisplay(a1, v20, (*a2)[1]);
      CFDictionarySetValue(*a6, @"kQPDisplay", v20);
      v29 = CFStringCreateWithFormat(v23, 0, @"%d", WORD2((*a2)[2].location));
      v40 = v29;
      v30 = *(a1 + 3);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 1174405120;
      v34[2] = ___ZN2QP18SpotlightFormatter24addDisplayParseAttributeENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEEiRN3nlp11CFScopedPtrIPK10__CFStringEERNS8_IP14__CFDictionaryEERSB_RNS8_IP9__CFArrayEERKSC_SO_SO__block_invoke_2;
      v34[3] = &__block_descriptor_tmp_218;
      v32 = *a3;
      v31 = a3[1];
      v34[4] = a1;
      v34[5] = v32;
      v35 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = v14;
      v36 = a9;
      v37 = a8;
      QP::ParserGrammar::tokens(v30, @"kQPDate", v29, v20, v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    _Block_object_dispose(&v42, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    _Block_object_dispose(&v48, 8);
    if (v53)
    {
      CFRelease(v53);
    }

    CFRelease(v20);
  }
}

void sub_1C66017A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a23, 0);
  _Block_object_dispose(&a31, 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&a36, 0);
  _Block_object_dispose((v36 - 160), 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v36 - 120), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v36 - 96), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24addDisplayParseAttributeENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEEiRN3nlp11CFScopedPtrIPK10__CFStringEERNS8_IP14__CFDictionaryEERSB_RNS8_IP9__CFArrayEERKSC_SO_SO__block_invoke(void *a1, unsigned int a2, unsigned int a3)
{
  if (!*(*(a1[4] + 8) + 40))
  {
    v6 = a1[6];
    if (QP::ParserGrammar::hasSuggestion(*(v6 + 24), kQPParseAttributeDateKey, a2, a3))
    {
      v7 = *(a1[4] + 8);
      QP::ParserGrammar::suggestion(*(v6 + 24), kQPParseAttributeDateKey, a2, a3, &__p);
      CFStringFromString = QP::createCFStringFromString(&__p);
      nlp::CFScopedPtr<__CFString const*>::reset((v7 + 40), CFStringFromString);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      QP::ParserGrammar::symbol(*(v6 + 24), a3, &__p);
      v9 = QP::createCFStringFromString(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = *(a1[5] + 8);
      v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"TOKEN:%@", v9);
      nlp::CFScopedPtr<__CFString const*>::reset((v10 + 40), v11);
      v12 = *(a1[5] + 8);
      v13 = *(v6 + 8);
      BundleWithIdentifier = *(v13 + 200);
      if (BundleWithIdentifier)
      {
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
        v13 = *(v6 + 8);
      }

      if (*(v13 + 8) == 2)
      {
        v15 = @"Mail";
      }

      else
      {
        v15 = @"Search";
      }

      v16 = copyLocalizedStringForDomain(BundleWithIdentifier, v15, @"Token", *(*(a1[5] + 8) + 40), *(v13 + 144));
      nlp::CFScopedPtr<__CFString const*>::reset((v12 + 40), v16);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void sub_1C66019F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QP::SpotlightFormatter::addDisplay(QP::SpotlightFormatter *this, __CFString *theString, CFRange a3)
{
  if (a3.location != -1)
  {
    length = a3.length;
    if (a3.length)
    {
      location = a3.location;
      v5 = theString;
      if (!theString || !CFStringGetLength(theString))
      {
        v5 = &stru_1F45E9EA0;
      }

      v7 = kQPParseAttributeDisplayKey;
      v8.location = location;
      v8.length = length;

      QP::Formatter::setParseAttribute(this, v7, v5, v8);
    }
  }
}

void ___ZN2QP18SpotlightFormatter24addDisplayParseAttributeENSt3__110shared_ptrINS_14ParseAttributeEEENS2_INS_10DatePeriodEEEiRN3nlp11CFScopedPtrIPK10__CFStringEERNS8_IP14__CFDictionaryEERSB_RNS8_IP9__CFArrayEERKSC_SO_SO__block_invoke_2(uint64_t a1, const void *a2, int a3, CFStringRef str, const __CFString *a5)
{
  v8 = *(a1 + 32);
  IntValue = CFStringGetIntValue(str);
  if (IntValue == 6)
  {
    v10 = *(a1 + 40);
    if ((*(v10 + 3) - 6) < 0xD || QP::DatePeriod::hasTodayReference(v10, *(*(v8 + 8) + 88), *(*(v8 + 8) + 80)))
    {
      return;
    }
  }

  v11 = *(v8 + 40);
  v12 = *(a1 + 48);
  v30 = *(a1 + 40);
  v31 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = QP::DateFormatter::copyDisplayForDate(v11, &v30, IntValue, 1u, 1, *(a1 + 72));
  v32 = v13;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v14 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v29 = Mutable;
  v16 = *(v8 + 40);
  v17 = *(a1 + 48);
  v26 = *(a1 + 40);
  v27 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  started = QP::DateFormatter::copyISODisplayForStartDate(v16, &v26, IntValue, 0, 1, *(a1 + 72));
  v28 = started;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v19 = *(v8 + 40);
  v20 = *(a1 + 48);
  v23 = *(a1 + 40);
  v24 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = QP::DateFormatter::copyISODisplayForEndDate(v19, &v23, IntValue, 0, 1, *(a1 + 72), 1);
  v25 = v21;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a5)
  {
    MutableCopy = CFStringCreateMutableCopy(v14, 0, a5);
    v33.length = CFStringGetLength(MutableCopy);
    v33.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%1@", started, v33, 0);
    v34.length = CFStringGetLength(MutableCopy);
    v34.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%2@", v21, v34, 0);
    CFDictionarySetValue(Mutable, @"QUERY", MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, @"QUERY", **(a1 + 56));
  }

  if (a2 && v13 && started)
  {
    if (!v21)
    {
LABEL_28:
      CFRelease(started);
      goto LABEL_29;
    }

    CFDictionarySetValue(Mutable, @"TOKEN", a2);
    CFDictionarySetValue(Mutable, @"TEXT", v13);
    CFDictionarySetValue(Mutable, @"DATE_FROM", started);
    CFDictionarySetValue(Mutable, @"DATE_TO", v21);
    CFArrayAppendValue(**(a1 + 64), Mutable);
  }

  else if (!v21)
  {
    goto LABEL_27;
  }

  CFRelease(v21);
LABEL_27:
  if (started)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_1C6601DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va3, 0);
  _Unwind_Resume(a1);
}

BOOL QP::DatePeriod::hasTodayReference(QP::DatePeriod *this, __CFCalendar *a2, const __CFDate *a3)
{
  CurrentTime = getCurrentTime(a2, a3);
  v8 = -1;
  v9 = -1;
  v7 = -1;
  CFCalendarDecomposeAbsoluteTime(a2, CurrentTime, "yMd", &v7, &v8, &v9);
  return *(this + 3) == 2 && (*(this + 11) == v7 && *(this + 10) == v8 && *(this + 9) == v9 || *(this + 25) == v7 && *(this + 24) == v8 && *(this + 23) == v9);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::SpotlightFormatter::updateParseWithDateAttribute(QP::Formatter *a1, const __CFString *a2, CFRange **a3)
{
  v4 = *a3;
  length = (*a3)[11].length;
  if (length)
  {
    v8 = std::__shared_weak_count::lock(length);
    if (v8)
    {
      v9 = v8;
      location = v4[11].location;
      if (!location)
      {
LABEL_104:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }

      v72 = 0;
      v73 = 0;
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v71 = Mutable;
      v70 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      v13 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v69 = v13;
      v67 = @"kQPDate";
      v68 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      v42 = v70;
      if (*(*(a1 + 1) + 8))
      {
        if (getDateActionFilters(void)::onceToken != -1)
        {
          QP::SpotlightFormatter::updateParseWithDateAttribute();
        }

        v14 = getDateActionFilters(void)::gDateActionFilters;
      }

      else
      {
        v14 = 0;
      }

      memset(&v66, 0, sizeof(v66));
      v15 = *a3;
      if (SHIBYTE((*a3)[4].location) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, v15[2].__r_.__value_.__l.__data_, v15[2].__r_.__value_.__l.__size_);
      }

      else
      {
        v66 = v15[2];
      }

      v41 = Mutable;
      if (QP::ParserGrammar::hasTranslations(*(a1 + 3), &v66))
      {
        v39 = v14;
        cf = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v65[1] = cf;
        v16 = *(location + 120);
        v17 = *(location + 128);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v16 && ((*a3)[4].length & 0x10000) == 0)
        {
          v64 = 0;
          v65[0] = 0;
          v63 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
          v62 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
          v18 = *(v16 + 152);
          __p = *(v16 + 136);
          v59 = v18;
          v60 = *(v16 + 168);
          v61 = *(v16 + 184);
          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          v19 = *(v16 + 24);
          v20 = *(v16 + 56);
          v55 = *(v16 + 40);
          v56 = v20;
          v57 = *(v16 + 72);
          v54 = v19;
          v21 = *(v16 + 96);
          v52[0] = *(v16 + 80);
          v22 = *(v16 + 112);
          v52[1] = v21;
          v52[2] = v22;
          v53 = *(v16 + 128);
          v23 = QP::DateComponents::isConcreteType(&v54, *(v16 + 12)) && QP::DateComponents::isEmpty(&__p) && ((QP::DateComponents::isEmpty(v52) & 1) != 0 || (QP::DateComponents::isConcreteType(v52, *(v16 + 12)) & 1) != 0);
          v27 = (*(v16 + 20) - 1) < 2 || v23;
          v51 = 0;
          v50[0] = v16;
          v50[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::SpotlightFormatter::getGroundedStartAndEndDate(a1, v50, v65, &v64, &v51);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (v65[0] && v64)
          {
            v45[0] = CFStringCreateWithFormat(v11, 0, @"$time.iso(%@)", v65[0]);
            v49 = CFStringCreateWithFormat(v11, 0, @"$time.iso(%@)", v64);
            QP::Formatter::setParseAttribute(a1, @"kQPDateStart", v45[0], (*a3)[1]);
            QP::Formatter::setParseAttribute(a1, @"kQPDateEnd", v49, (*a3)[1]);
            nlp::CFScopedPtr<__CFString const*>::reset(&v49, 0);
            nlp::CFScopedPtr<__CFString const*>::reset(v45, 0);
          }

          v28 = v27;
          v29 = a3[1];
          v48[0] = *a3;
          v48[1] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47[0] = v16;
          v47[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::SpotlightFormatter::getGroundedTranslations(a1, v48, v47, v65, &v64, &v67, &v63, &v62, v28, v39);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (*(*(a1 + 1) + 64) == 1 && v65[0] && v64)
          {
            QP::getUTF8StringFromCFString(kQPParseAttributeDateKey, v45);
            v30 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v66, v45);
            if (v46 < 0)
            {
              operator delete(v45[0]);
            }

            if (v30)
            {
              v31 = CFStringCreateWithFormat(v11, 0, @"(kMDItemStartDate<$time.iso(%@) && kMDItemEndDate>$time.iso(%@))", v64, v65[0]);
              v45[0] = v31;
              CFArrayAppendValue(v63, v31);
              if (v31)
              {
                CFRelease(v31);
              }
            }
          }

          v32 = CFStringCreateWithSubstring(v11, a2, *(location + 72));
          v45[0] = v32;
          QP::Formatter::setParseAttribute(a1, kQPParseAttributeDateKey, v32, (*a3)[1]);
          Count = CFArrayGetCount(v63);
          if (Count)
          {
            v34 = CFStringCreateByCombiningStrings(v11, v63, @" || ");
            v49 = v34;
            if (CFStringGetLength(v34))
            {
              if (Count <= 1)
              {
                v35 = CFStringCreateWithFormat(v11, 0, @"%@", v34);
              }

              else
              {
                v35 = CFStringCreateWithFormat(v11, 0, @"(%@)", v34);
              }

              nlp::CFScopedPtr<__CFString const*>::reset(&v72, v35);
              if (CFStringGetLength(v72))
              {
                QP::Formatter::setParseAttribute(a1, kQPParseAttributeDescriptionKey, v72, (*a3)[1]);
              }

              ++*(a1 + 10);
            }

            if (v34)
            {
              CFRelease(v34);
            }
          }

          v36 = *a3;
          v37 = a3[1];
          v44[0] = v36;
          v44[1] = v37;
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->length, 1uLL, memory_order_relaxed);
          }

          v43[0] = v16;
          v43[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::SpotlightFormatter::addDisplayParseAttribute(a1, v44, v43, v51, &v73, &v69, &v67, &v68, &v72, v65, &v64);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v62)
          {
            CFRelease(v62);
          }

          if (v63)
          {
            CFRelease(v63);
          }

          if (v64)
          {
            CFRelease(v64);
          }

          if (v65[0])
          {
            CFRelease(v65[0]);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_87;
      }

      QP::getUTF8StringFromCFString(kQPParseAttributeDateExtensionKey, &__p);
      v24 = QP::equals(&v66, &__p);
      v25 = v24;
      if (SBYTE7(v59) < 0)
      {
        operator delete(__p);
        if (!v25)
        {
LABEL_87:
          if (CFArrayGetCount(v68))
          {
            v38 = @"kQPTokenDate";
            v67 = @"kQPTokenDate";
          }

          else
          {
            v38 = v67;
          }

          QP::SpotlightFormatter::addTokens(a1, v38, v68);
          QP::SpotlightFormatter::addSuggestion(a1, v73);
          QP::SpotlightFormatter::addDescription(a1, v72);
          QP::SpotlightFormatter::addAttributes(a1, v13);
          QP::SpotlightFormatter::addPrimaryCategories(a1, v41);
          QP::SpotlightFormatter::addSecondaryCategory(a1, v42);
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            CFRelease(v68);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (v72)
          {
            CFRelease(v72);
          }

          if (v73)
          {
            CFRelease(v73);
          }

          goto LABEL_104;
        }
      }

      else if (!v24)
      {
        goto LABEL_87;
      }

      v26 = CFStringCreateWithSubstring(v11, a2, *(location + 72));
      *&__p = v26;
      QP::Formatter::setParseAttribute(a1, kQPParseAttributeDateExtensionKey, v26, (*a3)[1]);
      ++*(a1 + 10);
      v67 = kQPParseAttributeDateExtensionKey;
      if (v26)
      {
        CFRelease(v26);
      }

      goto LABEL_87;
    }
  }
}

void sub_1C660270C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a20, 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v54 - 216), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v54 - 208), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v54 - 200), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v54 - 192), 0);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset((v54 - 184), 0);
  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  nlp::CFScopedPtr<__CFArray *>::reset((v54 - 144), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v54 - 136), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v54 - 128), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v54 - 120), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v54 - 112), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v54 - 104), 0);
  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void QP::SpotlightFormatter::addTokens(QP::SpotlightFormatter *this, __CFString *a2, const __CFArray *a3)
{
  v4 = *(this + 15);
  if (v4 && *(this + 16))
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = *(this + 24);
    }

    CFArrayAppendValue(v4, v6);
    v7 = *(this + 16);
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = @"kQPSuggestion";
    }

    CFArrayAppendValue(v7, v8);
  }
}

void QP::SpotlightFormatter::addSuggestion(QP::SpotlightFormatter *this, __CFString *theString)
{
  v3 = *(this + 14);
  if (v3)
  {
    if (theString && (Length = CFStringGetLength(theString), v3 = *(this + 14), Length))
    {
      v6 = theString;
    }

    else
    {
      v6 = &stru_1F45E9EA0;
    }

    CFArrayAppendValue(v3, v6);
  }
}

void QP::SpotlightFormatter::addDescription(QP::SpotlightFormatter *this, __CFString *theString)
{
  v3 = *(this + 12);
  if (v3)
  {
    if (theString && (Length = CFStringGetLength(theString), v3 = *(this + 12), Length))
    {
      v6 = theString;
    }

    else
    {
      v6 = &stru_1F45E9EA0;
    }

    CFArrayAppendValue(v3, v6);
  }
}

void QP::SpotlightFormatter::addAttributes(QP::SpotlightFormatter *this, const __CFDictionary *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    if (!a2)
    {
      a2 = *(this + 23);
    }

    CFArrayAppendValue(v3, a2);
  }
}

void QP::SpotlightFormatter::addPrimaryCategories(QP::SpotlightFormatter *this, const __CFArray *a2)
{
  v3 = *(this + 17);
  if (v3)
  {
    if (!a2)
    {
      a2 = *(this + 24);
    }

    CFArrayAppendValue(v3, a2);
  }
}

void QP::SpotlightFormatter::addSecondaryCategory(QP::SpotlightFormatter *this, const __CFArray *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    if (!a2)
    {
      a2 = *(this + 24);
    }

    CFArrayAppendValue(v3, a2);
  }
}

void QP::SpotlightFormatter::_parseLocationAttributeKey(QP::SpotlightFormatter *this, CFStringRef theString, __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (CFStringContainsString(theString, @"%@lat") && CFStringContainsString(theString, @"%@lng"))
  {
    v19 = *MEMORY[0x1E695E480];
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"(InRange(_kMDItemExtractedLocationsLatitude,%f,%f) && InRange(_kMDItemExtractedLocationsLongitude,%f,%f))", *&a7, *&a8, *&a9, *&a10);
    if (CFStringGetLength(a3))
    {
      CFStringAppend(a3, @" || ");
    }

    CFStringAppend(a3, v20);
    if (a4)
    {
      v21 = a5 == 0;
    }

    else
    {
      v21 = 0;
    }

    v22 = !v21;
    if (!v21 || a6)
    {
      if (v22)
      {
        if (!a5)
        {
          goto LABEL_36;
        }

        v24 = CFStringCreateWithFormat(v19, 0, @"(_kMDItemExtractedLocationsValues=0 && _kMDItemExtractedLocationsParent=%d)", a5);
        if (CFStringGetLength(a3))
        {
          CFStringAppend(a3, @" || ");
        }

        CFStringAppend(a3, v24);
        v23 = CFStringCreateWithFormat(v19, 0, @"(_kMDItemExtractedLocationsValues=0 && _kMDItemExtractedLocationsParent=0 && _kMDItemExtractedLocationsCountry=%d)", a6);
        if (v24)
        {
          CFRelease(v24);
        }

        if (CFStringGetLength(a3))
        {
          CFStringAppend(a3, @" || ");
        }

        CFStringAppend(a3, v23);
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v25 = CFStringCreateWithFormat(v19, 0, @"(_kMDItemExtractedLocationsValues=0 && _kMDItemExtractedLocationsParent=%d)", a4);
        if (CFStringGetLength(a3))
        {
          CFStringAppend(a3, @" || ");
        }

        CFStringAppend(a3, v25);
        v23 = CFStringCreateWithFormat(v19, 0, @"(_kMDItemExtractedLocationsValues=0 && _kMDItemExtractedLocationsParent=0 && _kMDItemExtractedLocationsCountry=%d)", a6);
        if (v25)
        {
          CFRelease(v25);
        }

        if (CFStringGetLength(a3))
        {
          CFStringAppend(a3, @" || ");
        }

        CFStringAppend(a3, v23);
        if (!v23)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v23 = CFStringCreateWithFormat(v19, 0, @"(_kMDItemExtractedLocationsValues=0 && _kMDItemExtractedLocationsParent=0 && _kMDItemExtractedLocationsCountry=%d)", a4);
      if (CFStringGetLength(a3))
      {
        CFStringAppend(a3, @" || ");
      }

      CFStringAppend(a3, v23);
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    CFRelease(v23);
LABEL_36:
    if (v20)
    {
      CFRelease(v20);
    }
  }
}

void sub_1C6602E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke(uint64_t a1, CFStringRef theString)
{
  v4 = *(a1 + 48);
  if (CFStringContainsString(theString, @"%@u"))
  {
    if (QP::ParserGrammar::hasUTIs(*(v4 + 24), *(a1 + 128)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + 128);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_2;
      v59[3] = &unk_1E8267848;
      v59[4] = *(a1 + 32);
      v59[5] = theString;
      QP::ParserGrammar::UTIs(v5, v6, v59);
    }

    return;
  }

  if (!CFStringContainsString(theString, @"%@ad"))
  {
    if (CFStringContainsString(theString, @"%@pn"))
    {
      if (*(a1 + 56))
      {
        if (*(a1 + 64))
        {
          MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
          theStringa[0] = MutableCopy;
          v10 = *(a1 + 64);
          v63.length = CFStringGetLength(MutableCopy);
          v63.location = 0;
          CFStringFindAndReplace(MutableCopy, @"%@pns", v10, v63, 0);
          v11 = *(a1 + 56);
          v64.length = CFStringGetLength(MutableCopy);
          v64.location = 0;
          CFStringFindAndReplace(MutableCopy, @"%@pn", v11, v64, 0);
          (*(*(a1 + 32) + 16))(*(a1 + 32));
          if (MutableCopy)
          {
            goto LABEL_8;
          }
        }
      }

      return;
    }

    if (CFStringContainsString(theString, @"%@flg"))
    {
      if (!*(a1 + 56) || !*(a1 + 64))
      {
        return;
      }

      theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v12 = *(a1 + 64);
      v65.length = CFStringGetLength(theStringa[0]);
      v65.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@flgs", v12, v65, 0);
      v13 = *(a1 + 56);
      v66.length = CFStringGetLength(theStringa[0]);
      v66.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@flg", v13, v66, 0);
      (*(*(a1 + 32) + 16))();
    }

    else if (CFStringContainsString(theString, @"%@lnk"))
    {
      if (!*(a1 + 56) || !*(a1 + 64))
      {
        return;
      }

      theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v14 = *(a1 + 64);
      v67.length = CFStringGetLength(theStringa[0]);
      v67.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@lnks", v14, v67, 0);
      v15 = *(a1 + 56);
      v68.length = CFStringGetLength(theStringa[0]);
      v68.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@lnk", v15, v68, 0);
      (*(*(a1 + 32) + 16))();
    }

    else if (CFStringContainsString(theString, @"%@trck"))
    {
      if (!*(a1 + 56) || !*(a1 + 64))
      {
        return;
      }

      theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v16 = *(a1 + 64);
      v69.length = CFStringGetLength(theStringa[0]);
      v69.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@trcks", v16, v69, 0);
      v17 = *(a1 + 56);
      v70.length = CFStringGetLength(theStringa[0]);
      v70.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@trck", v17, v70, 0);
      (*(*(a1 + 32) + 16))();
    }

    else if (CFStringContainsString(theString, @"%@cur"))
    {
      if (!*(a1 + 56) || !*(a1 + 64) || !*(a1 + 72))
      {
        return;
      }

      theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v19 = *(a1 + 64);
      v71.length = CFStringGetLength(theStringa[0]);
      v71.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@curl", v19, v71, 0);
      v20 = *(a1 + 56);
      v72.length = CFStringGetLength(theStringa[0]);
      v72.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@curh", v20, v72, 0);
      v21 = *(a1 + 72);
      v73.length = CFStringGetLength(theStringa[0]);
      v73.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@curv", v21, v73, 0);
      (*(*(a1 + 32) + 16))();
    }

    else if (CFStringContainsString(theString, @"%@lat") && CFStringContainsString(theString, @"%@lng"))
    {
      theStringa[0] = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      (*(*(a1 + 40) + 16))();
      if (CFStringGetLength(theStringa[0]))
      {
        CFStringInsert(theStringa[0], 0, @"(");
        CFStringAppend(theStringa[0], @""));
        (*(*(a1 + 32) + 16))();
      }
    }

    else if (CFStringContainsString(theString, @"%@l") || CFStringContainsString(theString, @"%@h") || CFStringContainsString(theString, @"%@n"))
    {
      if (!*(a1 + 56) || !*(a1 + 64) || !*(a1 + 72))
      {
        return;
      }

      theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v22 = *(a1 + 64);
      v74.length = CFStringGetLength(theStringa[0]);
      v74.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@l", v22, v74, 0);
      v23 = *(a1 + 56);
      v75.length = CFStringGetLength(theStringa[0]);
      v75.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@h", v23, v75, 0);
      v24 = *(a1 + 72);
      v76.length = CFStringGetLength(theStringa[0]);
      v76.location = 0;
      CFStringFindAndReplace(theStringa[0], @"%@n", v24, v76, 0);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (CFStringContainsString(theString, @"%@e"))
      {
        if (QP::ParserGrammar::hasFileExtensions(*(v4 + 24), *(a1 + 128)))
        {
          v25 = *(v4 + 24);
          v26 = *(a1 + 128);
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 0x40000000;
          v58[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_3;
          v58[3] = &unk_1E8267870;
          v58[4] = *(a1 + 32);
          v58[5] = theString;
          QP::ParserGrammar::fileExtensions(v25, v26, v58);
        }

        return;
      }

      if (CFStringContainsString(theString, @"%@c"))
      {
        if (QP::ParserGrammar::hasCategories(*(v4 + 24), *(a1 + 128)))
        {
          v27 = *(v4 + 24);
          v28 = *(a1 + 128);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 0x40000000;
          v57[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_4;
          v57[3] = &unk_1E8267898;
          v57[4] = *(a1 + 32);
          v57[5] = theString;
          QP::ParserGrammar::categories(v27, v28, v57);
        }

        return;
      }

      if (CFStringContainsString(theString, @"%@m"))
      {
        if (!*(a1 + 80))
        {
          return;
        }

        theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
        v29 = *(a1 + 80);
        v77.length = CFStringGetLength(theStringa[0]);
        v77.location = 0;
        CFStringFindAndReplace(theStringa[0], @"%@m", v29, v77, 0);
        (*(*(a1 + 32) + 16))();
      }

      else if (CFStringContainsString(theString, @"%@d"))
      {
        if (!*(a1 + 72))
        {
          return;
        }

        theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
        v30 = *(a1 + 72);
        v78.length = CFStringGetLength(theStringa[0]);
        v78.location = 0;
        CFStringFindAndReplace(theStringa[0], @"%@d", v30, v78, 0);
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v31 = *(a1 + 130);
        if (v31 == 16)
        {
          if (*(a1 + 96) && CFStringContainsString(theString, @"%@i"))
          {
            if (CFArrayGetCount(*(a1 + 96)) >= 1)
            {
              v33 = 0;
              v34 = *MEMORY[0x1E695E480];
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), v33);
                theStringa[0] = 0;
                v36 = CFStringCreateMutableCopy(v34, 0, theString);
                theStringa[0] = v36;
                v80.length = CFStringGetLength(v36);
                v80.location = 0;
                CFStringFindAndReplace(v36, @"%@i", ValueAtIndex, v80, 0);
                (*(*(a1 + 32) + 16))();
                nlp::CFScopedPtr<__CFString *>::reset(theStringa, 0);
                ++v33;
              }

              while (v33 < CFArrayGetCount(*(a1 + 96)));
            }

            return;
          }

          if (!*(a1 + 88))
          {
            return;
          }

          theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
          v47 = *(a1 + 88);
          v83.length = CFStringGetLength(theStringa[0]);
          v83.location = 0;
          CFStringFindAndReplace(theStringa[0], @"%@v", v47, v83, 0);
          (*(*(a1 + 32) + 16))();
        }

        else
        {
          if (v31 != 5)
          {
            if (!*(a1 + 88))
            {
              v48 = *(*(a1 + 32) + 16);

              v48();
              return;
            }

            v56 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
            v37 = *(a1 + 104);
            std::string::basic_string[abi:ne200100]<0>(theStringa, "kQPMe");
            v38 = QP::equals(v37, theStringa);
            if (v55 < 0)
            {
              operator delete(theStringa[0]);
            }

            if (v38)
            {
              Count = CFArrayGetCount(*(v4 + 152));
              if (Count)
              {
                v40 = v56;
                v41 = Count - 1;
                v42 = CFArrayGetValueAtIndex(*(v4 + 152), Count - 1);
                v43 = CFArrayGetValueAtIndex(v42, 0);
                v81.length = CFStringGetLength(v56);
                v81.location = 0;
                CFStringFindAndReplace(v40, @"%@a", v43, v81, 0);
                v44 = v56;
                v45 = CFArrayGetValueAtIndex(*(v4 + 152), v41);
                v46 = CFArrayGetValueAtIndex(v45, 1);
                v82.length = CFStringGetLength(v56);
                v82.location = 0;
                CFStringFindAndReplace(v44, @"%@x", v46, v82, 0);
                (*(*(a1 + 32) + 16))();
              }
            }

            else
            {
              v49 = v56;
              v50 = *(a1 + 88);
              v84.length = CFStringGetLength(v56);
              v84.location = 0;
              CFStringFindAndReplace(v49, @"%@v", v50, v84, 0);
              v51 = v56;
              LODWORD(v49) = *(*(a1 + 112) + 72);
              v52.length = CFStringGetLength(v56);
              if (v49)
              {
                v53 = @"cd";
              }

              else
              {
                v53 = @"cdw";
              }

              v52.location = 0;
              CFStringFindAndReplace(v51, @"%@b", v53, v52, 0);
              (*(*(a1 + 32) + 16))();
            }

            v18 = &v56;
LABEL_27:
            nlp::CFScopedPtr<__CFString *>::reset(v18, 0);
            return;
          }

          if (!*(a1 + 88))
          {
            return;
          }

          theStringa[0] = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
          v32 = *(a1 + 88);
          v79.length = CFStringGetLength(theStringa[0]);
          v79.location = 0;
          CFStringFindAndReplace(theStringa[0], @"%@s", v32, v79, 0);
          (*(*(a1 + 32) + 16))();
        }
      }
    }

    v18 = theStringa;
    goto LABEL_27;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 64))
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      theStringa[0] = MutableCopy;
      v8 = *(a1 + 64);
      v61.length = CFStringGetLength(MutableCopy);
      v61.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@ads", v8, v61, 0);
      v9 = *(a1 + 56);
      v62.length = CFStringGetLength(MutableCopy);
      v62.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@ad", v9, v62, 0);
      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (MutableCopy)
      {
LABEL_8:
        CFRelease(MutableCopy);
      }
    }
  }
}

void sub_1C6603AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString *>::reset(&a15, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_2(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  CFStringFromString = QP::createCFStringFromString(a2);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@u", CFStringFromString, v6, 0);
  (*(*(a1 + 32) + 16))(*(a1 + 32), MutableCopy);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1C6603C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_3(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  CFStringFromString = QP::createCFStringFromString(a2);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@e", CFStringFromString, v6, 0);
  (*(*(a1 + 32) + 16))(*(a1 + 32), MutableCopy);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1C6603D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_4(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  CFStringFromString = QP::createCFStringFromString(a2);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@c", CFStringFromString, v6, 0);
  (*(*(a1 + 32) + 16))(*(a1 + 32), MutableCopy);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1C6603DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_112c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(result + 120) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_112c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_350(uint64_t a1, CFStringRef theString)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (CFStringContainsString(theString, @"%@y"))
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x4002000000;
    v81 = __Block_byref_object_copy__354;
    v82 = __Block_byref_object_dispose__355;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::map[abi:ne200100](&v83, *(v3 + 24) + 384);
    v4 = std::__tree<std::string>::find<std::string>((v79 + 5), *(a1 + 48));
    if (v79 + 6 != v4)
    {
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x4002000000;
      v74[3] = __Block_byref_object_copy__356;
      v74[4] = __Block_byref_object_dispose__357;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      std::map<unsigned short,std::map<std::string,float>>::map[abi:ne200100](&v75, *(v3 + 24) + 576);
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x4002000000;
      v70[3] = __Block_byref_object_copy__358;
      v70[4] = __Block_byref_object_dispose__359;
      v71 = 0;
      v73 = 0;
      v72 = 0;
      std::map<unsigned short,std::map<unsigned short,float>>::map[abi:ne200100](&v71, *(v3 + 24) + 624);
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x4002000000;
      v67[3] = __Block_byref_object_copy__360;
      v69[1] = 0;
      v69[0] = 0;
      v67[4] = __Block_byref_object_dispose__361;
      v68 = v69;
      v59 = 0;
      v60 = &v59;
      v61 = 0x4002000000;
      v62 = __Block_byref_object_copy__362;
      v63 = __Block_byref_object_dispose__363;
      v64 = 0;
      v66 = 0;
      v65 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2000000000;
      v58 = 0;
      v5 = *(v3 + 24);
      std::string::basic_string[abi:ne200100]<0>(&__p, "DEFAULT_APP_ENTITY");
      v6 = QP::ParserGrammar::symbolID(v5, &__p);
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p);
      }

      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 0x40000000;
      v50[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_365;
      v50[3] = &unk_1E82678C0;
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v50[4] = v74;
      v50[5] = &v55;
      v51 = v6;
      v50[6] = v70;
      v50[7] = v67;
      v50[8] = &v78;
      v50[9] = &v59;
      v50[10] = v8;
      QP::ParseAttribute::impactGroupAppEntityTypes(v7, v50);
      if (v56[6] > 0.0)
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 0x40000000;
        v49[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_2_368;
        v49[3] = &unk_1E82678E8;
        v10 = *(a1 + 48);
        v9 = *(a1 + 56);
        v49[4] = &v78;
        v49[5] = &v59;
        v49[6] = v10;
        QP::ParseAttribute::impactGroupEventTypes(v9, v49);
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 0x40000000;
        v48[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_3_370;
        v48[3] = &unk_1E8267910;
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v48[5] = &v59;
        v48[6] = v12;
        v48[4] = &v78;
        QP::ParseAttribute::impactGroupInferredAppEntityTypes(v11, v48);
        __p = 0;
        v53 = 0;
        v54 = 0;
        v13 = *(v3 + 24);
        std::string::basic_string[abi:ne200100]<0>(v46, "ImpactTargeted");
        v86[0] = QP::ParserGrammar::symbolID(v13, v46);
        v14 = *(v3 + 24);
        std::string::basic_string[abi:ne200100]<0>(v44, "ImpactHigh");
        v86[1] = QP::ParserGrammar::symbolID(v14, v44);
        v15 = *(v3 + 24);
        std::string::basic_string[abi:ne200100]<0>(v42, "ImpactMedium");
        v86[2] = QP::ParserGrammar::symbolID(v15, v42);
        v16 = *(v3 + 24);
        std::string::basic_string[abi:ne200100]<0>(v40, "ImpactLow");
        v86[3] = QP::ParserGrammar::symbolID(v16, v40);
        v53 = 0;
        v54 = 0;
        __p = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v86, &v87, 4);
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (v47 < 0)
        {
          operator delete(v46[0]);
        }

        v17 = v60;
        v18 = __p;
        if (v60[6] != v60[5])
        {
          v32 = 0;
          v19 = v53;
          v20 = a1;
          do
          {
            if (v19 != v18)
            {
              v21 = 0;
              v22 = (v19 - v18) >> 1;
              v23 = MEMORY[0x1E69E9820];
              do
              {
                v24 = v3;
                v25 = *(v3 + 24);
                v26 = v20[6];
                v27 = *(v60[5] + 2 * v32);
                v28 = v18[v21];
                v33[0] = v23;
                v33[1] = 1174405120;
                v33[2] = ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_4_376;
                v33[3] = &unk_1F45E95D0;
                v33[5] = v67;
                v35 = 0;
                v36 = 0;
                v34 = 0;
                std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v34, v18, v19, v22);
                v37 = v21;
                v38 = theString;
                v39 = v20[9];
                v29 = v20[4];
                v33[6] = &v55;
                v33[4] = v29;
                QP::ParserGrammar::impactGroups(v25, v26, v27, v28, v33);
                v3 = v24;
                if (v34)
                {
                  v35 = v34;
                  operator delete(v34);
                }

                ++v21;
                v18 = __p;
                v19 = v53;
                v22 = (v53 - __p) >> 1;
              }

              while (v21 < v22);
              v17 = v60;
            }

            ++v32;
          }

          while (v32 < (v17[6] - v17[5]) >> 1);
        }

        if (v18)
        {
          v53 = v18;
          operator delete(v18);
        }
      }

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      _Block_object_dispose(v67, 8);
      std::__tree<unsigned int>::destroy(&v68, v69[0]);
      _Block_object_dispose(v70, 8);
      std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&v71, v72);
      _Block_object_dispose(v74, 8);
      std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&v75, v76);
    }

    _Block_object_dispose(&v78, 8);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(&v83, v84);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1C66044E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&a73, 8);
  v75 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v75;
    operator delete(v75);
  }

  _Block_object_dispose(&STACK[0x238], 8);
  std::__tree<unsigned int>::destroy(&STACK[0x260], STACK[0x268]);
  _Block_object_dispose(&STACK[0x278], 8);
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&STACK[0x2A0], STACK[0x2A8]);
  _Block_object_dispose((v73 - 248), 8);
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(v73 - 208, *(v73 - 200));
  _Block_object_dispose((v73 - 184), 8);
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(v73 - 144, *(v73 - 136));
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__354(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *__Block_byref_object_copy__356(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *__Block_byref_object_copy__358(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *__Block_byref_object_copy__360(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

__n128 __Block_byref_object_copy__362(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__363(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t QP::ParseAttribute::impactGroupAppEntityTypes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  v3 = (result + 112);
  if (v2 != (result + 112))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v2 + 13));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_365(uint64_t a1, unsigned int a2)
{
  v47 = a2;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = v3 + 48;
    v6 = *(v3 + 48);
    do
    {
      v7 = *(v6 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = *(v6 + 8 * v9);
    }

    while (v6);
    if (v5 != v3 + 48 && *(v5 + 32) <= a2)
    {
      v48 = &v47;
      v10 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v3 + 40, &v47);
      v11 = std::__tree<std::string>::find<std::string>((v10 + 5), *(a1 + 80));
      v12 = *(*(a1 + 32) + 8);
      v48 = &v47;
      v13 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v12 + 40, &v47);
      v3 = *(*(a1 + 32) + 8);
      if (v13 + 6 != v11)
      {
        v48 = &v47;
LABEL_22:
        v21 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v3 + 40, &v47);
        v48 = *(a1 + 80);
        *(*(*(a1 + 40) + 8) + 24) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v21 + 5), v48) + 56);
        goto LABEL_23;
      }

      v4 = *(v3 + 48);
    }

    if (v4)
    {
      v14 = *(a1 + 88);
      v15 = v3 + 48;
      do
      {
        v16 = *(v4 + 32);
        v8 = v16 >= v14;
        v17 = v16 < v14;
        if (v8)
        {
          v15 = v4;
        }

        v4 = *(v4 + 8 * v17);
      }

      while (v4);
      if (v15 != v3 + 48 && v14 >= *(v15 + 32))
      {
        v48 = (a1 + 88);
        v18 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v3 + 40, (a1 + 88));
        v19 = std::__tree<std::string>::find<std::string>((v18 + 5), *(a1 + 80));
        v20 = *(*(a1 + 32) + 8);
        v48 = (a1 + 88);
        if (std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v20 + 40, (a1 + 88)) + 6 != v19)
        {
          v3 = *(*(a1 + 32) + 8);
          v48 = &v47;
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  v22 = *(*(a1 + 48) + 8);
  v25 = *(v22 + 48);
  v23 = v22 + 48;
  v24 = v25;
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = v23;
  v27 = v23;
  v28 = v24;
  do
  {
    v29 = *(v28 + 32);
    v8 = v29 >= v47;
    v30 = v29 < v47;
    if (v8)
    {
      v27 = v28;
    }

    v28 = *(v28 + 8 * v30);
  }

  while (v28);
  if (v27 != v23 && v47 >= *(v27 + 32))
  {
    v48 = &v47;
    v31 = &v47;
LABEL_40:
    v35 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v23 - 8, v31);
    v36 = *(*(a1 + 56) + 8);
    if (v36 != v35)
    {
      std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,float>,std::__tree_node<std::__value_type<unsigned short,float>,void *> *,long>>((v36 + 40), v35[5], v35 + 6);
    }

    goto LABEL_42;
  }

  v31 = (a1 + 88);
  v32 = *(a1 + 88);
  do
  {
    v33 = *(v24 + 32);
    v8 = v33 >= v32;
    v34 = v33 < v32;
    if (v8)
    {
      v26 = v24;
    }

    v24 = *(v24 + 8 * v34);
  }

  while (v24);
  if (v26 != v23 && v32 >= *(v26 + 32))
  {
    v48 = (a1 + 88);
    goto LABEL_40;
  }

LABEL_42:
  v37 = *(*(a1 + 64) + 8);
  v48 = *(a1 + 80);
  v38 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v37 + 40, v48);
  v41 = *(v38 + 64);
  v39 = v38 + 64;
  v40 = v41;
  if (!v41)
  {
    goto LABEL_50;
  }

  v42 = v39;
  do
  {
    v43 = *(v40 + 32);
    v8 = v43 >= v47;
    v44 = v43 < v47;
    if (v8)
    {
      v42 = v40;
    }

    v40 = *(v40 + 8 * v44);
  }

  while (v40);
  if (v42 == v39 || v47 < *(v42 + 32))
  {
LABEL_50:
    v42 = v39;
  }

  v45 = *(*(a1 + 64) + 8);
  v48 = *(a1 + 80);
  if (v42 == std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v45 + 40, v48) + 64)
  {
    v46 = (a1 + 88);
  }

  else
  {
    v46 = &v47;
  }

  std::vector<unsigned short>::push_back[abi:ne200100]((*(*(a1 + 72) + 8) + 40), v46);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t QP::ParseAttribute::impactGroupEventTypes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  v3 = (result + 136);
  if (v2 != (result + 136))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v2 + 13));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_2_368(void *a1, unsigned int a2)
{
  v14 = a2;
  v4 = *(a1[4] + 8);
  v15 = a1[6];
  v5 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4 + 40, v15);
  v8 = *(v5 + 64);
  v6 = v5 + 64;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 == v6 || *(v9 + 32) > a2)
  {
LABEL_9:
    v9 = v6;
  }

  v13 = *(a1[4] + 8);
  v15 = a1[6];
  if (v9 != std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v13 + 40, v15) + 64)
  {
    std::vector<unsigned short>::push_back[abi:ne200100]((*(a1[5] + 8) + 40), &v14);
  }
}

uint64_t QP::ParseAttribute::impactGroupInferredAppEntityTypes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  v3 = (result + 160);
  if (v2 != (result + 160))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v2 + 13));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_3_370(void *a1, unsigned int a2)
{
  v14 = a2;
  v4 = *(a1[4] + 8);
  v15 = a1[6];
  v5 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4 + 40, v15);
  v8 = *(v5 + 64);
  v6 = v5 + 64;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 == v6 || *(v9 + 32) > a2)
  {
LABEL_9:
    v9 = v6;
  }

  v13 = *(a1[4] + 8);
  v15 = a1[6];
  if (v9 != std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v13 + 40, v15) + 64)
  {
    std::vector<unsigned short>::push_back[abi:ne200100]((*(a1[5] + 8) + 40), &v14);
  }
}

void ___ZN2QP18SpotlightFormatter18_parseAttributeKeyENSt3__110shared_ptrINS_14ParseAttributeEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEtt12QPSymbolFlagPK10__CFStringPK9__CFArraySJ_SG_SG_SG_SG_U13block_pointerFvSG_PSE_EU13block_pointerFvSG_ESO__block_invoke_4_376(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  v5 = *(v2 + 48);
  v3 = v2 + 48;
  v4 = v5;
  if (v5)
  {
    v8 = (*(a1 + 56) + 2 * *(a1 + 80));
    v9 = *v8;
    v10 = v3;
    do
    {
      v11 = *(v4 + 28);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v4;
      }

      v4 = *(v4 + 8 * v13);
    }

    while (v4);
    if (v10 != v3 && v9 >= *(v10 + 28))
    {
      v14 = *(*(*(a1 + 48) + 8) + 24);
      __p.__r_.__value_.__r.__words[0] = *(a1 + 56) + 2 * *(a1 + 80);
      v15 = *(std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v3 - 8, v8) + 8);
      CFStringFromString = QP::createCFStringFromString(a2);
      v23 = CFStringFromString;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 88));
      v22 = MutableCopy;
      v24.length = CFStringGetLength(MutableCopy);
      v24.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@y", CFStringFromString, v24, 0);
      v18 = *(a1 + 96);
      v25.length = CFStringGetLength(MutableCopy);
      v25.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@k", v18, v25, 0);
      std::to_string(&__p, v14 * v15);
      v19 = QP::createCFStringFromString(&__p);
      v21 = v19;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v26.length = CFStringGetLength(MutableCopy);
      v26.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@w", v19, v26, 0);
      v27.length = CFStringGetLength(MutableCopy);
      v27.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@j", @"-1", v27, 0);
      (*(*(a1 + 32) + 16))();
      if (v19)
      {
        CFRelease(v19);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (CFStringFromString)
      {
        CFRelease(CFStringFromString);
      }
    }
  }
}

void sub_1C6605178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString *>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a18, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_56c39_ZTSNSt3__16vectorItNS_9allocatorItEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
}

void __destroy_helper_block_e8_56c39_ZTSNSt3__16vectorItNS_9allocatorItEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_56c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::SpotlightFormatter::updateParseWithAnyAttribute(CFArrayRef *a1, uint64_t a2, uint64_t *a3)
{
  if (*(*a3 + 200) == *(*a3 + 192))
  {
    v19 = a3[1];
    v20 = *a3;
    v21 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::Formatter::updateParseWithAnyAttribute(a1, a2, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    Count = CFArrayGetCount(a1[12]);
    v7 = CFArrayGetCount(a1[12]);
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3002000000;
    v50[3] = __Block_byref_object_copy__391;
    v50[4] = __Block_byref_object_dispose__392;
    Mutable = 0;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    v44 = 0;
    v45 = &v44;
    v46 = 0x3002000000;
    v47 = __Block_byref_object_copy__14;
    v48 = __Block_byref_object_dispose__14;
    v49 = 0;
    v49 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3002000000;
    v42[3] = __Block_byref_object_copy__391;
    v42[4] = __Block_byref_object_dispose__392;
    v43 = 0;
    v43 = CFSetCreateMutable(v8, 0, MEMORY[0x1E695E9F8]);
    v36 = 0;
    v37 = &v36;
    v38 = 0x3002000000;
    v39 = __Block_byref_object_copy__14;
    v40 = __Block_byref_object_dispose__14;
    v41 = 0;
    v41 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3002000000;
    v34[3] = __Block_byref_object_copy__391;
    v34[4] = __Block_byref_object_dispose__392;
    v35 = 0;
    v35 = CFSetCreateMutable(v8, 0, MEMORY[0x1E695E9F8]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__14;
    v32 = __Block_byref_object_dispose__14;
    cf = 0;
    cf = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v9 = *a3;
    v10 = *(*a3 + 16);
    v11 = *(v9 + 24);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2000000000;
    v27 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___ZN2QP18SpotlightFormatter27updateParseWithAnyAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke;
    v25[3] = &unk_1E8267938;
    v25[12] = v10;
    v25[13] = v11;
    v25[14] = a2;
    v25[4] = v26;
    v25[5] = v34;
    v25[6] = &v28;
    v25[7] = v50;
    v25[8] = &v44;
    v25[9] = v42;
    v25[10] = &v36;
    v25[11] = a1;
    QP::ParseAttribute::enumerateAttributes(v9, v25);
    if (CFArrayGetCount(v29[5]))
    {
      v12 = CFStringCreateByCombiningStrings(v8, v29[5], @"|");
      v24 = v12;
      v54.location = v10;
      v54.length = v11;
      QP::Formatter::setParseAttribute(a1, kQPParseAttributeDisplayKey, v12, v54);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    v13 = CFArrayGetCount(a1[12]);
    if (CFArrayGetCount(v45[5]))
    {
      v14 = CFStringCreateByCombiningStrings(v8, v45[5], @" || ");
      v24 = v14;
      v15 = CFStringCreateWithFormat(v8, 0, @"(%@)", v14);
      v23 = v15;
      v55.location = v10;
      v55.length = v11;
      QP::Formatter::setParseAttribute(a1, kQPParseAttributeDescriptionKey, v15, v55);
      newValues = v15;
      v52.length = v13 - Count;
      v52.location = Count;
      CFArrayReplaceValues(a1[12], v52, &newValues, 1);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    v16 = CFArrayGetCount(a1[13]);
    if (CFArrayGetCount(v37[5]))
    {
      v17 = CFStringCreateByCombiningStrings(v8, v37[5], @" || ");
      v24 = v17;
      v18 = CFStringCreateWithFormat(v8, 0, @"(%@)", v17);
      v23 = v18;
      v56.location = v10;
      v56.length = v11;
      QP::Formatter::setParseAttribute(a1, kQPParseAttributeRankingDescriptionKey, v18, v56);
      newValues = v18;
      v53.length = v16 - v7;
      v53.location = v7;
      CFArrayReplaceValues(a1[13], v53, &newValues, 1);
      if (v18)
      {
        CFRelease(v18);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(&v28, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    _Block_object_dispose(v34, 8);
    if (v35)
    {
      CFRelease(v35);
    }

    _Block_object_dispose(&v36, 8);
    if (v41)
    {
      CFRelease(v41);
    }

    _Block_object_dispose(v42, 8);
    if (v43)
    {
      CFRelease(v43);
    }

    _Block_object_dispose(&v44, 8);
    if (v49)
    {
      CFRelease(v49);
    }

    _Block_object_dispose(v50, 8);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void sub_1C66057CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__391(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void QP::ParseAttribute::enumerateAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  for (i = *(a1 + 200); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = 0;
    }

    v7 = v5;
    (*(a2 + 16))(a2, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1C66059EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP18SpotlightFormatter27updateParseWithAnyAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke(CFRange *a1, CFRange **a2)
{
  length = a1[5].length;
  v5 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "kQPGroundedPerson");
  v6 = QP::equals(&v5[3].location, __p);
  v7 = v6;
  if ((v18 & 0x80000000) == 0)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (v7)
  {
LABEL_3:
    *(*(a1[2].location + 8) + 24) = 1;
  }

LABEL_4:
  if (*(*(a1[2].location + 8) + 24) == 1)
  {
    v8 = *a2;
    std::string::basic_string[abi:ne200100]<0>(__p, "kQPPerson");
    v9 = !QP::equals(&v8[3].location, __p) || *(*(length + 1) + 8) != 10;
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if (!v9)
      {
        return;
      }
    }

    else if (!v9)
    {
      return;
    }
  }

  *__p = (*a2)[1];
  QP::Formatter::removeParseAttribute(length, kQPParseAttributeDisplayKey, a1[6]);
  QP::Formatter::removeParseAttribute(length, kQPParseAttributeDescriptionKey, a1[6]);
  QP::Formatter::removeParseAttribute(length, kQPParseAttributeRankingDescriptionKey, a1[6]);
  (*a2)[1] = a1[6];
  location = a1[7].location;
  v11 = a2[1];
  v15 = *a2;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Formatter::updateParseWithAnyAttribute(length, location, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  (*a2)[1] = *__p;
  ParseAttribute = QP::Formatter::getParseAttribute(length, kQPParseAttributeDisplayKey, a1[6]);
  v13 = QP::Formatter::getParseAttribute(length, kQPParseAttributeDescriptionKey, a1[6]);
  v14 = QP::Formatter::getParseAttribute(length, kQPParseAttributeRankingDescriptionKey, a1[6]);
  if (ParseAttribute && CFStringGetLength(ParseAttribute) && !CFSetContainsValue(*(*(a1[2].length + 8) + 40), ParseAttribute))
  {
    CFSetAddValue(*(*(a1[2].length + 8) + 40), ParseAttribute);
    CFArrayAppendValue(*(*(a1[3].location + 8) + 40), ParseAttribute);
  }

  if (v13 && CFStringGetLength(v13) && !CFSetContainsValue(*(*(a1[3].length + 8) + 40), v13))
  {
    CFSetAddValue(*(*(a1[3].length + 8) + 40), v13);
    CFArrayAppendValue(*(*(a1[4].location + 8) + 40), v13);
  }

  if (v14 && CFStringGetLength(v14) && !CFSetContainsValue(*(*(a1[4].length + 8) + 40), v14))
  {
    CFSetAddValue(*(*(a1[4].length + 8) + 40), v14);
    CFArrayAppendValue(*(*(a1[5].location + 8) + 40), v14);
  }
}

void sub_1C6605CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QP::SpotlightFormatter::updateParseWithAttribute(uint64_t a1, const __CFString *a2, CFRange **a3)
{
  v224 = 0;
  v225 = &v224;
  v226 = 0x3002000000;
  v227 = __Block_byref_object_copy__14;
  v228 = __Block_byref_object_dispose__14;
  Mutable = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v218 = 0;
  v219 = &v218;
  v220 = 0x3002000000;
  v221 = __Block_byref_object_copy__14;
  v222 = __Block_byref_object_dispose__14;
  v223 = 0;
  v223 = CFArrayCreateMutable(v6, 0, v7);
  v212 = 0;
  v213 = &v212;
  v214 = 0x3002000000;
  v215 = __Block_byref_object_copy__14;
  v216 = __Block_byref_object_dispose__14;
  v217 = 0;
  v217 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  v206 = 0;
  v207 = &v206;
  v208 = 0x3002000000;
  v209 = __Block_byref_object_copy__14;
  v210 = __Block_byref_object_dispose__14;
  v211 = 0;
  v211 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  v200 = 0;
  v201 = &v200;
  v202 = 0x3002000000;
  v203 = __Block_byref_object_copy__14;
  v204 = __Block_byref_object_dispose__14;
  v205 = 0;
  v205 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  theDict = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v193 = 0;
  v194 = &v193;
  v195 = 0x3002000000;
  v196 = __Block_byref_object_copy__6;
  v197 = __Block_byref_object_dispose__7;
  v198 = 0;
  v187 = 0;
  v188 = &v187;
  v189 = 0x3002000000;
  v190 = __Block_byref_object_copy__6;
  v191 = __Block_byref_object_dispose__7;
  v192 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x3002000000;
  v177 = __Block_byref_object_copy__6;
  v178 = __Block_byref_object_dispose__7;
  v179 = 0;
  v173 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3002000000;
  v170 = __Block_byref_object_copy__6;
  v171 = __Block_byref_object_dispose__7;
  v172 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x3002000000;
  v164 = __Block_byref_object_copy__6;
  v165 = __Block_byref_object_dispose__7;
  v166 = 0;
  cf = 0;
  cf = QP::createCFStringFromString(&(*a3)[3]);
  v8 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "kQPMe");
  v9 = QP::equals(&v8[3].location, &__p);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_5:
    v11 = *(a1 + 8);
    if (*(v11 + 37) == 1)
    {
      v12 = *(v11 + 224);
      if (!v12 || !CFDictionaryContainsKey(*(v11 + 224), @"meContent"))
      {
        goto LABEL_13;
      }

      Value = CFDictionaryGetValue(v12, @"meContent");
    }

    else
    {
      Value = getContentsArray();
    }

    v14 = Value;
    if (Value && CFArrayGetCount(Value))
    {
      Count = CFArrayGetCount(v14);
      MutableCopy = CFArrayCreateMutableCopy(v6, Count, v14);
LABEL_14:
      nlp::CFScopedPtr<__CFArray *>::reset((a1 + 152), MutableCopy);
      goto LABEL_15;
    }

LABEL_13:
    MutableCopy = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_14;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_15:
  v17 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "kQPAttachment");
  v18 = QP::startswith(&v17[3], &__p);
  v19 = v18;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v19)
    {
LABEL_17:
      v20 = kQPParseAttributeAttachmentKey;
      v21 = cf;
      if (cf)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }
  }

  else if (v18)
  {
    goto LABEL_17;
  }

  v22 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "kQPAttached");
  v23 = QP::startswith(&v22[3], &__p);
  v24 = v23;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v24)
    {
LABEL_22:
      v20 = kQPParseAttributeAttachmentKindKey;
      v21 = cf;
      if (cf)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }
  }

  else if (v23)
  {
    goto LABEL_22;
  }

  v25 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "kQPFileExtension");
  v26 = QP::equals(&v25[3].location, &__p);
  v27 = v26;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v27)
    {
LABEL_27:
      v20 = kQPParseAttributeKindKey;
      v21 = cf;
      if (cf)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }
  }

  else if (v26)
  {
    goto LABEL_27;
  }

  v28 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "TaggedPerson");
  v29 = QP::endswith(&v28[3].location, &__p);
  v30 = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v30)
    {
LABEL_32:
      v20 = kQPParseAttributeTaggedPersonKey;
      v21 = cf;
      if (cf)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }
  }

  else if (v29)
  {
    goto LABEL_32;
  }

  v31 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "GroundedPerson");
  v32 = QP::endswith(&v31[3].location, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v32)
  {
    v20 = kQPParseAttributeGroundedPersonKey;
    v21 = cf;
    if (cf)
    {
LABEL_39:
      CFRelease(v21);
    }

LABEL_40:
    cf = v20;
    goto LABEL_41;
  }

  v55 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Person");
  v56 = QP::endswith(&v55[3].location, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v56)
  {
    v57 = &kQPParseAttributePersonKey;
LABEL_297:
    nlp::CFScopedPtr<__CFString const*>::reset(&cf, *v57);
    goto LABEL_41;
  }

  v71 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Recipient");
  if (QP::endswith(&v71[3].location, &__p))
  {
    v72 = 1;
  }

  else
  {
    v87 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&v159, "RecipientHandle");
    v72 = QP::endswith(&v87[3].location, &v159);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v72)
  {
    v57 = &kQPParseAttributeRecipientKey;
    goto LABEL_297;
  }

  v88 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Sender");
  if (QP::endswith(&v88[3].location, &__p))
  {
    v89 = 1;
  }

  else
  {
    v133 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&v159, "SenderHandle");
    v89 = QP::endswith(&v133[3].location, &v159);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v89)
  {
    v57 = &kQPParseAttributeSenderKey;
    goto LABEL_297;
  }

LABEL_41:
  v33 = *a3;
  length = (*a3)[11].length;
  if (!length || (v141 = std::__shared_weak_count::lock(length)) == 0)
  {
    v45 = 0;
    goto LABEL_246;
  }

  v138 = v10;
  v142 = a1;
  location = v33[11].location;
  if (location)
  {
    v36 = v188;
    v37 = v141;
    v38 = CFStringCreateWithSubstring(v6, a2, *(location + 72));
    nlp::CFScopedPtr<__CFString const*>::reset(v36 + 5, v38);
    v39 = v194;
    CFStringFromString = QP::createCFStringFromString(location);
    nlp::CFScopedPtr<__CFString const*>::reset(v39 + 5, CFStringFromString);
    v137 = QP::ParserGrammar::replacementID(*(v142 + 3), LOWORD((*a3)[2].location));
    v41 = QP::ParserGrammar::symbolID(*(v142 + 3), location);
    v42 = QP::ParseAttribute::flag(*a3);
    v43 = 0;
    v44 = 0;
    v139 = v41;
    v140 = v42;
    if (v42 <= 15)
    {
      if (v42 == 5)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        memset(&__p, 0, sizeof(__p));
        if (*(location + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(location + 120), *(location + 128));
        }

        else
        {
          __p = *(location + 120);
        }

        if (QP::ParserGrammar::hasValue(*(v142 + 3), v41, &__p.__r_.__value_.__l.__data_))
        {
          v73 = v41;
          v74 = v188;
          QP::ParserGrammar::value(*(v142 + 3), v73, &__p.__r_.__value_.__l.__data_, &v159);
          v75 = QP::createCFStringFromString(&v159);
          nlp::CFScopedPtr<__CFString const*>::reset(v74 + 5, v75);
          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v159.__r_.__value_.__l.__data_);
          }

          LOWORD(v41) = v139;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        QP::LexemeStatus::suggestionKey(location, &__p);
        v76 = QP::createCFStringFromString(&__p);
        v230[0] = &v76->isa;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v77 = *(v142 + 3);
        QP::LexemeStatus::suggestionKey(location, &__p);
        v78 = QP::ParserGrammar::symbolID(v77, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (QP::ParserGrammar::isValidSuggestionKey(*(v142 + 3), cf, v137, v78) && QP::ParserGrammar::hasSuggestion(*(v142 + 3), cf, v137, v78))
        {
          v79 = v162;
          QP::ParserGrammar::suggestion(*(v142 + 3), cf, v137, v78, &__p);
          v80 = QP::createCFStringFromString(&__p);
          nlp::CFScopedPtr<__CFString const*>::reset(v79 + 5, v80);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          QP::SpotlightFormatter::addDisplay(v142, v162[5], (*a3)[1]);
          LOWORD(v41) = v139;
          CFDictionarySetValue(theDict, @"kQPDisplay", v162[5]);
          v43 = 1;
        }

        else
        {
          v43 = 0;
          *(v142 + 201) = 1;
        }

        __p.__r_.__value_.__r.__words[0] = 0;
        __p.__r_.__value_.__l.__size_ = &__p;
        __p.__r_.__value_.__r.__words[2] = 0x3002000000;
        v156 = __Block_byref_object_copy__6;
        v157 = __Block_byref_object_dispose__7;
        v158 = 0;
        if (*(location + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&v159, *(location + 120), *(location + 128));
        }

        else
        {
          v159 = *(location + 120);
        }

        v158 = QP::createCFStringFromString(&v159);
        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v159.__r_.__value_.__l.__data_);
        }

        v84 = *(v142 + 3);
        v85 = v194[5];
        v86 = *(__p.__r_.__value_.__l.__size_ + 40);
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 0x40000000;
        v154[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke;
        v154[3] = &unk_1E8267960;
        v154[4] = &v167;
        v154[5] = &v174;
        v154[6] = &__p;
        v154[7] = &v212;
        QP::ParserGrammar::tokens(v84, cf, v85, v86, v154);
        _Block_object_dispose(&__p, 8);
        if (v158)
        {
          CFRelease(v158);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
        v44 = 0;
        v45 = 0;
LABEL_178:
        v94 = *a3;
        v95 = a3[1];
        v152 = *a3;
        v153 = v95;
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = *a3;
        }

        v96 = v188[5];
        v97 = v181;
        v98 = v185;
        v99 = v184;
        v100 = v183;
        v101 = v182;
        v150[0] = MEMORY[0x1E69E9820];
        v150[1] = 1174405120;
        v150[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2;
        v150[3] = &__block_descriptor_tmp_423;
        v150[4] = v142;
        v150[5] = v44;
        v151 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 0x40000000;
        v149[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_424;
        v149[3] = &unk_1E82679A8;
        v149[4] = &v224;
        v148[0] = MEMORY[0x1E69E9820];
        v148[1] = 0x40000000;
        v148[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_426;
        v148[3] = &unk_1E82679D0;
        v148[4] = &v218;
        QP::SpotlightFormatter::_parseAttributeKey(v142, &v152, v94 + 48, 0, v41, v140, v96, v97, v134, v98, v99, v100, v101, v150, v149, v148);
        if (v153)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v153);
        }

        if (v140 == 15)
        {
          *(v142 + 200) = 1;
        }

        v102 = v188;
        v103 = CFStringCreateWithSubstring(v6, a2, *(location + 72));
        v104 = v142;
        nlp::CFScopedPtr<__CFString const*>::reset(v102 + 5, v103);
        if (!cf || !CFStringGetLength(cf))
        {
          goto LABEL_243;
        }

        v105 = CFArrayGetCount(v225[5]);
        if (v105)
        {
          v106 = CFStringCreateByCombiningStrings(v6, v225[5], @" || ");
          __p.__r_.__value_.__r.__words[0] = v106;
          if (CFStringGetLength(v106))
          {
            v107 = v175;
            if (v105 <= 1)
            {
              v108 = CFStringCreateWithFormat(v6, 0, @"%@", v106);
            }

            else
            {
              v108 = CFStringCreateWithFormat(v6, 0, @"(%@)", v106);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(v107 + 5, v108);
            if (CFStringGetLength(v175[5]))
            {
              QP::Formatter::setParseAttribute(v142, kQPParseAttributeDescriptionKey, v175[5], (*a3)[1]);
            }

            QP::Formatter::setParseAttribute(v142, cf, v188[5], (*a3)[1]);
            ++*(v142 + 10);
            if (CFStringsAreEqual(cf, kQPParseAttributeKindKey) || CFStringsAreEqual(cf, kQPParseAttributeApplicationKey))
            {
              v109 = *(v142 + 3);
              v147[0] = MEMORY[0x1E69E9820];
              v147[1] = 0x40000000;
              v147[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3_428;
              v147[3] = &unk_1E82679F8;
              v147[4] = &v206;
              QP::ParserGrammar::categories(v109, v139, v147);
            }

            if (CFStringsAreEqual(cf, kQPParseAttributeAttachmentKey) || CFStringsAreEqual(cf, kQPParseAttributeAttachmentKindKey))
            {
              v110 = *(v142 + 3);
              v146[0] = MEMORY[0x1E69E9820];
              v146[1] = 0x40000000;
              v146[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_4;
              v146[3] = &unk_1E8267A20;
              v146[4] = &v200;
              QP::ParserGrammar::categories(v110, v139, v146);
            }
          }

          if (v106)
          {
            CFRelease(v106);
          }

          goto LABEL_208;
        }

        if (CFStringsAreEqual(cf, kQPParseAttributeNumberExtensionKey))
        {
          QP::Formatter::setParseAttribute(v142, kQPParseAttributeNumberExtensionKey, v188[5], (*a3)[1]);
          QP::SpotlightFormatter::addDisplay(v142, &stru_1F45E9EA0, (*a3)[1]);
        }

        else
        {
          if (!CFStringsAreEqual(cf, kQPParseAttributeExtensionKey))
          {
            if (!QP::ParserGrammar::hasRankingTranslations(*(v142 + 3), &(*a3)[3]))
            {
              QP::Formatter::setParseAttribute(v142, cf, &stru_1F45E9EA0, (*a3)[1]);
              QP::SpotlightFormatter::addDisplay(v142, &stru_1F45E9EA0, (*a3)[1]);
            }

LABEL_208:
            if (!CFArrayGetCount(v219[5]))
            {
LABEL_219:
              if ((v43 & 1) == 0)
              {
                memset(&v159, 0, sizeof(v159));
                v114 = v139;
                QP::ParserGrammar::symbol(*(v142 + 3), v139, &v159);
                if (QP::ParserGrammar::isValidSuggestionKey(*(v142 + 3), cf, v137, v139))
                {
                  if (QP::ParserGrammar::hasSuggestion(*(v142 + 3), cf, v137, v139))
                  {
                    v230[0] = 0;
                    QP::ParserGrammar::suggestion(*(v142 + 3), cf, v137, v139, &__p);
                    v115 = QP::createCFStringFromString(&__p);
                    v230[0] = &v115->isa;
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                      v115 = v230[0];
                    }

                    v116 = v162;
                    v117 = CFStringCreateWithFormat(v6, 0, v115, v188[5]);
                    nlp::CFScopedPtr<__CFString const*>::reset(v116 + 5, v117);
                    QP::SpotlightFormatter::addDisplay(v142, v162[5], (*a3)[1]);
                    CFDictionarySetValue(theDict, @"kQPDisplay", v162[5]);
                    nlp::CFScopedPtr<__CFString const*>::reset(v230, 0);
                    v114 = v139;
                  }

                  else
                  {
                    QP::SpotlightFormatter::addDisplay(v142, &stru_1F45E9EA0, (*a3)[1]);
                  }
                }

                else
                {
                  QP::SpotlightFormatter::addDisplay(v142, &stru_1F45E9EA0, (*a3)[1]);
                  *(v142 + 201) = 1;
                }

                if (v138)
                {
                  v118 = CFArrayGetCount(*(v142 + 19));
                  if (v118)
                  {
                    v119 = (v168 + 5);
                    if (!v168[5])
                    {
                      Copy = CFStringCreateCopy(v6, @"kQPTokenMe");
                      nlp::CFScopedPtr<__CFString const*>::reset(v119, Copy);
                    }

                    if (v118 >= 2)
                    {
                      v121 = 0;
                      v122 = v118 - 1;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v104[19], v121);
                        v124 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
                        v125 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
                        v126 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
                        v127 = CFArrayGetValueAtIndex(ValueAtIndex, 3);
                        v128 = CFArrayGetValueAtIndex(ValueAtIndex, 4);
                        __p.__r_.__value_.__r.__words[0] = 0;
                        __p.__r_.__value_.__l.__size_ = &__p;
                        __p.__r_.__value_.__r.__words[2] = 0x3002000000;
                        v156 = __Block_byref_object_copy__14;
                        v157 = __Block_byref_object_dispose__14;
                        v158 = 0;
                        v158 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
                        v129 = *(v142 + 3);
                        v130 = v194[5];
                        v145[0] = MEMORY[0x1E69E9820];
                        v145[1] = 0x40000000;
                        v145[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_5;
                        v145[3] = &unk_1E8267A48;
                        v145[6] = v128;
                        v145[7] = v127;
                        v145[8] = v125;
                        v145[9] = v126;
                        v145[4] = &v174;
                        v145[5] = &__p;
                        QP::ParserGrammar::tokens(v129, cf, v130, v124, v145);
                        if (CFArrayGetCount(*(__p.__r_.__value_.__l.__size_ + 40)))
                        {
                          CFArrayAppendValue(v213[5], *(__p.__r_.__value_.__l.__size_ + 40));
                        }

                        _Block_object_dispose(&__p, 8);
                        if (v158)
                        {
                          CFRelease(v158);
                        }

                        ++v121;
                        v104 = v142;
                      }

                      while (v122 != v121);
                    }
                  }
                }

                else
                {
                  __p.__r_.__value_.__r.__words[0] = 0;
                  __p.__r_.__value_.__l.__size_ = &__p;
                  __p.__r_.__value_.__r.__words[2] = 0x2000000000;
                  v156 = *(*(v142 + 1) + 232);
                  v131 = *(v142 + 3);
                  v132 = v194[5];
                  v143[0] = MEMORY[0x1E69E9820];
                  v143[1] = 0x40000000;
                  v143[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_6;
                  v143[3] = &unk_1E8267A98;
                  v143[4] = &v167;
                  v143[5] = &v187;
                  v144 = v114;
                  v143[6] = &v174;
                  v143[7] = &v193;
                  v143[8] = &__p;
                  v143[9] = &v161;
                  v143[10] = &v212;
                  v143[11] = v142;
                  QP::ParserGrammar::tokens(v131, cf, v132, 0, v143);
                  _Block_object_dispose(&__p, 8);
                }

                if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v159.__r_.__value_.__l.__data_);
                }

                v37 = v141;
              }

LABEL_243:
              QP::SpotlightFormatter::addTokens(v104, v168[5], v213[5]);
              QP::SpotlightFormatter::addSuggestion(v104, v162[5]);
              QP::SpotlightFormatter::addDescription(v104, v175[5]);
              QP::SpotlightFormatter::addRankingDescription(v104, v173);
              QP::SpotlightFormatter::addAttributes(v104, theDict);
              QP::SpotlightFormatter::addPrimaryCategories(v104, v207[5]);
              QP::SpotlightFormatter::addSecondaryCategory(v104, v201[5]);
              if (v151)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v151);
              }

              goto LABEL_245;
            }

            v111 = CFStringCreateByCombiningStrings(v6, v219[5], @" || ");
            __p.__r_.__value_.__r.__words[0] = v111;
            if (!CFStringGetLength(v111))
            {
LABEL_217:
              if (v111)
              {
                CFRelease(v111);
              }

              goto LABEL_219;
            }

            if (v105 < 2)
            {
              v112 = CFStringCreateWithFormat(v6, 0, @"%@", v111);
              v113 = v173;
              if (!v173)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v112 = CFStringCreateWithFormat(v6, 0, @"(%@)", v111);
              v113 = v173;
              if (!v173)
              {
                goto LABEL_215;
              }
            }

            CFRelease(v113);
LABEL_215:
            v173 = v112;
            if (CFStringGetLength(v112))
            {
              QP::Formatter::setParseAttribute(v142, kQPParseAttributeRankingDescriptionKey, v112, (*a3)[1]);
            }

            goto LABEL_217;
          }

          QP::Formatter::setParseAttribute(v142, kQPParseAttributeExtensionKey, v188[5], (*a3)[1]);
          QP::SpotlightFormatter::addDisplay(v142, &stru_1F45E9EA0, (*a3)[1]);
        }

        ++*(v142 + 10);
        goto LABEL_208;
      }

      if (v42 == 6)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        v70 = v188;
        if (*(location + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(location + 120), *(location + 128));
        }

        else
        {
          __p = *(location + 120);
        }

        v82 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(v70 + 5, v82);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
        v44 = 0;
        v45 = 0;
        v43 = 0;
        goto LABEL_130;
      }

      v45 = 0;
      if (v42 != 7)
      {
        goto LABEL_178;
      }

      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = *(location + 120);
      v47 = *(location + 128);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v46)
      {
        QP::NumericValue::upper(v46, &__p);
        v48 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v185, v48);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        QP::NumericValue::lower(v46, &__p);
        v49 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v183, v49);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        QP::NumericValue::value(v46, &__p);
        v50 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v184, v50);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*v46)
        {
          v51 = **v46;
        }

        else
        {
          v51 = *v46[2];
        }

        v92 = CFStringCreateWithFormat(v6, 0, @"%.f", *&v51);
        nlp::CFScopedPtr<__CFString const*>::reset(&v182, v92);
      }
    }

    else
    {
      if (v42 <= 18)
      {
        if (v42 != 16)
        {
          v45 = 0;
          if (v42 == 18)
          {
            v43 = 0;
            atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
            v44 = location;
            v45 = v141;
          }

          goto LABEL_178;
        }

        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        v58 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        v135 = a2;
        v136 = a3;
        v59 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        v60 = 0;
        v61 = 0;
        for (i = 0; ; ++i)
        {
          memset(&__p, 0, sizeof(__p));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *(location + 120), *(location + 128), 0xAAAAAAAAAAAAAAABLL * ((*(location + 128) - *(location + 120)) >> 3));
          v63 = 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
          v159.__r_.__value_.__r.__words[0] = &__p;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v159);
          if (v63 <= i)
          {
            break;
          }

          memset(&__p, 0, sizeof(__p));
          memset(&v159, 0, sizeof(v159));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v159, *(location + 120), *(location + 128), 0xAAAAAAAAAAAAAAABLL * ((*(location + 128) - *(location + 120)) >> 3));
          v64 = (v159.__r_.__value_.__r.__words[0] + v61);
          if (*(v159.__r_.__value_.__r.__words[0] + v61 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v64, *(v64 + 1));
          }

          else
          {
            v65 = *v64;
            __p.__r_.__value_.__r.__words[2] = *(v64 + 2);
            *&__p.__r_.__value_.__l.__data_ = v65;
          }

          v230[0] = &v159;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v230);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v67 = CFStringCreateWithCString(v6, p_p, 0x8000100u);
          CFArrayAppendValue(v58, v67);
          CFRelease(v67);
          memset(&v159, 0, sizeof(v159));
          std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(&v159, *(location + 144), *(location + 152), (*(location + 152) - *(location + 144)) >> 4);
          v68 = *(v159.__r_.__value_.__r.__words[0] + v60);
          v159.__r_.__value_.__l.__size_ = v159.__r_.__value_.__r.__words[0];
          operator delete(v159.__r_.__value_.__l.__data_);
          v134 = v68;
          v69 = CFStringCreateWithFormat(v6, 0, @"W(%.2g, 0)");
          CFArrayAppendValue(v59, v69);
          CFRelease(v69);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v61 += 24;
          v60 += 16;
        }

        v181 = v58;
        v180 = v59;
        v37 = v141;
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
        v44 = 0;
        v45 = 0;
        v43 = 0;
        a2 = v135;
        a3 = v136;
LABEL_130:
        LOWORD(v41) = v139;
        goto LABEL_178;
      }

      if (v42 == 19)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        if (*(location + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(location + 120), *(location + 128));
        }

        else
        {
          __p = *(location + 120);
        }

        v81 = QP::createCFStringFromString(&__p);
        if (v185)
        {
          CFRelease(v185);
        }

        v185 = v81;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(location + 167) < 0)
        {
          std::string::__init_copy_ctor_external(&v159, *(location + 144), *(location + 152));
        }

        else
        {
          v159 = *(location + 144);
        }

        size = HIBYTE(v159.__r_.__value_.__r.__words[2]);
        if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v159.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (*(location + 167) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(location + 144), *(location + 152));
          }

          else
          {
            __p = *(location + 144);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "*");
        }

        v90 = QP::createCFStringFromString(&__p);
        if (v183)
        {
          CFRelease(v183);
        }

        v183 = v90;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v159.__r_.__value_.__l.__data_);
        }

        goto LABEL_177;
      }

      v45 = 0;
      if (v42 != 20)
      {
        goto LABEL_178;
      }

      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      v52 = *(location + 120);
      v47 = *(location + 128);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v52)
      {
        QP::NumericValue::upper(v52, &__p);
        v53 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v185, v53);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        QP::NumericValue::lower(v52, &__p);
        v54 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v183, v54);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(location + 159) < 0)
        {
          std::string::__init_copy_ctor_external(&v159, *(location + 136), *(location + 144));
        }

        else
        {
          v159 = *(location + 136);
        }

        v91 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
        if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v91 = v159.__r_.__value_.__l.__size_;
        }

        if (v91)
        {
          if (*(location + 159) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(location + 136), *(location + 144));
          }

          else
          {
            __p = *(location + 136);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "*");
        }

        v93 = QP::createCFStringFromString(&__p);
        nlp::CFScopedPtr<__CFString const*>::reset(&v184, v93);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v159.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

LABEL_177:
    std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    v44 = 0;
    v45 = 0;
    v43 = 0;
    goto LABEL_178;
  }

  v45 = 0;
  v37 = v141;
LABEL_245:
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
LABEL_246:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Block_object_dispose(&v161, 8);
  if (v166)
  {
    CFRelease(v166);
  }

  _Block_object_dispose(&v167, 8);
  if (v172)
  {
    CFRelease(v172);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  _Block_object_dispose(&v174, 8);
  if (v179)
  {
    CFRelease(v179);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (v186)
  {
    CFRelease(v186);
  }

  _Block_object_dispose(&v187, 8);
  if (v192)
  {
    CFRelease(v192);
  }

  _Block_object_dispose(&v193, 8);
  if (v198)
  {
    CFRelease(v198);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  _Block_object_dispose(&v200, 8);
  if (v205)
  {
    CFRelease(v205);
  }

  _Block_object_dispose(&v206, 8);
  if (v211)
  {
    CFRelease(v211);
  }

  _Block_object_dispose(&v212, 8);
  if (v217)
  {
    CFRelease(v217);
  }

  _Block_object_dispose(&v218, 8);
  if (v223)
  {
    CFRelease(v223);
  }

  _Block_object_dispose(&v224, 8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C66079A4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x2B0], 0);
  _Block_object_dispose(&STACK[0x2B8], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x2E0], 0);
  _Block_object_dispose(&STACK[0x2E8], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x310], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x318], 0);
  _Block_object_dispose(&STACK[0x320], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x348], 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(&STACK[0x350], 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(&STACK[0x358], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x360], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x368], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x370], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x378], 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x380], 0);
  _Block_object_dispose(&STACK[0x388], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x3B0], 0);
  _Block_object_dispose(&STACK[0x3B8], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x3E0], 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&STACK[0x3E8], 0);
  _Block_object_dispose(&STACK[0x3F0], 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x418], 0);
  _Block_object_dispose(&STACK[0x420], 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x448], 0);
  _Block_object_dispose((v1 - 256), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v1 - 216), 0);
  _Block_object_dispose((v1 - 208), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v1 - 168), 0);
  _Block_object_dispose((v1 - 160), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v1 - 120), 0);
  _Unwind_Resume(a1);
}

std::string *QP::NumericValue::upper@<X0>(QP::NumericValue *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, *(*this + 8));
  }

  v3 = *(this + 2);
  if (v3)
  {
    return std::to_string(a2, *(v3 + 16));
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

std::string *QP::NumericValue::lower@<X0>(QP::NumericValue *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, *(*this + 4));
  }

  v3 = *(this + 2);
  if (v3)
  {
    return std::to_string(a2, *(v3 + 8));
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}