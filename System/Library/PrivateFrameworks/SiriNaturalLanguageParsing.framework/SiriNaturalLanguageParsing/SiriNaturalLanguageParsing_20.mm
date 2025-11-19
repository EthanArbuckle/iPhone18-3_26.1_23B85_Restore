void sub_2229B0EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a26);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a50);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(a13);
  a50 = (v61 - 120);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a50);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](uint64_t *a1, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(a1, a2);
  }

  else
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a1[1], a2);
    result = v3 + 144;
    a1[1] = v3 + 144;
  }

  a1[1] = result;
  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleTreeNode(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2, BOOL *a3)
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  memset(v17, 0, sizeof(v17));
  v6 = *(a2 + 11);
  if (v6 != *(a2 + 12))
  {
    v8 = *(a2 + 11);
    do
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isCommonPersonNode(v8, a2))
      {
        nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleCommonPersonSubtree(this, v8, v19);
        v9 = *v19;
        v10 = v20;
        v11 = SNLPOSLoggerForCategory(1);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        if (v9 != v10)
        {
          if (v12)
          {
            v13 = *(this + 3);
            *buf = 136315138;
            *&buf[4] = v13;
            _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] Successfully spawned replacement common_Person nodes", buf, 0xCu);
          }

          std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,std::back_insert_iterator<std::vector<nlv4_inference_orchestrator::trees::TreeNode>>>(*v19, v20, v17);
          *buf = v19;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*>>>(1uLL);
        }

        if (v12)
        {
          v14 = *(this + 3);
          *buf = 136315138;
          *&buf[4] = v14;
          _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] Could not split this common_Person node", buf, 0xCu);
        }

        *buf = v19;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v8 = (v8 + 144);
      v6 += 144;
    }

    while (v8 != *(a2 + 12));
    v3 = a3;
  }

  *v19 = v17;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v19);
  *v3 = 0;
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2229B144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a16;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleCommonPersonSubtree(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a2@<X1>, void *a3@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = SNLPOSLoggerForCategory(1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v8 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Handling common_Person subtree", buf, 0xCu);
  }

  v9 = *(a2 + 11);
  if (*(a2 + 12) - v9 != 144)
  {
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v23;
      goto LABEL_21;
    }

LABEL_22:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_23;
  }

  v10 = siri::ontology::oname::graph::ontology_init::Argument_name(v7);
  v11 = *(v9 + 71);
  if (v11 >= 0)
  {
    v12 = *(v9 + 71);
  }

  else
  {
    v12 = *(v9 + 56);
  }

  v13 = *(v10 + 31);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v10 + 16);
  }

  if (v12 != v13 || (v11 >= 0 ? (v15 = (v9 + 48)) : (v15 = *(v9 + 48)), (v18 = *(v10 + 8), v16 = (v10 + 8), v17 = v18, v14 >= 0) ? (v19 = v16) : (v19 = v17), memcmp(v15, v19, v12)))
  {
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v21;
LABEL_21:
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v25 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(this + 3);
    v27 = (v9 + 24);
    if (*(v9 + 47) < 0)
    {
      v27 = *v27;
    }

    *buf = 136315395;
    *&buf[4] = v26;
    v74 = 2085;
    v75 = v27;
    _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_DEBUG, "[%s] common_Person.name value: %{sensitive}s", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *(this + 3));
  v28 = v83;
  v29 = *(this + 4);
  v30 = *(this + 5);
  if (v30 == v29)
  {
LABEL_32:
    v34 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = buf;
      if (v76 < 0)
      {
        v35 = *buf;
      }

      v36 = *(v9 + 72);
      *v83 = 136315394;
      *&v83[4] = v35;
      *&v83[12] = 2048;
      *&v83[14] = v36;
      v37 = "[%s] Warning: could not find start token index corresponding to node.startCharIndex=%lu";
LABEL_44:
      _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_DEFAULT, v37, v83, 0x16u);
    }

LABEL_45:
    v31 = 0;
    v43 = 0;
    goto LABEL_46;
  }

  v31 = 0;
  v32 = 0x8E38E38E38E38E39 * ((v30 - v29) >> 4);
  v33 = (v29 + 104);
  while (*(v33 - 1) != *(v9 + 72))
  {
    ++v31;
    v33 += 18;
    if (v31 >= v32)
    {
      goto LABEL_32;
    }
  }

  v38 = v32 - v31;
  if (v32 <= v31)
  {
LABEL_40:
    v34 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v41 = buf;
      if (v76 < 0)
      {
        v41 = *buf;
      }

      v42 = *(v9 + 80);
      *v83 = 136315394;
      *&v83[4] = v41;
      *&v83[12] = 2048;
      *&v83[14] = v42;
      v37 = "[%s] Warning: could not find end token index corresponding to node.endCharIndex=%lu";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v39 = ~v31;
  while (1)
  {
    v40 = *v33;
    v33 += 18;
    if (v40 == *(v9 + 80))
    {
      break;
    }

    --v39;
    if (!--v38)
    {
      goto LABEL_40;
    }
  }

  v28 = -v39;
  v43 = 1;
LABEL_46:
  if (v76 < 0)
  {
    operator delete(*buf);
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_22;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findPersonMatchingSpansMinimalPartition(this, v31, v28, v83);
  if (v84)
  {
    v44 = *&v83[8] - *v83;
    v45 = SNLPOSLoggerForCategory(1);
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);
    if (v44 != 88)
    {
      if (v46)
      {
        if ((v84 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v52 = *(this + 3);
        *buf = 136315394;
        *&buf[4] = v52;
        v74 = 2048;
        v75 = 0x2E8BA2E8BA2E8BA3 * ((*&v83[8] - *v83) >> 3);
        _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_DEBUG, "[%s] This common_Person has been partitioned into %lu sub-spans.", buf, 0x16u);
      }

      v68 = 0uLL;
      v69 = 0;
      if ((v84 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v53 = *v83;
      v54 = *&v83[8];
      if (*v83 == *&v83[8])
      {
        v67 = 0;
        v66 = 0uLL;
LABEL_95:
        *a3 = v66;
        a3[2] = v67;
        v69 = 0;
        v68 = 0uLL;
      }

      else
      {
        while (1)
        {
          v55 = *(a2 + 71);
          v56 = v55 >= 0 ? (a2 + 48) : *(a2 + 6);
          v57 = v55 >= 0 ? *(a2 + 71) : *(a2 + 7);
          v58 = *(v9 + 47);
          if ((v58 & 0x8000000000000000) != 0)
          {
            v59 = *(v9 + 24);
            v58 = *(v9 + 32);
          }

          else
          {
            v59 = v9 + 24;
          }

          nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::generateCommonPersonNode(this, v53, v56, v57, v59, v58, *(v9 + 72), buf);
          v60 = v82;
          if (v82)
          {
            v61 = *(&v68 + 1);
            if (*(&v68 + 1) >= v69)
            {
              v62 = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(&v68, buf);
            }

            else
            {
              nlv4_inference_orchestrator::trees::TreeNode::TreeNode(*(&v68 + 1), buf);
              v62 = v61 + 144;
            }

            *(&v68 + 1) = v62;
          }

          else
          {
            v63 = *(v53 + 32);
            if (v63)
            {
              if (v63[23] < 0)
              {
                v63 = *v63;
              }
            }

            else
            {
              v63 = "nullptr";
            }

            v64 = SNLPOSLoggerForCategory(1);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(this + 3);
              *v70 = 136315395;
              *&v70[4] = v65;
              v71 = 2085;
              v72 = v63;
              _os_log_impl(&dword_22284A000, v64, OS_LOG_TYPE_DEFAULT, "[%s] Warning: Failed to generate a node for matching span (input=%{sensitive}s)", v70, 0x16u);
            }

            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          if (v82 == 1)
          {
            *v70 = &v81;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v70);
            if (v80 < 0)
            {
              operator delete(__p);
            }

            if (v78 < 0)
            {
              operator delete(v77);
            }

            if (v76 < 0)
            {
              operator delete(*buf);
            }
          }

          if ((v60 & 1) == 0)
          {
            break;
          }

          v53 += 88;
          if (v53 == v54)
          {
            v66 = v68;
            v67 = v69;
            goto LABEL_95;
          }
        }
      }

      *buf = &v68;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_97;
    }

    if (v46)
    {
      v47 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v47;
      v48 = "[%s] This common_Person cannot be split into multiple sub-spans. Skipping.";
      v49 = v45;
LABEL_55:
      _os_log_impl(&dword_22284A000, v49, OS_LOG_TYPE_DEBUG, v48, buf, 0xCu);
    }
  }

  else
  {
    v50 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v51;
      v48 = "[%s] Could not find _any_ partition for this common_Person (including a single-span one). Skipping.";
      v49 = v50;
      goto LABEL_55;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_97:
  if (v84 == 1)
  {
    *buf = v83;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](buf);
  }

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2229B1B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 - 120) == 1)
  {
    a21 = v21 - 144;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&a21);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findPersonMatchingSpansMinimalPartition(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 3);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v51 = 2048;
    v52 = a3;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Finding person matching span partitions for range %lu -> %lu", buf, 0x20u);
  }

  v10 = *(this + 7);
  for (i = *(this + 8); v10 != i; v10 += 88)
  {
    v12 = *(v10 + 32);
    if (v12)
    {
      if (v12[23] < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "nullptr";
    }

    v13 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(this + 3);
      *buf = 136315395;
      *&buf[4] = v14;
      *&buf[12] = 2085;
      *&buf[14] = v12;
      _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "[%s]  - span: %{sensitive}s", buf, 0x16u);
    }
  }

  memset(v49, 0, 24);
  nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findAllMatchingSpanPartitions(this, v49, a2, a3, buf);
  v48 = v49;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v48);
  v15 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(this + 3);
    *v49 = 136315394;
    *&v49[4] = v16;
    *&v49[12] = 2048;
    *&v49[14] = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] Found %lu possible person partitions:", v49, 0x16u);
  }

  *a4 = 0;
  *(a4 + 24) = 0;
  v17 = *buf;
  v18 = *&buf[8];
  if (*buf == *&buf[8])
  {
    goto LABEL_57;
  }

  do
  {
    if (*(a4 + 24) == 1)
    {
      v19 = *v17;
      v20 = v17[1];
      v21 = v20 - *v17;
      v23 = *a4;
      v22 = *(a4 + 8);
      v24 = v21 >= &v22[-*a4] || v17 == a4;
      if (!v24)
      {
        v25 = *(a4 + 16);
        if (v25 - v23 < v21)
        {
          if (v23)
          {
            v26 = *a4;
            if (v22 != v23)
            {
              v27 = v22 - 88;
              v28 = v22 - 88;
              v29 = v22 - 88;
              do
              {
                v30 = *v29;
                v29 -= 88;
                (*v30)(v28);
                v27 -= 88;
                v24 = v28 == v23;
                v28 = v29;
              }

              while (!v24);
              v26 = *a4;
            }

            *(a4 + 8) = v23;
            operator delete(v26);
            v25 = 0;
            *a4 = 0;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
          }

          v31 = 0x2E8BA2E8BA2E8BA3 * (v21 >> 3);
          if (v31 <= 0x2E8BA2E8BA2E8BALL)
          {
            v32 = 0x2E8BA2E8BA2E8BA3 * (v25 >> 3);
            if (2 * v32 > v31)
            {
              v31 = 2 * v32;
            }

            if (v32 >= 0x1745D1745D1745DLL)
            {
              v33 = 0x2E8BA2E8BA2E8BALL;
            }

            else
            {
              v33 = v31;
            }

            std::vector<sirinluinternal::MatchingSpan>::__vallocate[abi:ne200100](a4, v33);
          }

          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (v19 != v20)
        {
          do
          {
            sirinluinternal::MatchingSpan::operator=();
            v19 += 88;
            v23 += 88;
          }

          while (v19 != v20);
          v22 = *(a4 + 8);
        }

        if (v22 != v23)
        {
          v34 = v22 - 88;
          v35 = v22 - 88;
          v36 = v22 - 88;
          do
          {
            v37 = *v36;
            v36 -= 88;
            (*v37)(v35);
            v34 -= 88;
            v24 = v35 == v23;
            v35 = v36;
          }

          while (!v24);
        }

        *(a4 + 8) = v23;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(a4, *v17, v17[1], 0x2E8BA2E8BA2E8BA3 * ((v17[1] - *v17) >> 3));
      *(a4 + 24) = 1;
    }

    v17 += 3;
  }

  while (v17 != v18);
  if ((*(a4 + 24) & 1) == 0)
  {
LABEL_57:
    v45 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(this + 3);
      *v49 = 136315138;
      *&v49[4] = v46;
      _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_DEBUG, "[%s] Did not find minimal partition", v49, 0xCu);
    }
  }

  else
  {
    v38 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(this + 3);
      *v49 = 136315138;
      *&v49[4] = v39;
      _os_log_impl(&dword_22284A000, v38, OS_LOG_TYPE_DEBUG, "[%s] Found minimal partition:", v49, 0xCu);
    }

    if ((*(a4 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v40 = *a4;
    v41 = *(a4 + 8);
    if (*a4 != v41)
    {
      do
      {
        v42 = *(v40 + 4);
        if (v42)
        {
          if (v42[23] < 0)
          {
            v42 = *v42;
          }
        }

        else
        {
          v42 = "nullptr";
        }

        v43 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = *(this + 3);
          *v49 = 136315395;
          *&v49[4] = v44;
          *&v49[12] = 2085;
          *&v49[14] = v42;
          _os_log_impl(&dword_22284A000, v43, OS_LOG_TYPE_DEBUG, "[%s]  - component: %{sensitive}s", v49, 0x16u);
        }

        v40 += 88;
      }

      while (v40 != v41);
    }
  }

  *v49 = buf;
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](v49);
  v47 = *MEMORY[0x277D85DE8];
}

void sub_2229B21C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (*(v21 + 24) == 1)
  {
    a17 = v21;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&a17);
  }

  a17 = &a21;
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::generateCommonPersonNode(siri::ontology::oname::graph::ontology_init *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string::size_type a6@<X5>, std::string::size_type a7@<X6>, uint64_t a8@<X8>)
{
  v63[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 76);
  v11 = *(a1 + 4);
  v12 = 0x8E38E38E38E38E39 * ((*(a1 + 5) - v11) >> 4);
  if (v12 <= v10 || (v13 = (*(a2 + 72) - 1), v12 <= v13))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  memset(&v60, 0, sizeof(v60));
  memset(v63, 0, 24);
  v18 = siri::ontology::oname::graph::ontology_init::Argument_name(a1);
  std::string::operator=(&v60, (v18 + 8));
  v19 = (v11 + 144 * v10);
  v20 = (v11 + 144 * v13);
  v21 = v19[12];
  v61 = v21;
  v63[3] = v19[14];
  v63[5] = v19[16];
  v22 = v20[13];
  v62 = v22;
  v63[4] = v20[15];
  v63[6] = v20[17];
  v23 = v21 - a7;
  if (v21 < a7)
  {
    v24 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      *a8 = 0;
      *(a8 + 144) = 0;
      goto LABEL_20;
    }

    v25 = *(a1 + 3);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = v25;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v61;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = a7;
    v26 = "[%s] newNameNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_18:
    _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);
    goto LABEL_19;
  }

  v27 = v22 >= v21;
  v28 = v22 - v21;
  if (v28 == 0 || !v27)
  {
    v24 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v31 = *(a1 + 3);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = v31;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v61;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = v62;
    v26 = "[%s] newNameNode character indices imply an empty or impossible substring (%lu -> %lu)";
    goto LABEL_18;
  }

  if (a6 < v23)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (a6 - v23 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = a6 - v23;
  }

  if (v29 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v29 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v29;
  if (v29)
  {
    memmove(&__dst, (a5 + v23), v29);
  }

  __dst.__r_.__value_.__s.__data_[v29] = 0;
  std::string::operator=((&v58 + 8), &__dst);
  v33 = SNLPOSLoggerForCategory(1);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (v34)
  {
    v35 = *(a1 + 3);
    if (v59 >= 0)
    {
      v36 = &v58 + 8;
    }

    else
    {
      v36 = *(&v58 + 1);
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315907;
    *(buf[0].__r_.__value_.__r.__words + 4) = v35;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v61;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = v62;
    LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2085;
    *(&buf[1].__r_.__value_.__r.__words[1] + 2) = v36;
    _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_DEBUG, "[%s] Generated new common_Person.name node with startCharIndex=%lu, endCharIndex=%lu, value=%{sensitive}s", buf, 0x2Au);
  }

  v54 = 0;
  memset(buf, 0, sizeof(buf));
  *v50 = 0u;
  v53 = 0uLL;
  v51 = 0;
  v37 = siri::ontology::oname::graph::ontology_init::common_Person(v34);
  std::string::operator=(buf, (v37 + 8));
  MEMORY[0x223DC46E0](v50, a3, a4);
  v52 = 0uLL;
  v55 = 0u;
  v56 = 0u;
  nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v43, &v57);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v53, &v43, buf, 1uLL);
  v42 = &v48;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (v47 < 0)
  {
    operator delete(__p);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v38 = buf[1].__r_.__value_.__r.__words[2];
  *a8 = buf[0];
  *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
  *(a8 + 24) = *&buf[1].__r_.__value_.__l.__data_;
  *(a8 + 40) = v38;
  memset(&buf[0].__r_.__value_.__r.__words[2], 0, 32);
  *(a8 + 64) = v51;
  *(a8 + 48) = *v50;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  *(a8 + 72) = v52;
  *(a8 + 88) = v53;
  *(a8 + 104) = v54;
  v53 = 0uLL;
  v54 = 0;
  v39 = v56;
  *(a8 + 112) = v55;
  *(a8 + 128) = v39;
  *(a8 + 144) = 1;
  v43.__r_.__value_.__r.__words[0] = &v53;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_20:
  buf[0].__r_.__value_.__r.__words[0] = v63;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(*(&v58 + 1));
  }

  if (SBYTE7(v58) < 0)
  {
    operator delete(v57);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2229B2738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a18);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a36);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode((v36 - 256));
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findAllMatchingSpanPartitions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v6 != v5)
  {
    v7 = a4;
    v8 = a3;
    v42 = *(a1 + 64);
    do
    {
      v10 = *(v6 + 76);
      if (v10 == v8 && *(v6 + 72) == v7)
      {
        v46 = 0uLL;
        v47 = 0;
        std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(&v46, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
        if (*(&v46 + 1) >= v47)
        {
          v11 = std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(&v46, v6);
        }

        else
        {
          v11 = MEMORY[0x223DC3160]() + 88;
        }

        *(&v46 + 1) = v11;
        v12 = *(a5 + 8);
        v13 = *(a5 + 16);
        if (v12 >= v13)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a5) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a5) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          v52 = a5;
          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(v18);
          }

          v19 = 24 * v15;
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *v19 = v46;
          *(v19 + 16) = v47;
          v46 = 0uLL;
          v47 = 0;
          v14 = 24 * v15 + 24;
          v20 = *(a5 + 8) - *a5;
          v21 = v19 - v20;
          memcpy((v19 - v20), *a5, v20);
          v22 = *a5;
          *a5 = v21;
          *(a5 + 8) = v14;
          v23 = *(a5 + 16);
          *(a5 + 16) = 0;
          v50 = v22;
          v51 = v23;
          v48 = v22;
          v49 = v22;
          std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(&v48);
          v8 = a3;
          v7 = a4;
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = v46;
          v12[2] = v47;
          v46 = 0uLL;
          v47 = 0;
          v14 = (v12 + 3);
        }

        *(a5 + 8) = v14;
        v48 = &v46;
        std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v48);
        v10 = *(v6 + 76);
        v5 = v42;
      }

      if (v10 == v8 && *(v6 + 72) < v7)
      {
        v46 = 0uLL;
        v47 = 0;
        std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(&v46, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
        if (*(&v46 + 1) >= v47)
        {
          v24 = std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(&v46, v6);
        }

        else
        {
          v24 = MEMORY[0x223DC3160]() + 88;
        }

        *(&v46 + 1) = v24;
        nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findAllMatchingSpanPartitions(&v44, a1, &v46, *(v6 + 72), v7);
        v26 = v44;
        v25 = v45;
        v27 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 8) - *a5) >> 3) - 0x5555555555555555 * (v45 - v44);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 16) - *a5) >> 3) < v27)
        {
          if (v27 <= 0xAAAAAAAAAAAAAAALL)
          {
            v52 = a5;
            std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(v27);
          }

          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (v44 != v45)
        {
          v28 = *(a5 + 8);
          do
          {
            v29 = *(a5 + 16);
            if (v28 >= v29)
            {
              v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a5) >> 3);
              v31 = v30 + 1;
              if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a5) >> 3);
              if (2 * v32 > v31)
              {
                v31 = 2 * v32;
              }

              if (v32 >= 0x555555555555555)
              {
                v33 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v33 = v31;
              }

              v52 = a5;
              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(v33);
              }

              v34 = 24 * v30;
              v48 = 0;
              v49 = v34;
              v50 = 24 * v30;
              v51 = 0;
              *v34 = 0;
              *(v34 + 8) = 0;
              *(v34 + 16) = 0;
              std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(24 * v30, *v26, v26[1], 0x2E8BA2E8BA2E8BA3 * ((v26[1] - *v26) >> 3));
              v28 = (v50 + 24);
              v35 = *(a5 + 8) - *a5;
              v36 = v49 - v35;
              memcpy((v49 - v35), *a5, v35);
              v37 = *a5;
              *a5 = v36;
              *(a5 + 8) = v28;
              v38 = *(a5 + 16);
              *(a5 + 16) = v51;
              v50 = v37;
              v51 = v38;
              v48 = v37;
              v49 = v37;
              std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(&v48);
            }

            else
            {
              *v28 = 0;
              v28[1] = 0;
              v28[2] = 0;
              std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(v28, *v26, v26[1], 0x2E8BA2E8BA2E8BA3 * ((v26[1] - *v26) >> 3));
              v28 += 3;
            }

            *(a5 + 8) = v28;
            v26 += 3;
          }

          while (v26 != v25);
        }

        v48 = &v44;
        std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&v48);
        v48 = &v46;
        std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v48);
        v8 = a3;
        v7 = a4;
        v5 = v42;
      }

      v6 += 88;
    }

    while (v6 != v5);
  }
}

void sub_2229B2C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void ***a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, void ***a21)
{
  a21 = &a14;
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a14 = &a17;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t snlp::ssu::similarity::SSUAppResult::operator>(const void **a1, const void **a2)
{
  v2 = *(a2 + 70);
  v3 = *(a1 + 70);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a1 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = a1[1];
  }

  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  if (v12)
  {
    return v12 < 0;
  }

  else
  {
    return v7 < v9;
  }
}

uint64_t snlp::ssu::similarity::SSUSimilaritySearchApp::SSUSimilaritySearchApp(uint64_t result, char a2, __int128 *a3, uint64_t a4)
{
  *result = a2;
  v4 = *a3;
  v5 = a3[1];
  *(result + 40) = *(a3 + 4);
  *(result + 24) = v5;
  *(result + 8) = v4;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = *a4;
  *(result + 64) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(result + 72) = 0;
  *(result + 328) = 0;
  v6 = *(result + 56);
  v7 = *(result + 48);
  *(result + 344) = 0;
  *(result + 352) = 0;
  *(result + 336) = 0;
  v8 = v6 - v7;
  if (v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 4) < 0xF83E0F83E0F83FLL)
    {
      operator new();
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  *(result + 360) = 0;
  return result;
}

void sub_2229B2FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 328) == 1)
  {
    snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(v10);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::processNegativeBatch(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 == *a3;
  *(a1 + 360) += (v4 - *a3) >> 2;
  if (!v6)
  {
    v11 = 0;
    do
    {
      v12 = *(v5 + 4 * v11);
      if (*(a1 + 328) != 1 || v12 > *(a1 + 288))
      {
        v13 = *a2;
        v14 = v11;
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *a4, *(a4 + 8));
        }

        else
        {
          v15 = *a4;
        }

        std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](v16, (a4 + 24));
        std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](v17, (a4 + 96));
        v18 = v12;
        v19 = 0;
        v20 = 0;
        std::optional<snlp::ssu::similarity::SSUMatchInfo>::operator=[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,void>(a1 + 72, &v13);
        snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(&v13);
        v5 = *a3;
        v4 = a3[1];
      }

      ++v11;
    }

    while (v11 < (v4 - v5) >> 2);
  }
}

void sub_2229B3148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::optional<snlp::ssu::candidate::SSUAlternativeCandidateInfo>::~optional(v17 + 48);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::ssu::similarity::SSUMatchInfo>::operator=[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  if (v4 == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(a1 + 48, (a2 + 48));
    std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(a1 + 120, (a2 + 120));
    *(a1 + 216) = *(a2 + 216);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 224, (a2 + 224));
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 112) = 0;
    if (*(a2 + 112) == 1)
    {
      v8 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v8;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 72, (a2 + 72));
      *(a1 + 112) = 1;
    }

    *(a1 + 120) = 0;
    *(a1 + 208) = 0;
    if (*(a2 + 208) == 1)
    {
      v9 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v9;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 120) = 0;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      *(a1 + 160) = 0;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = *(a2 + 176);
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      v10 = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 184) = v10;
      *(a2 + 192) = 0;
      *(a2 + 200) = 0;
      *(a2 + 184) = 0;
      *(a1 + 208) = 1;
    }

    v11 = *(a2 + 216);
    *(a1 + 224) = 0;
    *(a1 + 216) = v11;
    *(a1 + 248) = 0;
    if (*(a2 + 248) == 1)
    {
      v12 = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 224) = v12;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0;
      *(a1 + 248) = 1;
    }

    *(a1 + 256) = 1;
  }

  return a1;
}

void std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1 + 24, a2 + 3);
    }
  }

  else if (*(a1 + 64))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 24, a2 + 3);
    *(a1 + 64) = 1;
  }
}

__n128 std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      v6 = (a1 + 40);
      v5 = *(a1 + 40);
      *(a1 + 24) = *(a2 + 24);
      if (v5)
      {
        std::vector<siri::ontology::UsoIdentifier>::clear[abi:ne200100]((a1 + 40));
        operator delete(*v6);
        *v6 = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      result = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = result;
      *(a2 + 87) = 0;
      *(a2 + 64) = 0;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    v9 = (a1 + 40);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v9);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    result = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = result;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    *(a1 + 88) = 1;
  }

  return result;
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::processPositiveBatch(snlp::ssu::similarity::SSUSimilaritySearchApp *this, __int128 *a2, uint64_t a3, uint64_t *a4, snlp::ssu::candidate::SSUCandidate *a5)
{
  v5 = *a4;
  v6 = a4[1] - *a4;
  *(this + 90) += v6 >> 2;
  if (v6)
  {
    v12 = 0;
    do
    {
      v13 = *(a3 + 48);
      if (v12 >= (*(a3 + 56) - v13) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *(v13 + 8 * v12);
      v15 = *(this + 42);
      if (0xF83E0F83E0F83E1 * ((*(this + 43) - v15) >> 3) <= v14)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *(v5 + 4 * v12);
      v17 = v15 + 264 * v14;
      if ((*(v17 + 256) != 1 || v16 > *(v17 + 216)) && snlp::ssu::similarity::SSUSimilaritySearchApp::isCandidateRelevantToIntent(this, a5, v14))
      {
        v18 = *a2;
        v19 = v12;
        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, *a5, *(a5 + 1));
        }

        else
        {
          v20 = *a5;
        }

        std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](v21, (a5 + 24));
        std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](v22, a5 + 6);
        v23 = v16;
        v24 = 0;
        v25 = 0;
        std::optional<snlp::ssu::similarity::SSUMatchInfo>::operator=[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,void>(v17, &v18);
        snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(&v18);
      }

      ++v12;
      v5 = *a4;
    }

    while (v12 < (a4[1] - *a4) >> 2);
  }
}

void sub_2229B36F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::optional<snlp::ssu::candidate::SSUAlternativeCandidateInfo>::~optional(v17 + 48);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL snlp::ssu::similarity::SSUSimilaritySearchApp::isCandidateRelevantToIntent(snlp::ssu::similarity::SSUSimilaritySearchApp *this, const snlp::ssu::candidate::SSUCandidate *a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 88) == 1)
  {
    snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex((this + 48), a3, &__p);
    if (v11)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      if ((*(a2 + 88) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a2 + 6, &buf.__r_.__value_.__l.__data_) != 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v6 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = a3;
        _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "Logic error: SSUCacheObjectIntentList::getIntentWithIndex returned std::nullopt for index %lu", &buf, 0xCu);
      }

      v5 = 0;
    }

    if (v11 == 1)
    {
      buf.__r_.__value_.__r.__words[0] = &v10;
      std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2229B388C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<snlp::ssu::cache::SSUCacheObjectIntent>::~optional(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::getSearchResult(snlp::ssu::similarity::SSUSimilaritySearchApp *this@<X0>, uint64_t a2@<X8>)
{
  v110 = *MEMORY[0x277D85DE8];
  HighestNegativeScoreClipped = snlp::ssu::similarity::SSUSimilaritySearchApp::getHighestNegativeScoreClipped(this);
  v4 = 0;
  v82 = 0;
  v83 = 0uLL;
  *v79 = 0u;
  v80 = 0u;
  v81 = 1065353216;
  while (v4 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 4))
  {
    snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex((this + 48), v4, &v76);
    if ((v78 & 1) == 0)
    {
      v5 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = v4;
        _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "Logic error: SSUCacheObjectIntentList::getIntentWithIndex returned std::nullopt for index %lu", &buf, 0xCu);
      }

      goto LABEL_81;
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v75, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
    }

    else
    {
      v75 = v76;
    }

    v6 = *(this + 42);
    if (0xF83E0F83E0F83E1 * ((*(this + 43) - v6) >> 3) <= v4)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v7 = v6 + 264 * v4;
    v8 = *(v7 + 256);
    v9 = SNLPOSLoggerForCategory(8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 != 1)
    {
      if (v10)
      {
        v31 = &v75;
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v75.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v31;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "No positive match score found for intent %s. No app result will be returned.", &buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v10)
    {
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v75;
      }

      else
      {
        v11 = v75.__r_.__value_.__r.__words[0];
      }

      v12 = *(v7 + 216);
      snlp::ssu::similarity::SSUSimilaritySearchApp::batchTypeString(v7, v84);
      v13 = v84[23];
      v14 = *v84;
      v16 = *(v7 + 8);
      v15 = *(v7 + 16);
      snlp::ssu::candidate::SSUCandidate::toString(__p, (v7 + 24));
      v17 = v84;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v74 < 0)
      {
        v18 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
      *(buf.__r_.__value_.__r.__words + 4) = v11;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v99 = v17;
      v100 = 2048;
      v101 = v16;
      v102 = 2048;
      v103 = v15;
      v104 = 2080;
      v105 = v18;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Highest matching positive example for intent %s has score %f (batch type %s, batch index %lu, encoding index %lu). This is associated with candidate %s. Attempting to build app result.", &buf, 0x3Eu);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }
    }

    snlp::ssu::similarity::SSUSimilaritySearchApp::buildAppResult(this, v7, &v75, &buf, HighestNegativeScoreClipped);
    if (v109 == 1)
    {
      v19 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v75;
        }

        else
        {
          v20 = v75.__r_.__value_.__r.__words[0];
        }

        if ((v109 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v21 = *(v7 + 216);
        v22 = *&v108[42];
        snlp::ssu::similarity::SSUSimilaritySearchApp::batchTypeString(v7, __p);
        v23 = v74;
        v24 = __p[0];
        v26 = *(v7 + 8);
        v25 = *(v7 + 16);
        snlp::ssu::candidate::SSUCandidate::toString(v71, (v7 + 24));
        v27 = __p;
        if (v23 < 0)
        {
          v27 = v24;
        }

        *v84 = 136317442;
        v28 = v71;
        if (v72 < 0)
        {
          v28 = v71[0];
        }

        *&v84[4] = "SSU";
        *&v84[12] = 2080;
        *&v84[14] = "[insights-snlp-ssu]: ";
        *&v84[22] = 2080;
        *&v84[24] = v20;
        *v85 = 2048;
        *&v85[2] = v21;
        v86 = 2048;
        v87 = v22;
        v88 = 2048;
        v89 = HighestNegativeScoreClipped;
        v90 = 2080;
        v91 = v27;
        v92 = 2048;
        v93 = v26;
        v94 = 2048;
        v95 = v25;
        v96 = 2080;
        v97 = v28;
        _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] %sOutputting app result for intent %s with raw score=%f, calibrated score=%f, highestNegativeScoreClipped=%f (batch type %s, batch index %lu, encoding index %lu). This is associated with candidate %s.", v84, 0x66u);
        if (v72 < 0)
        {
          operator delete(v71[0]);
        }

        if (v74 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((v109 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v29 = v83;
      if (v83 >= *(&v83 + 1))
      {
        v32 = 0x8E38E38E38E38E39 * ((v83 - v82) >> 5) + 1;
        if (v32 > 0xE38E38E38E38E3)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (0x1C71C71C71C71C72 * ((*(&v83 + 1) - v82) >> 5) > v32)
        {
          v32 = 0x1C71C71C71C71C72 * ((*(&v83 + 1) - v82) >> 5);
        }

        if (0x8E38E38E38E38E39 * ((*(&v83 + 1) - v82) >> 5) >= 0x71C71C71C71C71)
        {
          v33 = 0xE38E38E38E38E3;
        }

        else
        {
          v33 = v32;
        }

        *v85 = &v82;
        if (v33)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>>(v33);
        }

        *v84 = 0;
        *&v84[8] = 32 * ((v83 - v82) >> 5);
        *&v84[16] = *&v84[8];
        *&v84[24] = 0;
        snlp::ssu::similarity::SSUAppResult::SSUAppResult(*&v84[8], &buf);
        *&v84[16] += 288;
        v43 = *&v84[8] + v82 - v83;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>,snlp::ssu::similarity::SSUAppResult*>(&v82, v82, v83, v43);
        v44 = v82;
        v45 = *(&v83 + 1);
        v82 = v43;
        v70 = *&v84[16];
        v83 = *&v84[16];
        *&v84[16] = v44;
        *&v84[24] = v45;
        *v84 = v44;
        *&v84[8] = v44;
        std::__split_buffer<snlp::ssu::similarity::SSUAppResult>::~__split_buffer(v84);
        v30 = v70;
      }

      else
      {
        snlp::ssu::similarity::SSUAppResult::SSUAppResult(v83, &buf);
        v30 = v29 + 288;
      }

      *&v83 = v30;
      goto LABEL_76;
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v84, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
    }

    else
    {
      *v84 = v75;
    }

    *&v84[24] = *(v7 + 216);
    v34 = std::__string_hash<char>::operator()[abi:ne200100](v79, v84);
    v35 = v34;
    v36 = v79[1];
    if (!v79[1])
    {
      goto LABEL_71;
    }

    v37 = vcnt_s8(v79[1]);
    v37.i16[0] = vaddlv_u8(v37);
    v38 = v37.u32[0];
    if (v37.u32[0] > 1uLL)
    {
      v39 = v34;
      if (v34 >= v79[1])
      {
        v39 = v34 % v79[1];
      }
    }

    else
    {
      v39 = (v79[1] - 1) & v34;
    }

    v40 = *(v79[0] + v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_71:
      operator new();
    }

    while (1)
    {
      v42 = v41[1];
      if (v42 == v35)
      {
        break;
      }

      if (v38 > 1)
      {
        if (v42 >= v36)
        {
          v42 %= v36;
        }
      }

      else
      {
        v42 &= v36 - 1;
      }

      if (v42 != v39)
      {
        goto LABEL_71;
      }

LABEL_70:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_71;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v79, v41 + 2, v84))
    {
      goto LABEL_70;
    }

    if ((v84[23] & 0x80000000) != 0)
    {
      operator delete(*v84);
    }

LABEL_76:
    if (v109 == 1)
    {
      snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(&v99);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

LABEL_79:
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

LABEL_81:
    if (v78 == 1)
    {
      buf.__r_.__value_.__r.__words[0] = &v77;
      std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }
    }

    ++v4;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&buf);
  for (i = v80; i; i = *i)
  {
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, " - ", 3);
    v48 = *(i + 39);
    if (v48 >= 0)
    {
      v49 = (i + 2);
    }

    else
    {
      v49 = i[2];
    }

    if (v48 >= 0)
    {
      v50 = *(i + 39);
    }

    else
    {
      v50 = i[3];
    }

    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " (raw score=", 12);
    v52 = *(i + 10);
    v53 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")\n", 2);
  }

  v54 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v55 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v76 : v76.__r_.__value_.__r.__words[0];
    *v84 = 136315650;
    *&v84[4] = "SSU";
    *&v84[12] = 2080;
    *&v84[14] = "[insights-snlp-ssu]: ";
    *&v84[22] = 2080;
    *&v84[24] = v55;
    _os_log_impl(&dword_22284A000, v54, OS_LOG_TYPE_DEBUG, "[%s] %sThese intents were all below-threshold:\n%s", v84, 0x20u);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  snlp::ssu::similarity::SSUSimilaritySearchApp::sortAndTruncateResults(this, &v82);
  v56 = v82;
  for (j = v83; v56 != j; v56 += 288)
  {
    v58 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v59 = v56;
      if (*(v56 + 23) < 0)
      {
        v59 = *v56;
      }

      snlp::ssu::similarity::SSUSimilaritySearchApp::batchTypeString((v56 + 24), &v76);
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v76;
      }

      else
      {
        v60 = v76.__r_.__value_.__r.__words[0];
      }

      v61 = *(v56 + 32);
      v62 = *(v56 + 40);
      v63 = *(v56 + 240);
      v64 = *(v56 + 280);
      *v84 = 136316418;
      *&v84[4] = v59;
      *&v84[12] = 2080;
      *&v84[14] = v60;
      *&v84[22] = 2048;
      *&v84[24] = v61;
      *v85 = 2048;
      *&v85[2] = v62;
      v86 = 2048;
      v87 = v63;
      v88 = 2048;
      v89 = v64;
      _os_log_impl(&dword_22284A000, v58, OS_LOG_TYPE_DEBUG, "Returning app result for intent %s with batchType=%s, batchIndex=%lu, encodingIndexWithinBatch=%lu, similarityScore=%f, calibratedScore=%f", v84, 0x3Eu);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 328))
  {
    v65 = *(this + 72);
    v66 = 1;
  }

  else
  {
    v66 = 0;
    v65 = 0.0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v84 = a2;
  v84[8] = 0;
  if (v83 != v82)
  {
    v67 = 0x8E38E38E38E38E39 * ((v83 - v82) >> 5);
    if (v67 <= 0xE38E38E38E38E3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>>(v67);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  *(a2 + 24) = *(this + 90);
  *(a2 + 32) = v65;
  *(a2 + 40) = v66;
  buf.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
  *(buf.__r_.__value_.__r.__words + *(buf.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
  buf.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
  if (v107 < 0)
  {
    operator delete(v106);
  }

  buf.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&buf.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](v108);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v79);
  buf.__r_.__value_.__r.__words[0] = &v82;
  std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  v68 = *MEMORY[0x277D85DE8];
}

void sub_2229B4730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ostringstream::~ostringstream(&a63, MEMORY[0x277D82828]);
  MEMORY[0x223DC4C10](&STACK[0x220]);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a41);
  a63 = &a46;
  std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](&a63);
  _Unwind_Resume(a1);
}

float snlp::ssu::similarity::SSUSimilaritySearchApp::getHighestNegativeScoreClipped(snlp::ssu::similarity::SSUSimilaritySearchApp *this)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 328) == 1)
  {
    *buf = *(this + 72);
    v23 = *(this + 11);
    if (*(this + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(this + 12), *(this + 13));
    }

    else
    {
      v24 = *(this + 4);
    }

    std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](v25, (this + 120));
    std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](v26, this + 12);
    v27 = *(this + 72);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v28, (this + 296));
    v5 = v27;
    v2 = fmaxf(*(this + 10), v27);
    v6 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      snlp::ssu::similarity::SSUSimilaritySearchApp::batchTypeString(buf, __p);
      if (v11 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *v12 = 134219010;
      v13 = v5;
      v14 = 2080;
      v15 = v7;
      v16 = 2048;
      v17 = *&buf[8];
      v18 = 2048;
      v19 = v23;
      v20 = 2048;
      v21 = v2;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Highest matching negative example has score %f (batch type %s, batch index %lu, encoding index %lu). Using max(negativeScoreClipMinimum, score) = %f.", v12, 0x34u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(buf);
  }

  else
  {
    v2 = *(this + 10);
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(this + 10);
      *buf = 134217984;
      *&buf[4] = v4;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "There is no negative example. Using minimum score %f.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

_DWORD *snlp::ssu::similarity::SSUSimilaritySearchApp::batchTypeString@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  a2[23] = 7;
  strcpy(a2, "UNKNOWN");
  if (*result == 1)
  {
    v2 = "GLOBAL";
  }

  else
  {
    if (*result)
    {
      return result;
    }

    v2 = "APP";
  }

  return MEMORY[0x223DC46D0](a2, v2);
}

void sub_2229B4B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::buildAppResult(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>, float a5@<S0>)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 216);
  if (v10 <= *(a1 + 24))
  {
    v12 = 1.0 / (expf(-(*(a1 + 8) * (v10 - a5))) + 1.0);
    v11 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a2 + 216);
      v17 = *(a1 + 8);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134218752;
      *(__p.__r_.__value_.__r.__words + 4) = v12;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v16;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
      *v27 = a5;
      *&v27[8] = 2048;
      *&v27[10] = v17;
      v15 = "Computed calibrated score %f using match similarity score %f, highestNegativeScoreClipped %f and sigmoid param %f.";
      goto LABEL_6;
    }
  }

  else
  {
    v11 = SNLPOSLoggerForCategory(8);
    v12 = 1.0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a2 + 216);
      v14 = *(a1 + 24);
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315906;
      *(__p.__r_.__value_.__r.__words + 4) = "SSU";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-ssu]: ";
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
      *v27 = v13;
      *&v27[8] = 2048;
      *&v27[10] = v14;
      v15 = "[%s] %sThe match similarity score (%f) is above the exact match threshold (%f). Setting calibratedScore=1.0.";
LABEL_6:
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, v15, &__p, 0x2Au);
    }
  }

  if (*a1 == 1 && *(a1 + 20) == 1)
  {
    v18 = *(a1 + 16);
    v19 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v18;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "Using APP_SHORTCUT always-trigger threshold (%f) since app is in allowlist", &__p, 0xCu);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
    v18 = *(a1 + 12);
  }

  v21 = SNLPOSLoggerForCategory(8);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v12 <= v18)
  {
    if (v22)
    {
      v24 = "FALSE";
      LODWORD(__p.__r_.__value_.__l.__data_) = 134218498;
      *(__p.__r_.__value_.__r.__words + 4) = v12;
      if (v20)
      {
        v24 = "TRUE";
      }

      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
      *v27 = v24;
      _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "Not emitting an app result since the match calibrated score (%f) is below the threshold (%f, useAppShortcutAlwaysTriggerThreshold=%s)", &__p, 0x20u);
    }

    a4->__r_.__value_.__s.__data_[0] = 0;
    a4[12].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (v22)
    {
      v23 = "FALSE";
      LODWORD(__p.__r_.__value_.__l.__data_) = 136316162;
      *(__p.__r_.__value_.__r.__words + 4) = "SSU";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-ssu]: ";
      if (v20)
      {
        v23 = "TRUE";
      }

      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
      *v27 = v12;
      *&v27[8] = 2048;
      *&v27[10] = v18;
      *&v27[18] = 2080;
      *&v27[20] = v23;
      _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "[%s] %sEmitting an app result since the match calibrated score (%f) is above the threshold (%f, useAppShortcutAlwaysTriggerThreshold=%s)", &__p, 0x34u);
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    *v27 = *a2;
    *&v27[16] = *(a2 + 16);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v27[24], *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *&v27[24] = *(a2 + 24);
      v28 = *(a2 + 40);
    }

    std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](v29, (a2 + 48));
    std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](v30, (a2 + 120));
    v31 = *(a2 + 216);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v32, (a2 + 224));
    v33 = v12;
    snlp::ssu::similarity::SSUAppResult::SSUAppResult(a4, &__p);
    a4[12].__r_.__value_.__s.__data_[0] = 1;
    snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(v27);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2229B4FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *snlp::ssu::similarity::SSUAppResult::SSUAppResult(std::string *this, const snlp::ssu::similarity::SSUAppResult *a2)
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
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  std::__optional_copy_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__optional_copy_base[abi:ne200100](this + 3, (a2 + 72));
  std::__optional_copy_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__optional_copy_base[abi:ne200100](this + 6, a2 + 9);
  LODWORD(this[10].__r_.__value_.__l.__data_) = *(a2 + 60);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 248), (a2 + 248));
  LODWORD(this[11].__r_.__value_.__r.__words[2]) = *(a2 + 70);
  return this;
}

void sub_2229B50CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<snlp::ssu::similarity::SSUAppResult>::~optional(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::sortAndTruncateResults(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = 0x8E38E38E38E38E39 * (v6 >> 5);
  if (v6 < 1)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = 0x8E38E38E38E38E39 * (v6 >> 5);
    while (1)
    {
      v10 = operator new(288 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(v4, v5, &v24, v7, v13, v9);
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 32);
  v15 = *a2;
  v16 = a2[1];
  if (0x8E38E38E38E38E39 * ((v16 - *a2) >> 5) > v14)
  {
    v17 = v15 + 288 * v14;
    if (v16 != v17)
    {
      do
      {
        v16 -= 288;
        std::allocator<snlp::ssu::similarity::SSUAppResult>::destroy[abi:ne200100](v16);
      }

      while (v16 != v17);
      v15 = *a2;
    }

    a2[1] = v17;
    v18 = a2[2] - v15;
    if (v18 > v17 - v15)
    {
      v19 = (v17 - v15) >> 5;
      v27 = a2;
      if (v17 != v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>>(0x8E38E38E38E38E39 * v19);
      }

      v24 = 0;
      v25 = 32 * v19;
      v26 = (32 * v19);
      if (0x8E38E38E38E38E39 * (v18 >> 5))
      {
        v20 = a2[1];
        v21 = 32 * v19 + v15 - v20;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>,snlp::ssu::similarity::SSUAppResult*>(a2, v15, v20, v21);
        v22 = *a2;
        *a2 = v21;
        v23 = a2[2];
        *(a2 + 1) = v26;
        *&v26 = v22;
        *(&v26 + 1) = v23;
        v24 = v22;
        v25 = v22;
      }

      std::__split_buffer<snlp::ssu::similarity::SSUAppResult>::~__split_buffer(&v24);
    }
  }
}

void sub_2229B5344(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2229B5324);
}

void sub_2229B5354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<snlp::ssu::similarity::SSUAppResult>::destroy[abi:ne200100](uint64_t a1)
{
  snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>>(unint64_t a1)
{
  if (a1 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUAppResult>,snlp::ssu::similarity::SSUAppResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = v6 + v7;
      v10 = *(v6 + v7);
      *(v8 + 16) = *(v6 + v7 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v6 + v7 + 24);
      *(v8 + 40) = *(v6 + v7 + 40);
      *(v8 + 24) = v11;
      v12 = *(v6 + v7 + 48);
      *(v8 + 64) = *(v6 + v7 + 64);
      *(v8 + 48) = v12;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      *(a4 + v7 + 72) = 0;
      *(v8 + 136) = 0;
      if (*(v6 + v7 + 136) == 1)
      {
        v13 = *(v9 + 72);
        *(a4 + v7 + 88) = *(v9 + 88);
        *(a4 + v7 + 72) = v13;
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *(v9 + 72) = 0;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v8 + 96, (v9 + 96));
        *(v8 + 136) = 1;
      }

      *(v8 + 144) = 0;
      *(v8 + 232) = 0;
      if (*(v9 + 232) == 1)
      {
        v14 = (v6 + v7);
        v15 = *(v6 + v7 + 144);
        *(v8 + 160) = *(v6 + v7 + 160);
        *(v8 + 144) = v15;
        v14[19] = 0;
        v14[20] = 0;
        v14[18] = 0;
        v16 = a4 + v7;
        *(v16 + 168) = *(v6 + v7 + 168);
        *(v16 + 192) = 0;
        *(v16 + 200) = 0;
        *(v16 + 184) = 0;
        *(v16 + 184) = *(v6 + v7 + 184);
        *(v16 + 200) = *(v6 + v7 + 200);
        v14[23] = 0;
        v14[24] = 0;
        v14[25] = 0;
        v17 = *(v6 + v7 + 208);
        *(v16 + 224) = *(v6 + v7 + 224);
        *(v16 + 208) = v17;
        v14[27] = 0;
        v14[28] = 0;
        v14[26] = 0;
        *(v8 + 232) = 1;
      }

      v18 = a4 + v7;
      *(v18 + 240) = *(v9 + 240);
      *(a4 + v7 + 248) = 0;
      *(v18 + 272) = 0;
      if (*(v9 + 272) == 1)
      {
        v19 = (v6 + v7);
        v20 = *(v6 + v7 + 248);
        *(a4 + v7 + 264) = *(v6 + v7 + 264);
        *(a4 + v7 + 248) = v20;
        v19[32] = 0;
        v19[33] = 0;
        v19[31] = 0;
        *(v18 + 272) = 1;
      }

      *(v18 + 280) = *(v9 + 280);
      v7 += 288;
    }

    while (v9 + 288 != a3);
    do
    {
      std::allocator<snlp::ssu::similarity::SSUAppResult>::destroy[abi:ne200100](v6);
      v6 += 288;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::similarity::SSUAppResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    std::allocator<snlp::ssu::similarity::SSUAppResult>::destroy[abi:ne200100](i - 288);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(const void **a1, __int128 *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = a2 - 18;
      if (snlp::ssu::similarity::SSUAppResult::operator>(a2 - 36, a1))
      {

        std::swap[abi:ne200100]<snlp::ssu::similarity::SSUAppResult>(a1, v8);
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v16 = a1 + 36;
        if (a1 + 36 != a2)
        {
          v17 = 0;
          v18 = a1;
          do
          {
            v19 = v16;
            if (snlp::ssu::similarity::SSUAppResult::operator>(v16, v18))
            {
              v20 = *v19;
              v65 = v19[2];
              *__p = v20;
              v19[1] = 0;
              v19[2] = 0;
              *v19 = 0;
              v66 = *(v18 + 39);
              v67 = v18[41];
              v68 = *(v18 + 21);
              v69 = v18[44];
              v18[42] = 0;
              v18[43] = 0;
              v18[44] = 0;
              LOBYTE(v70) = 0;
              v73 = 0;
              if (*(v18 + 424) == 1)
              {
                v71 = v18[47];
                v70 = *(v18 + 45);
                v18[46] = 0;
                v18[47] = 0;
                v18[45] = 0;
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(&v72, v18 + 48);
                v73 = 1;
              }

              LOBYTE(v74) = 0;
              v81 = 0;
              if (*(v18 + 520) == 1)
              {
                v74 = *(v18 + 27);
                v75 = v18[56];
                v18[55] = 0;
                v18[56] = 0;
                v18[54] = 0;
                v76 = *(v18 + 57);
                v77 = *(v18 + 59);
                v78 = v18[61];
                v18[59] = 0;
                v18[60] = 0;
                v21 = *(v18 + 31);
                v80 = v18[64];
                v79 = v21;
                v18[61] = 0;
                v18[62] = 0;
                v18[63] = 0;
                v18[64] = 0;
                v81 = 1;
              }

              v82 = *(v18 + 132);
              v83.n128_u8[0] = 0;
              v85 = 0;
              if (*(v18 + 560) == 1)
              {
                v84 = v18[69];
                v83 = *(v18 + 67);
                v18[69] = 0;
                v18[67] = 0;
                v18[68] = 0;
                v85 = 1;
              }

              v86 = *(v18 + 142);
              v22 = v17;
              while (1)
              {
                v23 = a1 + v22;
                if (*(a1 + v22 + 311) < 0)
                {
                  operator delete(*(v23 + 36));
                }

                *(v23 + 18) = *v23;
                *(v23 + 38) = *(v23 + 2);
                v23[23] = 0;
                *v23 = 0;
                *(v23 + 312) = *(v23 + 24);
                *(v23 + 41) = *(v23 + 5);
                if (v23[359] < 0)
                {
                  operator delete(*(v23 + 42));
                }

                v24 = a1 + v22;
                *(v23 + 21) = *(v23 + 3);
                *(v23 + 44) = *(v23 + 8);
                *(a1 + v22 + 71) = 0;
                v23[48] = 0;
                std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(a1 + v22 + 360, (a1 + v22 + 72));
                std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>((v24 + 432), v24 + 9);
                *(v24 + 132) = *(v24 + 60);
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v24 + 536), (v24 + 248));
                *(v24 + 142) = *(v24 + 70);
                if (!v22)
                {
                  break;
                }

                v22 -= 288;
                if ((snlp::ssu::similarity::SSUAppResult::operator>(__p, (a1 + v22)) & 1) == 0)
                {
                  v25 = a1 + v22 + 288;
                  goto LABEL_32;
                }
              }

              v25 = a1;
LABEL_32:
              if (*(v25 + 23) < 0)
              {
                operator delete(*v25);
              }

              v26 = *__p;
              *(v25 + 16) = v65;
              *v25 = v26;
              HIBYTE(v65) = 0;
              LOBYTE(__p[0]) = 0;
              v27 = v67;
              *(v25 + 24) = v66;
              *(v25 + 40) = v27;
              if (*(v25 + 71) < 0)
              {
                operator delete(*(v25 + 48));
              }

              v28 = v68;
              *(v25 + 64) = v69;
              *(v25 + 48) = v28;
              HIBYTE(v69) = 0;
              LOBYTE(v68) = 0;
              std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v25 + 72, &v70);
              std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v25 + 144, &v74);
              *(v25 + 240) = v82;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v25 + 248, &v83);
              *(v25 + 280) = v86;
              snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(&v66);
              if (SHIBYTE(v65) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v16 = v19 + 36;
            v17 += 288;
            v18 = v19;
          }

          while (v19 + 36 != a2);
        }
      }
    }

    else
    {
      v11 = a5;
      v13 = a4 >> 1;
      v14 = &a1[36 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v63 = 0;
        __p[0] = a5;
        __p[1] = &v63;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(a1, &a1[36 * (a4 >> 1)], a3, a4 >> 1, a5);
        v63 = a4 >> 1;
        v29 = a4 - v13;
        v30 = v11 + 288 * v13;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(&a1[36 * (a4 >> 1)], a2, a3, v29, v30);
        v63 = a4;
        v31 = v11 + 288 * a4;
        v32 = (a1 + 18);
        v33 = v30;
        while (v33 != v31)
        {
          v34 = (v32 - 144);
          v35 = snlp::ssu::similarity::SSUAppResult::operator>(v33, v11);
          v36 = *(v32 - 121);
          if (v35)
          {
            if (v36 < 0)
            {
              operator delete(*v34);
            }

            v37 = *v33;
            *(v32 - 128) = *(v33 + 16);
            *v34 = v37;
            *(v33 + 23) = 0;
            *v33 = 0;
            v38 = *(v33 + 40);
            *(v32 - 120) = *(v33 + 24);
            *(v32 - 104) = v38;
            v39 = (v32 - 96);
            if (*(v32 - 73) < 0)
            {
              operator delete(*v39);
            }

            v40 = *(v33 + 48);
            *(v32 - 80) = *(v33 + 64);
            *v39 = v40;
            *(v33 + 71) = 0;
            *(v33 + 48) = 0;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v32 - 72, (v33 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v32, (v33 + 144));
            *(v32 + 96) = *(v33 + 240);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v32 + 104, (v33 + 248));
            *(v32 + 136) = *(v33 + 280);
            v33 += 288;
          }

          else
          {
            if (v36 < 0)
            {
              operator delete(*v34);
            }

            v41 = *v11;
            *(v32 - 128) = *(v11 + 16);
            *v34 = v41;
            *(v11 + 23) = 0;
            *v11 = 0;
            v42 = *(v11 + 40);
            *(v32 - 120) = *(v11 + 24);
            *(v32 - 104) = v42;
            v43 = (v32 - 96);
            if (*(v32 - 73) < 0)
            {
              operator delete(*v43);
            }

            v44 = *(v11 + 48);
            *(v32 - 80) = *(v11 + 64);
            *v43 = v44;
            *(v11 + 71) = 0;
            *(v11 + 48) = 0;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v32 - 72, (v11 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v32, (v11 + 144));
            *(v32 + 96) = *(v11 + 240);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v32 + 104, (v11 + 248));
            *(v32 + 136) = *(v11 + 280);
            v11 += 288;
          }

          v32 += 288;
          if (v11 == v30)
          {
            if (v33 != v31)
            {
              v45 = 0;
              do
              {
                v46 = v32 + v45;
                v47 = (v32 + v45 - 144);
                if (*(v32 + v45 - 121) < 0)
                {
                  operator delete(*v47);
                }

                v48 = v33 + v45;
                v49 = *(v33 + v45);
                *(v32 + v45 - 128) = *(v33 + v45 + 16);
                *v47 = v49;
                *(v48 + 23) = 0;
                *v48 = 0;
                v50 = *(v33 + v45 + 40);
                *(v46 - 120) = *(v33 + v45 + 24);
                *(v46 - 104) = v50;
                if (*(v46 - 73) < 0)
                {
                  operator delete(*(v46 - 96));
                }

                v51 = v46 - 96;
                v52 = *(v48 + 48);
                *(v51 + 16) = *(v48 + 64);
                *v51 = v52;
                *(v48 + 71) = 0;
                *(v48 + 48) = 0;
                v53 = v32 + v45;
                std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v32 + v45 - 72, (v48 + 72));
                std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v32 + v45, (v48 + 144));
                *(v53 + 96) = *(v48 + 240);
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v32 + v45 + 104, (v48 + 248));
                *(v53 + 136) = *(v48 + 280);
                v45 += 288;
              }

              while (v48 + 288 != v31);
            }

            goto LABEL_69;
          }
        }

        if (v11 != v30)
        {
          v54 = 0;
          do
          {
            v55 = v32 + v54;
            v56 = (v32 + v54 - 144);
            if (*(v32 + v54 - 121) < 0)
            {
              operator delete(*v56);
            }

            v57 = v11 + v54;
            v58 = *(v11 + v54);
            *(v32 + v54 - 128) = *(v11 + v54 + 16);
            *v56 = v58;
            *(v57 + 23) = 0;
            *v57 = 0;
            v59 = *(v11 + v54 + 40);
            *(v55 - 120) = *(v11 + v54 + 24);
            *(v55 - 104) = v59;
            v60 = (v55 - 96);
            if (*(v55 - 73) < 0)
            {
              operator delete(*v60);
            }

            v61 = *(v57 + 48);
            *(v55 - 80) = *(v57 + 64);
            *v60 = v61;
            *(v57 + 71) = 0;
            *(v57 + 48) = 0;
            v62 = v32 + v54;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v32 + v54 - 72, (v57 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v32 + v54, (v57 + 144));
            *(v62 + 96) = *(v57 + 240);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v32 + v54 + 104, (v57 + 248));
            *(v62 + 136) = *(v57 + 280);
            v54 += 288;
          }

          while (v57 + 288 != v30);
        }

LABEL_69:
        std::unique_ptr<snlp::ssu::similarity::SSUAppResult,std::__destruct_n &>::~unique_ptr[abi:ne200100](__p);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(a1, &a1[36 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v13;
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(v14, a2, a3, v15, v11, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(a1, v14, a2, v13, v15, v11, a6);
      }
    }
  }
}

void sub_2229B5DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<snlp::ssu::similarity::SSUAppResult,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::swap[abi:ne200100]<snlp::ssu::similarity::SSUAppResult>(uint64_t a1, __int128 *a2)
{
  *__p = *a1;
  v9 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  LOBYTE(v14) = 0;
  v17 = 0;
  if (*(a1 + 136) == 1)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(&v16, (a1 + 96));
    v17 = 1;
  }

  LOBYTE(v18) = 0;
  v25 = 0;
  if (*(a1 + 232) == 1)
  {
    v18 = *(a1 + 144);
    v19 = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    v20 = *(a1 + 168);
    v21 = *(a1 + 184);
    v22 = *(a1 + 200);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    v4 = *(a1 + 208);
    v24 = *(a1 + 224);
    v23 = v4;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    v25 = 1;
  }

  v26 = *(a1 + 240);
  v27.n128_u8[0] = 0;
  v29 = 0;
  if (*(a1 + 272) == 1)
  {
    v27 = *(a1 + 248);
    v28 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = 0;
    v29 = 1;
  }

  v30 = *(a1 + 280);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v6;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v7 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v7;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(a1 + 72, (a2 + 72));
  std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(a1 + 144, a2 + 9);
  *(a1 + 240) = *(a2 + 60);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 248, (a2 + 248));
  *(a1 + 280) = *(a2 + 70);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v9;
  *(a2 + 24) = v10;
  *(a2 + 5) = v11;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 6));
  }

  a2[3] = v12;
  *(a2 + 8) = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(a2 + 72, &v14);
  std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>((a2 + 9), &v18);
  *(a2 + 60) = v26;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a2 + 248, &v27);
  *(a2 + 70) = v30;
  snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(&v10);
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(uint64_t *result, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v8 = result;
  if (a4 == 2)
  {
    v27 = &v28;
    v28 = 0;
    v9 = a2 - 18;
    v10 = snlp::ssu::similarity::SSUAppResult::operator>(a2 - 36, result);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    if (v10)
    {
      v9 = v8;
    }

    std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5, v11);
    ++v28;
    std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5 + 288, v9);
LABEL_47:
    v26 = 0;
    return std::unique_ptr<snlp::ssu::similarity::SSUAppResult,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v26);
  }

  if (a4 != 1)
  {
    if (a4 > 8)
    {
      v24 = &result[36 * (a4 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(&v8[18 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v5 + 288 * (a4 >> 1), a4 - (a4 >> 1));
      v26 = v5;
      v27 = &v28;
      v28 = 0;
      v25 = &v8[18 * (a4 >> 1)];
      while (v25 != a2)
      {
        if (snlp::ssu::similarity::SSUAppResult::operator>(v25, v8))
        {
          std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5, v25);
          v25 += 18;
        }

        else
        {
          std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5, v8);
          v8 += 18;
        }

        ++v28;
        v5 += 288;
        if (v8 == v24)
        {
          while (v25 != a2)
          {
            std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5, v25);
            v25 += 18;
            v5 += 288;
            ++v28;
          }

          goto LABEL_47;
        }
      }

      while (v8 != v24)
      {
        std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(v5, v8);
        v8 += 18;
        v5 += 288;
        ++v28;
      }
    }

    else
    {
      if (result == a2)
      {
        return result;
      }

      v26 = a5;
      v27 = &v28;
      v28 = 0;
      std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(a5, result);
      ++v28;
      v12 = v8 + 18;
      if (v12 != a2)
      {
        v13 = 0;
        v14 = v5;
        do
        {
          v15 = v14 + 18;
          if (snlp::ssu::similarity::SSUAppResult::operator>(v12, v14))
          {
            std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>((v14 + 18), v14);
            ++v28;
            v16 = v5;
            if (v14 != v5)
            {
              v17 = v13;
              while (1)
              {
                v16 = v5 + v17;
                v18 = (v5 + v17 - 288);
                if (!snlp::ssu::similarity::SSUAppResult::operator>(v12, v18))
                {
                  break;
                }

                if (*(v16 + 23) < 0)
                {
                  operator delete(*v16);
                }

                v19 = v5 + v17;
                *v16 = *v18;
                *(v16 + 16) = *(v5 + v17 - 272);
                *(v5 + v17 - 265) = 0;
                *v18 = 0;
                *(v19 + 40) = *(v5 + v17 - 248);
                *(v19 + 24) = *(v5 + v17 - 264);
                if (*(v5 + v17 + 71) < 0)
                {
                  operator delete(*(v19 + 48));
                }

                *(v19 + 48) = *(v19 - 240);
                *(v19 + 64) = *(v19 - 224);
                *(v19 - 217) = 0;
                *(v19 - 240) = 0;
                std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v19 + 72, (v19 - 216));
                std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v19 + 144, (v19 - 144));
                *(v19 + 240) = *(v19 - 48);
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v19 + 248, (v19 - 40));
                *(v19 + 280) = *(v19 - 8);
                v17 -= 288;
                if (!v17)
                {
                  v16 = v5;
                  break;
                }
              }
            }

            if (*(v16 + 23) < 0)
            {
              operator delete(*v16);
            }

            v20 = *v12;
            *(v16 + 16) = *(v12 + 2);
            *v16 = v20;
            *(v12 + 23) = 0;
            *v12 = 0;
            v21 = *(v12 + 5);
            *(v16 + 24) = *(v12 + 24);
            *(v16 + 40) = v21;
            if (*(v16 + 71) < 0)
            {
              operator delete(*(v16 + 48));
            }

            v22 = v12[3];
            *(v16 + 64) = *(v12 + 8);
            *(v16 + 48) = v22;
            *(v12 + 71) = 0;
            *(v12 + 48) = 0;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v16 + 72, (v12 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v16 + 144, v12 + 9);
            *(v16 + 240) = *(v12 + 60);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v16 + 248, (v12 + 248));
            *(v16 + 280) = *(v12 + 70);
          }

          else
          {
            std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>((v14 + 18), v12);
            ++v28;
          }

          v12 += 18;
          v13 += 288;
          v14 = v15;
        }

        while (v12 != a2);
      }
    }

    goto LABEL_47;
  }

  return std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(a5, result);
}

uint64_t *std::unique_ptr<snlp::ssu::similarity::SSUAppResult,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 24);
      do
      {
        snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(v5);
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 3));
        }

        ++v4;
        v5 += 36;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(const void **a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return;
      }

      while ((snlp::ssu::similarity::SSUAppResult::operator>(a2, a1) & 1) == 0)
      {
        a1 += 36;
        if (!--a4)
        {
          return;
        }
      }

      v108 = a7;
      if (a4 >= v9)
      {
        if (a4 == 1)
        {

          std::swap[abi:ne200100]<snlp::ssu::similarity::SSUAppResult>(a1, a2);
          return;
        }

        v18 = a4 / 2;
        v16 = &a1[36 * (a4 / 2)];
        v15 = a2;
        if (a2 != a3)
        {
          v105 = a3;
          v19 = 0x8E38E38E38E38E39 * ((a3 - a2) >> 5);
          v15 = a2;
          do
          {
            v20 = &v15[18 * (v19 >> 1)];
            v21 = snlp::ssu::similarity::SSUAppResult::operator>(v20, &a1[36 * (a4 / 2)]);
            if (v21)
            {
              v19 += ~(v19 >> 1);
            }

            else
            {
              v19 >>= 1;
            }

            if (v21)
            {
              v15 = (v20 + 36);
            }
          }

          while (v19);
          a3 = v105;
          v18 = a4 / 2;
        }

        v14 = 0x8E38E38E38E38E39 * ((v15 - a2) >> 5);
      }

      else
      {
        v14 = v9 / 2;
        v15 = &a2[18 * (v9 / 2)];
        v16 = a2;
        if (a2 != a1)
        {
          v104 = a3;
          v17 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 5);
          v16 = a1;
          do
          {
            if (snlp::ssu::similarity::SSUAppResult::operator>(&a2[18 * (v9 / 2)], &v16[36 * (v17 >> 1)]))
            {
              v17 >>= 1;
            }

            else
            {
              v16 += 36 * (v17 >> 1) + 36;
              v17 += ~(v17 >> 1);
            }
          }

          while (v17);
          a3 = v104;
          v14 = v9 / 2;
        }

        v18 = 0x8E38E38E38E38E39 * ((v16 - a1) >> 5);
      }

      v22 = v15;
      if (v16 != a2)
      {
        v22 = v16;
        if (a2 != v15)
        {
          v102 = v18;
          v103 = v14;
          v106 = a3;
          v107 = a6;
          v22 = v16 + 36;
          v23 = v16;
          v24 = a2;
          while (1)
          {
            std::swap[abi:ne200100]<snlp::ssu::similarity::SSUAppResult>(v23, v24);
            v23 += 288;
            v24 += 18;
            if (v24 == v15)
            {
              break;
            }

            if (v23 == a2)
            {
              a2 = v24;
            }

            v22 += 36;
          }

          if (v23 != a2)
          {
            v25 = a2;
            do
            {
              while (1)
              {
                std::swap[abi:ne200100]<snlp::ssu::similarity::SSUAppResult>(v23, v25);
                v23 += 288;
                v25 += 18;
                if (v25 == v15)
                {
                  break;
                }

                if (v23 == a2)
                {
                  a2 = v25;
                }
              }

              v25 = a2;
            }

            while (v23 != a2);
          }

          a3 = v106;
          a6 = v107;
          v18 = v102;
          v14 = v103;
        }
      }

      a4 -= v18;
      v9 -= v14;
      if (v18 + v14 >= a4 + v9)
      {
        v27 = v18;
        v28 = a4;
        v29 = v14;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(v22, v15, a3, v28, v9, a6, v108);
        v15 = v16;
        a7 = v108;
        v9 = v29;
        a4 = v27;
        a3 = v22;
      }

      else
      {
        v26 = v16;
        a7 = v108;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<snlp::ssu::similarity::SSUAppResult> &,std::__wrap_iter<snlp::ssu::similarity::SSUAppResult*>>(a1, v26, v22, v18, v14, a6, v108);
        a1 = v22;
      }

      a2 = v15;
      if (!v9)
      {
        return;
      }
    }

    v109[0] = a6;
    v109[1] = &v110;
    v110 = 0;
    if (a4 <= v9)
    {
      if (a2 != a1)
      {
        v54 = a3;
        v55 = 0;
        do
        {
          v56 = &a1[v55];
          v57 = a6 + v55 * 8;
          v58 = *&a1[v55];
          *(v57 + 16) = a1[v55 + 2];
          *v57 = v58;
          v56[1] = 0;
          v56[2] = 0;
          *v56 = 0;
          v59 = *&a1[v55 + 3];
          *(v57 + 40) = a1[v55 + 5];
          *(v57 + 24) = v59;
          v60 = *&a1[v55 + 6];
          *(v57 + 64) = a1[v55 + 8];
          *(v57 + 48) = v60;
          v56[7] = 0;
          v56[8] = 0;
          v56[6] = 0;
          *(a6 + v55 * 8 + 72) = 0;
          *(v57 + 136) = 0;
          if (LOBYTE(a1[v55 + 17]) == 1)
          {
            v61 = *(v56 + 9);
            *(a6 + v55 * 8 + 88) = v56[11];
            *(a6 + v55 * 8 + 72) = v61;
            v56[10] = 0;
            v56[11] = 0;
            v56[9] = 0;
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v57 + 96, v56 + 12);
            *(v57 + 136) = 1;
          }

          *(v57 + 144) = 0;
          *(v57 + 232) = 0;
          if (*(v56 + 232) == 1)
          {
            v62 = &a1[v55];
            v63 = *&a1[v55 + 18];
            *(v57 + 160) = a1[v55 + 20];
            *(v57 + 144) = v63;
            v62[19] = 0;
            v62[20] = 0;
            v62[18] = 0;
            v64 = a6 + v55 * 8;
            *(v64 + 168) = *&a1[v55 + 21];
            *(v64 + 192) = 0;
            *(v64 + 200) = 0;
            *(v64 + 184) = 0;
            *(v64 + 184) = *&a1[v55 + 23];
            *(v64 + 200) = a1[v55 + 25];
            v62[23] = 0;
            v62[24] = 0;
            v62[25] = 0;
            v65 = *&a1[v55 + 26];
            *(v64 + 224) = a1[v55 + 28];
            *(v64 + 208) = v65;
            v62[27] = 0;
            v62[28] = 0;
            v62[26] = 0;
            *(v57 + 232) = 1;
          }

          v66 = a6 + v55 * 8;
          *(v66 + 240) = *(v56 + 60);
          *(a6 + v55 * 8 + 248) = 0;
          *(v66 + 272) = 0;
          if (*(v56 + 272) == 1)
          {
            v67 = &a1[v55];
            v68 = *&a1[v55 + 31];
            *(a6 + v55 * 8 + 264) = a1[v55 + 33];
            *(a6 + v55 * 8 + 248) = v68;
            v67[32] = 0;
            v67[33] = 0;
            v67[31] = 0;
            *(v66 + 272) = 1;
          }

          *(v66 + 280) = *(v56 + 70);
          ++v110;
          v55 += 36;
        }

        while (v56 + 36 != a2);
        v69 = a6 + v55 * 8;
        v70 = v69 - 288;
        v71 = (a1 + 18);
        while (a2 != v54)
        {
          v72 = (v71 - 144);
          v73 = snlp::ssu::similarity::SSUAppResult::operator>(a2, a6);
          v74 = *(v71 - 121);
          if (v73)
          {
            if (v74 < 0)
            {
              operator delete(*v72);
            }

            v75 = *a2;
            *(v71 - 128) = *(a2 + 2);
            *v72 = v75;
            *(a2 + 23) = 0;
            *a2 = 0;
            v76 = *(a2 + 5);
            *(v71 - 120) = *(a2 + 24);
            *(v71 - 104) = v76;
            v77 = (v71 - 96);
            if (*(v71 - 73) < 0)
            {
              operator delete(*v77);
            }

            v78 = a2[3];
            *(v71 - 80) = *(a2 + 8);
            *v77 = v78;
            *(a2 + 71) = 0;
            *(a2 + 48) = 0;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v71 - 72, (a2 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v71, a2 + 9);
            *(v71 + 96) = *(a2 + 60);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v71 + 104, (a2 + 248));
            *(v71 + 136) = *(a2 + 70);
            a2 += 18;
          }

          else
          {
            if (v74 < 0)
            {
              operator delete(*v72);
            }

            v79 = *a6;
            *(v71 - 128) = *(a6 + 16);
            *v72 = v79;
            *(a6 + 23) = 0;
            *a6 = 0;
            v80 = *(a6 + 40);
            *(v71 - 120) = *(a6 + 24);
            *(v71 - 104) = v80;
            v81 = (v71 - 96);
            if (*(v71 - 73) < 0)
            {
              operator delete(*v81);
            }

            v82 = *(a6 + 48);
            *(v71 - 80) = *(a6 + 64);
            *v81 = v82;
            *(a6 + 71) = 0;
            *(a6 + 48) = 0;
            std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v71 - 72, (a6 + 72));
            std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v71, (a6 + 144));
            *(v71 + 96) = *(a6 + 240);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v71 + 104, (a6 + 248));
            *(v71 + 136) = *(a6 + 280);
            a6 += 288;
          }

          v71 += 288;
          if (a6 == v69)
          {
            goto LABEL_115;
          }
        }

        v93 = 0;
        do
        {
          v94 = v71 + v93;
          v95 = (v71 + v93 - 144);
          if (*(v71 + v93 - 121) < 0)
          {
            operator delete(*v95);
          }

          v96 = a6 + v93;
          v97 = *(a6 + v93);
          *(v71 + v93 - 128) = *(a6 + v93 + 16);
          *v95 = v97;
          *(v96 + 23) = 0;
          *v96 = 0;
          v98 = *(a6 + v93 + 40);
          *(v94 - 120) = *(a6 + v93 + 24);
          *(v94 - 104) = v98;
          v99 = (v94 - 96);
          if (*(v94 - 73) < 0)
          {
            operator delete(*v99);
          }

          v100 = *(v96 + 48);
          *(v94 - 80) = *(v96 + 64);
          *v99 = v100;
          *(v96 + 71) = 0;
          *(v96 + 48) = 0;
          v101 = v71 + v93;
          std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v71 + v93 - 72, (v96 + 72));
          std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v71 + v93, (v96 + 144));
          *(v101 + 96) = *(v96 + 240);
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v71 + v93 + 104, (v96 + 248));
          *(v101 + 136) = *(v96 + 280);
          v93 += 288;
        }

        while (v96 != v70);
      }
    }

    else if (a2 != a3)
    {
      v30 = 0;
      do
      {
        v31 = a3;
        v32 = &a2[v30];
        v33 = a6 + v30 * 16;
        v34 = a2[v30];
        *(v33 + 16) = *&a2[v30 + 1];
        *v33 = v34;
        *(v32 + 1) = 0;
        *(v32 + 2) = 0;
        *v32 = 0;
        v35 = *(&a2[v30 + 1] + 8);
        *(v33 + 40) = *(&a2[v30 + 2] + 1);
        *(v33 + 24) = v35;
        v36 = a2[v30 + 3];
        *(v33 + 64) = *&a2[v30 + 4];
        *(v33 + 48) = v36;
        *(v32 + 7) = 0;
        *(v32 + 8) = 0;
        *(v32 + 6) = 0;
        *(a6 + v30 * 16 + 72) = 0;
        *(v33 + 136) = 0;
        if (BYTE8(a2[v30 + 8]) == 1)
        {
          v37 = *(v32 + 72);
          *(a6 + v30 * 16 + 88) = *(v32 + 11);
          *(a6 + v30 * 16 + 72) = v37;
          *(v32 + 10) = 0;
          *(v32 + 11) = 0;
          *(v32 + 9) = 0;
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v33 + 96, v32 + 12);
          *(v33 + 136) = 1;
        }

        *(v33 + 144) = 0;
        *(v33 + 232) = 0;
        if (*(v32 + 232) == 1)
        {
          v38 = &a2[v30];
          v39 = a2[v30 + 9];
          *(v33 + 160) = *&a2[v30 + 10];
          *(v33 + 144) = v39;
          *(v38 + 19) = 0;
          *(v38 + 20) = 0;
          *(v38 + 18) = 0;
          v40 = a6 + v30 * 16;
          *(v40 + 168) = *(&a2[v30 + 10] + 8);
          *(v40 + 192) = 0;
          *(v40 + 200) = 0;
          *(v40 + 184) = 0;
          *(v40 + 184) = *(&a2[v30 + 11] + 8);
          *(v40 + 200) = *(&a2[v30 + 12] + 1);
          *(v38 + 23) = 0;
          *(v38 + 24) = 0;
          *(v38 + 25) = 0;
          v41 = a2[v30 + 13];
          *(v40 + 224) = *&a2[v30 + 14];
          *(v40 + 208) = v41;
          *(v38 + 27) = 0;
          *(v38 + 28) = 0;
          *(v38 + 26) = 0;
          *(v33 + 232) = 1;
        }

        v42 = a6 + v30 * 16;
        *(v42 + 240) = *(v32 + 60);
        *(a6 + v30 * 16 + 248) = 0;
        *(v42 + 272) = 0;
        if (*(v32 + 272) == 1)
        {
          v43 = &a2[v30];
          v44 = *(&a2[v30 + 15] + 8);
          *(a6 + v30 * 16 + 264) = *(&a2[v30 + 16] + 1);
          *(a6 + v30 * 16 + 248) = v44;
          *(v43 + 32) = 0;
          *(v43 + 33) = 0;
          *(v43 + 31) = 0;
          *(v42 + 272) = 1;
        }

        *(v42 + 280) = *(v32 + 70);
        ++v110;
        v30 += 18;
        a3 = v31;
      }

      while (v32 + 18 != v31);
      v45 = (v31 - 9);
      v46 = a6 + v30 * 16;
      while (a2 != a1)
      {
        v47 = snlp::ssu::similarity::SSUAppResult::operator>((v46 - 288), a2 - 36);
        v48 = (v45 - 144);
        if (v47)
        {
          v49 = a2 - 18;
        }

        else
        {
          v49 = (v46 - 288);
        }

        if (v47)
        {
          a2 -= 18;
        }

        else
        {
          v46 -= 288;
        }

        if (*(v45 - 121) < 0)
        {
          operator delete(*v48);
        }

        v50 = *v49;
        *(v45 - 128) = *(v49 + 2);
        *v48 = v50;
        *(v49 + 23) = 0;
        *v49 = 0;
        v51 = *(v49 + 5);
        *(v45 - 120) = *(v49 + 24);
        *(v45 - 104) = v51;
        v52 = (v45 - 96);
        if (*(v45 - 73) < 0)
        {
          operator delete(*v52);
        }

        v53 = v49[3];
        *(v45 - 80) = *(v49 + 8);
        *v52 = v53;
        *(v49 + 71) = 0;
        *(v49 + 48) = 0;
        std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v45 - 72, (v49 + 72));
        std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v45, v49 + 9);
        *(v45 + 96) = *(v49 + 60);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v45 + 104, (v49 + 248));
        *(v45 + 136) = *(v49 + 70);
        v45 -= 288;
        if (v46 == a6)
        {
          goto LABEL_115;
        }
      }

      if (v46 != a6)
      {
        v83 = 0;
        do
        {
          v84 = v45 + v83;
          v85 = (v45 + v83 - 144);
          if (*(v45 + v83 - 121) < 0)
          {
            operator delete(*v85);
          }

          v86 = (v46 + v83 - 288);
          v87 = *v86;
          *(v45 + v83 - 128) = *(v46 + v83 - 272);
          *v85 = v87;
          *(v46 + v83 - 265) = 0;
          *v86 = 0;
          v88 = *(v46 + v83 - 248);
          *(v84 - 120) = *(v46 + v83 - 264);
          *(v84 - 104) = v88;
          v89 = (v84 - 96);
          if (*(v84 - 73) < 0)
          {
            operator delete(*v89);
          }

          v90 = (v46 + v83 - 240);
          v91 = *v90;
          *(v84 - 80) = *(v46 + v83 - 224);
          *v89 = v91;
          *(v46 + v83 - 217) = 0;
          *v90 = 0;
          v92 = v45 + v83;
          std::__optional_storage_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::candidate::SSUAlternativeCandidateInfo,false>>(v45 + v83 - 72, (v46 + v83 - 216));
          std::__optional_storage_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,false>>(v45 + v83, (v46 + v83 - 144));
          *(v92 + 96) = *(v46 + v83 - 48);
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v45 + v83 + 104, (v46 + v83 - 40));
          *(v92 + 136) = *(v46 + v83 - 8);
          v83 -= 288;
        }

        while (v46 + v83 != a6);
      }
    }

LABEL_115:
    std::unique_ptr<snlp::ssu::similarity::SSUAppResult,std::__destruct_n &>::~unique_ptr[abi:ne200100](v109);
  }
}

uint64_t std::__construct_at[abi:ne200100]<snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult,snlp::ssu::similarity::SSUAppResult*>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(a1 + 72) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 9) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 96, a2 + 12);
    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v8 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v8;
    *(a2 + 19) = 0;
    *(a2 + 20) = 0;
    *(a2 + 18) = 0;
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 25);
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    v9 = a2[13];
    *(a1 + 224) = *(a2 + 28);
    *(a1 + 208) = v9;
    *(a2 + 27) = 0;
    *(a2 + 28) = 0;
    *(a2 + 26) = 0;
    *(a1 + 232) = 1;
  }

  v10 = *(a2 + 60);
  *(a1 + 248) = 0;
  *(a1 + 240) = v10;
  *(a1 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v11 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v11;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a1 + 272) = 1;
  }

  *(a1 + 280) = *(a2 + 70);
  return a1;
}

void snlp::ssu::similarity::SSUAppResult::~SSUAppResult(void **this)
{
  snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(this + 3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_2229B7B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44)
{
  a44 = &a28;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a44);
  if (a43 == 1)
  {
    a28 = &a40;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a28);
  }

  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2229B8488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  snlp::ssu::matcher::SSULoggedResponse::~SSULoggedResponse(&a15);
  MEMORY[0x223DC30F0](&a19);
  v30 = a27;
  a27 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSULoggedResponse::~SSULoggedResponse(snlp::ssu::matcher::SSULoggedResponse *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void sub_2229B8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::optional<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~optional(&a56);
  a56 = &a36;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a56);
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      v5 = *(a1 + 32);
      *(a1 + 24) = *(a2 + 6);
      if (v5)
      {
        *(a1 + 40) = v5;
        operator delete(v5);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      result = a2[2];
      *(a1 + 32) = result;
      *(a1 + 48) = *(a2 + 6);
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
    }
  }

  else if (*(a1 + 56))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      *(a1 + 40) = v7;
      operator delete(v7);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 6);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    result = a2[2];
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 6);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a1 + 56) = 1;
  }

  return result;
}

void snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo::~SSUBackgroundUpdateAppInfo(snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_2229B9510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::optional<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~optional(v35 - 160);
  objc_sync_exit(v34);

  _Unwind_Resume(a1);
}

void sub_2229B9A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::optional<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::~optional(v40 - 176);
  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo(&a19);
  objc_sync_exit(v39);

  _Unwind_Resume(a1);
}

void sub_2229BA15C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2229BA16C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<snlp::ssu::matcher::SSUMatcher>::reset[abi:ne200100](va, 0);

  JUMPOUT(0x2229BA1B8);
}

void sub_2229BA19C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  JUMPOUT(0x2229BA228);
}

void sub_2229BA1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a12);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a17);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a22);
  std::unique_ptr<snlp::ssu::matcher::SSUMatcher>::reset[abi:ne200100](&a27, 0);
  snlp::common::selflogging::NLXSchemaNLXClientEventMetadata::~NLXSchemaNLXClientEventMetadata(&a28);

  _Unwind_Resume(a1);
}

void SentencepieceModelLoadingError::~SentencepieceModelLoadingError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

void nl_featurization::bio::BilouEncoder::encode(uint64_t a1@<X0>, unint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v30, *a1, *(a1 + 8));
  }

  else
  {
    v30 = *a1;
  }

  std::unordered_set<std::basic_string<char16_t>>::unordered_set(&v25, a1 + 24);
  v10 = (v8 - v9) >> 3;
  v31 = 0x8E38E38E38E38E39 * v10;
  memset(v32, 0, sizeof(v32));
  v23 = v32;
  v24 = 0;
  if (v8 != v9)
  {
    std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__vallocate[abi:ne200100](v32, 0x8E38E38E38E38E39 * v10);
  }

  v33 = *&v30.__r_.__value_.__l.__data_;
  v11 = v30.__r_.__value_.__r.__words[2];
  memset(&v30, 0, sizeof(v30));
  v12 = v25;
  v13 = v26;
  v25 = 0;
  v26 = 0;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v37[0] = v27;
  v37[1] = v28;
  v38 = v29;
  if (v28)
  {
    v14 = *(v27 + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(v12 + 8 * v14) = v37;
    v27 = 0;
    v28 = 0;
  }

  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v39, L"B");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v40, L"I");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v41, L"L");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v42, L"O");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v43, L"U");
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&v25);
  v15 = *a2;
  v16 = a2[1];
  while (v15 != v16)
  {
    v17 = v15 + 2;
    nl_featurization::bio::TagBucketList::addBIOUL(&v31, (v15 + 2), *v15, v15[1]);
    v15 = v17 + 3;
  }

  nl_featurization::bio::TagBucketList::getBucketLists(&v31, &v23);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v19 = *a3;
  v18 = a3[1];
  v21 = a4;
  LOBYTE(v22) = 0;
  if (v18 != v19)
  {
    v20 = 0x8E38E38E38E38E39 * ((v18 - v19) >> 3);
    if (v20 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::nlv4_types::Token>>(v20);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v21 = &v23;
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&v21);
  nl_featurization::bio::TagBucketList::~TagBucketList(&v31);
}

void sub_2229BA638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a16);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<nl_featurization::nlv4_types::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::allocator<nl_featurization::nlv4_types::Token>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nl_featurization::bio::TagBucketList::~TagBucketList(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this + 1;
  std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::allocator<nl_featurization::nlv4_types::Token>::destroy[abi:ne200100](uint64_t a1)
{
  v3 = (a1 + 48);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::nlv4_types::Token>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t nl_featurization::span_matching::span_processor::SpanProcessor::SpanProcessor(uint64_t a1, uint64_t *a2)
{
  nl_featurization::span_matching::span_processor::SpanProcessor::buildReverseMappingAndPatternTrie(a2, a1);
  return a1;
}

{
  nl_featurization::span_matching::span_processor::SpanProcessor::buildReverseMappingAndPatternTrie(a2, a1);
  return a1;
}

uint64_t nl_featurization::span_matching::span_processor::SpanProcessor::buildReverseMappingAndPatternTrie@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  memset(v25, 0, sizeof(v25));
  v26 = 1065353216;
  LOBYTE(v22) = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      for (i = *(v3 + 40); i; i = *i)
      {
        normalize((i + 2), 0, &__p);
        u16strCaseFold(&__p, v7, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (!nl_featurization::span_matching::span_processor::validatePatternSubstring(&v19, v3))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          toString((i + 2), &v17);
          v15 = std::string::insert(&v17, 0, "Encountered invalid substring: ");
          v16 = *&v15->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          std::logic_error::logic_error(exception, &__p);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
        }

        v8 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v8 = v20;
        }

        if (v5 <= v8)
        {
          v5 = v8;
        }

        nl_featurization::pattern_trie::PatternTrie::insert(&v22, &v19);
        __p.__r_.__value_.__r.__words[0] = &v19;
        v9 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(v25, &v19);
        v10 = v9;
        v11 = *(v9 + 6);
        if (v11 >= *(v9 + 7))
        {
          v12 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>((v9 + 20), v3);
        }

        else
        {
          std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>((v9 + 20), v3);
          v12 = v11 + 24;
        }

        *(v10 + 6) = v12;
        if (v21 < 0)
        {
          operator delete(v19);
        }
      }

      v3 += 64;
    }

    while (v3 != v4);
  }

  std::unordered_map<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>::unordered_map(a2, v25);
  *(a2 + 40) = v22;
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::unordered_map(a2 + 48, v23);
  *(a2 + 88) = v5;
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](v23);
  return std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v25);
}

void sub_2229BABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v34);
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](v35 + 8);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&a34);
  _Unwind_Resume(a1);
}

BOOL nl_featurization::span_matching::span_processor::validatePatternSubstring(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_25;
    }

    v3 = *a1;
  }

  else if (!*(a1 + 23))
  {
LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    toString(a2, &v18);
    v16 = std::string::insert(&v18, 0, "Encountered empty normalized matching substring for label: ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v19);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  v5 = 0;
  while (1)
  {
    v6 = v5 + 1;
    v7 = *(v3 + v5);
    if ((v7 & 0xFC00) == 0xD800 && v6 != v4)
    {
      v9 = *(v3 + v6);
      v10 = (v9 & 0xFC00) == 56320;
      v11 = v9 + (v7 << 10) - 56613888;
      v6 = v10 ? v5 + 2 : v5 + 1;
      if (v10)
      {
        v7 = v11;
      }
    }

    if (v5)
    {
      v5 = v6;
      if (v6 < v4)
      {
        continue;
      }
    }

    v12 = u_isspace(v7);
    v13 = v12 || v6 >= v4;
    v5 = v6;
    if (v13)
    {
      break;
    }
  }

  return v12 == 0;
}

void sub_2229BADE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  v4 = (a2 + 16);
LABEL_2:
  v4 = *v4;
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = vcnt_s8(v6);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        v8 = *(v4 + 8);
        if (*&v6 <= v5)
        {
          v8 = v5 % *(a1 + 8);
        }
      }

      else
      {
        v8 = (v6.i32[0] - 1) & v5;
      }

      v9 = *(*a1 + 8 * v8);
      if (v9)
      {
        for (i = *v9; i; i = *i)
        {
          v11 = i[1];
          if (v11 == v5)
          {
            if (*(i + 8) == v5)
            {
              goto LABEL_2;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v11 >= *&v6)
              {
                v11 %= *&v6;
              }
            }

            else
            {
              v11 &= *&v6 - 1;
            }

            if (v11 != v8)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return a1;
}

uint64_t std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100]((v1 + 4));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t nl_featurization::span_matching::span_processor::SpanProcessor::matchSpans@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  nl_featurization::span_matching::span_processor::SpanProcessor::findAndAddSpans(a1, a2, v27);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptions(v6, v27, a3, &v24, v7);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v24;
  for (i = v25; v8 != i; v8 += 56)
  {
    v29 = vmovn_s64(*(v8 + 16));
    if (*(v8 + 55) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *(v8 + 32), *(v8 + 40));
    }

    else
    {
      __p = *(v8 + 32);
    }

    v10 = a4[1];
    v11 = a4[2];
    if (v10 >= v11)
    {
      v12 = (v10 - *a4) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v11 - *a4;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      v34 = a4;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(v15);
      }

      v16 = 32 * v12;
      v31 = 0;
      v32 = v16;
      *(&v33 + 1) = 0;
      *v16 = v29;
      *(v16 + 8) = __p;
      memset(&__p, 0, sizeof(__p));
      *&v33 = 32 * v12 + 32;
      v17 = a4[1];
      v18 = 32 * v12 + *a4 - v17;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(a4, *a4, v17, v16 + *a4 - v17);
      v19 = *a4;
      *a4 = v18;
      v20 = a4[2];
      v23 = v33;
      *(a4 + 1) = v33;
      *&v33 = v19;
      *(&v33 + 1) = v20;
      v31 = v19;
      v32 = v19;
      std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(&v31);
      v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a4[1] = v23;
      if (v21 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v10 = v29;
      *(v10 + 8) = __p;
      a4[1] = v10 + 32;
    }
  }

  v31 = &v24;
  std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:ne200100](&v31);
  return std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::~__hash_table(v27);
}

void sub_2229BB43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  *(v27 - 112) = &a12;
  std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:ne200100]((v27 - 112));
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void nl_featurization::span_matching::span_processor::SpanProcessor::findAndAddSpans(uint64_t a1, void *a2, void *a3)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<std::basic_string<char16_t>>::reserve(&v50, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v5 = *a2;
  v6 = a2[1];
  v47 = a2;
  if (*a2 != v6)
  {
    do
    {
      normalize(v5 + 16, 0, &__p);
      u16strCaseFold(&__p, v7, &v53);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v51;
      if (v51 >= v52)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v52 - v50) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((v52 - v50) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v52 - v50) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v56 = &v50;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v12);
        }

        v13 = 8 * ((v51 - v50) >> 3);
        v14 = *&v53.__r_.__value_.__l.__data_;
        *(v13 + 16) = *(&v53.__r_.__value_.__l + 2);
        *v13 = v14;
        memset(&v53, 0, sizeof(v53));
        v15 = 24 * v10 + 24;
        v16 = (24 * v10 - (v51 - v50));
        memcpy((v13 - (v51 - v50)), v50, v51 - v50);
        v17 = v50;
        v18 = v52;
        v50 = v16;
        v51 = v15;
        v52 = 0;
        __p.__r_.__value_.__r.__words[2] = v17;
        v55 = v18;
        __p.__r_.__value_.__r.__words[0] = v17;
        __p.__r_.__value_.__l.__size_ = v17;
        std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
        v51 = v15;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v9 = *&v53.__r_.__value_.__l.__data_;
        v51[2] = *(&v53.__r_.__value_.__l + 2);
        *v8 = v9;
        v51 = v8 + 3;
      }

      v5 += 48;
    }

    while (v5 != v6);
  }

  status = U_ZERO_ERROR;
  regexp = uregex_openC("^(\\b\\w+\\b)(\\S+)$", 0, 0, &status);
  v48[0] = regexp;
  v48[1] = MEMORY[0x277D829A0];
  v19 = v47;
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v38 = u_errorName(status);
    v39 = strlen(v38);
    std::string::__init(&v53, v38, v39);
    v40 = std::string::insert(&v53, 0, "Failed to initialise the regex expression for the subtokens: ");
    v41 = *&v40->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v20 = v50;
  v21 = v51;
  if (v51 != v50)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = *v19 + 48 * v25;
      if ((*(v27 + 40) & 1) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *v27;
        __p.__r_.__value_.__r.__words[2] = v24;
        v55 = v24 + 1;
        nl_featurization::span_matching::span_processor::SpanProcessor::addSpansFromSubTokens(a1, &v20[24 * v25], &__p, v48, a3);
        v45 = v24 + 1;
        memset(&v53, 0, sizeof(v53));
        std::basic_string<char16_t>::reserve(&v53, *(a1 + 88));
        v20 = v50;
        v21 = v51;
        v43 = v23;
        v44 = v22;
        v28 = v26;
        if (v25 < 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3))
        {
          do
          {
            v29 = &v20[v22];
            v30 = v29[23];
            if (v30 >= 0)
            {
              v31 = v29;
            }

            else
            {
              v31 = *v29;
            }

            if (v30 >= 0)
            {
              v32 = v29[23];
            }

            else
            {
              v32 = *(v29 + 1);
            }

            std::basic_string<char16_t>::append(&v53, v31, v32);
            if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v53.__r_.__value_.__l.__size_;
            }

            v34 = *(a1 + 88);
            if (*(*v47 + v23 + 40))
            {
              v35 = v24;
            }

            else
            {
              v35 = v24 + 1;
            }

            if ((*(*v47 + v23 + 40) & 1) == 0 && nl_featurization::pattern_trie::PatternTrie::search((a1 + 40), &v53))
            {
              __p.__r_.__value_.__l.__size_ = *(*v47 + v23 + 8);
              v55 = v24 + 1;
              nl_featurization::span_matching::span_processor::SpanProcessor::appendMatchedSpan(a1, &v53, &__p, a3);
            }

            v20 = v50;
            v21 = v51;
            v36 = v28++ >= 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
            v23 += 48;
            v22 += 24;
            v36 = v36 || size >= v34;
            v24 = v35;
          }

          while (!v36);
        }

        v19 = v47;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
          v20 = v50;
          v21 = v51;
        }

        v22 = v44;
        v24 = v45;
        v23 = v43;
      }

      ++v25;
      ++v26;
      v23 += 48;
      v22 += 24;
    }

    while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
  }

  v48[0] = 0;
  if (regexp)
  {
    uregex_close(regexp);
  }

  __p.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2229BB90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, URegularExpression *regexp, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    v36 = regexp;
    if ((v33 & 1) == 0)
    {
LABEL_8:
      a16 = 0;
      if (v36)
      {
        uregex_close(v36);
      }

      a16 = &a19;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a16);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v36 = regexp;
    if (!v33)
    {
      goto LABEL_8;
    }
  }

  __cxa_free_exception(v34);
  v36 = regexp;
  goto LABEL_8;
}

void nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptions(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, __n128 a5)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*a3 == 1)
    {
      nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(a5, a1, i + 1, i + 5, a4);
    }

    else
    {
      v8 = *(i + 5);
      v9 = *(i + 6);
      if (v8 != v9)
      {
        v10 = *(a4 + 8);
        do
        {
          v11 = i + 1;
          if (v10 >= *(a4 + 16))
          {
            a1 = std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__emplace_back_slow_path<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(a4, v8, v11);
            v10 = a1;
          }

          else
          {
            std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__construct_one_at_end[abi:ne200100]<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(a4, v8, v11);
            v10 += 56;
          }

          *(a4 + 8) = v10;
          v8 += 2;
        }

        while (v8 != v9);
      }
    }
  }
}

void std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 7;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(__n128 a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5)
{
  v7 = a4[1];
  v8 = (v7 - *a4);
  if (v7 != *a4)
  {
    if (!((v8 >> 5) >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>(v8 >> 5);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v9 = 126 - 2 * __clz(v8 >> 5);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,false>(0, v8, v10, 1, a1);
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);
  if (v12 >= v11)
  {
    v15 = 0x6DB6DB6DB6DB6DB7 * ((v12 - *a5) >> 3);
    if ((v15 + 1) > 0x492492492492492)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *a5) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x249249249249249)
    {
      v18 = 0x492492492492492;
    }

    else
    {
      v18 = v17;
    }

    v37 = a5;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>>(v18);
    }

    v20 = 56 * v15;
    v33 = 0;
    v34 = v20;
    v21 = 0;
    v35 = 56 * v15;
    v36 = 0;
    v22 = MEMORY[0x10];
    *v20 = MEMORY[0];
    *(v20 + 16) = v22;
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((v20 + 32), *a3, *(a3 + 1));
      v20 = v34;
      v24 = v35;
      v21 = v36;
    }

    else
    {
      v23 = *a3;
      *(56 * v15 + 0x30) = *(a3 + 2);
      *(56 * v15 + 0x20) = v23;
      v24 = 56 * v15;
    }

    v19 = v24 + 56;
    v25 = *(a5 + 8) - *a5;
    v26 = v20 - v25;
    memcpy((v20 - v25), *a5, v25);
    v27 = *a5;
    *a5 = v26;
    *(a5 + 8) = v19;
    v28 = *(a5 + 16);
    *(a5 + 16) = v21;
    v35 = v27;
    v36 = v28;
    v33 = v27;
    v34 = v27;
    std::__split_buffer<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::~__split_buffer(&v33);
  }

  else
  {
    v13 = MEMORY[0x10];
    *v12 = MEMORY[0];
    *(v12 + 16) = v13;
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((v12 + 32), *a3, *(a3 + 1));
    }

    else
    {
      v14 = *a3;
      *(v12 + 48) = *(a3 + 2);
      *(v12 + 32) = v14;
    }

    v19 = v12 + 56;
    *(a5 + 8) = v12 + 56;
  }

  *(a5 + 8) = v19;
  if (v8)
  {
    for (i = 0; i != v8; i += 32)
    {
      if (*(i + 8) > MEMORY[8])
      {
        v30 = *(a5 + 8);
        if (v30 >= *(a5 + 16))
        {
          v31 = std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__emplace_back_slow_path<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(a5, i, a3);
        }

        else
        {
          std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__construct_one_at_end[abi:ne200100]<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(a5, i, a3);
          v31 = v30 + 56;
        }

        *(a5 + 8) = v31;
        v32 = *(i + 16);
        MEMORY[0] = *i;
        MEMORY[0x10] = v32;
      }
    }
  }

  operator delete(0);
}

void sub_2229BBE6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::~__split_buffer(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__construct_one_at_end[abi:ne200100]<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 16) = v5;
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((v4 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(v4 + 48) = *(a3 + 2);
    *(v4 + 32) = v6;
  }

  *(a1 + 8) = v4 + 56;
}

uint64_t std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__emplace_back_slow_path<nl_featurization::span_matching::span_processor::SpanProcessor::Indices const&,std::basic_string<char16_t> const&>(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v4;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>>(v6);
  }

  v7 = 56 * v3;
  v18 = 0;
  v19 = v7;
  v8 = 0;
  v20 = v7;
  v21 = 0;
  v9 = a2[1];
  *v7 = *a2;
  *(v7 + 16) = v9;
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((v7 + 32), *a3, *(a3 + 1));
    v7 = v19;
    v11 = v20;
    v8 = v21;
  }

  else
  {
    v10 = *a3;
    *(v7 + 48) = *(a3 + 2);
    *(v7 + 32) = v10;
    v11 = v7;
  }

  v12 = v11 + 56;
  v13 = *(a1 + 8) - *a1;
  v14 = v7 - v13;
  memcpy((v7 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v8;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::~__split_buffer(&v18);
  return v12;
}

void sub_2229BC058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
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

void std::__introsort<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v178 = a2[-2].n128_u64[0];
        v179 = v178 == *v12;
        v180 = v178 < *v12;
        if (v179)
        {
          v180 = a2[-2].n128_u64[1] > *(v12 + 8);
        }

        if (!v180)
        {
          return;
        }

LABEL_187:
        v290 = *v12;
        v322 = *(v12 + 16);
        v188 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v188;
        v189 = v290;
        v190 = v322;
LABEL_188:
        *v9 = v189;
        a2[-1] = v190;
        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,0>(v12, (v12 + 32), (v12 + 64), a2 - 2, a5);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a5);
      v158 = a2[-2].n128_u64[0];
      v159 = *(v12 + 96);
      v179 = v158 == v159;
      v160 = v158 < v159;
      if (v179)
      {
        v160 = a2[-2].n128_u64[1] > *(v12 + 104);
      }

      if (v160)
      {
        v161 = *(v12 + 96);
        v320 = *(v12 + 112);
        v162 = a2[-1];
        *(v12 + 96) = *v9;
        *(v12 + 112) = v162;
        *v9 = v161;
        a2[-1] = v320;
        v163 = *(v12 + 96);
        v164 = *(v12 + 64);
        v179 = v163 == v164;
        v165 = v163 < v164;
        if (v179)
        {
          v165 = *(v12 + 104) > *(v12 + 72);
        }

        if (v165)
        {
          v167 = *(v12 + 64);
          v166 = *(v12 + 80);
          v168 = *(v12 + 112);
          *(v12 + 64) = *(v12 + 96);
          *(v12 + 80) = v168;
          *(v12 + 96) = v167;
          *(v12 + 112) = v166;
          v169 = *(v12 + 64);
          v170 = *(v12 + 32);
          v179 = v169 == v170;
          v171 = v169 < v170;
          if (v179)
          {
            v171 = *(v12 + 72) > *(v12 + 40);
          }

          if (v171)
          {
            v173 = *(v12 + 32);
            v172 = *(v12 + 48);
            v174 = *(v12 + 80);
            *(v12 + 32) = *(v12 + 64);
            *(v12 + 48) = v174;
            *(v12 + 64) = v173;
            *(v12 + 80) = v172;
            v175 = *(v12 + 32);
            v179 = v175 == *v12;
            v176 = v175 < *v12;
            if (v179)
            {
              v176 = *(v12 + 40) > *(v12 + 8);
            }

            if (v176)
            {
              v289 = *v12;
              v321 = *(v12 + 16);
              v177 = *(v12 + 48);
              *v12 = *(v12 + 32);
              *(v12 + 16) = v177;
              *(v12 + 32) = v289;
              *(v12 + 48) = v321;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v191 = (v12 + 32);
      v193 = v12 == a2 || v191 == a2;
      if (a4)
      {
        if (!v193)
        {
          v194 = 0;
          v195 = v12;
          do
          {
            v196 = v191;
            v197 = *(v195 + 32);
            v198 = *(v195 + 40);
            v199 = v197 < *v195;
            if (v197 == *v195)
            {
              v199 = v198 > *(v195 + 8);
            }

            if (v199)
            {
              v291 = *(v195 + 48);
              v200 = v194;
              while (1)
              {
                v201 = v12 + v200;
                v202 = *(v12 + v200 + 16);
                *(v201 + 32) = *(v12 + v200);
                *(v201 + 48) = v202;
                if (!v200)
                {
                  break;
                }

                v203 = *(v201 - 32);
                v204 = v198 > *(v201 - 24);
                v179 = v197 == v203;
                v205 = v197 < v203;
                if (!v179)
                {
                  v204 = v205;
                }

                v200 -= 32;
                if (!v204)
                {
                  v206 = v12 + v200 + 32;
                  goto LABEL_211;
                }
              }

              v206 = v12;
LABEL_211:
              *v206 = v197;
              *(v206 + 8) = v198;
              *(v206 + 16) = v291;
            }

            v191 = v196 + 2;
            v194 += 32;
            v195 = v196;
          }

          while (&v196[2] != a2);
        }
      }

      else if (!v193)
      {
        do
        {
          v253 = v191;
          v254 = *(a1 + 32);
          v255 = *(a1 + 40);
          v256 = v254 < *a1;
          if (v254 == *a1)
          {
            v256 = v255 > *(a1 + 8);
          }

          if (v256)
          {
            v295 = *(a1 + 48);
            v257 = v253;
            do
            {
              v258 = *(v257 - 16);
              *v257 = *(v257 - 32);
              *(v257 + 16) = v258;
              v259 = *(v257 - 64);
              v260 = *(v257 - 56);
              v257 -= 32;
              v261 = v255 > v260;
              v179 = v254 == v259;
              v262 = v254 < v259;
              if (v179)
              {
                v262 = v261;
              }
            }

            while (v262);
            *v257 = v254;
            *(v257 + 8) = v255;
            *(v257 + 16) = v295;
          }

          v191 = (v253 + 32);
          a1 = v253;
        }

        while ((v253 + 32) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v207 = (v13 - 2) >> 1;
        v208 = v207;
        do
        {
          v209 = v208;
          if (v207 >= v208)
          {
            v210 = (2 * v208) | 1;
            v211 = v12 + 32 * v210;
            if (2 * v209 + 2 >= v13)
            {
              v213 = *v211;
            }

            else
            {
              v212 = *(v211 + 32);
              v213 = *v211;
              v214 = *(v211 + 8) > *(v211 + 40);
              if (*v211 != v212)
              {
                v214 = *v211 < v212;
              }

              if (v214)
              {
                v213 = *(v211 + 32);
                v211 += 32;
                v210 = 2 * v209 + 2;
              }
            }

            v215 = v12 + 32 * v209;
            v216 = *v215;
            v217 = *(v215 + 8);
            v179 = v213 == *v215;
            v218 = v213 < *v215;
            if (v179)
            {
              v218 = *(v211 + 8) > v217;
            }

            if (!v218)
            {
              v292 = *(v215 + 16);
              do
              {
                v219 = v215;
                v215 = v211;
                v220 = *(v211 + 16);
                *v219 = *v211;
                v219[1] = v220;
                if (v207 < v210)
                {
                  break;
                }

                v221 = (2 * v210) | 1;
                v211 = v12 + 32 * v221;
                v210 = 2 * v210 + 2;
                if (v210 >= v13)
                {
                  v222 = *v211;
                  v210 = v221;
                }

                else
                {
                  v222 = *(v211 + 32);
                  v223 = *(v211 + 8) > *(v211 + 40);
                  if (*v211 != v222)
                  {
                    v223 = *v211 < v222;
                  }

                  if (v223)
                  {
                    v211 += 32;
                  }

                  else
                  {
                    v222 = *v211;
                  }

                  if (!v223)
                  {
                    v210 = v221;
                  }
                }

                v224 = *(v211 + 8) > v217;
                v179 = v222 == v216;
                v225 = v222 < v216;
                if (!v179)
                {
                  v224 = v225;
                }
              }

              while (!v224);
              *v215 = v216;
              *(v215 + 8) = v217;
              *(v215 + 16) = v292;
            }
          }

          v208 = v209 - 1;
        }

        while (v209);
        do
        {
          v226 = 0;
          v293 = *v12;
          v323 = *(v12 + 16);
          v227 = v12;
          do
          {
            v228 = &v227[2 * v226];
            v229 = v228 + 2;
            v230 = (2 * v226) | 1;
            v226 = 2 * v226 + 2;
            if (v226 >= v13)
            {
              v226 = v230;
            }

            else
            {
              v232 = v228[4].n128_u64[0];
              v231 = v228 + 4;
              v233 = v231[-2].n128_u64[0];
              v234 = v233 < v232;
              if (v233 == v232)
              {
                v234 = v231[-2].n128_u64[1] > v231->n128_u64[1];
              }

              if (v234)
              {
                v229 = v231;
              }

              else
              {
                v226 = v230;
              }
            }

            v235 = v229[1];
            *v227 = *v229;
            v227[1] = v235;
            v227 = v229;
          }

          while (v226 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v229 == a2)
          {
            *v229 = v293;
            v229[1] = v323;
          }

          else
          {
            v236 = a2[1];
            *v229 = *a2;
            v229[1] = v236;
            *a2 = v293;
            a2[1] = v323;
            v237 = (&v229[2] - v12) >> 5;
            v238 = v237 < 2;
            v239 = v237 - 2;
            if (!v238)
            {
              v240 = v239 >> 1;
              v241 = v12 + 32 * v240;
              v242 = v229->n128_u64[0];
              v243 = v229->n128_u64[1];
              v244 = *v241 < v229->n128_u64[0];
              if (*v241 == v229->n128_u64[0])
              {
                v244 = *(v241 + 8) > v243;
              }

              if (v244)
              {
                v270 = v229[1];
                do
                {
                  v245 = v229;
                  v229 = v241;
                  v246 = *(v241 + 16);
                  *v245 = *v241;
                  v245[1] = v246;
                  if (!v240)
                  {
                    break;
                  }

                  v240 = (v240 - 1) >> 1;
                  v241 = v12 + 32 * v240;
                  v247 = *v241 < v242;
                  if (*v241 == v242)
                  {
                    v247 = *(v241 + 8) > v243;
                  }
                }

                while (v247);
                v229->n128_u64[0] = v242;
                v229->n128_u64[1] = v243;
                v229[1] = v270;
              }
            }
          }

          v238 = v13-- <= 2;
        }

        while (!v238);
      }

      return;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = a2[-2].n128_u64[0];
    v16 = a2[-2].n128_u64[1];
    if (v13 >= 0x81)
    {
      v17 = *v14;
      v18 = *(v14 + 8);
      v19 = *v14 < *v12;
      if (*v14 == *v12)
      {
        v19 = v18 > *(v12 + 8);
      }

      v20 = v16 > v18;
      v179 = v15 == v17;
      v21 = v15 < v17;
      if (v179)
      {
        v21 = v20;
      }

      if (v19)
      {
        if (v21)
        {
          v271 = *v12;
          v297 = *(v12 + 16);
          v22 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v22;
          goto LABEL_40;
        }

        v277 = *v12;
        v303 = *(v12 + 16);
        v35 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v35;
        *v14 = v277;
        *(v14 + 16) = v303;
        v36 = a2[-2].n128_u64[0];
        v179 = v36 == *v14;
        v37 = v36 < *v14;
        if (v179)
        {
          v37 = a2[-2].n128_u64[1] > *(v14 + 8);
        }

        if (v37)
        {
          v271 = *v14;
          v297 = *(v14 + 16);
          v38 = a2[-1];
          *v14 = *v9;
          *(v14 + 16) = v38;
LABEL_40:
          *v9 = v271;
          a2[-1] = v297;
        }
      }

      else if (v21)
      {
        v273 = *v14;
        v299 = *(v14 + 16);
        v29 = a2[-1];
        *v14 = *v9;
        *(v14 + 16) = v29;
        *v9 = v273;
        a2[-1] = v299;
        v30 = *v14 < *v12;
        if (*v14 == *v12)
        {
          v30 = *(v14 + 8) > *(v12 + 8);
        }

        if (v30)
        {
          v274 = *v12;
          v300 = *(v12 + 16);
          v31 = *(v14 + 16);
          *v12 = *v14;
          *(v12 + 16) = v31;
          *v14 = v274;
          *(v14 + 16) = v300;
        }
      }

      v39 = (v12 + 32);
      v40 = *(v12 + 32);
      v42 = *(v14 - 32);
      v43 = *(v14 - 24);
      v41 = (v14 - 32);
      v44 = v43 > *(v12 + 40);
      v179 = v42 == v40;
      v45 = v42 < v40;
      if (!v179)
      {
        v44 = v45;
      }

      v46 = a2[-4].n128_u64[0];
      v47 = a2[-4].n128_u64[1] > v43;
      v179 = v46 == v42;
      v48 = v46 < v42;
      if (v179)
      {
        v48 = v47;
      }

      if (v44)
      {
        if (v48)
        {
          v49 = *v39;
          v50 = *(v12 + 48);
          v51 = a2[-3];
          *v39 = *v10;
          *(v12 + 48) = v51;
          goto LABEL_62;
        }

        v61 = *v39;
        v307 = *(v12 + 48);
        v62 = *(v14 - 16);
        *v39 = *v41;
        *(v12 + 48) = v62;
        *v41 = v61;
        *(v14 - 16) = v307;
        v63 = a2[-4].n128_u64[0];
        v179 = v63 == v41->n128_u64[0];
        v64 = v63 < v41->n128_u64[0];
        if (v179)
        {
          v64 = a2[-4].n128_u64[1] > *(v14 - 24);
        }

        if (v64)
        {
          v280 = *v41;
          v308 = *(v14 - 16);
          v65 = a2[-3];
          *v41 = *v10;
          *(v14 - 16) = v65;
          v49 = v280;
          v50 = v308;
LABEL_62:
          *v10 = v49;
          a2[-3] = v50;
        }
      }

      else if (v48)
      {
        v278 = *v41;
        v304 = *(v14 - 16);
        v52 = a2[-3];
        *v41 = *v10;
        *(v14 - 16) = v52;
        *v10 = v278;
        a2[-3] = v304;
        v53 = *(v12 + 32);
        v54 = v41->n128_u64[0] < v53;
        if (v41->n128_u64[0] == v53)
        {
          v54 = *(v14 - 24) > *(v12 + 40);
        }

        if (v54)
        {
          v55 = *v39;
          v305 = *(v12 + 48);
          v56 = *(v14 - 16);
          *v39 = *v41;
          *(v12 + 48) = v56;
          *v41 = v55;
          *(v14 - 16) = v305;
        }
      }

      v66 = (v12 + 64);
      v67 = *(v12 + 64);
      v69 = *(v14 + 32);
      v70 = *(v14 + 40);
      v68 = (v14 + 32);
      v71 = v70 > *(v12 + 72);
      v179 = v69 == v67;
      v72 = v69 < v67;
      if (!v179)
      {
        v71 = v72;
      }

      v73 = a2[-6].n128_u64[0];
      v74 = a2[-6].n128_u64[1] > v70;
      v179 = v73 == v69;
      v75 = v73 < v69;
      if (v179)
      {
        v75 = v74;
      }

      if (v71)
      {
        if (v75)
        {
          v76 = *v66;
          v77 = *(v12 + 80);
          v78 = a2[-5];
          *v66 = *v11;
          *(v12 + 80) = v78;
          goto LABEL_79;
        }

        v84 = *v66;
        v311 = *(v12 + 80);
        v85 = *(v14 + 48);
        *v66 = *v68;
        *(v12 + 80) = v85;
        *v68 = v84;
        *(v14 + 48) = v311;
        v86 = a2[-6].n128_u64[0];
        v179 = v86 == v68->n128_u64[0];
        v87 = v86 < v68->n128_u64[0];
        if (v179)
        {
          v87 = a2[-6].n128_u64[1] > *(v14 + 40);
        }

        if (v87)
        {
          v282 = *v68;
          v312 = *(v14 + 48);
          v88 = a2[-5];
          *v68 = *v11;
          *(v14 + 48) = v88;
          v76 = v282;
          v77 = v312;
LABEL_79:
          *v11 = v76;
          a2[-5] = v77;
        }
      }

      else if (v75)
      {
        v281 = *v68;
        v309 = *(v14 + 48);
        v79 = a2[-5];
        *v68 = *v11;
        *(v14 + 48) = v79;
        *v11 = v281;
        a2[-5] = v309;
        v80 = *(v12 + 64);
        v81 = v68->n128_u64[0] < v80;
        if (v68->n128_u64[0] == v80)
        {
          v81 = *(v14 + 40) > *(v12 + 72);
        }

        if (v81)
        {
          v82 = *v66;
          v310 = *(v12 + 80);
          v83 = *(v14 + 48);
          *v66 = *v68;
          *(v12 + 80) = v83;
          *v68 = v82;
          *(v14 + 48) = v310;
        }
      }

      v89 = *v14;
      v90 = *(v14 + 8);
      v91 = *v14 < v41->n128_u64[0];
      if (*v14 == v41->n128_u64[0])
      {
        v91 = v90 > *(v14 - 24);
      }

      v92 = *(v14 + 40) > v90;
      v179 = v68->n128_u64[0] == v89;
      v93 = v68->n128_u64[0] < v89;
      if (v179)
      {
        v93 = v92;
      }

      if (v91)
      {
        if (v93)
        {
          v283 = *v41;
          v313 = *(v14 - 16);
          v94 = *(v14 + 48);
          *v41 = *v68;
          *(v14 - 16) = v94;
          goto LABEL_96;
        }

        v286 = *v41;
        v316 = *(v14 - 16);
        v98 = *(v14 + 16);
        *v41 = *v14;
        *(v14 - 16) = v98;
        *v14 = v286;
        *(v14 + 16) = v316;
        v99 = v68->n128_u64[0] < *v14;
        if (v68->n128_u64[0] == *v14)
        {
          v99 = *(v14 + 40) > *(v14 + 8);
        }

        if (v99)
        {
          v283 = *v14;
          v313 = *(v14 + 16);
          v100 = *(v14 + 48);
          *v14 = *v68;
          *(v14 + 16) = v100;
LABEL_96:
          *v68 = v283;
          *(v14 + 48) = v313;
        }
      }

      else if (v93)
      {
        v284 = *v14;
        v314 = *(v14 + 16);
        v95 = *(v14 + 48);
        *v14 = *v68;
        *(v14 + 16) = v95;
        *v68 = v284;
        *(v14 + 48) = v314;
        v96 = *v14 < v41->n128_u64[0];
        if (*v14 == v41->n128_u64[0])
        {
          v96 = *(v14 + 8) > *(v14 - 24);
        }

        if (v96)
        {
          v285 = *v41;
          v315 = *(v14 - 16);
          v97 = *(v14 + 16);
          *v41 = *v14;
          *(v14 - 16) = v97;
          *v14 = v285;
          *(v14 + 16) = v315;
        }
      }

      v287 = *v12;
      v317 = *(v12 + 16);
      v101 = *(v14 + 16);
      *v12 = *v14;
      *(v12 + 16) = v101;
      *v14 = v287;
      *(v14 + 16) = v317;
      goto LABEL_98;
    }

    v23 = *v12;
    v24 = *(v12 + 8);
    v25 = *v12 < *v14;
    if (*v12 == *v14)
    {
      v25 = v24 > *(v14 + 8);
    }

    v26 = v16 > v24;
    v179 = v15 == v23;
    v27 = v15 < v23;
    if (v179)
    {
      v27 = v26;
    }

    if (v25)
    {
      if (v27)
      {
        v272 = *v14;
        v298 = *(v14 + 16);
        v28 = a2[-1];
        *v14 = *v9;
        *(v14 + 16) = v28;
LABEL_57:
        *v9 = v272;
        a2[-1] = v298;
        goto LABEL_98;
      }

      v279 = *v14;
      v306 = *(v14 + 16);
      v57 = *(v12 + 16);
      *v14 = *v12;
      *(v14 + 16) = v57;
      *v12 = v279;
      *(v12 + 16) = v306;
      v58 = a2[-2].n128_u64[0];
      v179 = v58 == *v12;
      v59 = v58 < *v12;
      if (v179)
      {
        v59 = a2[-2].n128_u64[1] > *(v12 + 8);
      }

      if (v59)
      {
        v272 = *v12;
        v298 = *(v12 + 16);
        v60 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v60;
        goto LABEL_57;
      }
    }

    else if (v27)
    {
      v275 = *v12;
      v301 = *(v12 + 16);
      v32 = a2[-1];
      *v12 = *v9;
      *(v12 + 16) = v32;
      *v9 = v275;
      a2[-1] = v301;
      v33 = *v12 < *v14;
      if (*v12 == *v14)
      {
        v33 = *(v12 + 8) > *(v14 + 8);
      }

      if (v33)
      {
        v276 = *v14;
        v302 = *(v14 + 16);
        v34 = *(v12 + 16);
        *v14 = *v12;
        *(v14 + 16) = v34;
        *v12 = v276;
        *(v12 + 16) = v302;
      }
    }

LABEL_98:
    --a3;
    v102 = *v12;
    if (a4)
    {
      v103 = *(v12 + 8);
      goto LABEL_103;
    }

    v104 = *(v12 - 32);
    v103 = *(v12 + 8);
    v179 = v104 == v102;
    v105 = v104 < v102;
    if (v179)
    {
      v105 = *(v12 - 24) > v103;
    }

    if (v105)
    {
LABEL_103:
      v268 = *(v12 + 16);
      v106 = v12;
      do
      {
        v107 = v106;
        v108 = *(v106 + 32);
        v106 += 32;
        v109 = v108 < v102;
        if (v108 == v102)
        {
          v109 = *(v107 + 40) > v103;
        }
      }

      while (v109);
      v110 = a2;
      if (v107 == v12)
      {
        v110 = a2;
        do
        {
          if (v106 >= v110)
          {
            break;
          }

          v115 = v110[-2].n128_u64[0];
          v116 = v110[-2].n128_u64[1];
          v110 -= 2;
          v117 = v116 > v103;
          v179 = v115 == v102;
          v118 = v115 < v102;
          if (v179)
          {
            v118 = v117;
          }
        }

        while (!v118);
      }

      else
      {
        do
        {
          v111 = v110[-2].n128_u64[0];
          v112 = v110[-2].n128_u64[1];
          v110 -= 2;
          v113 = v112 > v103;
          v179 = v111 == v102;
          v114 = v111 < v102;
          if (v179)
          {
            v114 = v113;
          }
        }

        while (!v114);
      }

      v12 = v106;
      if (v106 < v110)
      {
        v119 = v110;
        do
        {
          v120 = *v12;
          v318 = *(v12 + 16);
          v121 = v119[1];
          *v12 = *v119;
          *(v12 + 16) = v121;
          *v119 = v120;
          v119[1] = v318;
          do
          {
            v122 = *(v12 + 32);
            v123 = *(v12 + 40);
            v12 += 32;
            v124 = v123 > v103;
            v179 = v122 == v102;
            v125 = v122 < v102;
            if (v179)
            {
              v125 = v124;
            }
          }

          while (v125);
          do
          {
            v126 = v119[-2].n128_u64[0];
            v127 = v119[-2].n128_u64[1];
            v119 -= 2;
            v128 = v127 > v103;
            v179 = v126 == v102;
            v129 = v126 < v102;
            if (v179)
            {
              v129 = v128;
            }
          }

          while (!v129);
        }

        while (v12 < v119);
      }

      if (v12 - 32 != a1)
      {
        v130 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v130;
      }

      *(v12 - 32) = v102;
      *(v12 - 24) = v103;
      *(v12 - 16) = v268;
      if (v106 < v110)
      {
        goto LABEL_132;
      }

      v131 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*>(a1, v12 - 32, v268);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*>(v12, a2, v132))
      {
        a2 = (v12 - 32);
        if (!v131)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v131)
      {
LABEL_132:
        std::__introsort<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,false>(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v269 = *(v12 + 16);
      v133 = a2[-2].n128_u64[0];
      v179 = v102 == v133;
      v134 = v102 < v133;
      if (v179)
      {
        v134 = v103 > a2[-2].n128_u64[1];
      }

      if (v134)
      {
        do
        {
          v135 = *(v12 + 32);
          v136 = *(v12 + 40);
          v12 += 32;
          v137 = v103 > v136;
          v179 = v102 == v135;
          v138 = v102 < v135;
          if (v179)
          {
            v138 = v137;
          }
        }

        while (!v138);
      }

      else
      {
        v139 = (v12 + 32);
        do
        {
          v12 = v139;
          if (v139 >= a2)
          {
            break;
          }

          v140 = v139->n128_u64[0];
          v141 = v103 > *(v12 + 8);
          v179 = v102 == v140;
          v142 = v102 < v140;
          if (!v179)
          {
            v141 = v142;
          }

          v139 = (v12 + 32);
        }

        while (!v141);
      }

      v143 = a2;
      if (v12 < a2)
      {
        v143 = a2;
        do
        {
          v144 = v143[-2].n128_u64[0];
          v145 = v143[-2].n128_u64[1];
          v143 -= 2;
          v146 = v103 > v145;
          v179 = v102 == v144;
          v147 = v102 < v144;
          if (v179)
          {
            v147 = v146;
          }
        }

        while (v147);
      }

      while (v12 < v143)
      {
        v288 = *v12;
        v319 = *(v12 + 16);
        v148 = v143[1];
        *v12 = *v143;
        *(v12 + 16) = v148;
        *v143 = v288;
        v143[1] = v319;
        do
        {
          v149 = *(v12 + 32);
          v150 = *(v12 + 40);
          v12 += 32;
          v151 = v103 > v150;
          v179 = v102 == v149;
          v152 = v102 < v149;
          if (v179)
          {
            v152 = v151;
          }
        }

        while (!v152);
        do
        {
          v153 = v143[-2].n128_u64[0];
          v154 = v143[-2].n128_u64[1];
          v143 -= 2;
          v155 = v103 > v154;
          v179 = v102 == v153;
          v156 = v102 < v153;
          if (v179)
          {
            v156 = v155;
          }
        }

        while (v156);
      }

      if (v12 - 32 != a1)
      {
        v157 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v157;
      }

      a4 = 0;
      *(v12 - 32) = v102;
      *(v12 - 24) = v103;
      a5 = v269;
      *(v12 - 16) = v269;
    }
  }

  v181 = (v12 + 32);
  v182 = *(v12 + 32);
  v183 = *(v12 + 40);
  v184 = v182 < *v12;
  if (v182 == *v12)
  {
    v184 = v183 > *(v12 + 8);
  }

  v185 = a2[-2].n128_u64[0];
  v186 = a2[-2].n128_u64[1] > v183;
  v179 = v185 == v182;
  v187 = v185 < v182;
  if (v179)
  {
    v187 = v186;
  }

  if (v184)
  {
    if (v187)
    {
      goto LABEL_187;
    }

    v296 = *v12;
    v326 = *(v12 + 16);
    v263 = *(v12 + 48);
    *v12 = *v181;
    *(v12 + 16) = v263;
    *v181 = v296;
    *(v12 + 48) = v326;
    v264 = a2[-2].n128_u64[0];
    v265 = *(v12 + 32);
    v179 = v264 == v265;
    v266 = v264 < v265;
    if (v179)
    {
      v266 = a2[-2].n128_u64[1] > *(v12 + 40);
    }

    if (v266)
    {
      v189 = *v181;
      v190 = *(v12 + 48);
      v267 = a2[-1];
      *v181 = *v9;
      *(v12 + 48) = v267;
      goto LABEL_188;
    }
  }

  else if (v187)
  {
    v248 = *v181;
    v324 = *(v12 + 48);
    v249 = a2[-1];
    *v181 = *v9;
    *(v12 + 48) = v249;
    *v9 = v248;
    a2[-1] = v324;
    v250 = *(v12 + 32);
    v179 = v250 == *v12;
    v251 = v250 < *v12;
    if (v179)
    {
      v251 = *(v12 + 40) > *(v12 + 8);
    }

    if (v251)
    {
      v294 = *v12;
      v325 = *(v12 + 16);
      v252 = *(v12 + 48);
      *v12 = *v181;
      *(v12 + 16) = v252;
      *v181 = v294;
      *(v12 + 48) = v325;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u64[0];
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0])
  {
    v7 = v6 > a1->n128_u64[1];
  }

  v8 = a3->n128_u64[1] > v6;
  v9 = a3->n128_u64[0] == v5;
  v10 = a3->n128_u64[0] < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      v11 = *a1;
      result = a1[1];
      v12 = a3[1];
      *a1 = *a3;
      a1[1] = v12;
LABEL_17:
      *a3 = v11;
      a3[1] = result;
      goto LABEL_18;
    }

    v18 = *a1;
    result = a1[1];
    v19 = a2[1];
    *a1 = *a2;
    a1[1] = v19;
    *a2 = v18;
    a2[1] = result;
    v20 = a3->n128_u64[0] < a2->n128_u64[0];
    if (a3->n128_u64[0] == a2->n128_u64[0])
    {
      v20 = a3->n128_u64[1] > a2->n128_u64[1];
    }

    if (v20)
    {
      v11 = *a2;
      result = a2[1];
      v21 = a3[1];
      *a2 = *a3;
      a2[1] = v21;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    v13 = *a2;
    result = a2[1];
    v14 = a3[1];
    *a2 = *a3;
    a2[1] = v14;
    *a3 = v13;
    a3[1] = result;
    v15 = a2->n128_u64[0] < a1->n128_u64[0];
    if (a2->n128_u64[0] == a1->n128_u64[0])
    {
      v15 = a2->n128_u64[1] > a1->n128_u64[1];
    }

    if (v15)
    {
      v16 = *a1;
      result = a1[1];
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      *a2 = v16;
      a2[1] = result;
    }
  }

LABEL_18:
  v22 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0])
  {
    v22 = a4->n128_u64[1] > a3->n128_u64[1];
  }

  if (v22)
  {
    v23 = *a3;
    result = a3[1];
    v24 = a4[1];
    *a3 = *a4;
    a3[1] = v24;
    *a4 = v23;
    a4[1] = result;
    v25 = a3->n128_u64[0] < a2->n128_u64[0];
    if (a3->n128_u64[0] == a2->n128_u64[0])
    {
      v25 = a3->n128_u64[1] > a2->n128_u64[1];
    }

    if (v25)
    {
      v26 = *a2;
      result = a2[1];
      v27 = a3[1];
      *a2 = *a3;
      a2[1] = v27;
      *a3 = v26;
      a3[1] = result;
      v28 = a2->n128_u64[0] < a1->n128_u64[0];
      if (a2->n128_u64[0] == a1->n128_u64[0])
      {
        v28 = a2->n128_u64[1] > a1->n128_u64[1];
      }

      if (v28)
      {
        v29 = *a1;
        result = a1[1];
        v30 = a2[1];
        *a1 = *a2;
        a1[1] = v30;
        *a2 = v29;
        a2[1] = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (a2 - a1) >> 5;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v39 = (a1 + 32);
        v40 = *(a1 + 32);
        v41 = *(a1 + 40);
        v42 = v40 < *a1;
        if (v40 == *a1)
        {
          v42 = v41 > *(a1 + 8);
        }

        v44 = *(a2 - 32);
        v43 = (a2 - 32);
        v45 = *(a2 - 24) > v41;
        v8 = v44 == v40;
        v46 = v44 < v40;
        if (v8)
        {
          v46 = v45;
        }

        if (!v42)
        {
          if (v46)
          {
            v65 = *v39;
            v64 = *(a1 + 48);
            v66 = *(a2 - 16);
            *v39 = *v43;
            *(a1 + 48) = v66;
            *v43 = v65;
            *(a2 - 16) = v64;
            v67 = *(a1 + 32);
            v8 = v67 == *a1;
            v68 = v67 < *a1;
            if (v8)
            {
              v68 = *(a1 + 40) > *(a1 + 8);
            }

            if (v68)
            {
              v70 = *a1;
              v69 = *(a1 + 16);
              v71 = *(a1 + 48);
              *a1 = *v39;
              *(a1 + 16) = v71;
              *v39 = v70;
              *(a1 + 48) = v69;
            }
          }

          return 1;
        }

        if (v46)
        {
          v48 = *a1;
          v47 = *(a1 + 16);
          v49 = *(a2 - 16);
          *a1 = *v43;
          *(a1 + 16) = v49;
        }

        else
        {
          v82 = *a1;
          v81 = *(a1 + 16);
          v83 = *(a1 + 48);
          *a1 = *v39;
          *(a1 + 16) = v83;
          *v39 = v82;
          *(a1 + 48) = v81;
          v84 = *(a2 - 32);
          v85 = *(a1 + 32);
          v8 = v84 == v85;
          v86 = v84 < v85;
          if (v8)
          {
            v86 = *(a2 - 24) > *(a1 + 40);
          }

          if (!v86)
          {
            return 1;
          }

          v48 = *v39;
          v47 = *(a1 + 48);
          v87 = *(a2 - 16);
          *v39 = *v43;
          *(a1 + 48) = v87;
        }

        *v43 = v48;
        *(a2 - 16) = v47;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptionsUsingOnlyLongestTokenChain(std::basic_string<char16_t> const&,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices> const&,std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>> &)::$_0 &,nl_featurization::span_matching::span_processor::SpanProcessor::Indices*,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a3);
        v13 = *(a2 - 32);
        v14 = *(a2 - 24);
        v15 = (a2 - 32);
        v16 = *(a1 + 96);
        v17 = v14 > *(a1 + 104);
        v8 = v13 == v16;
        v18 = v13 < v16;
        if (v8)
        {
          v18 = v17;
        }

        if (v18)
        {
          v20 = *(a1 + 96);
          v19 = *(a1 + 112);
          v21 = v15[1];
          *(a1 + 96) = *v15;
          *(a1 + 112) = v21;
          *v15 = v20;
          v15[1] = v19;
          v22 = *(a1 + 96);
          v23 = *(a1 + 64);
          v8 = v22 == v23;
          v24 = v22 < v23;
          if (v8)
          {
            v24 = *(a1 + 104) > *(a1 + 72);
          }

          if (v24)
          {
            v26 = *(a1 + 64);
            v25 = *(a1 + 80);
            v27 = *(a1 + 112);
            *(a1 + 64) = *(a1 + 96);
            *(a1 + 80) = v27;
            *(a1 + 96) = v26;
            *(a1 + 112) = v25;
            v28 = *(a1 + 64);
            v29 = *(a1 + 32);
            v8 = v28 == v29;
            v30 = v28 < v29;
            if (v8)
            {
              v30 = *(a1 + 72) > *(a1 + 40);
            }

            if (v30)
            {
              v32 = *(a1 + 32);
              v31 = *(a1 + 48);
              v33 = *(a1 + 80);
              *(a1 + 32) = *(a1 + 64);
              *(a1 + 48) = v33;
              *(a1 + 64) = v32;
              *(a1 + 80) = v31;
              v34 = *(a1 + 32);
              v8 = v34 == *a1;
              v35 = v34 < *a1;
              if (v8)
              {
                v35 = *(a1 + 40) > *(a1 + 8);
              }

              if (v35)
              {
                v37 = *a1;
                v36 = *(a1 + 16);
                v38 = *(a1 + 48);
                *a1 = *(a1 + 32);
                *(a1 + 16) = v38;
                *(a1 + 32) = v37;
                *(a1 + 48) = v36;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 32);
    v7 = (a2 - 32);
    v8 = v6 == *a1;
    v9 = v6 < *a1;
    if (v8)
    {
      v9 = *(a2 - 24) > *(a1 + 8);
    }

    if (v9)
    {
      v11 = *a1;
      v10 = *(a1 + 16);
      v12 = *(a2 - 16);
      *a1 = *v7;
      *(a1 + 16) = v12;
      *v7 = v11;
      *(a2 - 16) = v10;
    }

    return 1;
  }

LABEL_31:
  v50 = (a1 + 64);
  v51 = *(a1 + 64);
  v52 = (a1 + 32);
  v53 = *(a1 + 32);
  v54 = *(a1 + 40);
  v55 = *a1;
  v56 = *(a1 + 8);
  v57 = v53 < *a1;
  if (v53 == *a1)
  {
    v57 = v54 > v56;
  }

  v58 = *(a1 + 72);
  v59 = v58 > v54;
  v8 = v51 == v53;
  v60 = v51 < v53;
  if (v8)
  {
    v60 = v59;
  }

  if (v57)
  {
    if (v60)
    {
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 80);
      *a1 = *v50;
      *(a1 + 16) = v63;
LABEL_58:
      *v50 = v62;
      *(a1 + 80) = v61;
      goto LABEL_59;
    }

    v89 = *a1;
    v88 = *(a1 + 16);
    v90 = *(a1 + 48);
    *a1 = *v52;
    *(a1 + 16) = v90;
    *v52 = v89;
    *(a1 + 48) = v88;
    v91 = *(a1 + 32);
    v8 = v51 == v91;
    v92 = v51 < v91;
    if (v8)
    {
      v92 = v58 > *(a1 + 40);
    }

    if (v92)
    {
      v62 = *v52;
      v61 = *(a1 + 48);
      v93 = *(a1 + 80);
      *v52 = *v50;
      *(a1 + 48) = v93;
      goto LABEL_58;
    }
  }

  else if (v60)
  {
    v73 = *v52;
    v72 = *(a1 + 48);
    v74 = *(a1 + 80);
    *v52 = *v50;
    *(a1 + 48) = v74;
    *v50 = v73;
    *(a1 + 80) = v72;
    v75 = *(a1 + 32);
    v76 = *(a1 + 40) > v56;
    v8 = v75 == v55;
    v77 = v75 < v55;
    if (v8)
    {
      v77 = v76;
    }

    if (v77)
    {
      v79 = *a1;
      v78 = *(a1 + 16);
      v80 = *(a1 + 48);
      *a1 = *v52;
      *(a1 + 16) = v80;
      *v52 = v79;
      *(a1 + 48) = v78;
    }
  }

LABEL_59:
  v94 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v95 = 0;
  v96 = 0;
  while (1)
  {
    v97 = *v94;
    v98 = *(v94 + 8);
    v99 = v50->n128_u64[0];
    v100 = v98 > v50->n128_u64[1];
    v8 = *v94 == v99;
    v101 = *v94 < v99;
    if (!v8)
    {
      v100 = v101;
    }

    if (v100)
    {
      v110 = *(v94 + 16);
      v102 = v95;
      while (1)
      {
        v103 = a1 + v102;
        v104 = *(a1 + v102 + 80);
        *(v103 + 96) = *(a1 + v102 + 64);
        *(v103 + 112) = v104;
        if (v102 == -64)
        {
          break;
        }

        v105 = *(v103 + 32);
        v106 = v98 > *(v103 + 40);
        v8 = v97 == v105;
        v107 = v97 < v105;
        if (!v8)
        {
          v106 = v107;
        }

        v102 -= 32;
        if (!v106)
        {
          v108 = a1 + v102 + 96;
          goto LABEL_71;
        }
      }

      v108 = a1;
LABEL_71:
      *v108 = v97;
      *(v108 + 8) = v98;
      *(v108 + 16) = v110;
      if (++v96 == 8)
      {
        return v94 + 32 == a2;
      }
    }

    v50 = v94;
    v95 += 32;
    v94 += 32;
    if (v94 == a2)
    {
      return 1;
    }
  }
}

void std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t nl_featurization::span_matching::span_processor::SpanProcessor::addSpansFromSubTokens(uint64_t a1, uint64_t a2, __int128 *a3, URegularExpression **a4, void *a5)
{
  v8 = a2;
  status = U_ZERO_ERROR;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  uregex_setText(*a4, a2, -1, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    toString(v8, &v26);
    v19 = std::string::insert(&v26, 0, "Failed to attach the regex expression to the token text: ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&v25 = *(&v19->__r_.__value_.__l + 2);
    v24 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v24);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = uregex_find(*a4, 0, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    toString(v8, &v26);
    v22 = std::string::insert(&v26, 0, "Failed to find match in text: ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&v25 = *(&v22->__r_.__value_.__l + 2);
    v24 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v21, &v24);
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (result)
  {
    memset(&v26, 0, sizeof(v26));
    if (*(v8 + 23) >= 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = *(v8 + 8);
    }

    std::basic_string<char16_t>::resize(&v26, v12, v11);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v26;
    }

    else
    {
      v13 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v26.__r_.__value_.__r.__words[1];
    }

    v15 = uregex_group(*a4, 1, v13, v14, &status);
    if (v15 >= 1 && (std::basic_string<char16_t>::resize(&v26, v15, v16), nl_featurization::pattern_trie::PatternTrie::search((a1 + 40), &v26)))
    {
      v17 = a3[1];
      v24 = *a3;
      v25 = v17;
      nl_featurization::span_matching::span_processor::SpanProcessor::appendMatchedSpan(a1, &v26, &v24, a5);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      return 1;
    }

    else
    {
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      return 0;
    }
  }

  return result;
}

void sub_2229BD8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char16_t>::reserve(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  LODWORD(v3) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = this->__r_.__value_.__r.__words[2];
    v4 = (v5 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v3 = HIBYTE(v5);
  }

  else
  {
    v4 = 10;
  }

  if (v4 < __requested_capacity)
  {
    v6 = __requested_capacity | 3;
    if ((__requested_capacity | 3) == 0xB)
    {
      v6 = 12;
    }

    if (__requested_capacity <= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x80) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v10 = this->__r_.__value_.__r.__words[2];
      v9 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v3 = HIBYTE(v10);
    }

    else
    {
      LOBYTE(size) = v3;
      v9 = 10;
    }

    v11 = v7 < 0xB;
    if (v7 >= 0xB)
    {
      if (v9 < v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
    }

    v12 = this->__r_.__value_.__r.__words[0];
    if ((v3 & 0x80) != 0)
    {
      v3 = this->__r_.__value_.__l.__size_;
      v11 = 1;
    }

    else
    {
      v3 = v3;
    }

    v13 = __CFADD__(v3, 1);
    v14 = v3 + 1;
    if (!v13)
    {
      memmove(this, v12, 2 * v14);
    }

    if (v11)
    {
      operator delete(v12);
    }

    *(&this->__r_.__value_.__s + 23) = size & 0x7F;
  }
}

void sub_2229BDAE4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void nl_featurization::span_matching::span_processor::SpanProcessor::appendMatchedSpan(void *a1, unsigned __int16 *a2, __int128 *a3, void *a4)
{
  if (!std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a1, a2))
  {
    __assert_rtn("appendMatchedSpan", "span_processor.cpp", 172, "mInternals.reverseMapping.find(str) != mInternals.reverseMapping.end() && Unable to find token chain in reverse mapping after a match was found in the pattern  trie");
  }

  v8 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a1, a2);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&v44, *(v8 + 5), *(v8 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 6) - *(v8 + 5)) >> 3));
  v9 = v44;
  v10 = v45;
  v42 = *a3;
  v43 = a3[1];
  while (v9 != v10)
  {
    v11 = std::__string_hash<char16_t>::operator()[abi:ne200100](v9);
    v12 = a4[1];
    if (v12)
    {
      v13 = v11;
      v14 = vcnt_s8(v12);
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v14.u32[0];
      if (v14.u32[0] > 1uLL)
      {
        v16 = v11;
        if (v11 >= *&v12)
        {
          v16 = v11 % *&v12;
        }
      }

      else
      {
        v16 = (*&v12 - 1) & v11;
      }

      v17 = *(*a4 + 8 * v16);
      if (v17)
      {
        for (i = *v17; i; i = *i)
        {
          v19 = *(i + 1);
          if (v19 == v13)
          {
            if (std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](i + 8, v9))
            {
              *&v47 = v9;
              v27 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(a4, v9);
              v28 = v27;
              v29 = *(v27 + 6);
              v30 = *(v27 + 7);
              if (v29 >= v30)
              {
                v32 = *(v27 + 5);
                v33 = (v29 - v32) >> 5;
                v34 = v33 + 1;
                if ((v33 + 1) >> 59)
                {
                  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
                }

                v35 = v30 - v32;
                if (v35 >> 4 > v34)
                {
                  v34 = v35 >> 4;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v36 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>(v36);
                }

                v37 = (32 * v33);
                *v37 = v42;
                v37[1] = v43;
                v31 = 32 * v33 + 32;
                v38 = *(v28 + 5);
                v39 = *(v28 + 6) - v38;
                v40 = 32 * v33 - v39;
                memcpy(v37 - v39, v38, v39);
                v41 = *(v28 + 5);
                *(v28 + 5) = v40;
                *(v28 + 6) = v31;
                *(v28 + 7) = 0;
                if (v41)
                {
                  operator delete(v41);
                }
              }

              else
              {
                *v29 = v42;
                v29[1] = v43;
                v31 = (v29 + 2);
              }

              *(v28 + 6) = v31;
              goto LABEL_28;
            }
          }

          else
          {
            if (v15 > 1)
            {
              if (v19 >= *&v12)
              {
                v19 %= *&v12;
              }
            }

            else
            {
              v19 &= *&v12 - 1;
            }

            if (v19 != v16)
            {
              break;
            }
          }
        }
      }
    }

    v47 = v42;
    v48 = v43;
    v49 = v9;
    v20 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(a4, v9);
    v22 = v20 + 20;
    v21 = *(v20 + 5);
    v23 = *(v20 + 7);
    if (v23 == v21)
    {
      if (v23)
      {
        *(v20 + 6) = v21;
        operator delete(v21);
        *v22 = 0;
        *(v20 + 6) = 0;
        *(v20 + 7) = 0;
      }

      std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>::__vallocate[abi:ne200100](v22, 1uLL);
    }

    v24 = *(v20 + 6);
    v25 = v48;
    if (v24 == v21)
    {
      *v24 = v47;
      *(v24 + 1) = v25;
      v26 = &v24[v24 - v21 + 32];
    }

    else
    {
      *v21 = v47;
      *(v21 + 1) = v25;
      v26 = (v21 + 32);
    }

    *(v20 + 6) = v26;
LABEL_28:
    v9 += 12;
  }

  *&v47 = &v44;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v47);
}

void sub_2229BDDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 88) = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100]((v14 - 88));
  _Unwind_Resume(a1);
}

unsigned __int16 *std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
{
  v4 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
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
    operator new();
  }

  while (1)
  {
    v12 = *(v11 + 1);
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

  if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v11 + 8, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2229BE28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t nl_featurization::span_matching::span_processor::SpanProcessor::matchCharacterBasedSpans@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  nl_featurization::span_matching::span_processor::SpanProcessor::findAndAddSpans(a1, a2, v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  nl_featurization::span_matching::span_processor::SpanProcessor::selectSpansMatchingOptions(v6, v28, a3, &v25, v7);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v25;
  v9 = v26;
  if (v25 != v26)
  {
    v10 = 0;
    do
    {
      if (*(v8 + 55) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v30, *(v8 + 4), *(v8 + 5));
      }

      else
      {
        v30 = *(v8 + 2);
      }

      v31 = *v8;
      v11 = a4[2];
      if (v10 >= v11)
      {
        v13 = *a4;
        v14 = v10 - *a4;
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3) + 1;
        if (v15 > 0x666666666666666)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v13) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x333333333333333)
        {
          v17 = 0x666666666666666;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (v17 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = 8 * (v14 >> 3);
        *v18 = v30;
        memset(&v30, 0, sizeof(v30));
        *(v18 + 24) = v31;
        v19 = v18 - v14;
        if (v13 != v10)
        {
          v20 = v13;
          v21 = v19;
          do
          {
            v22 = *v20;
            *(v21 + 16) = v20[2];
            *v21 = v22;
            v20[1] = 0;
            v20[2] = 0;
            *v20 = 0;
            *(v21 + 24) = *(v20 + 3);
            v20 += 5;
            v21 += 40;
          }

          while (v20 != v10);
          do
          {
            if (*(v13 + 23) < 0)
            {
              operator delete(*v13);
            }

            v13 += 5;
          }

          while (v13 != v10);
        }

        v10 = v18 + 40;
        v23 = *a4;
        *a4 = v19;
        *(a4 + 1) = (v18 + 40);
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        v12 = *&v30.__r_.__value_.__l.__data_;
        *(v10 + 16) = *(&v30.__r_.__value_.__l + 2);
        *v10 = v12;
        memset(&v30, 0, sizeof(v30));
        *(v10 + 24) = v31;
        v10 += 40;
      }

      a4[1] = v10;
      v8 = (v8 + 56);
    }

    while (v8 != v9);
  }

  v30.__r_.__value_.__r.__words[0] = &v25;
  std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:ne200100](&v30);
  return std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::~__hash_table(v28);
}

void sub_2229BE568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 - 88) = &a10;
  std::vector<std::tuple<nl_featurization::span_matching::span_processor::SpanProcessor::Indices,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:ne200100]((v24 - 88));
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<nl_featurization::span_matching::span_processor::SpanProcessor::Indices>>>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

void std::vector<nl_featurization::MatchedCharacterSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nl_featurization::bio::BioTagPayload::getLabel(nl_featurization::bio::BioTagPayload *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

uint64_t nl_featurization::bio::BioTag::BioTag(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  v5 = *(a3 + 56);
  if (v5 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
    }

    else
    {
      v7 = *a3;
      *(a1 + 24) = *(a3 + 2);
      *(a1 + 8) = v7;
    }

    std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100]((a1 + 32), (a3 + 24));
    *(a1 + 64) = 1;
    LOBYTE(v5) = *(a3 + 56);
  }

  if ((a2 & 0xFFFFFFFE) == 2)
  {
    if ((v5 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Begin/inside BIO tags must have a payload component");
      goto LABEL_12;
    }
  }

  else if (v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Only begin/inside BIO tags can have a payload component");
LABEL_12:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2229BE79C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 64) == 1)
  {
    nl_featurization::bio::BioTagPayload::~BioTagPayload(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<nl_featurization::bio::BioTagPayload>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

std::basic_string<char16_t> *nl_featurization::bio::BioTag::getPayload@<X0>(nl_featurization::bio::BioTag *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if ((*this & 0xFFFFFFFE) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot extract payload from non-begin/inside BIO tag");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(this + 64) & 1) == 0)
  {
    __assert_rtn("getPayload", "bio.cpp", 48, "mPayload.has_value()");
  }

  if (*(this + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }

  return std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](a2 + 1, this + 2);
}

void nl_featurization::bio::parseBioTag(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__dst, L"[PAD]");
  v5 = *(a1 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  v7 = v73;
  if ((v73 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  if (v5 == v7)
  {
    if (!v5)
    {
LABEL_14:
      LOBYTE(v70[0]) = 0;
      v71 = 0;
      nl_featurization::bio::BioTag::BioTag(a2, 0, v70);
      goto LABEL_119;
    }

    v8 = 0;
    v9 = __dst;
    if ((v73 & 0x80u) != 0)
    {
      v9 = __dst[0];
    }

    if (v6 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    while (*(v9 + v8) == v10[v8])
    {
      if (v5 == ++v8)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v6 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v5 == 1)
  {
    if (*v10 == 79)
    {
      LOBYTE(v68[0]) = 0;
      v69 = 0;
      nl_featurization::bio::BioTag::BioTag(a2, 1, v68);
      goto LABEL_119;
    }

LABEL_124:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Well-formed BIO tags must be >=3 characters long, but got: ");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  if (v5 <= 2)
  {
    goto LABEL_124;
  }

  memset(&v67, 0, sizeof(v67));
  std::basic_string<char16_t>::resize(&v67, 2uLL, v4);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v67;
  }

  else
  {
    v11 = v67.__r_.__value_.__r.__words[0];
  }

  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  u_strncpy(v11, v12, 2);
  size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  if (size != 2)
  {
    goto LABEL_123;
  }

  v15 = &v67;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v16 = v15->__r_.__value_.__s.__data_[0], v16 != 73) && v16 != 66 || v15->__r_.__value_.__s.__data_[1] != 95)
  {
LABEL_123:
    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "BIO tag has no prefix");
    v39->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v39, off_2784B6778, MEMORY[0x277D82610]);
  }

  memset(&v66, 0, sizeof(v66));
  v17 = *(a1 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 8);
  }

  std::basic_string<char16_t>::resize(&v66, v17 - 2, v13);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v65, *a1, *(a1 + 8));
  }

  else
  {
    v65 = *a1;
  }

  saveState = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v62, L":");
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v65.__r_.__value_.__s.__data_[2];
  }

  else
  {
    v18 = (v65.__r_.__value_.__r.__words[0] + 4);
  }

  if (v63 >= 0)
  {
    v19 = v62;
  }

  else
  {
    v19 = v62[0];
  }

  v20 = u_strtok_r(v18, v19, &saveState);
  if (v63 >= 0)
  {
    v21 = v62;
  }

  else
  {
    v21 = v62[0];
  }

  v23 = u_strtok_r(0, v21, &saveState);
  memset(&v61, 0, sizeof(v61));
  LOBYTE(v58[0]) = 0;
  v60 = 0;
  if (v23)
  {
    v24 = u_strlen(v20);
    std::basic_string<char16_t>::resize(&v61, v24, v25);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v61;
    }

    else
    {
      v26 = v61.__r_.__value_.__r.__words[0];
    }

    u_strcpy(v26, v20);
    memset(&v57, 0, sizeof(v57));
    v27 = u_strlen(v23);
    std::basic_string<char16_t>::resize(&v57, v27, v28);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v57;
    }

    else
    {
      v29 = v57.__r_.__value_.__r.__words[0];
    }

    u_strcpy(v29, v23);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v54, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
    }

    else
    {
      v54 = v57;
    }

    LOBYTE(v55.__r_.__value_.__l.__data_) = 1;
    std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(v58, &v54);
    if (LOBYTE(v55.__r_.__value_.__l.__data_) == 1 && SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v30 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v65.__r_.__value_.__r.__words[1];
    }

    std::basic_string<char16_t>::resize(&v61, (v30 - 2), v22);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v61;
    }

    else
    {
      v31 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v65.__r_.__value_.__s.__data_[2];
    }

    else
    {
      v32 = (v65.__r_.__value_.__r.__words[0] + 4);
    }

    u_strcpy(v31, v32);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v53, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = v61;
  }

  std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](&v51, v58);
  v54 = v53;
  LOBYTE(v55.__r_.__value_.__l.__data_) = 0;
  v56 = 0;
  v33 = v52;
  if (v52 == 1)
  {
    v55 = v51;
    memset(&v51, 0, sizeof(v51));
    v56 = 1;
  }

  v34 = v67.__r_.__value_.__l.__size_;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  if (v34 != 2)
  {
    goto LABEL_122;
  }

  v35 = &v67;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v67.__r_.__value_.__r.__words[0];
  }

  v36 = v35->__r_.__value_.__s.__data_[0];
  if (v36 == 73)
  {
    if (v35->__r_.__value_.__s.__data_[1] == 95)
    {
      std::optional<nl_featurization::bio::BioTagPayload>::optional[abi:ne200100]<nl_featurization::bio::BioTagPayload const&,0>(&v41, &v54);
      nl_featurization::bio::BioTag::BioTag(a2, 3, &v41);
      if (v45 != 1)
      {
        goto LABEL_101;
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }

      v37 = &v41;
      goto LABEL_100;
    }

LABEL_122:
    v38 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v38, "Unrecognized BIO tag prefix");
    v38->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v38, off_2784B6778, MEMORY[0x277D82610]);
  }

  if (v36 != 66 || v35->__r_.__value_.__s.__data_[1] != 95)
  {
    goto LABEL_122;
  }

  std::optional<nl_featurization::bio::BioTagPayload>::optional[abi:ne200100]<nl_featurization::bio::BioTagPayload const&,0>(&v46, &v54);
  nl_featurization::bio::BioTag::BioTag(a2, 2, &v46);
  if (v50 != 1)
  {
    goto LABEL_101;
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

  v37 = &v46;
LABEL_100:
  operator delete(v37->__r_.__value_.__l.__data_);
LABEL_101:
  if (v33 && SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v60 == 1 && v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

LABEL_119:
  if (v73 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2229BF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (*(v69 - 225) < 0)
  {
    operator delete(*(v69 - 248));
  }

  if (*(v69 - 201) < 0)
  {
    operator delete(*(v69 - 224));
  }

  if (*(v69 - 49) < 0)
  {
    operator delete(*(v69 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(uint64_t a1, __n128 *a2)
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
      a2->n128_u16[0] = 0;
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

std::basic_string<char16_t> *std::optional<nl_featurization::bio::BioTagPayload>::optional[abi:ne200100]<nl_featurization::bio::BioTagPayload const&,0>(std::basic_string<char16_t> *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](this + 1, (a2 + 24));
  LOBYTE(this[2].__r_.__value_.__r.__words[1]) = 1;
  return this;
}

void sub_2229BF288(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nl_featurization::bio::convertToLabelledSpans(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  v7 = *a1;
  v6 = a1[1];
  if (v5 != 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of tokens differs from number of BIO tags");
    goto LABEL_87;
  }

  if (v5 != (a2[1] - *a2) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of tokens differs from number of group IDs");
LABEL_87:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  LOBYTE(v53) = 0;
  v63 = 0;
  if (v6 == v7)
  {
    return;
  }

  v29 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  do
  {
    nl_featurization::bio::parseBioTag(v7 + v9, &v46);
    v13 = v12 - 1;
    v14 = *a3;
    v15 = v46;
    if (v46 != 3)
    {
      if (v63 == 1)
      {
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v43, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
        }

        else
        {
          v43 = v58;
        }

        std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](&v44, &v59);
        *&v35 = v57;
        *(&v35 + 1) = v12 - 1;
        *&v36 = v53;
        *(&v36 + 1) = *(v14 + v10 - 40);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v37, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
        }

        else
        {
          v37 = v43;
        }

        std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](&__p, &v44);
        *(&v39 + 1) = v62;
        LOBYTE(v40) = BYTE8(v62);
        v16 = a4;
        v17 = a4[1];
        if (v17 >= v16[2])
        {
          v18 = std::vector<nl_featurization::postprocessing::LabelledSpan>::__emplace_back_slow_path<nl_featurization::postprocessing::LabelledSpan>(v16, &v35);
        }

        else
        {
          std::vector<nl_featurization::postprocessing::LabelledSpan>::__construct_one_at_end[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan>(v16, &v35);
          v18 = v17 + 104;
        }

        a4 = v29;
        v29[1] = v18;
        if (v39 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        std::optional<nl_featurization::bio::CurrentSpan>::operator=[abi:ne200100](&v53);
        if (v45 == 1 && SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        v15 = v46;
      }

      if (v15 == 2)
      {
        v35 = *(v14 + v10);
        v19 = v14 + v10;
        if (*(v14 + v10 + 39) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v36, *(v19 + 16), *(v19 + 24));
        }

        else
        {
          v20 = *(v19 + 16);
          v37.__r_.__value_.__r.__words[0] = *(v19 + 32);
          v36 = v20;
        }

        LOBYTE(v37.__r_.__value_.__r.__words[1]) = *(v14 + v10 + 40);
        v37.__r_.__value_.__r.__words[2] = v12 - 1;
        nl_featurization::bio::BioTag::getPayload(&v46, &__p);
        if (v13 >= (a2[1] - *a2) >> 4)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v21 = (*a2 + v11);
        v22 = *v21;
        BYTE8(v42) = *(v21 + 8);
        *&v42 = v22;
        v53 = v35;
        if (v63 == 1)
        {
          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54);
          }

          v54 = v36;
          v55 = v37.__r_.__value_.__r.__words[0];
          HIBYTE(v37.__r_.__value_.__r.__words[0]) = 0;
          LOWORD(v36) = 0;
          v56 = v37.__r_.__value_.__r.__words[1];
          v57 = v37.__r_.__value_.__r.__words[2];
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          v58 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(&v59, &v39);
          *&v62 = v42;
          BYTE8(v62) = BYTE8(v42);
          if ((v41 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v54 = v36;
          v55 = v37.__r_.__value_.__r.__words[0];
          v37.__r_.__value_.__r.__words[0] = 0;
          v36 = 0uLL;
          v56 = v37.__r_.__value_.__r.__words[1];
          v57 = v37.__r_.__value_.__r.__words[2];
          v58 = __p;
          memset(&__p, 0, sizeof(__p));
          LOBYTE(v59) = 0;
          v61 = 0;
          if (v41 == 1)
          {
            v59 = v39;
            v60 = v40;
            v40 = 0;
            v39 = 0uLL;
            v61 = 1;
          }

          v62 = v42;
          v63 = 1;
          if ((v41 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }

LABEL_44:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[0]) < 0)
        {
          operator delete(v36);
        }
      }
    }

    if (v13 == -1 - 0x5555555555555555 * ((a1[1] - *a1) >> 3) && (v46 & 0xFFFFFFFE) == 2 && v63 == 1)
    {
      *&v35 = v57;
      *(&v35 + 1) = v12;
      *&v36 = v53;
      *(&v36 + 1) = *(v14 + v10 + 8);
      nl_featurization::bio::BioTag::getPayload(&v46, &v43);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v37, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v43;
      }

      nl_featurization::bio::BioTag::getPayload(&v46, &v31);
      std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](&__p, &v32);
      *(&v39 + 1) = v62;
      LOBYTE(v40) = BYTE8(v62);
      v23 = a4;
      v24 = a4[1];
      if (v24 >= v23[2])
      {
        v25 = std::vector<nl_featurization::postprocessing::LabelledSpan>::__emplace_back_slow_path<nl_featurization::postprocessing::LabelledSpan>(v23, &v35);
      }

      else
      {
        std::vector<nl_featurization::postprocessing::LabelledSpan>::__construct_one_at_end[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan>(v23, &v35);
        v25 = v24 + 104;
      }

      a4 = v29;
      v29[1] = v25;
      if (v39 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v34 == 1 && v33 < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v45 == 1 && SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      std::optional<nl_featurization::bio::CurrentSpan>::operator=[abi:ne200100](&v53);
    }

    if (v52 == 1)
    {
      if (v51 == 1 && v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }
    }

    v7 = *a1;
    v11 += 16;
    v10 += 48;
    v9 += 24;
  }

  while (v12++ < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (v63)
  {
    __assert_rtn("convertToLabelledSpans", "bio.cpp", 181, "!currentSpan.has_value()");
  }
}

uint64_t std::optional<nl_featurization::bio::CurrentSpan>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t std::optional<nl_featurization::bio::CurrentSpan>::~optional(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

void nl_featurization::bio::buildBeginBioTagsFromEntityLabels(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::basic_string<char16_t>>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v4 = a1[1];
  for (i = a2; v5 != v4; v5 += 24)
  {
    *(&v11.__r_.__value_.__s + 23) = 2;
    LODWORD(v11.__r_.__value_.__l.__data_) = 6225986;
    v11.__r_.__value_.__s.__data_[2] = 0;
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::basic_string<char16_t>::append(&v11, v7, v8);
    __p = v11;
    std::back_insert_iterator<std::vector<std::basic_string<char16_t>>>::operator=[abi:ne200100](&i, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t *std::back_insert_iterator<std::vector<std::basic_string<char16_t>>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v3) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v19[4] = v3;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(v3 + 8) - *v3;
    v15 = v12 - v14;
    memcpy((v12 - v14), *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v19[0] = v16;
    v19[1] = v16;
    *(v3 + 8) = v7;
    v19[2] = v16;
    v17 = *(v3 + 16);
    *(v3 + 16) = 0;
    v19[3] = v17;
    std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(v19);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(v3 + 8) = v7;
  return a1;
}

void nl_featurization::bio::buildAllBioTagsFromEntityLabels(uint64_t *a1@<X0>, std::basic_string<char16_t>::size_type *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = (0x5555555555555556 * ((a1[1] - *a1) >> 3)) | 1;
  std::vector<std::basic_string<char16_t>>::reserve(a2, v4);
  v6 = a2[1];
  v5 = a2[2];
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v29 = a2;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v11);
    }

    v12 = 24 * v8;
    *(v12 + 23) = 1;
    *v12 = 79;
    v7 = 24 * v8 + 24;
    v13 = a2[1] - *a2;
    v14 = 24 * v8 - v13;
    memcpy((v12 - v13), *a2, v13);
    v15 = *a2;
    *a2 = v14;
    a2[1] = v7;
    v16 = a2[2];
    a2[2] = 0;
    v27.__r_.__value_.__r.__words[2] = v15;
    v28 = v16;
    v27.__r_.__value_.__r.__words[0] = v15;
    v27.__r_.__value_.__l.__size_ = v15;
    std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v27);
  }

  else
  {
    *(v6 + 23) = 1;
    *v6 = 79;
    v7 = v6 + 24;
  }

  a2[1] = v7;
  v17 = *a1;
  v18 = a1[1];
  v26[0] = a2;
  if (v17 != v18)
  {
    do
    {
      *(&v27.__r_.__value_.__s + 23) = 2;
      LODWORD(v27.__r_.__value_.__l.__data_) = 6225986;
      v27.__r_.__value_.__s.__data_[2] = 0;
      v19 = *(v17 + 23);
      if (v19 >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = *v17;
      }

      if (v19 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = *(v17 + 8);
      }

      std::basic_string<char16_t>::append(&v27, v20, v21);
      __p = v27;
      std::back_insert_iterator<std::vector<std::basic_string<char16_t>>>::operator=[abi:ne200100](v26, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v17 += 24;
    }

    while (v17 != v18);
    v17 = *a1;
    v18 = a1[1];
  }

  for (v26[0] = a2; v17 != v18; v17 += 24)
  {
    *(&v27.__r_.__value_.__s + 23) = 2;
    LODWORD(v27.__r_.__value_.__l.__data_) = 6225993;
    v27.__r_.__value_.__s.__data_[2] = 0;
    v22 = *(v17 + 23);
    if (v22 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v22 >= 0)
    {
      v24 = *(v17 + 23);
    }

    else
    {
      v24 = *(v17 + 8);
    }

    std::basic_string<char16_t>::append(&v27, v23, v24);
    __p = v27;
    std::back_insert_iterator<std::vector<std::basic_string<char16_t>>>::operator=[abi:ne200100](v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) != v4)
  {
    __assert_rtn("buildAllBioTagsFromEntityLabels", "bio.cpp", 211, "bioTags.size() == expectedFinalSize");
  }
}

void sub_2229BFFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void nl_featurization::FeaturizerImpl::featurize(nl_featurization::FeaturizerImpl *this, const nl_featurization::FeaturizerInput *a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<nl_featurization::Token>::__init_with_size[abi:ne200100]<nl_featurization::Token*,nl_featurization::Token*>(&v33, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4));
  v32 = 0;
  nl_featurization::span_matching::span_processor::SpanProcessor::matchSpans(this + 168, &v33, &v32, &v30);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v4 = ((*(a2 + 4) - *(a2 + 3)) >> 5) + ((v31 - v30) >> 5);
  if (v4)
  {
    if (!(v4 >> 59))
    {
      v23.__r_.__value_.__r.__words[2] = &v27;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(v4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::vector<nl_featurization::span_matching::MatchedSpan>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>,std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>>(&v27, 0, v30, v31, (v31 - v30) >> 5);
  v21 = this;
  std::vector<nl_featurization::span_matching::MatchedSpan>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>,std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>>(&v27, v28, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 5);
  __p = 0;
  v26 = 0uLL;
  v5 = v27;
  for (i = v28; v5 != i; v5 += 32)
  {
    *&v7 = *v5;
    *(&v7 + 1) = HIDWORD(*v5);
    v22 = v7;
    if (*(v5 + 31) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v23, *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v23 = *(v5 + 8);
    }

    v8 = v26;
    if (v26 >= *(&v26 + 1))
    {
      v9 = __p;
      v10 = v26 - __p;
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - __p) >> 3) + 1;
      if (v11 > 0x666666666666666)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((*(&v26 + 1) - __p) >> 3) > v11)
      {
        v11 = 0x999999999999999ALL * ((*(&v26 + 1) - __p) >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(&v26 + 1) - __p) >> 3) >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        if (v12 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 8 * ((v26 - __p) >> 3);
      v14 = *&v23.__r_.__value_.__l.__data_;
      *v13 = v22;
      *(v13 + 16) = v14;
      *(v13 + 32) = *(&v23.__r_.__value_.__l + 2);
      memset(&v23, 0, sizeof(v23));
      v15 = (v13 - v10);
      if (v9 != v8)
      {
        v16 = v9;
        v17 = v15;
        do
        {
          *v17 = *v16;
          v18 = *(v16 + 1);
          v17[4] = v16[4];
          *(v17 + 1) = v18;
          v16[3] = 0;
          v16[4] = 0;
          v16[2] = 0;
          v16 += 5;
          v17 += 5;
        }

        while (v16 != v8);
        do
        {
          if (*(v9 + 39) < 0)
          {
            operator delete(v9[2]);
          }

          v9 += 5;
        }

        while (v9 != v8);
      }

      v19 = __p;
      __p = v15;
      v26 = (v13 + 40);
      if (v19)
      {
        operator delete(v19);
      }

      *&v26 = v13 + 40;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v26 = v22;
      *(v8 + 16) = v23;
      *&v26 = v8 + 40;
    }
  }

  memset(v24, 0, sizeof(v24));
  if (v34 != v33)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4);
    if (v20 <= 0x38E38E38E38E38ELL)
    {
      v23.__r_.__value_.__r.__words[2] = v24;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::nlv4_types::Token>>(v20);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  nl_featurization::span_matching::MatchedSpansFeaturizer::featurize(v21 + 8, &__p, v24);
}

void sub_2229C0860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  __cxa_free_exception(v40);
  v43 = *(v41 - 144);
  if (v43)
  {
    *(v41 - 136) = v43;
    operator delete(v43);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v39);
  *(v41 - 104) = a10;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100]((v41 - 104));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&__p);
  *(v41 - 104) = &a19;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100]((v41 - 104));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a23);
  *(v41 - 104) = &a36;
  std::vector<nl_featurization::nlv4_types::Token>::__destroy_vector::operator()[abi:ne200100]((v41 - 104));
  a36 = &a39;
  std::vector<nl_featurization::nlv4_types::MatchedSpan>::__destroy_vector::operator()[abi:ne200100](&a36);
  a39 = v41 - 224;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&a39);
  *(v41 - 224) = v41 - 200;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100]((v41 - 224));
  *(v41 - 200) = v41 - 168;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100]((v41 - 200));
  _Unwind_Resume(a1);
}

void std::vector<nl_featurization::span_matching::MatchedSpan>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>,std::__wrap_iter<nl_featurization::span_matching::MatchedSpan const*>>(uint64_t *a1, uint64_t a2, void *a3, const std::basic_string<char16_t>::value_type **a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 5;
      if (v16 >= a5)
      {
        std::vector<nl_featurization::span_matching::MatchedSpan>::__move_range(a1, a2, a1[1], a2 + 32 * a5);
        v27 = &v6[4 * a5];
        v28 = v6;
        v29 = v7;
        do
        {
          v30 = *v28;
          v28 += 4;
          *v29 = v30;
          v29 += 4;
          std::basic_string<char16_t>::operator=((v7 + 8), (v6 + 1));
          v7 = v29;
          v6 = v28;
        }

        while (v28 != v27);
      }

      else
      {
        v18 = (a3 + v15);
        v48 = a1[1];
        v49 = v10;
        v43 = a1;
        v44 = &v48;
        v45 = &v49;
        v19 = v10;
        LOBYTE(v46) = 0;
        if ((a3 + v15) != a4)
        {
          v20 = (v18 + 1);
          v19 = v10;
          do
          {
            v21 = v20 - 1;
            *v19 = *(v20 - 1);
            v22 = (v19 + 1);
            if (*(v20 + 23) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(v22, *v20, v20[1]);
              v19 = v49;
            }

            else
            {
              v23 = *v20;
              v19[3] = v20[2];
              *&v22->__r_.__value_.__l.__data_ = v23;
            }

            v19 += 4;
            v49 = v19;
            v20 += 4;
          }

          while (v21 + 4 != a4);
          v16 = (v10 - v7) >> 5;
        }

        LOBYTE(v46) = 1;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>>::~__exception_guard_exceptions[abi:ne200100](&v43);
        a1[1] = v19;
        if (v16 >= 1)
        {
          std::vector<nl_featurization::span_matching::MatchedSpan>::__move_range(a1, v7, v10, v7 + 32 * a5);
          if (v10 != v7)
          {
            v24 = v6;
            v25 = v7;
            do
            {
              v26 = *v24;
              v24 += 4;
              *v25 = v26;
              v25 += 4;
              std::basic_string<char16_t>::operator=((v7 + 8), (v6 + 1));
              v7 = v25;
              v6 = v24;
            }

            while (v24 != v18);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 5);
      if (v12 >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - v11;
      if (v13 >> 4 > v12)
      {
        v12 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v47 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(v14);
      }

      v31 = 0;
      v32 = 32 * ((a2 - v11) >> 5);
      v43 = 0;
      v44 = v32;
      v45 = v32;
      v46 = 0;
      v33 = 32 * a5;
      v34 = v32 + 32 * a5;
      do
      {
        v35 = &v6[v31 / 8];
        *(v32 + v31) = v6[v31 / 8];
        v36 = (v32 + v31 + 8);
        if (SHIBYTE(v6[v31 / 8 + 3]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v36, v35[1], v35[2]);
        }

        else
        {
          v37 = *(v35 + 1);
          *(v32 + v31 + 24) = v35[3];
          *&v36->__r_.__value_.__l.__data_ = v37;
        }

        v31 += 32;
      }

      while (v33 != v31);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(a1, v7, a1[1], v34);
      v38 = *a1;
      v39 = v34 + a1[1] - v7;
      a1[1] = v7;
      v40 = v44 + v38 - v7;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(a1, v38, v7, v40);
      v41 = *a1;
      *a1 = v40;
      a1[1] = v39;
      v42 = a1[2];
      a1[2] = v46;
      v45 = v41;
      v46 = v42;
      v43 = v41;
      v44 = v41;
      std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(&v43);
    }
  }
}

void sub_2229C0C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void nl_featurization::nlv4_types::Token::~Token(void **this)
{
  v2 = this + 6;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nl_featurization::nlv4_types::MatchedSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::nlv4_types::Token>,nl_featurization::nlv4_types::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 39) = *(v6 + 39);
      *(a4 + 24) = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      v6 += 72;
      a4 += 72;
    }

    while (v6 != a3);
    do
    {
      std::allocator<nl_featurization::nlv4_types::Token>::destroy[abi:ne200100](v5);
      v5 += 72;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<nl_featurization::nlv4_types::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator<nl_featurization::nlv4_types::Token>::destroy[abi:ne200100](i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<nl_featurization::span_matching::MatchedSpan>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      result = *(v6 + 8);
      *(v7 + 24) = *(v6 + 24);
      *(v7 + 8) = result;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      v7 += 32;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = v5 + v9;
      *(v4 + v9 - 32) = *(v5 + v9 - 32);
      v12 = v4 + v9 - 24;
      if (*(v4 + v9 - 1) < 0)
      {
        operator delete(*v12);
      }

      v9 -= 32;
      result = *(v11 - 24);
      *(v12 + 16) = *(v11 - 8);
      *v12 = result;
      *(v11 - 1) = 0;
      *(v11 - 24) = 0;
    }

    while (v10 != v9);
  }

  return result;
}

void nl_featurization::FeaturizerImpl::~FeaturizerImpl(nl_featurization::FeaturizerImpl *this)
{
  nl_featurization::FeaturizerImpl::~FeaturizerImpl(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E91D0;
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](this + 216);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(this + 168);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(this + 128);
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(this + 8));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void nl_featurization::buildFeaturizer(nl_featurization *this, const nl_featurization::FeaturizerConfig *a2)
{
  nl_featurization::vocabulary::Vocabulary::Vocabulary(&v14, this + 7);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v7, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v14;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v15;
  }

  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    *(v17 + 16) = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = v19;
  v12[0] = v20;
  v12[1] = v21;
  if (v21)
  {
    *(v20 + 16) = v12;
    v19 = &v20;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v11 = v12;
  }

  if (*(this + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v6, *(this + 1), *(this + 2));
  }

  else
  {
    v6 = *(this + 8);
  }

  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  nl_featurization::span_matching::MatchedSpansFeaturizer::MatchedSpansFeaturizer(&v13, &v7, &v6, v4);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(v12[0]);
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v10[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  nl_featurization::span_matching::span_processor::SpanProcessor::buildReverseMappingAndPatternTrie(this + 4, &v3);
  operator new();
}

void sub_2229C13E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  nl_featurization::vocabulary::Vocabulary::~Vocabulary(v64);
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](v65 + 48);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&STACK[0x210]);
  nl_featurization::span_matching::MatchedSpansFeaturizer::~MatchedSpansFeaturizer((v66 - 240));
  MEMORY[0x223DC4D00](v63, 0x10B3C400C755633);
  std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](&a15);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&a9);
  nl_featurization::span_matching::MatchedSpansFeaturizer::~MatchedSpansFeaturizer(&a43);
  nl_featurization::vocabulary::Vocabulary::~Vocabulary(&a63);
  _Unwind_Resume(a1);
}

void sub_2229C14D0()
{
  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  nl_featurization::vocabulary::Vocabulary::~Vocabulary((v0 - 240));
  JUMPOUT(0x2229C147CLL);
}

void sub_2229C1508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a21);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  nl_featurization::vocabulary::Vocabulary::~Vocabulary(&a34);
  JUMPOUT(0x2229C14B0);
}

void nl_featurization::span_matching::MatchedSpansFeaturizer::~MatchedSpansFeaturizer(nl_featurization::span_matching::MatchedSpansFeaturizer *this)
{
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(this + 120);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(this + 10));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(this + 7));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::basic_string<char16_t> *nl_featurization::vocabulary::Vocabulary::Vocabulary(std::basic_string<char16_t> *this, const nl_featurization::vocabulary::Vocabulary *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  p_size = &this[2].__r_.__value_.__l.__size_;
  this[2].__r_.__value_.__r.__words[0] = &this[2].__r_.__value_.__l.__size_;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v7 = *(a2 + 6);
  if (v7 != (a2 + 56))
  {
    do
    {
      v8 = *p_size;
      v9 = &this[2].__r_.__value_.__s.__data_[4];
      if (this[2].__r_.__value_.__l.__data_ == p_size)
      {
        goto LABEL_14;
      }

      v10 = *p_size;
      v11 = &this[2].__r_.__value_.__s.__data_[4];
      if (v8)
      {
        do
        {
          v9 = v10;
          v10 = *(v10 + 8);
        }

        while (v10);
      }

      else
      {
        do
        {
          v9 = *(v11 + 2);
          v12 = *v9 == v11;
          v11 = v9;
        }

        while (v12);
      }

      if (std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>::operator()[abi:ne200100](v9 + 16, v7 + 16))
      {
LABEL_14:
        if (!v8)
        {
          v29 = &this[2].__r_.__value_.__s.__data_[4];
LABEL_20:
          operator new();
        }

        v29 = v9;
        v13 = v9 + 4;
      }

      else
      {
        v13 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::__find_equal<std::basic_string<char16_t>>(&this[2], &v29, v7 + 16);
      }

      if (!*v13)
      {
        goto LABEL_20;
      }

      v14 = *(v7 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v7 + 2);
          v12 = *v15 == v7;
          v7 = v15;
        }

        while (!v12);
      }

      v7 = v15;
    }

    while (v15 != (a2 + 56));
  }

  this[3].__r_.__value_.__l.__size_ = 0;
  v16 = &this[3].__r_.__value_.__l.__size_;
  this[3].__r_.__value_.__r.__words[0] = &this[3].__r_.__value_.__l.__size_;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v17 = *(a2 + 9);
  if (v17 != (a2 + 80))
  {
    do
    {
      v18 = *v16;
      v19 = &this[3].__r_.__value_.__l.__size_;
      if (this[3].__r_.__value_.__l.__data_ == v16)
      {
        goto LABEL_34;
      }

      v20 = *v16;
      v21 = &this[3].__r_.__value_.__l.__size_;
      if (v18)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v12 = *v19 == v21;
          v21 = v19;
        }

        while (v12);
      }

      v22 = *(v17 + 4);
      if (v19[4] < v22)
      {
LABEL_34:
        if (v18)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = &this[3].__r_.__value_.__l.__size_;
        }
      }

      else
      {
        v23 = &this[3].__r_.__value_.__l.__size_;
        if (v18)
        {
          v23 = &this[3].__r_.__value_.__l.__size_;
          while (1)
          {
            while (1)
            {
              v24 = v18;
              v25 = v18[4];
              if (v22 >= v25)
              {
                break;
              }

              v18 = *v24;
              v23 = v24;
              if (!*v24)
              {
                goto LABEL_38;
              }
            }

            if (v25 >= v22)
            {
              break;
            }

            v23 = v24 + 1;
            v18 = v24[1];
            if (!v18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      if (!*v23)
      {
LABEL_38:
        operator new();
      }

      v26 = *(v17 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v17 + 2);
          v12 = *v27 == v17;
          v17 = v27;
        }

        while (!v12);
      }

      v17 = v27;
    }

    while (v27 != (a2 + 80));
  }

  return this;
}

void sub_2229C18FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>::operator()[abi:ne200100](unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  if (v2 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    if (v5 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v3 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    while (1)
    {
      v9 = *v7;
      v10 = *v8;
      if (v10 != v9)
      {
        break;
      }

      ++v7;
      ++v8;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }

    v11 = v9 >= v10;
  }

  else
  {
LABEL_17:
    v11 = v4 >= v2;
  }

  return !v11;
}

unsigned __int16 *std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::__find_equal<std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
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
        if (!std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>::operator()[abi:ne200100](a3, v4 + 16))
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

      if (!std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>::operator()[abi:ne200100](v7 + 16, a3))
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
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

void convert(std::string *this, uint64_t a2)
{
  v2 = a2;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
    v4 = (a2 + 23);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      LODWORD(v6) = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = 22;
    }

    else
    {
      v7 = LODWORD(this->__r_.__value_.__r.__words[2]) - 1;
    }
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
    v4 = (a2 + 23);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      LODWORD(v6) = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    v7 = 22;
  }

  if (v7 < v6)
  {
    std::string::reserve(this, v6);
    LOBYTE(v5) = *v4;
  }

  v17 = 0;
  *__s = 0;
  if ((v5 & 0x80u) != 0)
  {
    v2 = *v2;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + 1;
      v10 = *(v2 + v8);
      if ((v10 & 0xFC00) == 0xD800 && v9 != v6)
      {
        break;
      }

      if (v10 > 0x7F)
      {
        if (v10 <= 0x7FF)
        {
          __s[0] = (v10 >> 6) | 0xC0;
          v15 = 1;
LABEL_31:
          v12 = v15 + 1;
          __s[v15] = v10 & 0x3F | 0x80;
          goto LABEL_32;
        }

LABEL_29:
        __s[0] = (v10 >> 12) | 0xE0;
        v14 = 1;
LABEL_30:
        v15 = v14 + 1;
        *(__s | v14) = (v10 >> 6) & 0x3F | 0x80;
        goto LABEL_31;
      }

      __s[0] = *(v2 + v8);
      v12 = 1;
LABEL_32:
      std::string::append(this, __s, v12);
      v8 = v9;
      if (v9 >= v6)
      {
        return;
      }
    }

    v13 = *(v2 + v9);
    if ((v13 & 0xFC00) != 0xDC00)
    {
      goto LABEL_29;
    }

    LODWORD(v9) = v8 + 2;
    v10 = v13 + (v10 << 10) - 56613888;
    __s[0] = (v10 >> 18) | 0xF0;
    __s[1] = (v10 >> 12) & 0x3F | 0x80;
    v14 = 2;
    goto LABEL_30;
  }
}

void normalize(uint64_t a1@<X0>, int a2@<W1>, std::basic_string<char16_t> *a3@<X8>)
{
  v31 = U_ZERO_ERROR;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      unorm2_getNFKCInstance();
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_35;
      }

      unorm2_getNFKDInstance();
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        unorm2_getNFDInstance();
        goto LABEL_10;
      }

LABEL_35:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to instantiate a normalizer form the input normalizer choice");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    unorm2_getNFCInstance();
  }

LABEL_10:
  if (*(a1 + 23) >= 0)
  {
    LODWORD(v6) = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (v6 >= 1)
  {
    std::basic_string<char16_t>::resize(a3, v6 & 0x7FFFFFFF, v5);
    if (*(a1 + 23) < 0)
    {
      v7 = *a1;
    }

    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = a3->__r_.__value_.__r.__words[0];
    }

    v9 = unorm2_normalize();
    if (v9 != v6)
    {
      std::basic_string<char16_t>::resize(a3, v9, v10);
    }

    v11 = v31;
    if (v31 == U_BUFFER_OVERFLOW_ERROR)
    {
      v31 = U_ZERO_ERROR;
      if (*(a1 + 23) < 0)
      {
        v12 = *a1;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = a3->__r_.__value_.__r.__words[0];
      }

      unorm2_normalize();
      v11 = v31;
    }

    if (v11 >= 1)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      toString(a1, &v27);
      v15 = std::string::insert(&v27, 0, "Failed to normalize string ");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v28, " - due to error: ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = u_errorName(v31);
      std::string::basic_string[abi:ne200100]<0>(v25, v19);
      if ((v26 & 0x80u) == 0)
      {
        v20 = v25;
      }

      else
      {
        v20 = v25[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v21 = v26;
      }

      else
      {
        v21 = v25[1];
      }

      v22 = std::string::append(&v29, v20, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v14, &v30);
      __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_2229C1FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
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
    if ((v35 & 1) == 0)
    {
LABEL_14:
      if (*(v33 + 23) < 0)
      {
        operator delete(*v33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

void toString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  convert(a2, a1);
}

void sub_2229C2104(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void toU16String(const char *a1@<X0>, std::basic_string<char16_t>::size_type a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::basic_string<char16_t>::reserve(a3, a2);
  LODWORD(v6) = 0;
  v20 = 0;
  *__s = 0;
  while (v6 < v3)
  {
    v7 = v6;
    v8 = v6 + 1;
    v9 = a1[v6];
    v10 = a1[v6];
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    if (v8 == v3)
    {
      goto LABEL_6;
    }

    if (v10 < 0xE0)
    {
      if (v10 < 0xC2)
      {
        goto LABEL_23;
      }

      v15 = v10 & 0x1F;
    }

    else
    {
      if (v10 > 0xEF)
      {
        if (v10 > 0xF4 || (v17 = v10 - 240, v18 = a1[v8], ((byte_2229DAB85[v18 >> 4] >> v17) & 1) == 0))
        {
LABEL_23:
          v12 = -1;
          LOWORD(v10) = -1;
          LODWORD(v6) = v8;
          goto LABEL_24;
        }

        v6 = v6 + 2;
        if (v7 + 2 == v3)
        {
LABEL_6:
          v12 = -1;
          LOWORD(v10) = -1;
          LODWORD(v6) = v3;
          goto LABEL_24;
        }

        v14 = a1[v6] ^ 0x80;
        if (v14 > 0x3F)
        {
          v12 = -1;
          LOWORD(v10) = -1;
          goto LABEL_24;
        }

        LODWORD(v13) = v18 & 0x3F | (v17 << 6);
        LODWORD(v8) = v6;
      }

      else
      {
        v13 = v9 & 0xF;
        if (((a00000000000000[v13] >> (a1[v8] >> 5)) & 1) == 0)
        {
          goto LABEL_23;
        }

        v14 = a1[v8] & 0x3F;
      }

      LODWORD(v8) = v8 + 1;
      if (v8 == v3)
      {
        goto LABEL_6;
      }

      v15 = v14 | (v13 << 6);
    }

    v16 = a1[v8] ^ 0x80;
    if (v16 >= 0x40)
    {
      goto LABEL_23;
    }

    v10 = v16 | (v15 << 6);
    LODWORD(v8) = v8 + 1;
    LODWORD(v6) = v8;
    v12 = v10;
    if (v15 <= 0x3FF)
    {
LABEL_4:
      __s[0] = v10;
      LODWORD(v6) = v8;
      v11 = 1;
      goto LABEL_25;
    }

LABEL_24:
    __s[0] = (v12 >> 10) - 10304;
    __s[1] = v10 & 0x3FF | 0xDC00;
    v11 = 2;
LABEL_25:
    std::basic_string<char16_t>::append(a3, __s, v11);
  }
}

void sub_2229C22E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void toU16String(const char *a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  toU16String(a1, v3, a2);
}

BOOL u16strCaseCompare(uint64_t *a1, uint64_t a2)
{
  pErrorCode = U_ZERO_ERROR;
  v2 = *(a1 + 23);
  v3 = *(a1 + 2);
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = u_strCaseCompare(a1, v2, v5, v6, 0x8000u, &pErrorCode);
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v10 = u_errorName(pErrorCode);
    std::string::basic_string[abi:ne200100]<0>(&v13, v10);
    v11 = std::string::insert(&v13, 0, "Failed to compare strings - due to error: ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v7 == 0;
}

void sub_2229C2434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void u16strCaseFold(uint64_t a1@<X0>, std::basic_string<char16_t>::value_type a2@<W2>, uint64_t a3@<X8>)
{
  pErrorCode = U_ZERO_ERROR;
  if (*(a1 + 23) >= 0)
  {
    LODWORD(v5) = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::basic_string<char16_t>::resize(a3, v5, a2);
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = u_strFoldCase(v6, v5, v7, v5, 0, &pErrorCode);
  v10 = v8;
  if (v8 != v5)
  {
    std::basic_string<char16_t>::resize(a3, v8, v9);
  }

  v11 = pErrorCode;
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    pErrorCode = U_ZERO_ERROR;
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    u_strFoldCase(v12, v10, v13, v5, 0, &pErrorCode);
    v11 = pErrorCode;
  }

  if (v11 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    toString(a1, &v26);
    v15 = std::string::insert(&v26, 0, "Failed to casefold string: ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, " - due to error: ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = u_errorName(pErrorCode);
    std::string::basic_string[abi:ne200100]<0>(v24, v19);
    if ((v25 & 0x80u) == 0)
    {
      v20 = v24;
    }

    else
    {
      v20 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = v24[1];
    }

    v22 = std::string::append(&v28, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_2229C2684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
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
    if ((v35 & 1) == 0)
    {
LABEL_14:
      if (*(v33 + 23) < 0)
      {
        operator delete(*v33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

void u16Substring(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::basic_string<char16_t> *a4@<X8>)
{
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (v7 < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v42, a3);
    v21 = std::string::insert(&v42, 0, "Invalid substring range. The endIndex");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v43, " >= src length ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v41, v7);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v41;
    }

    else
    {
      v25 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v44, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &__s);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a3 >= a2;
  v10 = a3 - a2;
  if (v10 == 0 || !v9)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v41, a2);
    v30 = std::string::insert(&v41, 0, "Invalid substring range. startIndex  (");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v42, ") >= endIndex (");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, a3);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v40;
    }

    else
    {
      v34 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v40.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v43, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v44, ")");
    v39 = *&v38->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v29, &__s);
    __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  *&__s.__r_.__value_.__s.__data_[2] = 0;
  std::basic_string<char16_t>::reserve(a4, v10);
  v12 = 0;
  do
  {
    v13 = v12 + 1;
    v14 = *(v11 + v12);
    if (v12 + 1 != v7 && (v14 & 0xFC00) == 0xD800)
    {
      v15 = *(v11 + v13);
      v16 = (v15 & 0xFC00) == 56320;
      v17 = v15 + (v14 << 10) - 56613888;
      if (v16)
      {
        v14 = v17;
      }

      if (v16)
      {
        v13 = v12 + 2;
      }

      else
      {
        v13 = v12 + 1;
      }
    }

    if (v12 >= a2)
    {
      if (HIWORD(v14))
      {
        v19 = v14 & 0x3FF | 0xDC00;
        v14 = (v14 >> 10) - 10304;
        *&__s.__r_.__value_.__s.__data_[2] = v19;
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      LOWORD(__s.__r_.__value_.__l.__data_) = v14;
      std::basic_string<char16_t>::append(a4, &__s, v18);
    }

    v12 = v13;
  }

  while (v13 < a3);
}

void sub_2229C2A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

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
    if ((v41 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v40);
  goto LABEL_16;
}

void nl_featurization::vocabulary::Vocabulary::insertToken(void *a1, uint64_t a2, std::basic_string<char16_t>::size_type a3)
{
  if (a1[11] != a1[8])
  {
    __assert_rtn("insertToken", "vocabulary.cpp", 17, "mIdToText.size() == mTextToId.size()");
  }

  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v11 = a3;
  if (!*std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::__find_equal<std::basic_string<char16_t>>((a1 + 6), &v12, &__p))
  {
    operator new();
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = a3;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *a2, *(a2 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__r.__words[1] = *a2;
    v11 = *(a2 + 16);
  }

  v6 = a1[10];
  if (!v6)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (__p.__r_.__value_.__r.__words[0] >= v8)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_18;
      }
    }

    if (v8 >= __p.__r_.__value_.__r.__words[0])
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;

    operator delete(size);
  }
}

void sub_2229C2E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](0, v18);
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t nl_featurization::vocabulary::Vocabulary::getPadTokenId(nl_featurization::vocabulary::Vocabulary *this)
{
  v2 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(this + 48, this + 12);
  if ((this + 56) == v2)
  {
    return 0;
  }

  else
  {
    return v2[7];
  }
}

uint64_t *std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
    v6 = a2;
  }

  v7 = v2;
  do
  {
    v8 = *(v3 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = v3[5];
    }

    if (v5 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v10)
    {
      if (v9 >= 0)
      {
        v11 = (v3 + 4);
      }

      else
      {
        v11 = v3[4];
      }

      v12 = v6;
      while (1)
      {
        v13 = *v11;
        v14 = *v12;
        if (v13 < v14)
        {
          ++v3;
          goto LABEL_24;
        }

        if (v14 < v13)
        {
          break;
        }

        ++v11;
        ++v12;
        if (!--v10)
        {
          goto LABEL_18;
        }
      }

      v7 = v3;
    }

    else
    {
LABEL_18:
      v15 = v8 >= v5;
      v16 = v8 < v5;
      if (v15)
      {
        v7 = v3;
      }

      v3 += v16;
    }

LABEL_24:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v17 = *(v7 + 55);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v7[5];
  }

  if (v17 >= v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v18 >= 0)
    {
      v20 = (v7 + 4);
    }

    else
    {
      v20 = v7[4];
    }

    do
    {
      v21 = *v6;
      v22 = *v20;
      if (v21 < v22)
      {
        return v2;
      }

      if (v22 < v21)
      {
        return v7;
      }

      ++v6;
      ++v20;
    }

    while (--v19);
  }

  if (v5 < v17)
  {
    return v2;
  }

  return v7;
}

uint64_t nl_featurization::vocabulary::Vocabulary::getUnknownTokenId(nl_featurization::vocabulary::Vocabulary *this)
{
  v2 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(this + 48, this);
  if ((this + 56) == v2)
  {
    return 0;
  }

  else
  {
    return v2[7];
  }
}

void nl_featurization::vocabulary::Vocabulary::initializeFromStream(void *a1, void *a2)
{
  v4 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v6 = std::locale::use_facet(&__p, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&__p);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v12, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v14 >= 0)
    {
      v9 = HIBYTE(v14);
    }

    else
    {
      v9 = v13;
    }

    if (v9)
    {
      if (v14 >= 0)
      {
        v10 = &v12;
      }

      else
      {
        v10 = v12;
      }

      toU16String(v10, v9, &__p);
      nl_featurization::vocabulary::Vocabulary::insertToken(a1, &__p, v4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v4;
    }
  }

  if (v14 < 0)
  {
    operator delete(v12);
  }
}

void sub_2229C31A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nl_featurization::vocabulary::Vocabulary::Vocabulary(uint64_t a1, uint64_t *a2)
{
  v11[19] = *MEMORY[0x277D85DE8];
  v4 = std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(a1, L"[UNK]");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v4 + 24, L"[PAD]");
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 80;
  std::ifstream::basic_ifstream(v9, a2);
  if ((v10[*(v9[0] - 24) + 16] & 5) != 0)
  {
    std::ifstream::close(v9);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_2835E9238;
  }

  nl_featurization::vocabulary::Vocabulary::initializeFromStream(a1, v9);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v9 + *(v9[0] - 24)), *&v10[*(v9[0] - 24) + 16] | 4);
  }

  v9[0] = *MEMORY[0x277D82808];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](v10);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v11);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2229C3430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v70 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a15, MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](&a68);
      std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(v68 + 80));
      std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(v68 + 56));
      if (*(v68 + 47) < 0)
      {
        operator delete(*(v68 + 24));
      }

      if (*(v68 + 23) < 0)
      {
        operator delete(*v68);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v70)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v69);
  goto LABEL_6;
}

uint64_t nl_featurization::vocabulary::Vocabulary::Vocabulary(uint64_t a1, void *a2)
{
  v4 = std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(a1, L"[UNK]");
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(v4 + 24, L"[PAD]");
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 80;
  nl_featurization::vocabulary::Vocabulary::initializeFromStream(a1, a2);
  return a1;
}

void sub_2229C353C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(v1 + 80));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(v1 + 56));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t nl_featurization::vocabulary::Vocabulary::numericalizeToken(unsigned __int16 *a1, uint64_t a2)
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

  v4 = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>((a1 + 24), a2);
  if (a1 + 28 != v4)
  {
    return v4[7];
  }

  if (v4 == std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>((a1 + 24), a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Encountered unknown token text and the vocabulary hasno special unknown token");
LABEL_10:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  v4 = *std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::__find_equal<std::basic_string<char16_t>>((a1 + 24), &v7, a1);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v4[7];
}

void nl_featurization::vocabulary::Vocabulary::denumericalizeToken(nl_featurization::vocabulary::Vocabulary *this@<X0>, unint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  v5 = *(this + 10);
  v3 = this + 80;
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
    v10 = *(v6 + 5);
    v11 = *(v6 + 6);

    std::basic_string<char16_t>::__init_copy_ctor_external(a3, v10, v11);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *(v6 + 40);
    a3->__r_.__value_.__r.__words[2] = *(v6 + 7);
  }
}

void nl_featurization::bio::TagBucketList::addBIOUL(int8x8_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v114[2] = *MEMORY[0x277D85DE8];
  if (a4 < a3 || 0xAAAAAAAAAAAAAAABLL * ((*&a1[2] - *&a1[1]) >> 3) < a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Token indices out of range.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v9 = a1[8];
  if (v9)
  {
    v10 = v8;
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8;
      if (v8 >= *&v9)
      {
        v13 = v8 % *&v9;
      }
    }

    else
    {
      v13 = (*&v9 - 1) & v8;
    }

    v14 = *(*&a1[7] + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = *(i + 1);
        if (v10 == v16)
        {
          if (std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](i + 8, a2))
          {
            v45 = *&a1[1] + 24 * a3;
            v46 = *(v45 + 8);
            if (v46 >= *(v45 + 16))
            {
              v47 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(v45, a2);
            }

            else
            {
              std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>(v45, a2);
              v47 = v46 + 24;
            }

            *(v45 + 8) = v47;
            goto LABEL_104;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v16 >= *&v9)
            {
              v16 %= *&v9;
            }
          }

          else
          {
            v16 &= *&v9 - 1;
          }

          if (v16 != v13)
          {
            break;
          }
        }
      }
    }
  }

  v17 = a4 - a3;
  if (a4 != a3)
  {
    v18 = *&a1[1] + 24 * a3;
    if (v17 == 1)
    {
      std::operator+[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v108, &a1[24], &a1[4]);
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (v19 >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = *(a2 + 8);
      }

      std::basic_string<char16_t>::append(&v108, v20, v21);
      v114[0] = v108.__r_.__value_.__l.__size_;
      v22 = v108.__r_.__value_.__r.__words[0];
      *(v114 + 7) = *(&v108.__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      memset(&v108, 0, sizeof(v108));
      v24 = *(v18 + 8);
      v25 = *(v18 + 16);
      if (v24 >= v25)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v18) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v39 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v18) >> 3);
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x555555555555555)
        {
          v40 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v40 = v38;
        }

        v113 = v18;
        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v40);
        }

        v48 = 24 * v37;
        v49 = v114[0];
        *v48 = v22;
        *(v48 + 8) = v49;
        *(v48 + 15) = *(v114 + 7);
        *(v48 + 23) = v23;
        v27 = 24 * v37 + 24;
        v50 = *(v18 + 8) - *v18;
        v51 = 24 * v37 - v50;
        memcpy((v48 - v50), *v18, v50);
        v52 = *v18;
        *v18 = v51;
        v110 = v52;
        *(v18 + 8) = v27;
        v111 = v52;
        v53 = *(v18 + 16);
        *(v18 + 16) = 0;
        v112 = v53;
        v109 = v52;
        std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v109);
      }

      else
      {
        v26 = v114[0];
        *v24 = v22;
        *(v24 + 8) = v26;
        *(v24 + 15) = *(v114 + 7);
        *(v24 + 23) = v23;
        v27 = v24 + 24;
      }

      *(v18 + 8) = v27;
    }

    else
    {
      std::operator+[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v108, &a1[12], &a1[4]);
      v28 = *(a2 + 23);
      if (v28 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v28 >= 0)
      {
        v30 = *(a2 + 23);
      }

      else
      {
        v30 = *(a2 + 8);
      }

      std::basic_string<char16_t>::append(&v108, v29, v30);
      v114[0] = v108.__r_.__value_.__l.__size_;
      v31 = v108.__r_.__value_.__r.__words[0];
      *(v114 + 7) = *(&v108.__r_.__value_.__r.__words[1] + 7);
      v32 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      memset(&v108, 0, sizeof(v108));
      v33 = *(v18 + 8);
      v34 = *(v18 + 16);
      if (v33 >= v34)
      {
        v41 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v18) >> 3);
        v42 = v41 + 1;
        if (v41 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v43 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v18) >> 3);
        if (2 * v43 > v42)
        {
          v42 = 2 * v43;
        }

        if (v43 >= 0x555555555555555)
        {
          v44 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v44 = v42;
        }

        v113 = v18;
        if (v44)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v44);
        }

        v54 = 24 * v41;
        v55 = v114[0];
        *v54 = v31;
        *(v54 + 8) = v55;
        *(v54 + 15) = *(v114 + 7);
        *(v54 + 23) = v32;
        v36 = 24 * v41 + 24;
        v56 = *(v18 + 8) - *v18;
        v57 = (24 * v41 - v56);
        memcpy(v57, *v18, v56);
        v58 = *v18;
        *v18 = v57;
        v110 = v58;
        *(v18 + 8) = v36;
        v111 = v58;
        v59 = *(v18 + 16);
        *(v18 + 16) = 0;
        v112 = v59;
        v109 = v58;
        std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v109);
      }

      else
      {
        v35 = v114[0];
        *v33 = v31;
        *(v33 + 8) = v35;
        *(v33 + 15) = *(v114 + 7);
        *(v33 + 23) = v32;
        v36 = v33 + 24;
      }

      *(v18 + 8) = v36;
      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      v107 = a4 - 1;
      if (a3 + 1 < a4 - 1)
      {
        v60 = v17 - 2;
        v61 = 24 * a3;
        do
        {
          v62 = a1[1];
          std::operator+[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v108, &a1[15], &a1[4]);
          v63 = *(a2 + 23);
          if (v63 >= 0)
          {
            v64 = a2;
          }

          else
          {
            v64 = *a2;
          }

          if (v63 >= 0)
          {
            v65 = *(a2 + 23);
          }

          else
          {
            v65 = *(a2 + 8);
          }

          std::basic_string<char16_t>::append(&v108, v64, v65);
          v114[0] = v108.__r_.__value_.__l.__size_;
          v66 = v108.__r_.__value_.__r.__words[0];
          *(v114 + 7) = *(&v108.__r_.__value_.__r.__words[1] + 7);
          v67 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          memset(&v108, 0, sizeof(v108));
          v68 = *&v62 + v61;
          v69 = *(*&v62 + v61 + 32);
          v70 = *(*&v62 + v61 + 40);
          if (v69 >= v70)
          {
            v73 = (*&v62 + v61 + 24);
            v74 = 0xAAAAAAAAAAAAAAABLL * ((v69 - *v73) >> 3);
            v75 = v74 + 1;
            if (v74 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v76 = 0xAAAAAAAAAAAAAAABLL * ((v70 - *v73) >> 3);
            if (2 * v76 > v75)
            {
              v75 = 2 * v76;
            }

            if (v76 >= 0x555555555555555)
            {
              v77 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v77 = v75;
            }

            v113 = v73;
            if (v77)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v77);
            }

            v78 = 24 * v74;
            v79 = v114[0];
            *v78 = v66;
            *(v78 + 8) = v79;
            *(v78 + 15) = *(v114 + 7);
            *(v78 + 23) = v67;
            v72 = 24 * v74 + 24;
            v80 = *(v68 + 32) - *v73;
            v81 = (v78 - v80);
            memcpy((v78 - v80), *v73, v80);
            v82 = *v73;
            *v73 = v81;
            v110 = v82;
            *(v68 + 32) = v72;
            v111 = v82;
            v83 = *(v68 + 40);
            *(v68 + 40) = 0;
            v112 = v83;
            v109 = v82;
            std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v109);
          }

          else
          {
            v71 = v114[0];
            *v69 = v66;
            *(v69 + 8) = v71;
            *(v69 + 15) = *(v114 + 7);
            *(v69 + 23) = v67;
            v72 = v69 + 24;
          }

          *(v68 + 32) = v72;
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          v61 += 24;
          --v60;
        }

        while (v60);
      }

      v84 = a1[1];
      std::operator+[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v108, &a1[18], &a1[4]);
      v85 = *(a2 + 23);
      if (v85 >= 0)
      {
        v86 = a2;
      }

      else
      {
        v86 = *a2;
      }

      if (v85 >= 0)
      {
        v87 = *(a2 + 23);
      }

      else
      {
        v87 = *(a2 + 8);
      }

      std::basic_string<char16_t>::append(&v108, v86, v87);
      v88 = v108.__r_.__value_.__r.__words[0];
      v89 = *&v84 + 24 * v107;
      v114[0] = v108.__r_.__value_.__l.__size_;
      *(v114 + 7) = *(&v108.__r_.__value_.__r.__words[1] + 7);
      v90 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      memset(&v108, 0, sizeof(v108));
      v91 = *(v89 + 8);
      v92 = *(v89 + 16);
      if (v91 >= v92)
      {
        v95 = 0xAAAAAAAAAAAAAAABLL * ((v91 - *v89) >> 3);
        v96 = v95 + 1;
        if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v97 = 0xAAAAAAAAAAAAAAABLL * ((v92 - *v89) >> 3);
        if (2 * v97 > v96)
        {
          v96 = 2 * v97;
        }

        if (v97 >= 0x555555555555555)
        {
          v98 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v98 = v96;
        }

        v113 = v89;
        if (v98)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v98);
        }

        v99 = 24 * v95;
        v100 = v114[0];
        *v99 = v88;
        *(v99 + 8) = v100;
        *(v99 + 15) = *(v114 + 7);
        *(v99 + 23) = v90;
        v94 = 24 * v95 + 24;
        v101 = *(v89 + 8) - *v89;
        v102 = 24 * v95 - v101;
        memcpy((v99 - v101), *v89, v101);
        v103 = *v89;
        *v89 = v102;
        v110 = v103;
        *(v89 + 8) = v94;
        v111 = v103;
        v104 = *(v89 + 16);
        *(v89 + 16) = 0;
        v112 = v104;
        v109 = v103;
        std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v109);
      }

      else
      {
        v93 = v114[0];
        *v91 = v88;
        *(v91 + 8) = v93;
        *(v91 + 15) = *(v114 + 7);
        *(v91 + 23) = v90;
        v94 = v91 + 24;
      }

      *(v89 + 8) = v94;
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }
  }

LABEL_104:
  v105 = *MEMORY[0x277D85DE8];
}

void sub_2229C3F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator+[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(void *result, void *a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = a3[1];
  }

  v5 = v4 + v3;
  if (v4 + v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (v5 > 0xA)
  {
    if ((v5 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v5 | 3) + 1;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *(result + 23) = v5;
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    result = memmove(result, a2, 2 * v3);
  }

  v9 = v7 + 2 * v3;
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    result = memmove(v9, v10, 2 * v4);
  }

  *&v9[2 * v4] = 0;
  return result;
}

uint64_t nl_featurization::bio::TagBucketList::getBucketLists@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (v3 != v2)
  {
    std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__vallocate[abi:ne200100](a2, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  }

  return this;
}

uint64_t **nl_featurization::pattern_trie::PatternTrie::insert(uint64_t **result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      return result;
    }

    v2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return result;
  }

  v5 = &v2[v4];
  do
  {
    v6 = v3[2];
    if (v6)
    {
      v7 = *v2;
      v8 = vcnt_s8(v6);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = *v2;
        if (*&v6 <= v7)
        {
          v9 = v7 % *&v3[2];
        }
      }

      else
      {
        v9 = (v6.i32[0] - 1) & v7;
      }

      v10 = *(*&v3[1] + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v12 == v7)
          {
            if (*(i + 8) == v7)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
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
              break;
            }
          }
        }
      }
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    DWORD2(v24) = 1065353216;
    v25 = v2;
    v13 = std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__emplace_unique_key_args<char16_t,std::piecewise_construct_t const&,std::tuple<char16_t const&>,std::tuple<>>(&v3[1], *v2);
    v14 = v13;
    *(v13 + 24) = 0;
    if (v13[7])
    {
      std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__deallocate_node(v13[6]);
      v14[6] = 0;
      v15 = v14[5];
      if (v15)
      {
        for (j = 0; j != v15; j = (j + 1))
        {
          v14[4][j] = 0;
        }
      }

      v14[7] = 0;
    }

    v17 = *(&v22 + 1);
    *(&v22 + 1) = 0;
    v18 = v14[4];
    v14[4] = v17;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v23;
    *(v14 + 5) = v23;
    *&v23 = 0;
    v20 = v24;
    v14[7] = v24;
    *(v14 + 16) = DWORD2(v24);
    if (v20)
    {
      v21 = *(*(&v19 + 1) + 8);
      if ((v19 & (v19 - 1)) != 0)
      {
        if (*(&v19 + 1) >= v19)
        {
          v21 = *(&v19 + 1) % v19;
        }
      }

      else
      {
        v21 = (v19 - 1) & *(&v19 + 1);
      }

      v14[4][v21] = (v14 + 6);
      *(&v23 + 1) = 0;
      *&v24 = 0;
    }

    std::unordered_map<char16_t,nl_featurization::pattern_trie::PatternTrieNode>::~unordered_map[abi:ne200100](&v22 + 8);
    LOWORD(v7) = *v2;
LABEL_37:
    result = std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__emplace_unique_key_args<char16_t,std::piecewise_construct_t const&,std::tuple<char16_t const&>,std::tuple<>>(&v3[1], v7);
    v3 = (result + 3);
    ++v2;
  }

  while (v2 != v5);
  v3->i8[0] = 1;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::__emplace_unique_key_args<char16_t,std::piecewise_construct_t const&,std::tuple<char16_t const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2229C462C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nl_featurization::pattern_trie::PatternTrie::search(uint64_t **a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v3 = *(a2 + 8);
    if (!v3)
    {
      return v3 & 1;
    }

    v2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return v3 & 1;
  }

  v4 = 2 * v3;
  while (1)
  {
    v5 = std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::find<char16_t>(a1 + 1, *v2);
    if (!v5)
    {
      break;
    }

    a1 = v5 + 3;
    ++v2;
    v4 -= 2;
    if (!v4)
    {
      LOBYTE(v3) = *a1;
      return v3 & 1;
    }
  }

  LOBYTE(v3) = 0;
  return v3 & 1;
}

uint64_t **std::__hash_table<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::__unordered_map_hasher<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::hash<char16_t>,std::equal_to<char16_t>,true>,std::__unordered_map_equal<char16_t,std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>,std::equal_to<char16_t>,std::hash<char16_t>,true>,std::allocator<std::__hash_value_type<char16_t,nl_featurization::pattern_trie::PatternTrieNode>>>::find<char16_t>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 8) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void nl_featurization::postprocessing::base::postProcessBaseModelInner(nl_featurization::postprocessing::base *this@<X0>, const nl_featurization::postprocessing::base::BaseModelQueryContextInner *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  v5 = (this + 192);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - *(this + 24)) >> 4);
  if (v6 != (*(a2 + 2) - *(a2 + 1)) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of tokens differs from number of BIO tags");
    goto LABEL_19;
  }

  v8 = (a2 + 32);
  if (v6 != (*(a2 + 5) - *(a2 + 4)) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of tokens differs from number of group IDs");
LABEL_19:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  nl_featurization::vocabulary::Vocabulary::denumericalizeToken(this, *a2, &v17);
  memset(v16, 0, sizeof(v16));
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  while (v11 != v10)
  {
    nl_featurization::vocabulary::Vocabulary::denumericalizeToken((this + 96), *v11, &__p);
    std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](v16, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v11;
  }

  nl_featurization::bio::convertToLabelledSpans(v16, v8, v5, &__p);
  v12 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a3, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    *a3 = v17;
  }

  a3[1].__r_.__value_.__r.__words[0] = 0;
  a3[1].__r_.__value_.__l.__size_ = 0;
  a3[1].__r_.__value_.__r.__words[2] = 0;
  p_p = a3 + 1;
  v19 = 0;
  if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
  {
    v13 = 0x4EC4EC4EC4EC4EC5 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
    if (v13 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>>(v13);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  p_p = &__p;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](&p_p);
  __p.__r_.__value_.__r.__words[0] = v16;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v12 < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_2229C49E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void **a25)
{
  a25 = &a10;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](&a25);
  a10 = &a16;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nl_featurization::postprocessing::base::postProcessBaseModel(nl_featurization::postprocessing::base *this@<X0>, const nl_featurization::postprocessing::base::BaseModelQueryContext *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  nl_featurization::vocabulary::Vocabulary::Vocabulary(&v28, this);
  nl_featurization::vocabulary::Vocabulary::Vocabulary(&v20, this + 3);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v7, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v28;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v8, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v29;
  }

  v9 = v30;
  v10[0] = v31;
  v10[1] = v32;
  if (v32)
  {
    *(v31 + 2) = v10;
    v30 = &v31;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = v33;
  v12[0] = v34;
  v12[1] = v35;
  if (v35)
  {
    *(v34 + 2) = v12;
    v33 = &v34;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v11 = v12;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v13, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v20;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v22;
  v16[0] = v23;
  v16[1] = v24;
  if (v24)
  {
    *(v23 + 2) = v16;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v15 = v16;
  }

  v17 = v25;
  v18[0] = v26;
  v18[1] = v27;
  if (v27)
  {
    *(v26 + 2) = v18;
    v25 = &v26;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v17 = v18;
  }

  memset(v19, 0, 24);
  std::vector<nl_featurization::Token>::__init_with_size[abi:ne200100]<nl_featurization::Token*,nl_featurization::Token*>(v19, *(this + 6), *(this + 7), 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 4));
  nl_featurization::postprocessing::base::postProcessBaseModelInner(&v7, a2, a3);
  nl_featurization::postprocessing::base::BaseModelQueryContextInner::~BaseModelQueryContextInner(&v7);
  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(v26);
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(v34);
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v31);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_2229C4D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  nl_featurization::vocabulary::Vocabulary::~Vocabulary(&a9);
  nl_featurization::vocabulary::Vocabulary::~Vocabulary(&a43);
  nl_featurization::vocabulary::Vocabulary::~Vocabulary((v43 - 144));
  _Unwind_Resume(a1);
}

void nl_featurization::postprocessing::base::BaseModelQueryContextInner::~BaseModelQueryContextInner(nl_featurization::postprocessing::base::BaseModelQueryContextInner *this)
{
  v2 = (this + 192);
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(this + 22));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(this + 19));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(this + 10));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(this + 7));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *nl_featurization::beam_search::isSequenceUnique(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a2, *(a2 + 8), *(a1 + 16));
  if (result)
  {
    v7 = result[4];
    v5 = result + 4;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v5;
    do
    {
      v9 = v6[4];
      v10 = v9 >= a3;
      v11 = v9 < a3;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 == v5 || v8[4] > a3)
    {
LABEL_10:
      v8 = v5;
    }

    return (v8 != v5);
  }

  return result;
}

void *nl_featurization::beam_search::isSequenceIndexable(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a2, *(a2 + 8), *(a1 + 16));
  if (result)
  {
    v7 = result[4];
    v5 = result + 4;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v5;
    do
    {
      v9 = v6[4];
      v10 = v9 >= a3;
      v11 = v9 < a3;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 == v5 || v8[4] > a3)
    {
LABEL_10:
      v8 = v5;
    }

    return (v8 != v5);
  }

  return result;
}

BOOL nl_featurization::beam_search::isEntityNewGroup(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 >= (a1[1] - *a1) >> 3)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*a1 + 8 * a2) > 0.5;
}

uint64_t nl_featurization::beam_search::getHighestExistingGroupId(unint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *v1;
    v7 = *v1;
    if ((v5 | (v3 << 8)) > *v1)
    {
      v6 = v5 | (v3 << 8);
    }

    v8 = v6;
    v9 = v6 >> 8;
    if (v4)
    {
      v7 = v8;
    }

    else
    {
      v9 = *v1 >> 8;
    }

    if (v1[1])
    {
      v5 = v7;
      v4 = 1;
      v3 = v9;
    }

    v1 += 2;
  }

  while (v1 != v2);
  return v5 | (v3 << 8);
}

unint64_t nl_featurization::beam_search::getGroupIdForSequence(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unint64_t a6)
{
  if (nl_featurization::beam_search::isSequenceIndexable(a2, a1, a6))
  {
    if (a4 & 1) == 0 || (a5)
    {
      v9 = (a3 + 1) & 0xFFFFFFFFFFFFFF00;
      if ((a4 & a5) == 1)
      {
        LOBYTE(a3) = a3 + 1;
      }

      else
      {
        LOBYTE(a3) = 1;
      }

      if ((a4 & a5) != 1)
      {
        v9 = 0;
      }
    }

    else
    {
      if ((a4 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v9 = a3 & 0xFFFFFFFFFFFFFF00;
    }
  }

  else
  {
    LOBYTE(a3) = 0;
    v9 = 0;
  }

  return v9 | a3;
}

void nl_featurization::beam_search::getCandidatesFromEntityScores(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v9 = a9;
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v10 = *a1;
  v62 = a1[1];
  if (*a1 != v62)
  {
    v13 = a5;
    v15 = a2;
    v17 = *a2;
    v16 = a2[1];
    v18 = v16;
    v64 = v9;
    do
    {
      v95 = 0;
      if (v18 == v17)
      {
        v18 = v17;
      }

      else
      {
        v19 = 0;
        v20 = (v10 + 40);
        v68 = (v10 + 40);
        v69 = v10;
        do
        {
          v21 = *v20;
          if (!*v20)
          {
            goto LABEL_13;
          }

          v22 = v20;
          do
          {
            v23 = v21[4];
            v24 = v23 >= v19;
            v25 = v23 < v19;
            if (v24)
            {
              v22 = v21;
            }

            v21 = v21[v25];
          }

          while (v21);
          if (v22 == v20 || v19 < v22[4])
          {
LABEL_13:
            v27 = *(v10 + 56);
            v26 = *(v10 + 64);
            v28 = v26 - v27;
            v70 = v27;
            v71 = v26;
            if (v26 == v27)
            {
              v29 = 1;
            }

            else
            {
              if (a3[1] - *a3 <= v28)
              {
                std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
              }

              v29 = *(*a3 + v28) > 0.5;
            }

            HighestExistingGroupId = nl_featurization::beam_search::getHighestExistingGroupId((v10 + 104));
            v72 = v72 & 0xFFFFFFFFFFFFFF00 | v31;
            GroupIdForSequence = nl_featurization::beam_search::getGroupIdForSequence(a8, v10, HighestExistingGroupId, v72, v29, v19);
            v34 = v33;
            v92 = 0;
            v93 = 0;
            v94 = 0;
            std::vector<std::optional<unsigned long>>::__init_with_size[abi:ne200100]<std::optional<unsigned long>*,std::optional<unsigned long>*>(&v92, *(v10 + 104), *(v10 + 112), (*(v10 + 112) - *(v10 + 104)) >> 4);
            v35 = v93;
            if (v93 >= v94)
            {
              v37 = v92;
              v38 = v93 - v92;
              v39 = (v93 - v92) >> 4;
              v40 = v39 + 1;
              if ((v39 + 1) >> 60)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v41 = v94 - v92;
              if ((v94 - v92) >> 3 > v40)
              {
                v40 = v41 >> 3;
              }

              if (v41 >= 0x7FFFFFFFFFFFFFF0)
              {
                v42 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v42 = v40;
              }

              if (v42)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<unsigned long>>>(v42);
              }

              v43 = 16 * v39;
              *v43 = GroupIdForSequence;
              *(v43 + 8) = v34;
              v36 = 16 * v39 + 16;
              memcpy(0, v37, v38);
              v92 = 0;
              v94 = 0;
              if (v37)
              {
                operator delete(v37);
              }

              v13 = a5;
              v9 = v64;
              v15 = a2;
              v10 = v69;
            }

            else
            {
              *v93 = GroupIdForSequence;
              v35[8] = v34;
              v36 = (v35 + 16);
            }

            v93 = v36;
            v44 = log(*(*v15 + 8 * v19));
            v45 = log(*(*(*a4 + 24 * *(v10 + 16)) + 8 * v19));
            v46 = log(*(*v13 + 8 * v19));
            if (v71 != v70)
            {
              v46 = log(*(*(*a6 + 24 * *(v10 + 24)) + 8 * v19));
            }

            v47 = v46;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v89, *(v10 + 80), *(v10 + 88), (*(v10 + 88) - *(v10 + 80)) >> 3);
            v48 = v90;
            if (v90 >= v91)
            {
              v50 = v89;
              v51 = v90 - v89;
              v52 = v90 - v89;
              v53 = v52 + 1;
              if ((v52 + 1) >> 61)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v54 = v91 - v89;
              if ((v91 - v89) >> 2 > v53)
              {
                v53 = v54 >> 2;
              }

              v24 = v54 >= 0x7FFFFFFFFFFFFFF8;
              v55 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v24)
              {
                v55 = v53;
              }

              if (v55)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v89, v55);
              }

              v56 = (8 * v52);
              v57 = &v56[-(v90 - v89)];
              *v56 = v19;
              v49 = v56 + 1;
              memcpy(v57, v50, v51);
              v58 = v89;
              v89 = v57;
              v90 = v49;
              v91 = 0;
              if (v58)
              {
                operator delete(v58);
              }

              v15 = a2;
            }

            else
            {
              *v90 = v19;
              v49 = v48 + 1;
            }

            v90 = v49;
            v10 = v69;
            std::set<unsigned long>::set[abi:ne200100](v88, (v69 + 32));
            if (nl_featurization::beam_search::isSequenceUnique(v69, a7, v19))
            {
              std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v88, v19);
            }

            v78 = 0;
            v79 = 0;
            v77 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v77, v89, v90, v90 - v89);
            v74 = 0;
            v75 = 0;
            v76 = 0;
            std::vector<std::optional<unsigned long>>::__init_with_size[abi:ne200100]<std::optional<unsigned long>*,std::optional<unsigned long>*>(&v74, v92, v36, (v36 - v92) >> 4);
            v59 = *(v69 + 8);
            std::set<unsigned long>::set[abi:ne200100](v73, v88);
            nl_featurization::beam_search::BeamSequence::BeamSequence(v80, &v77, &v74, v73, v47 + v45 + v44 + v59);
            v60 = *(v9 + 8);
            if (v60 >= *(v9 + 16))
            {
              v61 = std::vector<nl_featurization::beam_search::BeamSequence>::__emplace_back_slow_path<nl_featurization::beam_search::BeamSequence>(v9, v80);
            }

            else
            {
              std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::construct[abi:ne200100]<nl_featurization::beam_search::BeamSequence,nl_featurization::beam_search::BeamSequence,0>(*(v9 + 8), v80);
              v61 = v60 + 128;
            }

            *(v9 + 8) = v61;
            if (__p)
            {
              v87 = __p;
              operator delete(__p);
            }

            if (v84)
            {
              v85 = v84;
              operator delete(v84);
            }

            if (v82)
            {
              v83 = v82;
              operator delete(v82);
            }

            std::__tree<unsigned long>::destroy(v81);
            std::__tree<unsigned long>::destroy(v73[1]);
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            std::__tree<unsigned long>::destroy(v88[1]);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            if (v92)
            {
              operator delete(v92);
            }

            v17 = *v15;
            v16 = v15[1];
            v20 = v68;
          }

          v95 = ++v19;
          v18 = v16;
        }

        while (v19 < (v16 - v17) >> 3);
      }

      v10 += 128;
    }

    while (v10 != v62);
  }
}

void sub_2229C55C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *(v30 - 192);
  if (v32)
  {
    *(v30 - 184) = v32;
    operator delete(v32);
  }

  if (*(v30 - 168))
  {
    operator delete(*(v30 - 168));
  }

  std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void *std::set<unsigned long>::set[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

uint64_t nl_featurization::beam_search::BeamSequence::BeamSequence(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, long double a5)
{
  *a1 = exp(a5);
  *(a1 + 8) = a5;
  v11 = *a2;
  v10 = *(a2 + 8);
  if (*a2 == v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Beam sequence is empty getIntent");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 32) = *a4;
  v12 = a4 + 1;
  v13 = a4[1];
  *(a1 + 40) = v13;
  v14 = a1 + 40;
  *(a1 + 16) = *v11;
  *(a1 + 24) = *(v10 - 8);
  v15 = a4[2];
  *(a1 + 48) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *a4 = v12;
    *v12 = 0;
    a4[2] = 0;
  }

  else
  {
    *(a1 + 32) = v14;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  if (*a2 == v17)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Beam sequence is empty getEntities");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v16 + 1 != v17)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1 + 56, v17 - (v16 + 1));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 96) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *a3;
  *(a1 + 120) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

void sub_2229C59D0(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  std::__tree<unsigned long>::destroy(*v3);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::construct[abi:ne200100]<nl_featurization::beam_search::BeamSequence,nl_featurization::beam_search::BeamSequence,0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(a2 + 32);
  v3 = (a2 + 40);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = a1 + 40;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a2 + 32) = v3;
    *v3 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = *(a2 + 104);
  *(a1 + 104) = result;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t std::vector<nl_featurization::beam_search::BeamSequence>::__emplace_back_slow_path<nl_featurization::beam_search::BeamSequence>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>>(v6);
  }

  v13 = 0;
  v14 = v2 << 7;
  std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::construct[abi:ne200100]<nl_featurization::beam_search::BeamSequence,nl_featurization::beam_search::BeamSequence,0>(v2 << 7, a2);
  v15 = ((v2 << 7) + 128);
  v7 = *(a1 + 8);
  v8 = (v2 << 7) + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>,nl_featurization::beam_search::BeamSequence*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<nl_featurization::beam_search::BeamSequence>::~__split_buffer(&v13);
  return v12;
}

void nl_featurization::beam_search::BeamSequence::~BeamSequence(nl_featurization::beam_search::BeamSequence *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  std::__tree<unsigned long>::destroy(*(this + 5));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>,nl_featurization::beam_search::BeamSequence*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::construct[abi:ne200100]<nl_featurization::beam_search::BeamSequence,nl_featurization::beam_search::BeamSequence,0>(a4, v7);
      v7 += 128;
      a4 += 128;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(v6);
      v6 += 16;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<nl_featurization::beam_search::BeamSequence>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 128;
    std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>((v3 - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[5];

  std::__tree<unsigned long>::destroy(v5);
}

uint64_t nl_featurization::beam_search::validateInputTransitions(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *result;
  v5 = *(result + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) != a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "First dimension of intentEntityTransitions does not equal number of intents");
    goto LABEL_13;
  }

  while (v6 != v5)
  {
    if (a5 != (v6[1] - *v6) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Second dimension of intentEntityTransitions does not equal number of BIO tags");
      goto LABEL_13;
    }

    v6 += 3;
  }

  if (a5 != (a2[1] - *a2) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Size of startEntityTransitions does not equal number of BIO tags");
    goto LABEL_13;
  }

  v8 = *a3;
  v7 = *(a3 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 3) != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "First dimension of entityTransitions does not equal number of BIO tags");
LABEL_13:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  while (v8 != v7)
  {
    if (a5 != (v8[1] - *v8) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Second dimension of entityTransitions does not equal number of BIO tags");
      goto LABEL_13;
    }

    v8 += 3;
  }

  return result;
}

uint64_t nl_featurization::beam_search::validateInputLabels(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  for (i = *(result + 16); i; i = *i)
  {
    if (i[2] >= a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Out-of-range intent label (key) in uniqueLabels");
      goto LABEL_26;
    }

    v5 = i[3];
    if (v5 != i + 4)
    {
      do
      {
        if (v5[4] >= a4)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Out-of-range BIO label (value) in uniqueLabels");
          goto LABEL_26;
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

      while (v7 != i + 4);
    }
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    while (v9[2] < a3)
    {
      v10 = v9[3];
      if (v10 != v9 + 4)
      {
        while (v10[4] < a4)
        {
          v11 = v10[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v10[2];
              v8 = *v12 == v10;
              v10 = v12;
            }

            while (!v8);
          }

          v10 = v12;
          if (v12 == v9 + 4)
          {
            goto LABEL_22;
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Out-of-range BIO label (value) in indexableLabels");
LABEL_26:
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

LABEL_22:
      v9 = *v9;
      if (!v9)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Out-of-range intent label (key) in indexableLabels");
    goto LABEL_26;
  }

  return result;
}

uint64_t nl_featurization::beam_search::validateInputs(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v2 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Empty entitiesScores (implies no tokens)");
    v10 = off_2784B6778;
    v11 = MEMORY[0x277D82610];
    goto LABEL_14;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 - v2);
  if (v5 != (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 3)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    v13 = a1;
    v14 = v12;
    std::to_string(&v26, (*(*(v13 + 16) + 8) - **(v13 + 16)) >> 3);
    v15 = std::string::insert(&v26, 0, "Size of groupScores (");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, ") does not equal number of tokens (");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, v5);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v28, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v29, ")");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(v14, &v30);
    v14->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v14, off_2784B6778, MEMORY[0x277D82610]);
  }

  v6 = (*(*a1 + 8) - **a1) >> 3;
  v7 = (v2[1] - *v2) >> 3;
  nl_featurization::beam_search::validateInputTransitions(*(a1 + 24), *(a1 + 32), *(a1 + 40), v6, v7);
  result = nl_featurization::beam_search::validateInputLabels(*(a1 + 48), *(a1 + 56), v6, v7);
  if ((*(a1 + 64) - 6) <= 0xFFFFFFFFFFFFFFFALL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid beamSize. Should be in the interval (0, 5]");
    v10 = MEMORY[0x277D82760];
    v11 = MEMORY[0x277D82600];
LABEL_14:
    __cxa_throw(exception, v10, v11);
  }

  return result;
}

void sub_2229C6300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
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
    if ((v34 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v33);
  goto LABEL_16;
}

uint64_t nl_featurization::beam_search::BeamSequence::toString(nl_featurization::beam_search::BeamSequence *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "BeamSequence[\n", 14);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "  score = ", 10);
  v3 = MEMORY[0x223DC4900](v2, *this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "\n", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "  intent = ", 11);
  v5 = MEMORY[0x223DC4940](v4, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "  entities = ", 13);
  v6 = *(this + 7);
  for (i = *(this + 8); v6 != i; ++v6)
  {
    v8 = MEMORY[0x223DC4940](&v15, *v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "  groupIds = ", 13);
  v9 = *(this + 13);
  for (j = *(this + 14); v9 != j; v9 += 16)
  {
    if (*(v9 + 8) == 1)
    {
      v11 = MEMORY[0x223DC4940](&v15, *v9);
    }

    else
    {
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(none)", 6);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ",", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "]\n", 2);
  std::stringbuf::str();
  v14[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v12;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v19);
}

void sub_2229C66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](&a26);
  _Unwind_Resume(a1);
}

void nl_featurization::beam_search::beamSearch(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43[0] = a1;
  v43[1] = a2;
  v43[2] = a3;
  v43[3] = a4;
  v43[4] = a5;
  v43[5] = a6;
  v43[6] = a7;
  v43[7] = a8;
  v43[8] = a10;
  nl_featurization::beam_search::validateInputs(v43);
  v13 = a1[1];
  v14 = v13 - *a1;
  if (v13 != *a1)
  {
    if (!((v14 >> 3) >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,double>>>(v14 >> 3);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,false>(0, 0, 0, 1);
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  if (a10)
  {
    if (!(a10 >> 57))
    {
      v42 = a9;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>>(a10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  a1[1];
  *a1;
  v16 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    v33 = a2[1];
    do
    {
      nl_featurization::beam_search::getCandidatesFromEntityScores(a9, v16, a3, a4, a5, a6, a7, a8, &v40);
      v18 = 126 - 2 * __clz((v41 - v40) >> 7);
      if (v41 == v40)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,false>(v40, v41, v19, 1, v17);
      v20 = v41;
      if (!((v41 - v40) >> 7))
      {
        goto LABEL_15;
      }

      if (v41 <= v40)
      {
        __assert_rtn("beamSearch", "beam_search.cpp", 387, "allCandidates.begin() + beamSize < allCandidates.end()");
      }

      if (v40 != v41)
      {
        v21 = v40;
        while (v20 != v21)
        {
          v20 -= 8;
          std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(v20);
        }

        v41 = v21;
      }

      else
      {
LABEL_15:
        v21 = v41;
      }

      if (&v40 != a9)
      {
        v22 = v40;
        v23 = v21 - v40;
        v24 = a9[2];
        v25 = *a9;
        if (v24 - *a9 < (v21 - v40))
        {
          if (v25)
          {
            for (i = a9[1]; i != v25; std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(i))
            {
              i -= 16;
            }

            a9[1] = v25;
            operator delete(*a9);
            v24 = 0;
            *a9 = 0;
            a9[1] = 0;
            a9[2] = 0;
          }

          v28 = v23 >> 7;
          if (!((v23 >> 7) >> 57))
          {
            if (v24 >> 6 > v28)
            {
              v28 = v24 >> 6;
            }

            if (v24 >= 0x7FFFFFFFFFFFFF80)
            {
              v29 = 0x1FFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (!(v29 >> 57))
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>>(v29);
            }
          }

          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v27 = a9[1] - v25;
        if (v27 >= v23)
        {
          v30 = std::__copy_impl::operator()[abi:ne200100]<nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *>(v40, v21, *a9);
          for (j = a9[1]; j != v30; std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(j))
          {
            j -= 16;
          }
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *>(v40, v40 + v27, *a9);
          v30 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>,nl_featurization::beam_search::BeamSequence*,nl_featurization::beam_search::BeamSequence*,nl_featurization::beam_search::BeamSequence*>(a9, (v22 + v27), v21, a9[1]);
        }

        a9[1] = v30;
      }

      v44[0] = &v40;
      std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100](v44);
      v16 += 3;
    }

    while (v16 != v15);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2229C6D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v29 - 104) = v27;
  std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100]((v29 - 104));
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,double>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double *std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,false>(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 1);
        v84 = v8[1];
        if (v83 > v84)
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v8[1] = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v91 = (v8 + 2);
      v92 = *(v8 + 2);
      v93 = (v8 + 4);
      v94 = *v8;
      v95 = v8 + 3;
      v96 = v8[3];
      v97 = v8 + 1;
      v98 = v8[1];
      v99 = v8 + 5;
      v100 = v8[5];
      if (v96 <= v98)
      {
        if (v100 > v96)
        {
          v147 = *v93;
          *v91 = *v93;
          *v93 = v92;
          *v95 = v100;
          *v99 = v96;
          if (v100 > v98)
          {
            *v8 = v147;
            v101 = v8 + 2;
            v102 = v8 + 1;
            v148 = v8 + 3;
            goto LABEL_189;
          }

          v100 = v96;
        }
      }

      else
      {
        if (v100 > v96)
        {
          *v8 = v8[4];
          v101 = v8 + 4;
          v102 = v8 + 1;
          goto LABEL_188;
        }

        *v8 = v92;
        *(v8 + 2) = v94;
        v8[1] = v96;
        v8[3] = v98;
        if (v100 > v98)
        {
          *v91 = *v93;
          v101 = v8 + 4;
          v102 = v8 + 3;
LABEL_188:
          v148 = v8 + 5;
          v96 = v98;
LABEL_189:
          *v101 = v94;
          *v102 = v100;
          v100 = v96;
          *v148 = v98;
        }
      }

      v156 = *(a2 - 1);
      if (v156 <= v100)
      {
        return result;
      }

      v157 = *v93;
      *v93 = *(a2 - 2);
      *(a2 - 2) = v157;
      *v99 = v156;
      *(a2 - 1) = v100;
      v144 = *v99;
      v158 = *v95;
      if (*v99 <= *v95)
      {
        return result;
      }

      v159 = *v91;
      v160 = *v93;
      *v91 = *v93;
      *v93 = v159;
      *v95 = v144;
      *v99 = v158;
      v145 = *v97;
      if (v144 <= *v97)
      {
        return result;
      }

      v146 = *v8;
      *v8 = v160;
LABEL_194:
      v8[2] = v146;
      v8[1] = v144;
      v8[3] = v145;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v103 = v8 + 2;
      v105 = v8 == a2 || v103 == a2;
      if (a4)
      {
        if (!v105)
        {
          v106 = 0;
          v107 = v8;
          do
          {
            v108 = v103;
            v109 = v107[3];
            if (v109 > v107[1])
            {
              v110 = *(v107 + 2);
              v111 = v106;
              while (1)
              {
                v112 = (v8 + v111);
                v112[2] = *(v8 + v111);
                v112[3] = *(v8 + v111 + 8);
                if (!v111)
                {
                  break;
                }

                v111 -= 16;
                if (v109 <= *(v112 - 1))
                {
                  v113 = v8 + v111 + 16;
                  goto LABEL_132;
                }
              }

              v113 = v8;
LABEL_132:
              *v113 = v110;
              *(v113 + 8) = v109;
            }

            v103 = v108 + 2;
            v106 += 16;
            v107 = v108;
          }

          while (v108 + 2 != a2);
        }
      }

      else if (!v105)
      {
        v149 = v8 + 1;
        do
        {
          v150 = v103;
          v151 = v7[3];
          if (v151 > v7[1])
          {
            v152 = *(v7 + 2);
            v153 = v149;
            do
            {
              v153[1] = *(v153 - 1);
              v153[2] = *v153;
              v154 = *(v153 - 2);
              v153 -= 2;
            }

            while (v151 > v154);
            *(v153 + 1) = v152;
            v153[2] = v151;
          }

          v103 = v150 + 2;
          v149 += 2;
          v7 = v150;
        }

        while (v150 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v114 = (v9 - 2) >> 1;
      v115 = v114;
      do
      {
        v116 = v115;
        if (v114 >= v115)
        {
          v117 = (2 * v115) | 1;
          v118 = &v8[2 * v117];
          if (2 * v116 + 2 < v9 && v118[1] > v118[3])
          {
            v118 += 2;
            v117 = 2 * v116 + 2;
          }

          v119 = &v8[2 * v116];
          v120 = v118[1];
          v121 = v119[1];
          if (v120 <= v121)
          {
            v122 = *v119;
            do
            {
              v123 = v119;
              v119 = v118;
              *v123 = *v118;
              v123[1] = v120;
              if (v114 < v117)
              {
                break;
              }

              v124 = 2 * v117;
              v117 = (2 * v117) | 1;
              v118 = &v8[2 * v117];
              v125 = v124 + 2;
              if (v125 < v9 && v118[1] > v118[3])
              {
                v118 += 2;
                v117 = v125;
              }

              v120 = v118[1];
            }

            while (v120 <= v121);
            *v119 = v122;
            v119[1] = v121;
          }
        }

        v115 = v116 - 1;
      }

      while (v116);
      while (2)
      {
        v126 = 0;
        v127 = *v8;
        v128 = v8[1];
        v129 = v8;
        do
        {
          v130 = &v129[2 * v126];
          v131 = v130 + 2;
          v132 = (2 * v126) | 1;
          v126 = 2 * v126 + 2;
          if (v126 >= v9)
          {
            v126 = v132;
          }

          else
          {
            v133 = v130[3];
            v134 = v130[5];
            v135 = v130 + 4;
            if (v133 <= v134)
            {
              v126 = v132;
            }

            else
            {
              v131 = v135;
            }
          }

          *v129 = *v131;
          v129[1] = v131[1];
          v129 = v131;
        }

        while (v126 <= ((v9 - 2) >> 1));
        if (v131 != a2 - 2)
        {
          *v131 = *(a2 - 2);
          v131[1] = *(a2 - 1);
          *(a2 - 2) = v127;
          *(a2 - 1) = v128;
          v136 = (v131 - v8 + 16) >> 4;
          v137 = v136 < 2;
          v138 = v136 - 2;
          if (!v137)
          {
            v139 = v138 >> 1;
            v140 = &v8[2 * v139];
            v141 = v140[1];
            v128 = v131[1];
            if (v141 > v128)
            {
              v142 = *v131;
              do
              {
                v143 = v131;
                v131 = v140;
                *v143 = *v140;
                v143[1] = v141;
                if (!v139)
                {
                  break;
                }

                v139 = (v139 - 1) >> 1;
                v140 = &v8[2 * v139];
                v141 = v140[1];
              }

              while (v141 > v128);
              *v131 = v142;
LABEL_165:
              v131[1] = v128;
            }
          }

          a2 -= 2;
          v137 = v9-- <= 2;
          if (v137)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v131 = v127;
      goto LABEL_165;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = v8[1];
      if (v13 <= v14)
      {
        if (v11 > v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v12;
          v10[1] = v11;
          *(a2 - 1) = v13;
          v20 = v10[1];
          v21 = v8[1];
          if (v20 > v21)
          {
            v22 = *v8;
            *v8 = *v10;
            *v10 = v22;
            v8[1] = v20;
            v10[1] = v21;
          }
        }
      }

      else
      {
        v15 = *v8;
        if (v11 > v13)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v15;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = v12;
        *v10 = v15;
        v8[1] = v13;
        v10[1] = v14;
        v26 = *(a2 - 1);
        if (v26 > v14)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v15;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 2);
      v29 = v10 - 1;
      v30 = *(v10 - 1);
      v31 = v8[3];
      v32 = *(a2 - 3);
      if (v30 <= v31)
      {
        if (v32 > v30)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v28;
          *(v10 - 1) = v32;
          *(a2 - 3) = v30;
          v34 = *(v10 - 1);
          v35 = v8[3];
          if (v34 > v35)
          {
            v36 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v36;
            v8[3] = v34;
            *(v10 - 1) = v35;
          }
        }
      }

      else
      {
        v33 = *(v8 + 2);
        if (v32 > v30)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v33;
          v8[3] = v32;
          goto LABEL_39;
        }

        *(v8 + 2) = v28;
        *v27 = v33;
        v8[3] = v30;
        *(v10 - 1) = v31;
        v38 = *(a2 - 3);
        if (v38 > v31)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v33;
          *(v10 - 1) = v38;
LABEL_39:
          *(a2 - 3) = v31;
        }
      }

      v39 = v10 + 2;
      v40 = *(v10 + 2);
      v41 = v10[3];
      v42 = v8[5];
      v43 = *(a2 - 5);
      if (v41 <= v42)
      {
        if (v43 > v41)
        {
          *v39 = *(a2 - 6);
          *(a2 - 6) = v40;
          v10[3] = v43;
          *(a2 - 5) = v41;
          v45 = v10[3];
          v46 = v8[5];
          if (v45 > v46)
          {
            v47 = *(v8 + 4);
            v8[4] = *v39;
            *v39 = v47;
            v8[5] = v45;
            v10[3] = v46;
          }
        }
      }

      else
      {
        v44 = *(v8 + 4);
        if (v43 > v41)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v44;
          v8[5] = v43;
          goto LABEL_48;
        }

        *(v8 + 4) = v40;
        *v39 = v44;
        v8[5] = v41;
        v10[3] = v42;
        v48 = *(a2 - 5);
        if (v48 > v42)
        {
          *v39 = *(a2 - 6);
          *(a2 - 6) = v44;
          v10[3] = v48;
LABEL_48:
          *(a2 - 5) = v42;
        }
      }

      v49 = *v10;
      v50 = v10[1];
      v51 = *v27;
      v52 = *(v10 - 1);
      v53 = v10[3];
      if (v50 <= v52)
      {
        if (v53 > v50)
        {
          v54 = *v39;
          *v10 = *v39;
          *v39 = v49;
          v10[1] = v53;
          v10[3] = v50;
          if (v53 > v52)
          {
            *v27 = v54;
            v39 = v10;
            v50 = v52;
            v49 = v51;
            goto LABEL_57;
          }

          v50 = v53;
          v49 = v54;
        }
      }

      else
      {
        if (v53 > v50)
        {
          *v27 = *v39;
          goto LABEL_57;
        }

        *v27 = v49;
        *v10 = v51;
        *(v10 - 1) = v50;
        v10[1] = v52;
        if (v53 <= v52)
        {
          v50 = v52;
          v49 = v51;
        }

        else
        {
          v49 = *v39;
          *v10 = *v39;
          v29 = v10 + 1;
          v50 = v53;
LABEL_57:
          *v39 = v51;
          *v29 = v53;
          v39[1] = v52;
        }
      }

      v55 = *v8;
      *v8 = v49;
      *v10 = v55;
      v56 = *(v8 + 1);
      v8[1] = v50;
      *(v10 + 1) = v56;
      goto LABEL_59;
    }

    v16 = *v8;
    v17 = v8[1];
    v18 = v10[1];
    if (v17 <= v18)
    {
      if (v11 > v17)
      {
        *v8 = *(a2 - 2);
        *(a2 - 2) = v16;
        v8[1] = v11;
        *(a2 - 1) = v17;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_59;
    }

    v19 = *v10;
    if (v11 > v17)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v19;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_59;
    }

    *v10 = v16;
    *v8 = v19;
    v10[1] = v17;
    v8[1] = v18;
    v37 = *(a2 - 1);
    if (v37 > v18)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v19;
      v8[1] = v37;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    v57 = *v8;
    if (a4)
    {
      v58 = v8[1];
LABEL_62:
      v59 = v8;
      do
      {
        v60 = v59;
        v59 += 2;
      }

      while (v60[3] > v58);
      v61 = a2;
      if (v60 == v8)
      {
        v64 = a2;
        while (v59 < v64)
        {
          v62 = v64 - 2;
          v65 = *(v64 - 1);
          v64 -= 2;
          if (v65 > v58)
          {
            goto LABEL_72;
          }
        }

        v62 = v64;
      }

      else
      {
        do
        {
          v62 = v61 - 2;
          v63 = *(v61 - 1);
          v61 -= 2;
        }

        while (v63 <= v58);
      }

LABEL_72:
      v8 = v59;
      if (v59 < v62)
      {
        v66 = v62;
        do
        {
          v67 = *v8;
          *v8 = *v66;
          *v66 = v67;
          v68 = *(v8 + 1);
          v8[1] = v66[1];
          *(v66 + 1) = v68;
          do
          {
            v69 = v8[3];
            v8 += 2;
          }

          while (v69 > v58);
          do
          {
            v70 = *(v66 - 1);
            v66 -= 2;
          }

          while (v70 <= v58);
        }

        while (v8 < v66);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v57;
      *(v8 - 1) = v58;
      if (v59 < v62)
      {
        goto LABEL_83;
      }

      v71 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v71)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v71)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v58 = v8[1];
      if (*(v8 - 1) > v58)
      {
        goto LABEL_62;
      }

      if (v58 <= *(a2 - 1))
      {
        v74 = v8 + 2;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v75 = v74[1];
          v74 += 2;
        }

        while (v58 <= v75);
      }

      else
      {
        v72 = v8;
        do
        {
          v8 = v72 + 2;
          v73 = v72[3];
          v72 += 2;
        }

        while (v58 <= v73);
      }

      v76 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v76 = v77 - 2;
          v78 = *(v77 - 1);
          v77 -= 2;
        }

        while (v58 > v78);
      }

      while (v8 < v76)
      {
        v79 = *v8;
        *v8 = *v76;
        *v76 = v79;
        v80 = *(v8 + 1);
        v8[1] = v76[1];
        *(v76 + 1) = v80;
        do
        {
          v81 = v8[3];
          v8 += 2;
        }

        while (v58 <= v81);
        do
        {
          v82 = *(v76 - 1);
          v76 -= 2;
        }

        while (v58 > v82);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v57;
      *(v8 - 1) = v58;
    }
  }

  v86 = *(v8 + 2);
  v87 = v8[3];
  v88 = v8[1];
  v89 = *(a2 - 1);
  if (v87 > v88)
  {
    v90 = *v8;
    if (v89 <= v87)
    {
      *v8 = v86;
      v8[2] = v90;
      v8[1] = v87;
      v8[3] = v88;
      v155 = *(a2 - 1);
      if (v155 <= v88)
      {
        return result;
      }

      v8[2] = *(a2 - 2);
      *(a2 - 2) = v90;
      v8[3] = v155;
    }

    else
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v90;
      v8[1] = v89;
    }

    *(a2 - 1) = v88;
    return result;
  }

  if (v89 > v87)
  {
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v86;
    v8[3] = v89;
    *(a2 - 1) = v87;
    v144 = v8[3];
    v145 = v8[1];
    if (v144 > v145)
    {
      v146 = *v8;
      *v8 = v8[2];
      goto LABEL_194;
    }
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v8 = a2 - 8;
  v223 = a2 - 24;
  v224 = a2 - 16;
  v9 = a1;
  v227 = a2;
  v225 = a2 - 8;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 7;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        result = *v8;
        if (*v8 <= *v9)
        {
          return result;
        }

LABEL_154:
        v90 = v9;
LABEL_155:
        v89 = v8;
LABEL_156:
        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v90, v89);
        return result;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      result = *(v9 + 16);
      v91 = *v8;
      if (result <= *v9)
      {
        if (v91 > result)
        {
          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9 + 8, v8);
          result = *(v9 + 16);
          if (result > *v9)
          {
            v90 = v9;
            v89 = v9 + 8;
            goto LABEL_156;
          }
        }
      }

      else
      {
        if (v91 > result)
        {
          goto LABEL_154;
        }

        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9, v9 + 8);
        result = *v8;
        if (*v8 > *(v9 + 16))
        {
          v90 = v9 + 8;
          goto LABEL_155;
        }
      }

      return result;
    }

    if (v10 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,0>(v9, v9 + 8, v9 + 16, v8);
      return result;
    }

    if (v10 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 23)
    {
      if (a4)
      {
        if (v9 != a2)
        {
          v92 = v9 + 8;
          if (v9 + 8 != a2)
          {
            v93 = 0;
            v94 = v9;
            do
            {
              v95 = v92;
              result = *(v94 + 16);
              if (result > *v94)
              {
                v96 = *v92;
                v97 = v92[1];
                v98 = v94 + 21;
                v99 = *(v94 + 21);
                v240 = *v95;
                v241 = v97;
                v242 = *(v94 + 20);
                v243 = v99;
                v244 = *(v94 + 22);
                if (v244)
                {
                  v99[2] = &v243;
                  *(v94 + 20) = v98;
                  *v98 = 0;
                  *(v94 + 22) = 0;
                }

                else
                {
                  v242 = &v243;
                }

                *v245 = *(v94 + 184);
                v245[2] = *(v94 + 25);
                *(v94 + 23) = 0;
                *(v94 + 24) = 0;
                *__p = v94[13];
                v100 = *(v94 + 28);
                *(v94 + 25) = 0;
                *(v94 + 26) = 0;
                *(v94 + 27) = 0;
                *(v94 + 28) = 0;
                v247[0] = *(v94 + 232);
                v101 = *(v94 + 31);
                __p[2] = v100;
                *&v247[1] = v101;
                *(v94 + 30) = 0;
                *(v94 + 31) = 0;
                v102 = v93;
                *(v94 + 29) = 0;
                while (1)
                {
                  v103 = a1 + v102;
                  v104 = *(a1 + v102 + 16);
                  *(v103 + 8) = *(a1 + v102);
                  *(v103 + 9) = v104;
                  std::__tree<unsigned long>::__move_assign((a1 + v102 + 160), (a1 + v102 + 32));
                  v105 = *(a1 + v102 + 184);
                  if (v105)
                  {
                    *(v103 + 24) = v105;
                    operator delete(v105);
                    *(v103 + 25) = 0;
                  }

                  *(v103 + 184) = *(v103 + 56);
                  *(v103 + 25) = *(v103 + 9);
                  *(v103 + 7) = 0;
                  *(v103 + 8) = 0;
                  *(v103 + 9) = 0;
                  v106 = *(v103 + 26);
                  if (v106)
                  {
                    *(a1 + v102 + 216) = v106;
                    operator delete(v106);
                    *(a1 + v102 + 224) = 0;
                  }

                  *(v103 + 13) = *(v103 + 5);
                  v107 = a1 + v102;
                  *(a1 + v102 + 224) = *(a1 + v102 + 96);
                  *(v103 + 10) = 0;
                  *(v103 + 11) = 0;
                  *(v103 + 12) = 0;
                  v108 = *(a1 + v102 + 232);
                  if (v108)
                  {
                    *(v107 + 30) = v108;
                    operator delete(v108);
                    *(v107 + 31) = 0;
                  }

                  *(v107 + 232) = *(v107 + 104);
                  *(v107 + 31) = *(v107 + 15);
                  *(v107 + 13) = 0;
                  *(v107 + 14) = 0;
                  *(v107 + 15) = 0;
                  if (!v102)
                  {
                    break;
                  }

                  v109 = a1 + v102;
                  v110 = *(a1 + v102 - 128);
                  v102 -= 128;
                  if (*&v240 <= v110)
                  {
                    v111 = (v109 + 32);
                    v112 = v109 + 56;
                    v113 = (v109 + 80);
                    v114 = v109 + 104;
                    v115 = a1 + v102 + 128;
                    goto LABEL_177;
                  }
                }

                v111 = (a1 + 2);
                v112 = a1 + 56;
                v113 = a1 + 5;
                v114 = a1 + 104;
                v115 = a1;
LABEL_177:
                v116 = v241;
                *v115 = v240;
                *(v115 + 16) = v116;
                v117 = v115 + 40;
                std::__tree<unsigned long>::destroy(*(v115 + 40));
                *v111 = v242;
                v118 = v243;
                *(v115 + 40) = v243;
                v119 = v244;
                *(v115 + 48) = v244;
                if (v119)
                {
                  v118[2] = v117;
                  v242 = &v243;
                  v243 = 0;
                  v244 = 0;
                }

                else
                {
                  *v111 = v117;
                }

                v120 = *v112;
                if (*v112)
                {
                  *(v115 + 64) = v120;
                  operator delete(v120);
                  *v112 = 0;
                  *(v112 + 1) = 0;
                  *(v112 + 2) = 0;
                }

                *v112 = v245[0];
                *(v115 + 64) = *&v245[1];
                memset(v245, 0, sizeof(v245));
                v121 = *v113;
                if (*v113)
                {
                  *(v115 + 88) = v121;
                  operator delete(v121);
                  *v113 = 0;
                  *(v113 + 1) = 0;
                  *(v113 + 2) = 0;
                }

                *v113 = __p[0];
                *(v115 + 88) = *&__p[1];
                memset(__p, 0, sizeof(__p));
                v122 = *v114;
                if (*v114)
                {
                  *(v115 + 112) = v122;
                  operator delete(v122);
                  *v114 = 0;
                  *(v114 + 1) = 0;
                  *(v114 + 2) = 0;
                  v122 = __p[0];
                }

                *v114 = *&v247[0];
                *(v115 + 112) = *(v247 + 8);
                memset(v247, 0, 24);
                if (v122)
                {
                  __p[1] = v122;
                  operator delete(v122);
                }

                a2 = v227;
                if (v245[0])
                {
                  v245[1] = v245[0];
                  operator delete(v245[0]);
                }

                std::__tree<unsigned long>::destroy(v243);
              }

              v92 = v95 + 8;
              v93 += 128;
              v94 = v95;
            }

            while (v95 + 8 != a2);
          }
        }
      }

      else if (v9 != a2)
      {
        v197 = v9 + 8;
        if (v9 + 8 != a2)
        {
          v198 = v9 + 72;
          do
          {
            v199 = v197;
            result = *(a1 + 16);
            if (result > *a1)
            {
              v200 = *v197;
              v201 = v197[1];
              v202 = a1 + 21;
              v203 = *(a1 + 21);
              v240 = *v199;
              v241 = v201;
              v242 = *(a1 + 20);
              v243 = v203;
              v244 = *(a1 + 22);
              if (v244)
              {
                v203[2] = &v243;
                *(a1 + 20) = v202;
                *v202 = 0;
                *(a1 + 22) = 0;
              }

              else
              {
                v242 = &v243;
              }

              *v245 = *(a1 + 184);
              v245[2] = *(a1 + 25);
              *(a1 + 23) = 0;
              *(a1 + 24) = 0;
              *__p = a1[13];
              v204 = *(a1 + 28);
              *(a1 + 25) = 0;
              *(a1 + 26) = 0;
              *(a1 + 27) = 0;
              *(a1 + 28) = 0;
              v247[0] = *(a1 + 232);
              v205 = *(a1 + 31);
              __p[2] = v204;
              *&v247[1] = v205;
              *(a1 + 30) = 0;
              *(a1 + 31) = 0;
              v206 = v198;
              *(a1 + 29) = 0;
              do
              {
                *(v206 + 56) = *(v206 - 72);
                *(v206 + 72) = *(v206 - 56);
                std::__tree<unsigned long>::__move_assign(v206 + 11, v206 - 5);
                v207 = *(v206 + 14);
                if (v207)
                {
                  *(v206 + 15) = v207;
                  operator delete(v207);
                  *(v206 + 16) = 0;
                }

                v208 = v206 - 16;
                *(v206 + 7) = *(v206 - 1);
                *(v206 + 16) = *v206;
                *(v208 + 1) = 0;
                *v206 = 0;
                *v208 = 0;
                v209 = *(v206 + 17);
                if (v209)
                {
                  *(v206 + 18) = v209;
                  operator delete(v209);
                  *(v206 + 19) = 0;
                }

                *(v206 + 136) = *(v206 + 8);
                *(v206 + 19) = *(v206 + 3);
                *(v206 + 2) = 0;
                *(v206 + 3) = 0;
                *(v206 + 1) = 0;
                v210 = *(v206 + 20);
                if (v210)
                {
                  *(v206 + 21) = v210;
                  operator delete(v210);
                  *(v206 + 22) = 0;
                }

                v211 = v206 + 32;
                *(v206 + 10) = *(v206 + 2);
                *(v206 + 22) = *(v206 + 6);
                *(v206 + 4) = 0;
                *(v206 + 5) = 0;
                *(v206 + 6) = 0;
                v212 = *(v206 - 25);
                v206 -= 128;
              }

              while (*&v240 > v212);
              v213 = (v211 - 104);
              v214 = v241;
              *v213 = v240;
              v213[1] = v214;
              v215 = v211 - 64;
              std::__tree<unsigned long>::destroy(*(v206 + 12));
              *(v206 + 11) = v242;
              v216 = v243;
              *(v206 + 12) = v243;
              v217 = v244;
              *(v206 + 13) = v244;
              if (v217)
              {
                v216[2] = v215;
                v242 = &v243;
                v243 = 0;
                v244 = 0;
              }

              else
              {
                *(v206 + 11) = v215;
              }

              v218 = v211 - 48;
              v219 = *(v211 - 6);
              if (v219)
              {
                *(v211 - 5) = v219;
                operator delete(v219);
                *v218 = 0;
                *(v211 - 5) = 0;
                *(v211 - 4) = 0;
              }

              v220 = v211 - 24;
              *v218 = *v245;
              *(v211 - 4) = v245[2];
              memset(v245, 0, sizeof(v245));
              v221 = *(v211 - 3);
              if (v221)
              {
                *(v211 - 2) = v221;
                operator delete(v221);
                *v220 = 0;
                *(v211 - 2) = 0;
                *(v211 - 1) = 0;
              }

              *v220 = *__p;
              *(v211 - 1) = __p[2];
              memset(__p, 0, sizeof(__p));
              v222 = *v211;
              if (*v211)
              {
                *(v211 + 1) = v222;
                operator delete(v222);
                *v211 = 0;
                *(v211 + 1) = 0;
                *(v211 + 2) = 0;
                v222 = __p[0];
              }

              *v211 = v247[0];
              *(v211 + 2) = *&v247[1];
              memset(v247, 0, 24);
              if (v222)
              {
                __p[1] = v222;
                operator delete(v222);
              }

              if (v245[0])
              {
                v245[1] = v245[0];
                operator delete(v245[0]);
              }

              std::__tree<unsigned long>::destroy(v243);
            }

            v197 = v199 + 8;
            v198 += 128;
            a1 = v199;
          }

          while (v199 + 8 != v227);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v123 = v11 >> 1;
        v124 = v11 >> 1;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v126 = (2 * v124) | 1;
            v127 = &a1[8 * v126];
            if (2 * v125 + 2 < v10 && *v127 > *(v127 + 16))
            {
              v127 += 8;
              v126 = 2 * v125 + 2;
            }

            v128 = &a1[8 * v125];
            if (*v127 <= *v128)
            {
              v129 = v128[1];
              v240 = *v128;
              v241 = v129;
              v242 = *(v128 + 4);
              v130 = v128 + 5;
              v131 = *(v128 + 5);
              v243 = v131;
              v244 = *(v128 + 6);
              if (v244)
              {
                v131[2] = &v243;
                *(v128 + 4) = v130;
                *v130 = 0;
                *(v128 + 6) = 0;
              }

              else
              {
                v242 = &v243;
              }

              *v245 = *(v128 + 56);
              v245[2] = *(v128 + 9);
              *(v128 + 7) = 0;
              *(v128 + 8) = 0;
              *(v128 + 9) = 0;
              *__p = v128[5];
              __p[2] = *(v128 + 12);
              *(v128 + 10) = 0;
              *(v128 + 11) = 0;
              *(v128 + 12) = 0;
              v247[0] = *(v128 + 104);
              *&v247[1] = *(v128 + 15);
              *(v128 + 13) = 0;
              *(v128 + 14) = 0;
              *(v128 + 15) = 0;
              do
              {
                v132 = v127;
                v133 = v127[1];
                *v128 = *v127;
                v128[1] = v133;
                std::__tree<unsigned long>::__move_assign(v128 + 4, v127 + 4);
                v134 = *(v128 + 7);
                if (v134)
                {
                  *(v128 + 8) = v134;
                  operator delete(v134);
                  *(v128 + 7) = 0;
                  *(v128 + 8) = 0;
                  *(v128 + 9) = 0;
                }

                *(v128 + 56) = *(v132 + 56);
                *(v128 + 9) = *(v132 + 9);
                *(v132 + 7) = 0;
                *(v132 + 8) = 0;
                *(v132 + 9) = 0;
                v135 = *(v128 + 10);
                if (v135)
                {
                  *(v128 + 11) = v135;
                  operator delete(v135);
                  *(v128 + 10) = 0;
                  *(v128 + 11) = 0;
                  *(v128 + 12) = 0;
                }

                v128[5] = v132[5];
                *(v128 + 12) = *(v132 + 12);
                *(v132 + 10) = 0;
                *(v132 + 11) = 0;
                *(v132 + 12) = 0;
                v136 = *(v128 + 13);
                if (v136)
                {
                  *(v128 + 14) = v136;
                  operator delete(v136);
                  *(v128 + 13) = 0;
                  *(v128 + 14) = 0;
                  *(v128 + 15) = 0;
                }

                *(v128 + 104) = *(v132 + 104);
                *(v128 + 15) = *(v132 + 15);
                *(v132 + 13) = 0;
                *(v132 + 14) = 0;
                *(v132 + 15) = 0;
                if (v123 < v126)
                {
                  break;
                }

                v137 = 2 * v126;
                v126 = (2 * v126) | 1;
                v127 = &a1[8 * v126];
                v138 = v137 + 2;
                if (v138 < v10 && *v127 > *(v127 + 16))
                {
                  v127 += 8;
                  v126 = v138;
                }

                v128 = v132;
              }

              while (*v127 <= *&v240);
              v139 = v241;
              *v132 = v240;
              v132[1] = v139;
              v140 = v132 + 40;
              std::__tree<unsigned long>::destroy(*(v132 + 5));
              *(v132 + 4) = v242;
              v141 = v243;
              *(v132 + 5) = v243;
              v142 = v244;
              *(v132 + 6) = v244;
              if (v142)
              {
                v141[2] = v140;
                v242 = &v243;
                v243 = 0;
                v244 = 0;
              }

              else
              {
                *(v132 + 4) = v140;
              }

              v143 = *(v132 + 7);
              if (v143)
              {
                *(v132 + 8) = v143;
                operator delete(v143);
                *(v132 + 7) = 0;
                *(v132 + 8) = 0;
                *(v132 + 9) = 0;
              }

              *(v132 + 56) = *v245;
              *(v132 + 9) = v245[2];
              memset(v245, 0, sizeof(v245));
              v144 = *(v132 + 10);
              if (v144)
              {
                *(v132 + 11) = v144;
                operator delete(v144);
                *(v132 + 10) = 0;
                *(v132 + 11) = 0;
                *(v132 + 12) = 0;
              }

              v132[5] = *__p;
              *(v132 + 12) = __p[2];
              memset(__p, 0, sizeof(__p));
              v145 = *(v132 + 13);
              if (v145)
              {
                *(v132 + 14) = v145;
                operator delete(v145);
                *(v132 + 13) = 0;
                *(v132 + 14) = 0;
                *(v132 + 15) = 0;
                v145 = __p[0];
              }

              *(v132 + 104) = v247[0];
              *(v132 + 15) = *&v247[1];
              memset(v247, 0, 24);
              if (v145)
              {
                __p[1] = v145;
                operator delete(v145);
              }

              a2 = v227;
              if (v245[0])
              {
                v245[1] = v245[0];
                operator delete(v245[0]);
              }

              std::__tree<unsigned long>::destroy(v243);
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        v228 = a1 + 5;
        do
        {
          v229 = *a1;
          v230 = a1[1];
          v146 = *(a1 + 5);
          v231 = *(a1 + 4);
          v232 = v146;
          v233 = *(a1 + 6);
          v147 = a2;
          if (v233)
          {
            v146[2] = &v232;
            *(a1 + 4) = v228;
            *v228 = 0;
            *(a1 + 6) = 0;
          }

          else
          {
            v231 = &v232;
          }

          v148 = 0;
          *v234 = *(a1 + 56);
          v235 = *(a1 + 9);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *v236 = a1[5];
          v237 = *(a1 + 12);
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *(a1 + 12) = 0;
          *v238 = *(a1 + 104);
          v239 = *(a1 + 15);
          *(a1 + 13) = 0;
          *(a1 + 14) = 0;
          v149 = a1;
          *(a1 + 15) = 0;
          do
          {
            v150 = &v149[8 * v148];
            v151 = v150 + 8;
            if (2 * v148 + 2 >= v10)
            {
              v148 = (2 * v148) | 1;
            }

            else if (*(v150 + 16) <= *(v150 + 32))
            {
              v148 = (2 * v148) | 1;
            }

            else
            {
              v151 = v150 + 16;
              v148 = 2 * v148 + 2;
            }

            v152 = v151[1];
            *v149 = *v151;
            v149[1] = v152;
            std::__tree<unsigned long>::__move_assign(v149 + 4, v151 + 4);
            v153 = *(v149 + 7);
            if (v153)
            {
              *(v149 + 8) = v153;
              operator delete(v153);
              *(v149 + 7) = 0;
              *(v149 + 8) = 0;
              *(v149 + 9) = 0;
            }

            *(v149 + 56) = *(v151 + 56);
            *(v149 + 9) = *(v151 + 9);
            *(v151 + 7) = 0;
            *(v151 + 8) = 0;
            *(v151 + 9) = 0;
            v154 = *(v149 + 10);
            if (v154)
            {
              *(v149 + 11) = v154;
              operator delete(v154);
              *(v149 + 10) = 0;
              *(v149 + 11) = 0;
              *(v149 + 12) = 0;
            }

            v149[5] = v151[5];
            *(v149 + 12) = *(v151 + 12);
            *(v151 + 10) = 0;
            *(v151 + 11) = 0;
            *(v151 + 12) = 0;
            v155 = *(v149 + 13);
            if (v155)
            {
              *(v149 + 14) = v155;
              operator delete(v155);
              *(v149 + 13) = 0;
              *(v149 + 14) = 0;
              *(v149 + 15) = 0;
            }

            *(v149 + 104) = *(v151 + 104);
            *(v149 + 15) = *(v151 + 15);
            *(v151 + 13) = 0;
            *(v151 + 14) = 0;
            *(v151 + 15) = 0;
            v149 = v151;
          }

          while (v148 <= ((v10 - 2) >> 1));
          v156 = a2 - 8;
          if (v151 == a2 - 8)
          {
            *v151 = v229;
            v151[1] = v230;
            v168 = v151 + 40;
            std::__tree<unsigned long>::destroy(*(v151 + 5));
            *(v151 + 4) = v231;
            v169 = v232;
            *(v151 + 5) = v232;
            v170 = v233;
            *(v151 + 6) = v233;
            if (v170)
            {
              v169[2] = v168;
              v232 = 0;
              v233 = 0;
            }

            else
            {
              *(v151 + 4) = v168;
            }

            v182 = *(v151 + 7);
            if (v182)
            {
              *(v151 + 8) = v182;
              operator delete(v182);
              *(v151 + 7) = 0;
              *(v151 + 8) = 0;
              *(v151 + 9) = 0;
            }

            *(v151 + 56) = *v234;
            *(v151 + 9) = v235;
            v234[0] = 0;
            v234[1] = 0;
            v235 = 0;
            v183 = *(v151 + 10);
            if (v183)
            {
              *(v151 + 11) = v183;
              operator delete(v183);
              *(v151 + 10) = 0;
              *(v151 + 11) = 0;
              *(v151 + 12) = 0;
            }

            v151[5] = *v236;
            *(v151 + 12) = v237;
            v236[0] = 0;
            v236[1] = 0;
            v237 = 0;
            v184 = *(v151 + 13);
            if (v184)
            {
              *(v151 + 14) = v184;
              operator delete(v184);
              *(v151 + 13) = 0;
              *(v151 + 14) = 0;
              *(v151 + 15) = 0;
            }

            *(v151 + 104) = *v238;
            *(v151 + 15) = v239;
            v238[0] = 0;
            v238[1] = 0;
            v239 = 0;
          }

          else
          {
            v157 = *(a2 - 7);
            *v151 = *v156;
            v151[1] = v157;
            std::__tree<unsigned long>::__move_assign(v151 + 4, a2 - 12);
            v158 = *(v151 + 7);
            if (v158)
            {
              *(v151 + 8) = v158;
              operator delete(v158);
              *(v151 + 7) = 0;
              *(v151 + 8) = 0;
              *(v151 + 9) = 0;
            }

            *(v151 + 56) = *(a2 - 72);
            *(v151 + 9) = *(a2 - 7);
            *(a2 - 9) = 0;
            *(a2 - 8) = 0;
            v159 = a2 - 9;
            *(v147 - 7) = 0;
            v160 = *(v151 + 10);
            if (v160)
            {
              *(v151 + 11) = v160;
              operator delete(v160);
              *(v151 + 10) = 0;
              *(v151 + 11) = 0;
              *(v151 + 12) = 0;
            }

            v161 = v147 - 3;
            v151[5] = *(v147 - 3);
            *(v151 + 12) = *(v147 - 4);
            *v161 = 0;
            *(v161 + 1) = 0;
            *(v161 + 2) = 0;
            v162 = *(v151 + 13);
            if (v162)
            {
              *(v151 + 14) = v162;
              operator delete(v162);
              *(v151 + 13) = 0;
              *(v151 + 14) = 0;
              *(v151 + 15) = 0;
            }

            v163 = v147 - 3;
            *(v151 + 104) = *(v147 - 24);
            v165 = v147 - 88;
            v164 = *(v147 - 11);
            *(v151 + 15) = *(v147 - 1);
            *v163 = 0;
            v163[1] = 0;
            v163[2] = 0;
            *v156 = v229;
            *(v147 - 7) = v230;
            std::__tree<unsigned long>::destroy(v164);
            *(v147 - 12) = v231;
            v166 = v232;
            *(v147 - 11) = v232;
            v167 = v233;
            *(v147 - 10) = v233;
            if (v167)
            {
              v166[2] = v165;
              v232 = 0;
              v233 = 0;
            }

            else
            {
              *(v147 - 12) = v165;
            }

            v171 = *v159;
            if (*v159)
            {
              *(v147 - 8) = v171;
              operator delete(v171);
            }

            *(v147 - 72) = *v234;
            *(v147 - 7) = v235;
            v234[0] = 0;
            v234[1] = 0;
            v235 = 0;
            v172 = *(v147 - 6);
            if (v172)
            {
              *(v147 - 5) = v172;
              operator delete(v172);
            }

            *(v147 - 3) = *v236;
            *(v147 - 4) = v237;
            v236[0] = 0;
            v236[1] = 0;
            v237 = 0;
            v173 = *(v147 - 3);
            if (v173)
            {
              *(v147 - 2) = v173;
              operator delete(v173);
            }

            *(v147 - 24) = *v238;
            *(v147 - 1) = v239;
            v238[0] = 0;
            v238[1] = 0;
            v239 = 0;
            v174 = ((v151 + 8) - a1) >> 7;
            v175 = v174 < 2;
            v176 = v174 - 2;
            if (!v175)
            {
              v177 = v176 >> 1;
              v178 = &a1[8 * (v176 >> 1)];
              if (*v178 > *v151)
              {
                v179 = v151[1];
                v240 = *v151;
                v241 = v179;
                v180 = v151 + 5;
                v181 = *(v151 + 5);
                v242 = *(v151 + 4);
                v243 = v181;
                v244 = *(v151 + 6);
                if (v244)
                {
                  v181[2] = &v243;
                  *(v151 + 4) = v180;
                  *v180 = 0;
                  *(v151 + 6) = 0;
                }

                else
                {
                  v242 = &v243;
                }

                *v245 = *(v151 + 56);
                v245[2] = *(v151 + 9);
                *(v151 + 7) = 0;
                *(v151 + 8) = 0;
                *(v151 + 9) = 0;
                *__p = v151[5];
                __p[2] = *(v151 + 12);
                *(v151 + 10) = 0;
                *(v151 + 11) = 0;
                *(v151 + 12) = 0;
                v247[0] = *(v151 + 104);
                *&v247[1] = *(v151 + 15);
                *(v151 + 13) = 0;
                *(v151 + 14) = 0;
                *(v151 + 15) = 0;
                do
                {
                  v185 = v178;
                  v186 = v178[1];
                  *v151 = *v178;
                  v151[1] = v186;
                  std::__tree<unsigned long>::__move_assign(v151 + 4, v178 + 4);
                  v187 = *(v151 + 7);
                  if (v187)
                  {
                    *(v151 + 8) = v187;
                    operator delete(v187);
                    *(v151 + 7) = 0;
                    *(v151 + 8) = 0;
                    *(v151 + 9) = 0;
                  }

                  *(v151 + 56) = *(v185 + 56);
                  *(v151 + 9) = *(v185 + 9);
                  *(v185 + 7) = 0;
                  *(v185 + 8) = 0;
                  *(v185 + 9) = 0;
                  v188 = *(v151 + 10);
                  if (v188)
                  {
                    *(v151 + 11) = v188;
                    operator delete(v188);
                    *(v151 + 10) = 0;
                    *(v151 + 11) = 0;
                    *(v151 + 12) = 0;
                  }

                  v151[5] = v185[5];
                  *(v151 + 12) = *(v185 + 12);
                  *(v185 + 10) = 0;
                  *(v185 + 11) = 0;
                  *(v185 + 12) = 0;
                  v189 = *(v151 + 13);
                  if (v189)
                  {
                    *(v151 + 14) = v189;
                    operator delete(v189);
                    *(v151 + 13) = 0;
                    *(v151 + 14) = 0;
                    *(v151 + 15) = 0;
                  }

                  *(v151 + 104) = *(v185 + 104);
                  *(v151 + 15) = *(v185 + 15);
                  *(v185 + 13) = 0;
                  *(v185 + 14) = 0;
                  *(v185 + 15) = 0;
                  if (!v177)
                  {
                    break;
                  }

                  v177 = (v177 - 1) >> 1;
                  v178 = &a1[8 * v177];
                  v151 = v185;
                }

                while (*v178 > *&v240);
                v190 = v241;
                *v185 = v240;
                v185[1] = v190;
                v191 = v185 + 40;
                std::__tree<unsigned long>::destroy(*(v185 + 5));
                *(v185 + 4) = v242;
                v192 = v243;
                *(v185 + 5) = v243;
                v193 = v244;
                *(v185 + 6) = v244;
                if (v193)
                {
                  v192[2] = v191;
                  v242 = &v243;
                  v243 = 0;
                  v244 = 0;
                }

                else
                {
                  *(v185 + 4) = v191;
                }

                v194 = *(v185 + 7);
                if (v194)
                {
                  *(v185 + 8) = v194;
                  operator delete(v194);
                }

                *(v185 + 56) = *v245;
                *(v185 + 9) = v245[2];
                memset(v245, 0, sizeof(v245));
                v195 = *(v185 + 10);
                if (v195)
                {
                  *(v185 + 11) = v195;
                  operator delete(v195);
                }

                v185[5] = *__p;
                *(v185 + 12) = __p[2];
                memset(__p, 0, sizeof(__p));
                v196 = *(v185 + 13);
                if (v196)
                {
                  *(v185 + 14) = v196;
                  operator delete(v196);
                  v196 = __p[0];
                }

                *(v185 + 104) = v247[0];
                *(v185 + 15) = *&v247[1];
                memset(v247, 0, 24);
                if (v196)
                {
                  __p[1] = v196;
                  operator delete(v196);
                }

                if (v245[0])
                {
                  v245[1] = v245[0];
                  operator delete(v245[0]);
                }

                std::__tree<unsigned long>::destroy(v243);
                if (v238[0])
                {
                  v238[1] = v238[0];
                  operator delete(v238[0]);
                }
              }
            }
          }

          if (v236[0])
          {
            v236[1] = v236[0];
            operator delete(v236[0]);
          }

          if (v234[0])
          {
            v234[1] = v234[0];
            operator delete(v234[0]);
          }

          std::__tree<unsigned long>::destroy(v232);
          a2 = v147 - 8;
          v175 = v10-- <= 2;
        }

        while (!v175);
      }

      return result;
    }

    v12 = &v9[8 * (v10 >> 1)];
    v13 = v12;
    v14 = *v8;
    if (v10 >= 0x81)
    {
      v15 = *v12;
      if (*v12 <= *a1)
      {
        if (v14 <= v15 || (std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(&a1[8 * (v10 >> 1)], v8), *v12 <= *a1))
        {
LABEL_26:
          v21 = (v12 - 16);
          v22 = *(v12 - 16);
          v23 = *v224;
          if (v22 <= *(a1 + 16))
          {
            if (v23 <= v22 || (std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v12 - 8, v224), *v21 <= *(a1 + 16)))
            {
LABEL_38:
              v27 = v12[16];
              v26 = (v12 + 16);
              v28 = v27;
              v29 = *v223;
              if (v27 <= *(a1 + 32))
              {
                if (v29 <= v28 || (std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v26, v223), *v26 <= *(a1 + 32)))
                {
LABEL_47:
                  v32 = *v13;
                  v33 = *v26;
                  if (*v13 <= *v21)
                  {
                    if (v33 <= v32)
                    {
                      goto LABEL_56;
                    }

                    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v13, v26);
                    if (*v13 <= *v21)
                    {
                      goto LABEL_56;
                    }

                    v34 = v21;
                    v35 = v13;
                  }

                  else
                  {
                    v34 = v21;
                    if (v33 <= v32)
                    {
                      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v21, v13);
                      if (*v26 <= *v13)
                      {
LABEL_56:
                        v19 = a1;
                        v20 = v13;
                        goto LABEL_57;
                      }

                      v34 = v13;
                    }

                    v35 = v26;
                  }

                  std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v34, v35);
                  goto LABEL_56;
                }

                v30 = a1 + 16;
                v31 = v26;
              }

              else
              {
                v30 = a1 + 16;
                if (v29 <= v28)
                {
                  std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v30, v26);
                  if (*v223 <= *v26)
                  {
                    goto LABEL_47;
                  }

                  v30 = v26;
                }

                v31 = v223;
              }

              std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v30, v31);
              goto LABEL_47;
            }

            v24 = a1 + 8;
            v25 = (v12 - 16);
          }

          else
          {
            v24 = a1 + 8;
            if (v23 <= v22)
            {
              std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v24, v12 - 8);
              if (*v224 <= *v21)
              {
                goto LABEL_38;
              }

              v24 = (v12 - 16);
            }

            v25 = v224;
          }

          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v24, v25);
          goto LABEL_38;
        }

        v16 = a1;
        v17 = &a1[8 * (v10 >> 1)];
      }

      else
      {
        v16 = a1;
        if (v14 <= v15)
        {
          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, &a1[8 * (v10 >> 1)]);
          if (*v8 <= *v12)
          {
            goto LABEL_26;
          }

          v16 = &a1[8 * (v10 >> 1)];
        }

        v17 = v8;
      }

      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v16, v17);
      goto LABEL_26;
    }

    v18 = *a1;
    if (*a1 <= *v12)
    {
      if (v14 <= v18)
      {
        goto LABEL_58;
      }

      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, v8);
      if (*a1 <= *v12)
      {
        goto LABEL_58;
      }

      v19 = &a1[8 * (v10 >> 1)];
      v20 = a1;
    }

    else
    {
      v19 = &a1[8 * (v10 >> 1)];
      if (v14 <= v18)
      {
        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v19, a1);
        if (*v8 <= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = v8;
    }

LABEL_57:
    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v19, v20);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 16) > *a1)
    {
      v36 = a1[1];
      v240 = *a1;
      v241 = v36;
      v37 = a1 + 5;
      v38 = *(a1 + 5);
      v242 = *(a1 + 4);
      v243 = v38;
      v244 = *(a1 + 6);
      if (v244)
      {
        v38[2] = &v243;
        *(a1 + 4) = v37;
        *v37 = 0;
        *(a1 + 6) = 0;
      }

      else
      {
        v242 = &v243;
      }

      *v245 = *(a1 + 56);
      v245[2] = *(a1 + 9);
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      v39 = a1[5];
      *(a1 + 9) = 0;
      *__p = v39;
      __p[2] = *(a1 + 12);
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      *(a1 + 12) = 0;
      v247[0] = *(a1 + 104);
      *&v247[1] = *(a1 + 15);
      *(a1 + 13) = 0;
      *(a1 + 14) = 0;
      *(a1 + 15) = 0;
      v40 = a1;
      do
      {
        v41 = v40;
        v42 = *(v40 + 16);
        v40 += 8;
      }

      while (v42 > *&v240);
      if (v41 == a1)
      {
        a2 = v227;
        do
        {
          if (v40 >= a2)
          {
            break;
          }

          v44 = *(a2 - 16);
          a2 -= 8;
        }

        while (v44 <= *&v240);
      }

      else
      {
        do
        {
          v43 = *(a2 - 16);
          a2 -= 8;
        }

        while (v43 <= *&v240);
      }

      v9 = v40;
      if (v40 < a2)
      {
        v45 = a2;
        do
        {
          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9, v45);
          do
          {
            v46 = *(v9 + 16);
            v9 += 8;
          }

          while (v46 > *&v240);
          do
          {
            v47 = *(v45 - 16);
            v45 -= 8;
          }

          while (v47 <= *&v240);
        }

        while (v9 < v45);
      }

      v48 = v9 - 8;
      if (v9 - 8 != a1)
      {
        v49 = *(v9 - 7);
        *a1 = *v48;
        a1[1] = v49;
        std::__tree<unsigned long>::__move_assign(a1 + 4, v9 - 12);
        v50 = *(a1 + 7);
        if (v50)
        {
          *(a1 + 8) = v50;
          operator delete(v50);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
        }

        v51 = v9 - 9;
        *(a1 + 56) = *(v9 - 72);
        *(a1 + 9) = *(v9 - 7);
        *v51 = 0;
        v51[1] = 0;
        v51[2] = 0;
        v52 = *(a1 + 10);
        if (v52)
        {
          *(a1 + 11) = v52;
          operator delete(v52);
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *(a1 + 12) = 0;
        }

        v53 = v9 - 3;
        a1[5] = *(v9 - 3);
        *(a1 + 12) = *(v9 - 4);
        *v53 = 0;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        v54 = *(a1 + 13);
        if (v54)
        {
          *(a1 + 14) = v54;
          operator delete(v54);
          *(a1 + 13) = 0;
          *(a1 + 14) = 0;
          *(a1 + 15) = 0;
        }

        v55 = v9 - 3;
        *(a1 + 104) = *(v9 - 24);
        *(a1 + 15) = *(v9 - 1);
        *v55 = 0;
        v55[1] = 0;
        v55[2] = 0;
      }

      v56 = v241;
      *v48 = v240;
      *(v9 - 7) = v56;
      v57 = v9 - 88;
      std::__tree<unsigned long>::destroy(*(v9 - 11));
      *(v9 - 12) = v242;
      v58 = v243;
      *(v9 - 11) = v243;
      v59 = v244;
      *(v9 - 10) = v244;
      if (v59)
      {
        v58[2] = v57;
        v242 = &v243;
        v243 = 0;
        v244 = 0;
      }

      else
      {
        *(v9 - 12) = v57;
      }

      v60 = *(v9 - 9);
      v8 = v225;
      if (v60)
      {
        *(v9 - 8) = v60;
        operator delete(v60);
        *(v9 - 9) = 0;
        *(v9 - 8) = 0;
        *(v9 - 7) = 0;
      }

      *(v9 - 72) = *v245;
      *(v9 - 7) = v245[2];
      memset(v245, 0, sizeof(v245));
      v61 = *(v9 - 6);
      if (v61)
      {
        *(v9 - 5) = v61;
        operator delete(v61);
        *(v9 - 6) = 0;
        *(v9 - 5) = 0;
        *(v9 - 4) = 0;
      }

      *(v9 - 3) = *__p;
      *(v9 - 4) = __p[2];
      memset(__p, 0, sizeof(__p));
      v62 = *(v9 - 3);
      if (v62)
      {
        *(v9 - 2) = v62;
        operator delete(v62);
        *(v9 - 3) = 0;
        *(v9 - 2) = 0;
        *(v9 - 1) = 0;
        v62 = __p[0];
      }

      *(v9 - 24) = v247[0];
      *(v9 - 1) = *&v247[1];
      memset(v247, 0, 24);
      if (v62)
      {
        __p[1] = v62;
        operator delete(v62);
      }

      if (v245[0])
      {
        v245[1] = v245[0];
        operator delete(v245[0]);
      }

      std::__tree<unsigned long>::destroy(v243);
      v63 = v40 >= a2;
      a2 = v227;
      if (!v63)
      {
        goto LABEL_102;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *>(a1, v9 - 8);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *>(v9, v227))
      {
        a2 = v9 - 8;
        if (!v64)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v64)
      {
LABEL_102:
        std::__introsort<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,false>(a1, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v65 = a1[1];
      v240 = *a1;
      v241 = v65;
      v66 = a1 + 5;
      v67 = *(a1 + 5);
      v242 = *(a1 + 4);
      v243 = v67;
      v244 = *(a1 + 6);
      if (v244)
      {
        v67[2] = &v243;
        *(a1 + 4) = v66;
        *v66 = 0;
        *(a1 + 6) = 0;
      }

      else
      {
        v242 = &v243;
      }

      *v245 = *(a1 + 56);
      v245[2] = *(a1 + 9);
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      *(a1 + 9) = 0;
      *__p = a1[5];
      __p[2] = *(a1 + 12);
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      *(a1 + 12) = 0;
      v247[0] = *(a1 + 104);
      *&v247[1] = *(a1 + 15);
      *(a1 + 13) = 0;
      *(a1 + 14) = 0;
      *(a1 + 15) = 0;
      if (*&v240 <= *v8)
      {
        v69 = a1 + 8;
        do
        {
          v9 = v69;
          if (v69 >= v227)
          {
            break;
          }

          v69 += 8;
        }

        while (*&v240 <= *v9);
      }

      else
      {
        v9 = a1;
        do
        {
          v68 = *(v9 + 16);
          v9 += 8;
        }

        while (*&v240 <= v68);
      }

      v70 = v227;
      if (v9 < v227)
      {
        v70 = v227;
        do
        {
          v71 = *(v70 - 16);
          v70 -= 8;
        }

        while (*&v240 > v71);
      }

      while (v9 < v70)
      {
        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9, v70);
        do
        {
          v72 = *(v9 + 16);
          v9 += 8;
        }

        while (*&v240 <= v72);
        do
        {
          v73 = *(v70 - 16);
          v70 -= 8;
        }

        while (*&v240 > v73);
      }

      v74 = v9 - 8;
      if (v9 - 8 != a1)
      {
        v75 = *(v9 - 7);
        *a1 = *v74;
        a1[1] = v75;
        std::__tree<unsigned long>::__move_assign(a1 + 4, v9 - 12);
        v76 = *(a1 + 7);
        if (v76)
        {
          *(a1 + 8) = v76;
          operator delete(v76);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
        }

        v77 = v9 - 9;
        *(a1 + 56) = *(v9 - 72);
        *(a1 + 9) = *(v9 - 7);
        *v77 = 0;
        v77[1] = 0;
        v77[2] = 0;
        v78 = *(a1 + 10);
        if (v78)
        {
          *(a1 + 11) = v78;
          operator delete(v78);
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *(a1 + 12) = 0;
        }

        v79 = v9 - 3;
        a1[5] = *(v9 - 3);
        *(a1 + 12) = *(v9 - 4);
        *v79 = 0;
        *(v79 + 1) = 0;
        *(v79 + 2) = 0;
        v80 = *(a1 + 13);
        if (v80)
        {
          *(a1 + 14) = v80;
          operator delete(v80);
          *(a1 + 13) = 0;
          *(a1 + 14) = 0;
          *(a1 + 15) = 0;
        }

        v81 = v9 - 3;
        *(a1 + 104) = *(v9 - 24);
        *(a1 + 15) = *(v9 - 1);
        *v81 = 0;
        v81[1] = 0;
        v81[2] = 0;
      }

      v82 = v241;
      *v74 = v240;
      *(v9 - 7) = v82;
      v83 = v9 - 88;
      std::__tree<unsigned long>::destroy(*(v9 - 11));
      *(v9 - 12) = v242;
      v84 = v243;
      *(v9 - 11) = v243;
      v85 = v244;
      *(v9 - 10) = v244;
      if (v85)
      {
        v84[2] = v83;
        v242 = &v243;
        v243 = 0;
        v244 = 0;
      }

      else
      {
        *(v9 - 12) = v83;
      }

      a2 = v227;
      v86 = *(v9 - 9);
      if (v86)
      {
        *(v9 - 8) = v86;
        operator delete(v86);
        *(v9 - 9) = 0;
        *(v9 - 8) = 0;
        *(v9 - 7) = 0;
      }

      *(v9 - 72) = *v245;
      *(v9 - 7) = v245[2];
      memset(v245, 0, sizeof(v245));
      v87 = *(v9 - 6);
      if (v87)
      {
        *(v9 - 5) = v87;
        operator delete(v87);
        *(v9 - 6) = 0;
        *(v9 - 5) = 0;
        *(v9 - 4) = 0;
      }

      *(v9 - 3) = *__p;
      *(v9 - 4) = __p[2];
      memset(__p, 0, sizeof(__p));
      v88 = *(v9 - 3);
      if (v88)
      {
        *(v9 - 2) = v88;
        operator delete(v88);
        *(v9 - 3) = 0;
        *(v9 - 2) = 0;
        *(v9 - 1) = 0;
        v88 = __p[0];
      }

      *(v9 - 24) = v247[0];
      *(v9 - 1) = *&v247[1];
      memset(v247, 0, 24);
      if (v88)
      {
        __p[1] = v88;
        operator delete(v88);
      }

      if (v245[0])
      {
        v245[1] = v245[0];
        operator delete(v245[0]);
      }

      std::__tree<unsigned long>::destroy(v243);
      a4 = 0;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,0>(v9, v9 + 8, v9 + 16, v9 + 24);
  result = *v8;
  if (*v8 > *(v9 + 48))
  {
    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9 + 24, v8);
    result = *(v9 + 48);
    if (result > *(v9 + 32))
    {
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9 + 16, v9 + 24);
      result = *(v9 + 32);
      if (result > *(v9 + 16))
      {
        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v9 + 8, v9 + 16);
        result = *(v9 + 16);
        if (result > *v9)
        {
          v89 = v9 + 8;
          v90 = v9;
          goto LABEL_156;
        }
      }
    }
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *,nl_featurization::beam_search::BeamSequence *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = 0;
    v25 = a1 + 40;
    do
    {
      v6 = a1 + v5;
      v7 = a3 + v5;
      v8 = *(a1 + v5 + 16);
      *v7 = *(a1 + v5);
      *(v7 + 16) = v8;
      if (a1 != a3)
      {
        std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(v7 + 32, *(v6 + 32), (v25 + v5));
        std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((v7 + 56), *(v6 + 56), *(v6 + 64), (*(v6 + 64) - *(v6 + 56)) >> 3);
        std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((v7 + 80), *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 3);
        v11 = *(v7 + 104);
        v9 = (v7 + 104);
        v10 = v11;
        v12 = *(v6 + 104);
        v13 = *(v6 + 112);
        v14 = v13 - v12;
        v15 = v9[2];
        if (v15 - v11 < (v13 - v12))
        {
          if (v10)
          {
            *(a3 + v5 + 112) = v10;
            operator delete(v10);
            v15 = 0;
            *v9 = 0;
            v9[1] = 0;
            v9[2] = 0;
          }

          v16 = v14 >> 4;
          if (!((v14 >> 4) >> 60))
          {
            if (v15 >> 3 > v16)
            {
              v16 = v15 >> 3;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF0)
            {
              v17 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            std::vector<std::optional<unsigned long>>::__vallocate[abi:ne200100](v9, v17);
          }

          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v18 = a3 + v5;
        v19 = *(a3 + v5 + 112);
        v20 = v19 - v10;
        if (v19 - v10 >= v14)
        {
          if (v13 != v12)
          {
            memmove(v10, v12, v14 - 7);
          }

          v23 = &v10[v14];
        }

        else
        {
          if (v19 != v10)
          {
            memmove(v10, v12, v20 - 7);
            v19 = *(v18 + 112);
          }

          v21 = &v12[v20];
          v22 = v13 - &v12[v20];
          if (v22)
          {
            memmove(v19, v21, v22 - 7);
          }

          v23 = &v19[v22];
        }

        *(v18 + 112) = v23;
      }

      v5 += 128;
    }

    while (a1 + v5 != a2);
    a3 += v5;
  }

  return a3;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nl_featurization::beam_search::BeamSequence>,nl_featurization::beam_search::BeamSequence*,nl_featurization::beam_search::BeamSequence*,nl_featurization::beam_search::BeamSequence*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = &a2[v7 / 8];
      v10 = *&a2[v7 / 8 + 2];
      *v8 = *&a2[v7 / 8];
      *(v8 + 16) = v10;
      std::set<unsigned long>::set[abi:ne200100]((a4 + v7 + 32), &a2[v7 / 8 + 4]);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a4 + v7 + 56, v9[7], v9[8], (v9[8] - v9[7]) >> 3);
      v11 = a4 + v7;
      v12 = a4 + v7;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(a4 + v7 + 96) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a4 + v7 + 80, v9[10], v9[11], (v9[11] - v9[10]) >> 3);
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      v13 = a4 + v7 + 104;
      *(v13 + 16) = 0;
      std::vector<std::optional<unsigned long>>::__init_with_size[abi:ne200100]<std::optional<unsigned long>*,std::optional<unsigned long>*>(v13, v9[13], v9[14], (v9[14] - v9[13]) >> 4);
      v7 += 128;
    }

    while (v9 + 16 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2229C9760(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 16;
    std::allocator_traits<std::allocator<nl_featurization::beam_search::BeamSequence>>::destroy[abi:ne200100]<nl_featurization::beam_search::BeamSequence,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<unsigned long>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<unsigned long>::destroy(a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(__int128 *a1, __int128 *a2)
{
  v18 = *a1;
  v19 = a1[1];
  v5 = *(a1 + 4);
  v4 = a1 + 2;
  v6 = a1 + 5;
  v7 = *(a1 + 5);
  v20 = v5;
  v21 = v7;
  v22 = *(a1 + 6);
  if (v22)
  {
    v7[2] = &v21;
    *v4 = v6;
    *v6 = 0;
    *(a1 + 6) = 0;
  }

  else
  {
    v20 = &v21;
  }

  *v23 = *(a1 + 56);
  v24 = *(a1 + 9);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 7) = 0;
  *__p = a1[5];
  v26 = *(a1 + 12);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = 0;
  v27 = *(a1 + 104);
  v28 = *(a1 + 15);
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  std::__tree<unsigned long>::__move_assign(v4, a2 + 4);
  v9 = *(a1 + 7);
  if (v9)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
    *(a1 + 7) = 0;
    *(a1 + 8) = 0;
    *(a1 + 9) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  v10 = *(a1 + 10);
  if (v10)
  {
    *(a1 + 11) = v10;
    operator delete(v10);
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    *(a1 + 12) = 0;
  }

  a1[5] = a2[5];
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v11 = *(a1 + 13);
  if (v11)
  {
    *(a1 + 14) = v11;
    operator delete(v11);
    *(a1 + 13) = 0;
    *(a1 + 14) = 0;
    *(a1 + 15) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 15) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *a2 = v18;
  a2[1] = v19;
  v12 = a2 + 40;
  std::__tree<unsigned long>::destroy(*(a2 + 5));
  v13 = v21;
  *(a2 + 4) = v20;
  *(a2 + 5) = v13;
  v14 = v22;
  *(a2 + 6) = v22;
  if (v14)
  {
    v13[2] = v12;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    *(a2 + 4) = v12;
  }

  v15 = *(a2 + 7);
  if (v15)
  {
    *(a2 + 8) = v15;
    operator delete(v15);
  }

  *(a2 + 56) = *v23;
  *(a2 + 9) = v24;
  v23[1] = 0;
  v24 = 0;
  v23[0] = 0;
  v16 = *(a2 + 10);
  if (v16)
  {
    *(a2 + 11) = v16;
    operator delete(v16);
  }

  a2[5] = *__p;
  *(a2 + 12) = v26;
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  v17 = *(a2 + 13);
  if (v17)
  {
    *(a2 + 14) = v17;
    operator delete(v17);
    v17 = __p[0];
  }

  *(a2 + 104) = v27;
  *(a2 + 15) = v28;
  v28 = 0;
  v27 = 0uLL;
  if (v17)
  {
    __p[1] = v17;
    operator delete(v17);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  std::__tree<unsigned long>::destroy(v21);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 <= *a1)
  {
    if (v9 > v8)
    {
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a2, a3);
      if (*a2 > *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, a2);
    if (*a3 > *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a3, a4);
    if (*a3 > *a2)
    {
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a2, a3);
      if (*a2 > *v7)
      {

        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *>(__int128 *a1, __int128 *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = (a2 - a1) >> 7;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 16);
        v5 = a2 - 8;
        v10 = *(a2 - 16);
        if (v9 <= *a1)
        {
          if (v10 <= v9)
          {
            return 1;
          }

          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1 + 8, v5);
          if (*(v3 + 16) <= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 8;
          goto LABEL_17;
        }

        if (v10 <= v9)
        {
          std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, a1 + 8);
          if (*v5 <= *(v3 + 16))
          {
            return 1;
          }

          a1 = v3 + 8;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,0>(a1, a1 + 8, a1 + 16, a2 - 8);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_1 &,nl_featurization::beam_search::BeamSequence *,0>(a1, a1 + 8, a1 + 16, a1 + 24);
        v7 = *(v2 - 16);
        v6 = v2 - 8;
        if (v7 <= *(v3 + 48))
        {
          return 1;
        }

        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v3 + 24, v6);
        if (*(v3 + 48) <= *(v3 + 32))
        {
          return 1;
        }

        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v3 + 16, v3 + 24);
        if (*(v3 + 32) <= *(v3 + 16))
        {
          return 1;
        }

        std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(v3 + 8, v3 + 16);
        if (*(v3 + 16) <= *v3)
        {
          return 1;
        }

        v8 = v3 + 8;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 8;
      if (*(a2 - 16) <= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v11 = (a1 + 16);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  if (v12 > *a1)
  {
    if (v13 <= v12)
    {
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, a1 + 8);
      if (*(v3 + 32) <= *(v3 + 16))
      {
        goto LABEL_31;
      }

      a1 = v3 + 8;
    }

    v14 = v3 + 16;
    goto LABEL_30;
  }

  if (v13 > v12)
  {
    std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1 + 8, a1 + 16);
    if (*(v3 + 16) > *v3)
    {
      a1 = v3;
      v14 = v3 + 8;
LABEL_30:
      std::swap[abi:ne200100]<nl_featurization::beam_search::BeamSequence>(a1, v14);
    }
  }

LABEL_31:
  v15 = v3 + 24;
  if (v3 + 24 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v41 = v2;
  while (1)
  {
    if (*v15 > *v11)
    {
      v42 = *v15;
      v43 = v15[1];
      v18 = v15 + 5;
      v19 = *(v15 + 5);
      v44 = *(v15 + 4);
      v45 = v19;
      v46 = *(v15 + 6);
      if (v46)
      {
        v19[2] = &v45;
        *(v15 + 4) = v18;
        *v18 = 0;
        *(v15 + 6) = 0;
      }

      else
      {
        v44 = &v45;
      }

      *v47 = *(v15 + 56);
      v47[2] = *(v15 + 9);
      *(v15 + 7) = 0;
      *(v15 + 8) = 0;
      *&v47[3] = v15[5];
      v47[5] = *(v15 + 12);
      *(v15 + 9) = 0;
      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      *(v15 + 12) = 0;
      *&v47[6] = *(v15 + 104);
      v47[8] = *(v15 + 15);
      *(v15 + 14) = 0;
      *(v15 + 15) = 0;
      v20 = v16;
      *(v15 + 13) = 0;
      while (1)
      {
        v21 = v3 + v20;
        v22 = *(v3 + v20 + 272);
        *(v21 + 24) = *(v3 + v20 + 256);
        *(v21 + 25) = v22;
        std::__tree<unsigned long>::__move_assign((v3 + v20 + 416), (v3 + v20 + 288));
        v23 = *(v3 + v20 + 440);
        if (v23)
        {
          *(v21 + 56) = v23;
          operator delete(v23);
          *(v21 + 57) = 0;
        }

        *(v21 + 440) = *(v21 + 312);
        *(v21 + 57) = *(v21 + 41);
        *(v21 + 39) = 0;
        *(v21 + 40) = 0;
        *(v21 + 41) = 0;
        v24 = *(v21 + 58);
        if (v24)
        {
          *(v3 + v20 + 472) = v24;
          operator delete(v24);
          *(v3 + v20 + 480) = 0;
        }

        *(v21 + 29) = *(v21 + 21);
        v25 = v3 + v20;
        *(v3 + v20 + 480) = *(v3 + v20 + 352);
        *(v21 + 42) = 0;
        *(v21 + 43) = 0;
        *(v21 + 44) = 0;
        v26 = *(v3 + v20 + 488);
        if (v26)
        {
          *(v25 + 62) = v26;
          operator delete(v26);
          *(v25 + 63) = 0;
        }

        *(v25 + 488) = *(v25 + 360);
        *(v25 + 63) = *(v25 + 47);
        *(v25 + 45) = 0;
        *(v25 + 46) = 0;
        *(v25 + 47) = 0;
        if (v20 == -256)
        {
          break;
        }

        v27 = v3 + v20;
        v28 = *(v3 + v20 + 128);
        v20 -= 128;
        if (*&v42 <= v28)
        {
          v29 = (v27 + 288);
          v30 = v27 + 312;
          v31 = (v27 + 336);
          v32 = v3 + v20 + 384;
          v33 = v27 + 360;
          goto LABEL_48;
        }
      }

      v29 = (v3 + 2);
      v30 = v3 + 56;
      v31 = v3 + 5;
      v33 = v3 + 104;
      v32 = v3;
LABEL_48:
      *v32 = v42;
      *(v32 + 16) = v43;
      v34 = v32 + 40;
      std::__tree<unsigned long>::destroy(*(v32 + 40));
      v35 = v45;
      *v29 = v44;
      *(v32 + 40) = v35;
      v36 = v46;
      *(v32 + 48) = v46;
      if (v36)
      {
        v35[2] = v34;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *v29 = v34;
      }

      v2 = v41;
      v37 = *v30;
      if (*v30)
      {
        *(v32 + 64) = v37;
        operator delete(v37);
        *v30 = 0;
        *(v30 + 1) = 0;
        *(v30 + 2) = 0;
      }

      *v30 = v47[0];
      *(v32 + 64) = *&v47[1];
      memset(v47, 0, 24);
      v38 = *v31;
      if (*v31)
      {
        *(v32 + 88) = v38;
        operator delete(v38);
        *v31 = 0;
        *(v31 + 1) = 0;
        *(v31 + 2) = 0;
      }

      *v31 = v47[3];
      *(v32 + 88) = *&v47[4];
      memset(&v47[3], 0, 24);
      v39 = *v33;
      if (*v33)
      {
        *(v32 + 112) = v39;
        operator delete(v39);
        *v33 = 0;
        *(v33 + 1) = 0;
        *(v33 + 2) = 0;
        v39 = v47[3];
      }

      *v33 = v47[6];
      *(v32 + 112) = *&v47[7];
      memset(&v47[6], 0, 24);
      if (v39)
      {
        v47[4] = v39;
        operator delete(v39);
      }

      if (v47[0])
      {
        v47[1] = v47[0];
        operator delete(v47[0]);
      }

      ++v17;
      std::__tree<unsigned long>::destroy(v45);
      if (v17 == 8)
      {
        return v15 + 8 == v41;
      }
    }

    v11 = v15;
    v16 += 128;
    v15 += 8;
    if (v15 == v2)
    {
      return 1;
    }
  }
}

double *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,0>(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = result[1];
  v8 = a3[1];
  if (v6 <= v7)
  {
    if (v8 <= v6)
    {
      v6 = a3[1];
    }

    else
    {
      *a2 = *a3;
      *a3 = v5;
      a2[1] = v8;
      a3[1] = v6;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v6 = a3[1];
      }
    }
  }

  else
  {
    v9 = *result;
    if (v8 > v6)
    {
      *result = *a3;
      *a3 = v9;
      result[1] = v8;
LABEL_9:
      a3[1] = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v9;
    result[1] = v6;
    a2[1] = v7;
    v6 = a3[1];
    if (v6 > v7)
    {
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v6)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v6;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *>(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 2);
      v7 = a1[3];
      v8 = a1[1];
      v9 = *(a2 - 1);
      if (v7 > v8)
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = v6;
          a1[2] = v10;
          a1[1] = v7;
          a1[3] = v8;
          v38 = *(a2 - 1);
          if (v38 <= v8)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[3] = v38;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[1] = v9;
        }

        *(a2 - 1) = v8;
        return 1;
      }

      if (v9 <= v7)
      {
        return 1;
      }

      a1[2] = *(a2 - 2);
      *(a2 - 2) = v6;
      a1[3] = v9;
      *(a2 - 1) = v7;
      v32 = a1[3];
      v33 = a1[1];
      if (v32 <= v33)
      {
        return 1;
      }

      v34 = *a1;
      *a1 = a1[2];
LABEL_54:
      a1[2] = v34;
      a1[1] = v32;
      a1[3] = v33;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nl_featurization::beam_search::beamSearch(std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::vector<double> const&,std::vector<std::vector<double>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,std::unordered_map<unsigned long,std::set<unsigned long>> const&,unsigned long)::$_0 &,std::pair<unsigned long,double> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v20 = (a1 + 2);
    v21 = *(a1 + 2);
    v22 = (a1 + 4);
    v23 = *a1;
    v24 = a1 + 3;
    v25 = a1[3];
    v26 = a1 + 1;
    v27 = a1[1];
    v28 = a1 + 5;
    v29 = a1[5];
    if (v25 <= v27)
    {
      if (v29 <= v25)
      {
        goto LABEL_50;
      }

      v36 = *v22;
      *v20 = *v22;
      *v22 = v21;
      *v24 = v29;
      *v28 = v25;
      if (v29 <= v27)
      {
        v29 = v25;
LABEL_50:
        v47 = *(a2 - 1);
        if (v47 <= v29)
        {
          return 1;
        }

        v48 = *v22;
        *v22 = *(a2 - 2);
        *(a2 - 2) = v48;
        *v28 = v47;
        *(a2 - 1) = v29;
        v32 = *v28;
        v49 = *v24;
        if (*v28 <= *v24)
        {
          return 1;
        }

        v50 = *v20;
        v51 = *v22;
        *v20 = *v22;
        *v22 = v50;
        *v24 = v32;
        *v28 = v49;
        v33 = *v26;
        if (v32 <= *v26)
        {
          return 1;
        }

        v34 = *a1;
        *a1 = v51;
        goto LABEL_54;
      }

      *a1 = v36;
      v30 = a1 + 2;
      v31 = a1 + 1;
      v37 = a1 + 3;
    }

    else
    {
      if (v29 <= v25)
      {
        *a1 = v21;
        a1[2] = v23;
        a1[1] = v25;
        a1[3] = v27;
        if (v29 <= v27)
        {
          goto LABEL_50;
        }

        *v20 = *v22;
        v30 = a1 + 4;
        v31 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        v30 = a1 + 4;
        v31 = a1 + 1;
      }

      v37 = a1 + 5;
      v25 = v27;
    }

    *v30 = v23;
    *v31 = v29;
    v29 = v25;
    *v37 = v27;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 4;
  v12 = *a1;
  v13 = a1 + 2;
  v14 = *(a1 + 2);
  v15 = a1 + 3;
  v16 = a1[3];
  v17 = a1 + 1;
  v18 = a1[1];
  v19 = a1[5];
  if (v16 > v18)
  {
    if (v19 <= v16)
    {
      *a1 = v14;
      a1[2] = v12;
      a1[1] = v16;
      a1[3] = v18;
      if (v19 <= v18)
      {
        goto LABEL_35;
      }

      *v13 = *v11;
      v13 = a1 + 4;
      v17 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      v13 = a1 + 4;
    }

    v15 = a1 + 5;
    goto LABEL_34;
  }

  if (v19 > v16)
  {
    v35 = *v11;
    *v13 = *v11;
    *v11 = v14;
    *v15 = v19;
    a1[5] = v16;
    if (v19 > v18)
    {
      *a1 = v35;
LABEL_34:
      *v13 = v12;
      *v17 = v19;
      *v15 = v18;
    }
  }

LABEL_35:
  v39 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = v39[1];
    if (v42 > v11[1])
    {
      v43 = *v39;
      v44 = v40;
      while (1)
      {
        v45 = (a1 + v44);
        v45[6] = *(a1 + v44 + 32);
        v45[7] = *(a1 + v44 + 40);
        if (v44 == -32)
        {
          break;
        }

        v44 -= 16;
        if (v42 <= v45[3])
        {
          v46 = a1 + v44 + 48;
          goto LABEL_43;
        }
      }

      v46 = a1;
LABEL_43:
      *v46 = v43;
      *(v46 + 8) = v42;
      if (++v41 == 8)
      {
        return v39 + 2 == a2;
      }
    }

    v11 = v39;
    v40 += 16;
    v39 += 2;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t nl_featurization::Embedding::getCoordinates@<X0>(nl_featurization::Embedding *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 3);
}

BOOL nl_featurization::operator==(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void *nl_featurization::operator<<(void *a1, uint64_t *a2)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Embedding[", 10);
  v3 = __p;
  v4 = v10;
  if (v10 == __p)
  {
    v6 = (v10 - __p) >> 3;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v12 = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v12, 1);
        v3 = __p;
        v4 = v10;
      }

      if (v5 >= (v4 - v3) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      MEMORY[0x223DC4900](a1, v3[v5++]);
      v3 = __p;
      v4 = v10;
      v6 = (v10 - __p) >> 3;
      if (v6 >= 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = (v10 - __p) >> 3;
      }
    }

    while (v5 < v7);
  }

  if (v6 > 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ...", 4);
  }

  v12 = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v12, 1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_2229CA810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *nl_featurization::span_matching::MatchedSpansFeaturizer::MatchedSpansFeaturizer(std::basic_string<char16_t> *this, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v9;
  }

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  v10 = a2 + 7;
  v11 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v11;
  p_size = &this[2].__r_.__value_.__l.__size_;
  v13 = *(a2 + 8);
  this[2].__r_.__value_.__r.__words[2] = v13;
  if (v13)
  {
    *(v11 + 16) = p_size;
    *(a2 + 6) = v10;
    *v10 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = p_size;
  }

  this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
  v14 = a2 + 5;
  v15 = *(a2 + 10);
  this[3].__r_.__value_.__l.__size_ = v15;
  v16 = &this[3].__r_.__value_.__l.__size_;
  v17 = *(a2 + 11);
  this[3].__r_.__value_.__r.__words[2] = v17;
  if (v17)
  {
    *(v15 + 16) = v16;
    *(a2 + 9) = v14;
    *v14 = 0;
    *(a2 + 11) = 0;
  }

  else
  {
    this[3].__r_.__value_.__r.__words[0] = v16;
  }

  v18 = *a3;
  v23[0] = *(a3 + 8);
  *(v23 + 7) = *(a3 + 15);
  v19 = *(a3 + 23);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v22, a4);
  this[4].__r_.__value_.__r.__words[0] = v18;
  this[4].__r_.__value_.__l.__size_ = v23[0];
  *(&this[4].__r_.__value_.__r.__words[1] + 7) = *(v23 + 7);
  *(&this[4].__r_.__value_.__s + 23) = v19;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(&this[5], v22);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v22);
  nl_featurization::span_matching::MatchedSpansFeaturizer::validateVocabulary(this);
  v20 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2229CA9C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *nl_featurization::span_matching::MatchedSpansFeaturizer::validateVocabulary(nl_featurization::span_matching::MatchedSpansFeaturizer *this)
{
  result = std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned long>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned long>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned long>>>::find<std::basic_string<char16_t>>(this + 48, this + 12);
  if ((this + 56) == result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Label vocabulary does not contain pad token");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_2229CAAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<nl_featurization::nlv4_types::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nl_featurization::span_matching::MatchedSpansFeaturizer::tensorise(uint64_t a1, __int128 *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *a2;
  if (*a2 != v3)
  {
    v5 = (v4 + 72);
    v6 = *a2;
    if ((v4 + 72) != v3)
    {
      v6 = *a2;
      do
      {
        if (*(v6 + 7) - *(v6 + 6) < *(v5 + 7) - *(v5 + 6))
        {
          v6 = v5;
        }

        v5 = (v5 + 72);
      }

      while (v5 != v3);
    }

    if (*(v6 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    v8 = *(v6 + 24);
    *&v12[15] = *(v6 + 39);
    *v12 = v8;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&v13, *(v6 + 6), *(v6 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 7) - *(v6 + 6)) >> 3));
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v18 = 0x8E38E38E38E38E39 * ((v3 - v4) >> 3);
    v19 = v9;
    memset(v10, 0, sizeof(v10));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v10, &v18, v20, 2uLL);
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0uLL;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v16, &v18, v20, 2uLL);
}

void sub_2229CAE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  __cxa_free_exception(v27);
  if (__p)
  {
    operator delete(__p);
  }

  nl_featurization::nlv4_types::Token::~Token(&a13);
  _Unwind_Resume(a1);
}

uint64_t **nl_featurization::tensor::Tensor<unsigned long>::Tensor(uint64_t **a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  if (*a1 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
    do
    {
      v7 = *v5++;
      v6 *= v7;
    }

    while (v5 != v4);
  }

  std::vector<unsigned long>::vector[abi:ne200100](a1 + 3, v6);
  return a1;
}

void sub_2229CAFAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __cxx_global_var_init_5508()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();
  }
}

void __cxx_global_var_init_3_5509()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();
  }
}

void __cxx_global_var_init_4_5510()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();
  }
}

void __cxx_global_var_init_5_5511()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  }
}

void __cxx_global_var_init_6_5512()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
  }
}

void __cxx_global_var_init_7_5513()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  }
}

void __cxx_global_var_init_8_5514()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
  }
}

void __cxx_global_var_init_9_5515()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
  }
}

void __cxx_global_var_init_10_5516()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  }
}

void __cxx_global_var_init_11_5517()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
  }
}

void __cxx_global_var_init_12_5518()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  }
}

void __cxx_global_var_init_13_5519()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();
  }
}

void __cxx_global_var_init_14_5520()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
  }
}

void __cxx_global_var_init_15_5521()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  }
}

void __cxx_global_var_init_16_5522()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
  }
}

void __cxx_global_var_init_17_5523()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  }
}

void __cxx_global_var_init_18_5524()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();
  }
}

void __cxx_global_var_init_19_5525()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();
  }
}

void __cxx_global_var_init_20_5526()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>>::get_instance();
  }
}

void __cxx_global_var_init_21_5527()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  }
}

void __cxx_global_var_init_22_5528()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<float>>>::get_instance();
  }
}

void __cxx_global_var_init_23_5529()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance();
  }
}

void __cxx_global_var_init_24_5530()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();
  }
}

void __cxx_global_var_init_25_5531()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  }
}

void __cxx_global_var_init_26_5532()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance();
  }
}

void __cxx_global_var_init_27_5533()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();
  }
}

void __cxx_global_var_init_28_5534()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();
  }
}

void __cxx_global_var_init_29_5535()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();
  }
}

void __cxx_global_var_init_30_5536()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();
  }
}

void __cxx_global_var_init_31_5537()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();
  }
}

void __cxx_global_var_init_32_5538()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  }
}

void __cxx_global_var_init_33_5539()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>>::get_instance();
  }
}

void __cxx_global_var_init_34_5540()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  }
}

void __cxx_global_var_init_35_5541()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_36_5542()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_37_5543()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  }
}

void __cxx_global_var_init_38_5544()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();
  }
}

void __cxx_global_var_init_39_5545()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  }
}

void __cxx_global_var_init_40_5546()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_41_5547()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  }
}

void __cxx_global_var_init_42_5548()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();
  }
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void sentencepiece::TrainerSpec::_InternalParse(sentencepiece::TrainerSpec *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v322 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
  v6 = v322;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = (v6 + 1);
    LODWORD(v8) = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = (v8 + (*v7 << 7) - 128);
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v6 + 2);
LABEL_6:
      v322 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
    v322 = TagFallback;
    if (!TagFallback)
    {
      return;
    }

    v7 = TagFallback;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v322 = (v9 + 1);
          v10 = *(this + 9);
          if (!v10)
          {
            v13 = *(this + 17);
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v13 + 1);
            v12 = *(this + 9);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(this + 16);
          OUTLINED_FUNCTION_15(v10);
          if (v14 != v15)
          {
            OUTLINED_FUNCTION_13();
            *(this + 16) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(this + 17))
          {
            goto LABEL_16;
          }

LABEL_17:
          OUTLINED_FUNCTION_20(v12);
          v21 = *(this + 7);
          if (!v21)
          {
            OUTLINED_FUNCTION_21();
          }

          if (*(v21 + 24))
          {
            v29 = OUTLINED_FUNCTION_8();
          }

          v22 = OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_17(v22);
          v23 = *(this + 9);
          v24 = *(this + 16);
          OUTLINED_FUNCTION_16();
          *(this + 16) = v25;
          v19 = OUTLINED_FUNCTION_14(v26, v27);
LABEL_22:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v19, v16, a3);
          if (v322)
          {
            OUTLINED_FUNCTION_12();
            if (!(!v257 & v28) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 1);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v127, v56);
        }

        v57 = (this + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v186 = v7 + 1;
        v185 = *v7;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_0(v185, v186);
        if (v188 < 0)
        {
          v322 = google::protobuf::internal::VarintParseSlow64(v187, v185);
          if (!v322)
          {
            return;
          }
        }

        else
        {
          v186 = v187 + 2;
LABEL_183:
          v322 = v186;
        }

        if ((v185 - 1) > 3)
        {
          v316 = *(this + 1);
          if (v316)
          {
            v317 = ((v316 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v320 = v185;
            v321 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v185 = v320;
            v317 = v321;
          }

          google::protobuf::internal::WriteVarint(3, v185, v317);
        }

        else
        {
          *(this + 10) |= 0x800000u;
          *(this + 68) = v185;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_1(v123, v124);
        if (v126 < 0)
        {
          v284 = google::protobuf::internal::VarintParseSlow64(v125, v123);
          v322 = v284;
          *(this + 69) = v285;
          if (!v284)
          {
            return;
          }
        }

        else
        {
          v124 = v125 + 2;
LABEL_122:
          v322 = v124;
          *(this + 69) = v123;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v152 = v7 - 1;
        while (1)
        {
          v322 = (v152 + 1);
          v153 = *(this + 12);
          if (!v153)
          {
            break;
          }

          v154 = *(this + 22);
          OUTLINED_FUNCTION_15(v153);
          if (v14 == v15)
          {
            if (v156 == *(this + 23))
            {
LABEL_154:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 20, v156 + 1);
              v155 = *(this + 12);
              v161 = *v155;
            }

            OUTLINED_FUNCTION_20(v155);
            v162 = *(this + 10);
            if (!v162)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v162 + 24))
            {
              v169 = OUTLINED_FUNCTION_8();
            }

            v163 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v163);
            v164 = *(this + 12);
            v165 = *(this + 22);
            OUTLINED_FUNCTION_16();
            *(this + 22) = v166;
            v160 = OUTLINED_FUNCTION_14(v167, v168);
            goto LABEL_160;
          }

          OUTLINED_FUNCTION_13();
          *(this + 22) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v152 != 42)
          {
            goto LABEL_267;
          }
        }

        v156 = *(this + 23);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        OUTLINED_FUNCTION_1(v181, v182);
        if (v184 < 0)
        {
          v298 = google::protobuf::internal::VarintParseSlow64(v183, v181);
          v322 = v298;
          *(this + 56) = v299;
          if (!v298)
          {
            return;
          }
        }

        else
        {
          v182 = v183 + 2;
LABEL_178:
          v322 = v182;
          *(this + 56) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 2);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v219, v56);
        }

        v57 = (this + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x2000000u;
        v221 = *v7;
        v144 = (v7 + 4);
        *(this + 70) = v221;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_0(v97, v98);
        if (v100 < 0)
        {
          v274 = google::protobuf::internal::VarintParseSlow64(v99, v97);
          v322 = v274;
          *(this + 29) = v275;
          if (!v274)
          {
            return;
          }
        }

        else
        {
          v98 = v99 + 2;
LABEL_100:
          v322 = v98;
          *(this + 29) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_1(v222, v223);
        if (v225 < 0)
        {
          v304 = google::protobuf::internal::VarintParseSlow64(v224, v222);
          v322 = v304;
          *(this + 57) = v305;
          if (!v304)
          {
            return;
          }
        }

        else
        {
          v223 = v224 + 2;
LABEL_234:
          v322 = v223;
          *(this + 57) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_1(v113, v114);
        if (v116 < 0)
        {
          v280 = google::protobuf::internal::VarintParseSlow64(v115, v113);
          v322 = v280;
          *(this + 60) = v281;
          if (!v280)
          {
            return;
          }
        }

        else
        {
          v114 = v115 + 2;
LABEL_113:
          v322 = v114;
          *(this + 60) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        OUTLINED_FUNCTION_1(v171, v172);
        if (v174 < 0)
        {
          v294 = google::protobuf::internal::VarintParseSlow64(v173, v171);
          v322 = v294;
          *(this + 71) = v295;
          if (!v294)
          {
            return;
          }
        }

        else
        {
          v172 = v173 + 2;
LABEL_169:
          v322 = v172;
          *(this + 71) = v171;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x8000000u;
        v145 = *v7;
        v144 = (v7 + 4);
        *(this + 72) = v145;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_1(v74, v75);
        if (v77 < 0)
        {
          v272 = google::protobuf::internal::VarintParseSlow64(v76, v74);
          v322 = v272;
          *(this + 73) = v273;
          if (!v272)
          {
            return;
          }
        }

        else
        {
          v75 = v76 + 2;
LABEL_76:
          v322 = v75;
          *(this + 73) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        OUTLINED_FUNCTION_1(v211, v212);
        if (v214 < 0)
        {
          v300 = google::protobuf::internal::VarintParseSlow64(v213, v211);
          v322 = v300;
          *(this + 74) = v301;
          if (!v300)
          {
            return;
          }
        }

        else
        {
          v212 = v213 + 2;
LABEL_217:
          v322 = v212;
          *(this + 74) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        OUTLINED_FUNCTION_1(v215, v216);
        if (v218 < 0)
        {
          v302 = google::protobuf::internal::VarintParseSlow64(v217, v215);
          v322 = v302;
          *(this + 75) = v303;
          if (!v302)
          {
            return;
          }
        }

        else
        {
          v216 = v217 + 2;
LABEL_222:
          v322 = v216;
          *(this + 75) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 1);
        if (v234 < 0 && (OUTLINED_FUNCTION_0(v234, v235), v238 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v237, v236);
          OUTLINED_FUNCTION_3();
          *(this + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        OUTLINED_FUNCTION_1(v230, v231);
        if (v233 < 0)
        {
          v308 = google::protobuf::internal::VarintParseSlow64(v232, v230);
          v322 = v308;
          *(this + 76) = v309;
          if (!v308)
          {
            return;
          }
        }

        else
        {
          v231 = v232 + 2;
LABEL_244:
          v322 = v231;
          *(this + 76) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 2);
        if (v58 < 0 && (OUTLINED_FUNCTION_0(v58, v59), v62 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v61, v60);
          OUTLINED_FUNCTION_3();
          *(this + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 8);
        if (v146 < 0 && (OUTLINED_FUNCTION_0(v146, v147), v150 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v149, v148);
          OUTLINED_FUNCTION_3();
          *(this + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 4);
        if (v241 < 0 && (OUTLINED_FUNCTION_0(v241, v242), v245 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v244, v243);
          OUTLINED_FUNCTION_3();
          *(this + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x4000);
        if (v68 < 0 && (OUTLINED_FUNCTION_0(v68, v69), v72 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v71, v70);
          OUTLINED_FUNCTION_3();
          *(this + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x10000);
        if (v138 < 0 && (OUTLINED_FUNCTION_0(v138, v139), v142 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v141, v140);
          OUTLINED_FUNCTION_3();
          *(this + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x8000);
        if (v101 < 0 && (OUTLINED_FUNCTION_0(v101, v102), v105 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v104, v103);
          OUTLINED_FUNCTION_3();
          *(this + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 246) = v106;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v189 = (v7 - 2);
        while (1)
        {
          v322 = (v189 + 1);
          v190 = *(this + 15);
          if (!v190)
          {
            break;
          }

          v191 = *(this + 28);
          OUTLINED_FUNCTION_15(v190);
          if (v14 == v15)
          {
            if (v193 == *(this + 29))
            {
LABEL_194:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 26, v193 + 1);
              v192 = *(this + 15);
              v198 = *v192;
            }

            OUTLINED_FUNCTION_20(v192);
            v199 = *(this + 13);
            if (!v199)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v199 + 24))
            {
              v206 = OUTLINED_FUNCTION_8();
            }

            v200 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v200);
            v201 = *(this + 15);
            v202 = *(this + 28);
            OUTLINED_FUNCTION_16();
            *(this + 28) = v203;
            v197 = OUTLINED_FUNCTION_14(v204, v205);
            goto LABEL_200;
          }

          OUTLINED_FUNCTION_13();
          *(this + 28) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v189 != 498)
          {
            goto LABEL_267;
          }
        }

        v193 = *(this + 29);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v78 = (v7 - 2);
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x10);
        if (v49 < 0 && (OUTLINED_FUNCTION_0(v49, v50), v53 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v52, v51);
          OUTLINED_FUNCTION_3();
          *(this + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x20);
        if (v247 < 0 && (OUTLINED_FUNCTION_0(v247, v248), v251 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v250, v249);
          OUTLINED_FUNCTION_3();
          *(this + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x40000);
        if (v117 < 0 && (OUTLINED_FUNCTION_0(v117, v118), v121 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v120, v119);
          OUTLINED_FUNCTION_3();
          *(this + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x20000);
        if (v128 < 0 && (OUTLINED_FUNCTION_0(v128, v129), v132 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v131, v130);
          OUTLINED_FUNCTION_3();
          *(this + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 4);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v210, v56);
        }

        v57 = (this + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1(v134, v135);
        if (v137 < 0)
        {
          v288 = google::protobuf::internal::VarintParseSlow64(v136, v134);
          v322 = v288;
          *(this + 63) = v289;
          if (!v288)
          {
            return;
          }
        }

        else
        {
          v135 = v136 + 2;
LABEL_135:
          v322 = v135;
          *(this + 63) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_1(v36, v37);
        if (v39 < 0)
        {
          v262 = google::protobuf::internal::VarintParseSlow64(v38, v36);
          v322 = v262;
          *(this + 79) = v263;
          if (!v262)
          {
            return;
          }
        }

        else
        {
          v37 = v38 + 2;
LABEL_38:
          v322 = v37;
          *(this + 79) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_1(v64, v65);
        if (v67 < 0)
        {
          v268 = google::protobuf::internal::VarintParseSlow64(v66, v64);
          v322 = v268;
          *(this + 80) = v269;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          v65 = v66 + 2;
LABEL_67:
          v322 = v65;
          *(this + 80) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        OUTLINED_FUNCTION_1(v226, v227);
        if (v229 < 0)
        {
          v306 = google::protobuf::internal::VarintParseSlow64(v228, v226);
          v322 = v306;
          *(this + 81) = v307;
          if (!v306)
          {
            return;
          }
        }

        else
        {
          v227 = v228 + 2;
LABEL_239:
          v322 = v227;
          *(this + 81) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 8);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v253, v254, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_;
        v44 = (this + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x10);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v47, v48, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_;
        v44 = (this + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x20);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v208, v209, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_;
        v44 = (this + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x40);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v45, v46, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_;
        v44 = (this + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x80);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v40, v41, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_;
        v44 = (this + 208);
LABEL_264:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x80000);
        if (v107 < 0 && (OUTLINED_FUNCTION_0(v107, v108), v111 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v110, v109);
          OUTLINED_FUNCTION_3();
          *(this + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x2000);
        if (v175 < 0 && (OUTLINED_FUNCTION_0(v175, v176), v179 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v178, v177);
          OUTLINED_FUNCTION_3();
          *(this + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 244) = v180;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x200000u;
        v240 = *v7;
        v144 = (v7 + 4);
        *(this + 64) = v240;
LABEL_251:
        v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_0(v32, v33);
        if (v35 < 0)
        {
          v260 = google::protobuf::internal::VarintParseSlow64(v34, v32);
          v322 = v260;
          *(this + 33) = v261;
          if (!v260)
          {
            return;
          }
        }

        else
        {
          v33 = v34 + 2;
LABEL_33:
          v322 = v33;
          *(this + 33) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 0x100);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v55, v56);
        }

        v57 = (this + 216);
LABEL_227:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v57, v56);
LABEL_265:
        v255 = google::protobuf::internal::InlineGreedyStringParser(v220, v322, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v257 = (v8 & 7) == 4;
        }

        else
        {
          v257 = 1;
        }

        if (v257)
        {
          *(a3 + 20) = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v258 = *(this + 1);
          if (v258)
          {
            v259 = (v258 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v318 = v8;
            v319 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            LODWORD(v8) = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = google::protobuf::internal::UnknownFieldParse(v8, v259, v7, a3);
        }

        else
        {
          v255 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_TrainerSpec_default_instance_, this + 1, a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
        v6 = v322;
        if (v256)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v322 = (v78 + 1);
    v79 = *(this + 18);
    if (!v79)
    {
      break;
    }

    v80 = *(this + 34);
    OUTLINED_FUNCTION_15(v79);
    if (v14 == v15)
    {
      if (v82 == *(this + 35))
      {
LABEL_85:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 32, v82 + 1);
        v81 = *(this + 18);
        v87 = *v81;
      }

      OUTLINED_FUNCTION_20(v81);
      v88 = *(this + 16);
      if (!v88)
      {
        OUTLINED_FUNCTION_21();
      }

      if (*(v88 + 24))
      {
        v95 = OUTLINED_FUNCTION_8();
      }

      v89 = OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_17(v89);
      v90 = *(this + 18);
      v91 = *(this + 34);
      OUTLINED_FUNCTION_16();
      *(this + 34) = v92;
      v86 = OUTLINED_FUNCTION_14(v93, v94);
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_13();
    *(this + 34) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = google::protobuf::internal::InlineGreedyStringParser(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    OUTLINED_FUNCTION_12();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(this + 35);
  goto LABEL_85;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData_Sample *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData_Sample::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::ModelProto_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::ModelProto_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::TrainerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!SizeFallback)
    {
      return;
    }

    v8 = SizeFallback;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sentencepiece::TrainerSpec::_InternalParse(a2, v8, this);
    if (v15)
    {
      ++*(this + 22);
      if (!*(this + 20))
      {
        v16 = *(this + 7) + v14;
        *(this + 7) = v16;
        *this = *(this + 1) + (v16 & (v16 >> 31));
      }
    }
  }
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::NormalizerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::NormalizerSpec::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::internal::ExtensionSet *a2)
{
  if (*(this + 4) <= 0x100u)
  {
    v4 = *(a2 + 4);
    v5 = *(this + 2);
    v6 = &v5[32 * *(this + 5)];
    v7 = *(a2 + 2);
    if (v4 > 0x100)
    {
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 5);
      if (*(this + 5) && *(a2 + 5))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v12);
  }

  v13 = *(a2 + 2);
  if (*(a2 + 4) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(v17, v18, this);
  }

  else if (*(a2 + 5))
  {
    v14 = &v13[8 * *(a2 + 5)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, v16, (v13 + 2));
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t google::protobuf::internal::MergeFromImpl<false>()
{
  OUTLINED_FUNCTION_4_0();
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_8_0();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_2(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2229CCD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_2(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2229CCE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ParseContext::ParseMessage<google::protobuf::MessageLite>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v15;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v10 = *(this + 22);
  v11 = __OFSUB__(v10--, 1);
  *(this + 22) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, this);
    if (!result)
    {
      return result;
    }

    ++*(this + 22);
    if (!*(this + 20))
    {
      v14 = *(this + 7) + v12;
      *(this + 7) = v14;
      *this = *(this + 1) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 2;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 28)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(this + 4);
      v6 = this + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sirinluexternal::LegacyNLContext::LegacyNLContext()
{
  return MEMORY[0x2821BFEC8]();
}

{
  return MEMORY[0x2821BFED0]();
}

uint64_t sirinluexternal::NLContext::NLContext()
{
  return MEMORY[0x2821BFFA0]();
}

{
  return MEMORY[0x2821BFFA8]();
}

uint64_t sirinluinternal::MatchingSpan::MatchingSpan()
{
  return MEMORY[0x2821C0000]();
}

{
  return MEMORY[0x2821C0008]();
}

uint64_t sirinluinternal::MatchingSpan::operator=()
{
  return MEMORY[0x2821C0020]();
}

{
  return MEMORY[0x2821C0028]();
}

uint64_t sirinluinternal::SubwordTokenChain::operator=()
{
  return MEMORY[0x2821C0070]();
}

{
  return MEMORY[0x2821C0078]();
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis()
{
  return MEMORY[0x2821C00C0]();
}

{
  return MEMORY[0x2821C00C8]();
}

uint64_t E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp()
{
  return MEMORY[0x28215CC30]();
}

{
  return MEMORY[0x28215CC38]();
}

uint64_t siri::ontology::UsoEntityNode::addIdentifier()
{
  return MEMORY[0x2821C3860]();
}

{
  return MEMORY[0x2821C3868]();
}

uint64_t siri::ontology::UsoEntityNode::addUtteranceAlignment()
{
  return MEMORY[0x2821C3870]();
}

{
  return MEMORY[0x2821C3880]();
}

uint64_t siri::ontology::UsoGraph::UsoGraph()
{
  return MEMORY[0x2821C3F50]();
}

{
  return MEMORY[0x2821C3F58]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return MEMORY[0x2821F7528](this, a2);
}

{
  return MEMORY[0x2821F7540](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7828]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

{
  return MEMORY[0x2821F7860]();
}

{
  return MEMORY[0x2821F7868]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}