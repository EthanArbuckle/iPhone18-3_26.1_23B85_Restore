void *std::vector<nlv4_inference_orchestrator::trees::TreeNode>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

const nlv4_inference_orchestrator::trees::TreeNode *std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,std::back_insert_iterator<std::vector<nlv4_inference_orchestrator::trees::TreeNode>>>(const nlv4_inference_orchestrator::trees::TreeNode *result, const nlv4_inference_orchestrator::trees::TreeNode *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = a3[1];
    do
    {
      if (v6 >= a3[2])
      {
        result = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(a3, v5);
        v6 = result;
      }

      else
      {
        result = nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v6, v5);
        v6 += 6;
        a3[1] = v6;
      }

      a3[1] = v6;
      v5 = (v5 + 144);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(uint64_t *a1, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>(v5);
  }

  v12 = 0;
  v13 = 144 * v2;
  nlv4_inference_orchestrator::trees::TreeNode::TreeNode((144 * v2), a2);
  v14 = 144 * v2 + 144;
  v6 = a1[1];
  v7 = 144 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode>::~__split_buffer(&v12);
  return v11;
}

void sub_22293AF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
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
      v9 = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      v10 = *(v6 + 128);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 128) = v10;
      v6 += 144;
      a4 += 144;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    do
    {
      std::allocator_traits<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>::destroy[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode,0>(v5);
      v5 += 144;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    std::allocator_traits<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>::destroy[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode,0>(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>::destroy[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode,0>(uint64_t a1)
{
  v3 = (a1 + 88);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
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

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*> *>>>(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a2 - a4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v12 = *(a2 - 2);
      v11 = *(a2 - 1);
      v13 = *a4;
      if (v12 < v11)
      {
        if (v13 >= v12)
        {
          *(a2 - 2) = v11;
          *(a2 - 1) = v12;
          if (*a4 >= v11)
          {
            goto LABEL_3;
          }

          *(a2 - 2) = *a4;
        }

        else
        {
          *(a2 - 1) = v13;
        }

        *a4 = v11;
        goto LABEL_3;
      }

      if (v13 >= v12)
      {
LABEL_3:
        v5 = 1;
        return v5 & 1;
      }

      *(a2 - 2) = v13;
      *a4 = v12;
      v21 = *(a2 - 2);
LABEL_69:
      v40 = *(a2 - 1);
      if (v21 < v40)
      {
        *(a2 - 2) = v40;
        *(a2 - 1) = v21;
      }

      goto LABEL_3;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v7 = *(a2 - 2);
      v8 = *(a2 - 1);
      v9 = *(a2 - 3);
      if (v7 >= v8)
      {
        if (v9 >= v7)
        {
          v7 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v7;
          *(a2 - 2) = v9;
          v23 = *(a2 - 1);
          if (v9 < v23)
          {
            *(a2 - 2) = v23;
            *(a2 - 1) = v9;
            v7 = *(a2 - 3);
          }
        }

        goto LABEL_54;
      }

      if (v9 >= v7)
      {
        *(a2 - 2) = v8;
        *(a2 - 1) = v7;
        v7 = *(a2 - 3);
        if (v7 >= v8)
        {
          goto LABEL_54;
        }

        *(a2 - 2) = v7;
      }

      else
      {
        *(a2 - 1) = v9;
      }

      *(a2 - 3) = v8;
      v7 = v8;
LABEL_54:
      v34 = *(a2 - 4);
      if (v34 < v7)
      {
        *(a2 - 4) = v7;
        *(a2 - 3) = v34;
        v35 = *(a2 - 2);
        if (v34 < v35)
        {
          *(a2 - 3) = v35;
          *(a2 - 2) = v34;
          v36 = *(a2 - 1);
          if (v34 < v36)
          {
            *(a2 - 2) = v36;
            *(a2 - 1) = v34;
          }
        }
      }

      v37 = *(a2 - 4);
      if (*a4 >= v37)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = *a4;
      *a4 = v37;
      v21 = *(a2 - 4);
      v38 = *(a2 - 3);
      if (v21 >= v38)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = v38;
      *(a2 - 3) = v21;
LABEL_67:
      v39 = *(a2 - 2);
      if (v21 >= v39)
      {
        goto LABEL_3;
      }

      *(a2 - 3) = v39;
      *(a2 - 2) = v21;
      goto LABEL_69;
    }

    v18 = *(a2 - 2);
    v19 = *(a2 - 1);
    v20 = *(a2 - 3);
    if (v18 >= v19)
    {
      if (v20 >= v18)
      {
        v18 = *(a2 - 3);
      }

      else
      {
        *(a2 - 3) = v18;
        *(a2 - 2) = v20;
        v24 = *(a2 - 1);
        if (v20 < v24)
        {
          *(a2 - 2) = v24;
          *(a2 - 1) = v20;
          v18 = *(a2 - 3);
        }
      }

      goto LABEL_65;
    }

    if (v20 >= v18)
    {
      *(a2 - 2) = v19;
      *(a2 - 1) = v18;
      v18 = *(a2 - 3);
      if (v18 >= v19)
      {
LABEL_65:
        if (*a4 >= v18)
        {
          goto LABEL_3;
        }

        *(a2 - 3) = *a4;
        *a4 = v18;
        v21 = *(a2 - 3);
        goto LABEL_67;
      }

      *(a2 - 2) = v18;
    }

    else
    {
      *(a2 - 1) = v20;
    }

    *(a2 - 3) = v19;
    v18 = v19;
    goto LABEL_65;
  }

  if (v4 < 2)
  {
    goto LABEL_3;
  }

  if (v4 == 2)
  {
    v10 = *(a2 - 1);
    if (*a4 < v10)
    {
      *(a2 - 1) = *a4;
      *a4 = v10;
    }

    goto LABEL_3;
  }

LABEL_17:
  v16 = *(a2 - 2);
  v15 = *(a2 - 1);
  v14 = a2 - 2;
  v17 = *(a2 - 3);
  if (v16 >= v15)
  {
    if (v17 < v16)
    {
      *(a2 - 3) = v16;
      *(a2 - 2) = v17;
      v22 = *(a2 - 1);
      if (v17 < v22)
      {
        *(a2 - 2) = v22;
        *(a2 - 1) = v17;
      }
    }

    goto LABEL_40;
  }

  if (v17 < v16)
  {
    *(a2 - 1) = v17;
LABEL_39:
    *(a2 - 3) = v15;
    goto LABEL_40;
  }

  *(a2 - 2) = v15;
  *(a2 - 1) = v16;
  v25 = *(a2 - 3);
  if (v25 < v15)
  {
    *(a2 - 2) = v25;
    goto LABEL_39;
  }

LABEL_40:
  v26 = a2 - 3;
  if (a2 - 3 == a4)
  {
LABEL_48:
    v33 = 1;
  }

  else
  {
    v27 = 0;
    v28 = a2 - 3;
    while (1)
    {
      v30 = *--v28;
      v29 = v30;
      if (v30 < *(v14 - 1))
      {
        v31 = v26;
        do
        {
          v32 = v14;
          *(v31 - 1) = *(v14 - 1);
          if (v14 == a2)
          {
            break;
          }

          ++v14;
          v31 = v32;
        }

        while (*v32 > v29);
        *(v32 - 1) = v29;
        if (++v27 == 8)
        {
          break;
        }
      }

      v14 = v26;
      v26 = v28;
      if (v28 == a4)
      {
        goto LABEL_48;
      }
    }

    v33 = 0;
    LOBYTE(v26) = v28 == a4;
  }

  v5 = v33 | v26;
  return v5 & 1;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::splitCommonPersonNodes(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *a1, uint64_t *a2, nlv4_inference_orchestrator::post_processing::tree_manipulations::utils *this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isCommonPersonNode(this, a2))
  {
    nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::handleCommonPersonSubtree(a1, this, &v15);
    v6 = v21;
    v7 = SNLPOSLoggerForCategory(1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 3);
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Successfully split the common_Person node into name/contact type", buf, 0xCu);
      }

      if ((v21 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v10 = a2[1];
      if (v10 >= a2[2])
      {
        v11 = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(a2, &v15);
      }

      else
      {
        nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a2[1], &v15);
        v11 = v10 + 144;
        a2[1] = v10 + 144;
      }

      a2[1] = v11;
    }

    else if (v8)
    {
      v12 = *(a1 + 3);
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Could not split this common_Person node", buf, 0xCu);
    }

    if (v21 == 1)
    {
      *buf = &v20;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_22293B650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::handleCommonPersonSubtree(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a2@<X1>, std::string *a3@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = SNLPOSLoggerForCategory(1);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    v9 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Handling common_Person subtree", buf, 0xCu);
  }

  v10 = *(a2 + 11);
  if (*(a2 + 12) - v10 != 144)
  {
    v21 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v24;
      goto LABEL_21;
    }

LABEL_23:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[6].__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_24;
  }

  v11 = siri::ontology::oname::graph::ontology_init::Argument_name(v8);
  v12 = *(v10 + 71);
  if (v12 >= 0)
  {
    v13 = *(v10 + 71);
  }

  else
  {
    v13 = *(v10 + 56);
  }

  v14 = *(v11 + 31);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v11 + 16);
  }

  if (v13 != v14 || (v12 >= 0 ? (v16 = (v10 + 48)) : (v16 = *(v10 + 48)), (v19 = *(v11 + 8), v17 = (v11 + 8), v18 = v19, v15 >= 0) ? (v20 = v17) : (v20 = v18), memcmp(v16, v20, v13)))
  {
    v21 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v22;
LABEL_21:
      v25 = v21;
      v26 = OS_LOG_TYPE_DEFAULT;
LABEL_22:
      _os_log_impl(&dword_22284A000, v25, v26, v23, buf, 0xCu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v28 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(this + 3);
    v30 = (v10 + 24);
    if (*(v10 + 47) < 0)
    {
      v30 = *v30;
    }

    *buf = 136315395;
    *&buf[4] = v29;
    v78 = 2085;
    v79 = v30;
    _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_DEBUG, "[%s] common_Person.name value: %{sensitive}s", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *(this + 3));
  v31 = *(this + 10);
  v32 = *(this + 11);
  if (v32 == v31)
  {
LABEL_33:
    v36 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = buf;
      if (v80 < 0)
      {
        v37 = *buf;
      }

      v38 = *(v10 + 72);
      *v67 = 136315394;
      *&v67[4] = v37;
      v68 = 2048;
      v69 = v38;
      v39 = "[%s] Warning: could not find start token index corresponding to node.startCharIndex=%lu";
LABEL_45:
      _os_log_impl(&dword_22284A000, v36, OS_LOG_TYPE_DEFAULT, v39, v67, 0x16u);
    }

LABEL_46:
    v33 = 0;
    v45 = 0;
    goto LABEL_47;
  }

  v33 = 0;
  v34 = 0x8E38E38E38E38E39 * ((v32 - v31) >> 4);
  v35 = (v31 + 104);
  while (*(v35 - 1) != *(v10 + 72))
  {
    ++v33;
    v35 += 18;
    if (v33 >= v34)
    {
      goto LABEL_33;
    }
  }

  v40 = v34 - v33;
  if (v34 <= v33)
  {
LABEL_41:
    v36 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v43 = buf;
      if (v80 < 0)
      {
        v43 = *buf;
      }

      v44 = *(v10 + 80);
      *v67 = 136315394;
      *&v67[4] = v43;
      v68 = 2048;
      v69 = v44;
      v39 = "[%s] Warning: could not find end token index corresponding to node.endCharIndex=%lu";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v41 = ~v33;
  while (1)
  {
    v42 = *v35;
    v35 += 18;
    if (v42 == *(v10 + 80))
    {
      break;
    }

    --v41;
    if (!--v40)
    {
      goto LABEL_41;
    }
  }

  v3 = -v41;
  v45 = 1;
LABEL_47:
  if (v80 < 0)
  {
    operator delete(*buf);
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::hasMatchingSpanPerson(this, v33, v3))
  {
    v46 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v47 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v47;
    v23 = "[%s] There exists a person matching span covering this entire common_Person.name node. Skipping.";
    v25 = v46;
    v26 = OS_LOG_TYPE_DEBUG;
    goto LABEL_22;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplit(this, v33, v3, buf);
  if (v84)
  {
    v50 = *(a2 + 6);
    v49 = a2 + 48;
    v48 = v50;
    v51 = v49[23];
    if (v51 >= 0)
    {
      v52 = v49;
    }

    else
    {
      v52 = v48;
    }

    if (v51 >= 0)
    {
      v53 = v49[23];
    }

    else
    {
      v53 = *(v49 + 1);
    }

    v54 = *(v10 + 47);
    if ((v54 & 0x8000000000000000) != 0)
    {
      v55 = *(v10 + 24);
      v54 = *(v10 + 32);
    }

    else
    {
      v55 = v10 + 24;
    }

    nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::generateCommonPersonNode(this, buf, v82, v52, v53, v55, v54, *(v10 + 72), v67);
    if (v76)
    {
      std::__optional_copy_base<nlv4_inference_orchestrator::trees::TreeNode,false>::__optional_copy_base[abi:ne200100](a3, v67);
    }

    else
    {
      v58 = v81;
      if (v81)
      {
        if (*(v81 + 23) < 0)
        {
          v58 = *v81;
        }
      }

      else
      {
        v58 = "nullptr";
      }

      v59 = v83;
      if (v83)
      {
        if (*(v83 + 23) < 0)
        {
          v59 = *v83;
        }
      }

      else
      {
        v59 = "nullptr";
      }

      v60 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = *(this + 3);
        *v62 = 136315651;
        *&v62[4] = v61;
        v63 = 2085;
        v64 = v58;
        v65 = 2085;
        v66 = v59;
        _os_log_impl(&dword_22284A000, v60, OS_LOG_TYPE_DEFAULT, "[%s] Warning: Failed to generate a node for matching span (personInput=%{sensitive}s, contactTypeInput=%{sensitive}s)", v62, 0x20u);
      }

      a3->__r_.__value_.__s.__data_[0] = 0;
      a3[6].__r_.__value_.__s.__data_[0] = 0;
    }

    if (v76 == 1)
    {
      *v62 = &v75;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v62);
      if (v74 < 0)
      {
        operator delete(__p);
      }

      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (v70 < 0)
      {
        operator delete(*v67);
      }
    }
  }

  else
  {
    v56 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(this + 3);
      *v67 = 136315138;
      *&v67[4] = v57;
      _os_log_impl(&dword_22284A000, v56, OS_LOG_TYPE_DEBUG, "[%s] Could not find a split for this common_Person. Skipping.", v67, 0xCu);
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[6].__r_.__value_.__s.__data_[0] = 0;
  }

  if (v84 == 1)
  {
    MEMORY[0x223DC3180](v82);
    MEMORY[0x223DC3180](buf);
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22293BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(&a13);
  std::optional<std::pair<sirinluinternal::MatchingSpan,sirinluinternal::MatchingSpan>>::~optional(&a33);
  _Unwind_Resume(a1);
}

uint64_t std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v3 = (a1 + 88);
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
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

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::hasMatchingSpanPerson(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this, unint64_t a2, uint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(this + 18, a2);
  if (result)
  {
    v6 = *(result + 24);
    v5 = *(result + 32);
    if (v6 == v5)
    {
      return 0;
    }

    else
    {
      v7 = v6 + 88;
      do
      {
        v8 = *(v7 - 16);
        result = v8 == a3;
        v9 = v8 == a3 || v7 == v5;
        v7 += 88;
      }

      while (!v9);
    }
  }

  return result;
}

void *nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplit@<X0>(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder(a2, a3, this + 18, this + 13, a4);
  if ((a4[176] & 1) == 0)
  {
    result = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder(a2, a3, this + 13, this + 18, v11);
    if (v13 == 1)
    {
      MEMORY[0x223DC3160](v9, v12);
      MEMORY[0x223DC3160](v10, v11);
      MEMORY[0x223DC3150](a4, v9);
      MEMORY[0x223DC3150](a4 + 88, v10);
      a4[176] = 1;
      MEMORY[0x223DC3180](v10);
      result = MEMORY[0x223DC3180](v9);
      if (v13)
      {
        MEMORY[0x223DC3180](v12);
        return MEMORY[0x223DC3180](v11);
      }
    }

    else
    {
      *a4 = 0;
      a4[176] = 0;
    }
  }

  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::generateCommonPersonNode(siri::ontology::oname::graph::ontology_init *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string::size_type a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v104.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 76);
  v12 = *(a1 + 10);
  v13 = 0x8E38E38E38E38E39 * ((*(a1 + 11) - v12) >> 4);
  if (v13 <= v11 || (v14 = (*(a2 + 72) - 1), v13 <= v14) || (v15 = *(a3 + 76), v13 <= v15) || (v16 = (*(a3 + 72) - 1), v13 <= v16))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v92[1] = 0;
  v93[0] = 0;
  *v87 = 0u;
  memset(v88, 0, sizeof(v88));
  memset(&__p, 0, sizeof(__p));
  v92[0] = 0;
  v19 = siri::ontology::oname::graph::ontology_init::Argument_name(a1);
  v20 = std::string::operator=(&__p, (v19 + 8));
  v21 = (v12 + 144 * v11);
  v22 = (v12 + 144 * v14);
  v23 = v21[12];
  v90 = v23;
  v93[1] = v21[14];
  v93[3] = v21[16];
  v24 = v22[13];
  v91 = v24;
  v93[2] = v22[15];
  v93[4] = v22[17];
  v25 = v23 - a8;
  if (v23 < a8)
  {
    v26 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      *a9 = 0;
      *(a9 + 144) = 0;
      goto LABEL_22;
    }

    v27 = *(a1 + 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v27;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v90;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v96 = a8;
    v28 = "[%s] newNameNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_20:
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, v28, &buf, 0x20u);
    goto LABEL_21;
  }

  v29 = v24 >= v23;
  v30 = v24 - v23;
  if (v30 == 0 || !v29)
  {
    v26 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v34;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v90;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v96 = v91;
    v28 = "[%s] newNameNode character indices imply an empty or impossible substring (%lu -> %lu)";
    goto LABEL_20;
  }

  if (a7 < v25)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (a7 - v25 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = a7 - v25;
  }

  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v31 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v31;
  if (v31)
  {
    v36 = (a6 + v25);
    v32 = a6;
    v20 = memmove(&buf, v36, v31);
  }

  else
  {
    v32 = a6;
  }

  buf.__r_.__value_.__s.__data_[v31] = 0;
  if (SHIBYTE(v88[3]) < 0)
  {
    operator delete(v88[1]);
  }

  *&v88[1] = buf;
  *v81 = 0u;
  memset(v82, 0, sizeof(v82));
  memset(&v83, 0, sizeof(v83));
  memset(v86, 0, 24);
  v37 = siri::ontology::oname::graph::ontology_init::Argument_label(v20);
  v38 = std::string::operator=(&v83, (v37 + 8));
  v39 = v12 + 144 * v15;
  v40 = v12 + 144 * v16;
  v41 = *(v39 + 96);
  v84 = v41;
  v86[3] = *(v39 + 112);
  v86[5] = *(v39 + 128);
  v42 = *(v40 + 104);
  v85 = v42;
  v86[4] = *(v40 + 120);
  v86[6] = *(v40 + 136);
  v43 = v41 - a8;
  if (v41 >= a8)
  {
    v29 = v42 >= v41;
    v47 = v42 - v41;
    if (v47 != 0 && v29)
    {
      if (a7 < v43)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (a7 - v43 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = a7 - v43;
      }

      if (v48 > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
      }

      if (v48 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v48;
      if (v48)
      {
        v38 = memmove(&buf, (v32 + v43), v48);
      }

      buf.__r_.__value_.__s.__data_[v48] = 0;
      if (SHIBYTE(v82[3]) < 0)
      {
        operator delete(v82[1]);
      }

      *&v82[1] = buf;
      memset(v73, 0, sizeof(v73));
      v74 = 0u;
      memset(&v75, 0, sizeof(v75));
      memset(v78, 0, sizeof(v78));
      v51 = siri::ontology::oname::graph::ontology_init::common_ContactAddress(v38);
      v52 = std::string::operator=(v73, (v51 + 8));
      v53 = siri::ontology::oname::graph::ontology_init::Argument_specifyingContactAddress(v52);
      std::string::operator=(&v75, (v53 + 8));
      v76 = 0;
      v77 = 0;
      v79 = 0u;
      v80 = 0u;
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&buf, v81);
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(v78, &buf, v103, 1uLL);
      v65[0].__r_.__value_.__r.__words[0] = &v102;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v65);
      if (v101 < 0)
      {
        operator delete(v100);
      }

      if (v99 < 0)
      {
        operator delete(v96);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v70 = 0;
      memset(v65, 0, sizeof(v65));
      *v66 = 0u;
      v69 = 0uLL;
      v67 = 0;
      v55 = siri::ontology::oname::graph::ontology_init::common_Person(v54);
      std::string::operator=(v65, (v55 + 8));
      MEMORY[0x223DC46E0](v66, a4, a5);
      v68 = 0uLL;
      v71 = 0u;
      v72 = 0u;
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&buf, v87);
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v103, v73);
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v69, &buf, &v104, 2uLL);
      v56 = 36;
      do
      {
        v57 = (&buf.__r_.__value_.__l.__data_ + v56 * 8);
        v94 = &v93[v56];
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v94);
        if (*(&v91 + v56 * 8 + 7) < 0)
        {
          operator delete(*(v57 - 12));
        }

        if (*(v57 - 97) < 0)
        {
          operator delete(v88[v56 + 3]);
        }

        if (SHIBYTE(v88[v56 + 2]) < 0)
        {
          operator delete(*(v57 - 18));
        }

        v56 -= 18;
      }

      while (v56 * 8);
      v58 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a1 + 3);
        if (SHIBYTE(v88[3]) >= 0)
        {
          v60 = &v88[1];
        }

        else
        {
          v60 = v88[1];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315907;
        *(buf.__r_.__value_.__r.__words + 4) = v59;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v90;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v96 = v91;
        v97 = 2085;
        v98 = v60;
        _os_log_impl(&dword_22284A000, v58, OS_LOG_TYPE_DEBUG, "[%s] Generated new common_Person.name node with newNameNode.startCharIndex=%lu, newNameNode.endCharIndex=%lu, newNameNode.value=%{sensitive}s", &buf, 0x2Au);
      }

      *a9 = v65[0];
      memset(v65, 0, 32);
      *(a9 + 24) = v65[1];
      *&v65[1].__r_.__value_.__r.__words[1] = 0uLL;
      *(a9 + 64) = v67;
      *(a9 + 48) = *v66;
      v66[1] = 0;
      v67 = 0;
      v66[0] = 0;
      *(a9 + 72) = v68;
      *(a9 + 88) = v69;
      *(a9 + 104) = v70;
      v69 = 0uLL;
      v70 = 0;
      v61 = v72;
      *(a9 + 112) = v71;
      *(a9 + 128) = v61;
      *(a9 + 144) = 1;
      buf.__r_.__value_.__r.__words[0] = &v69;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v65[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65[0].__r_.__value_.__l.__data_);
      }

      buf.__r_.__value_.__r.__words[0] = v78;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(*&v73[24]);
      }

      if ((v73[23] & 0x80000000) != 0)
      {
        operator delete(*v73);
      }

      goto LABEL_50;
    }

    v44 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v50 = *(a1 + 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v50;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v84;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v96 = v85;
      v46 = "[%s] contactAddressLabelNode character indices imply an empty or impossible substring (%lu -> %lu)";
      goto LABEL_48;
    }
  }

  else
  {
    v44 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v45;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v90;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v96 = a8;
      v46 = "[%s] contactAddressLabelNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_48:
      _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_ERROR, v46, &buf, 0x20u);
    }
  }

  *a9 = 0;
  *(a9 + 144) = 0;
LABEL_50:
  buf.__r_.__value_.__r.__words[0] = v86;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82[3]) < 0)
  {
    operator delete(v82[1]);
  }

  if (SHIBYTE(v82[0]) < 0)
  {
    operator delete(v81[0]);
  }

LABEL_22:
  buf.__r_.__value_.__r.__words[0] = v92;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88[3]) < 0)
  {
    operator delete(v88[1]);
  }

  if (SHIBYTE(v88[0]) < 0)
  {
    operator delete(v87[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22293C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = (v67 + 144);
  v70 = -288;
  do
  {
    nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(v69);
    v69 = (v71 - 144);
    v70 += 144;
  }

  while (v70);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a13);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a31);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a49);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a67);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<nlv4_inference_orchestrator::trees::TreeNode,false>::__optional_copy_base[abi:ne200100](std::string *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[6].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 144) == 1)
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(this, a2);
    this[6].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_22293C8B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1)
  {
    nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::pair<sirinluinternal::MatchingSpan,sirinluinternal::MatchingSpan>>::~optional(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    MEMORY[0x223DC3180](a1 + 88);
    MEMORY[0x223DC3180](a1);
  }

  return a1;
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(uint64_t a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a1);
    v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v10 = 0x1C71C71C71C71C7;
    }

    else
    {
      v10 = v9;
    }

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](a1, v10);
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a2, a3, v8);

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a1, &v12->__r_.__value_.__l.__data_);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      std::string::operator=(this + 2, v5 + 2);
      *&this[3].__r_.__value_.__l.__data_ = *&v5[3].__r_.__value_.__l.__data_;
      if (this != v5)
      {
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(this + 88, v5[3].__r_.__value_.__r.__words[2], v5[4].__r_.__value_.__r.__words[0]);
      }

      v6 = *&v5[5].__r_.__value_.__r.__words[1];
      *&this[4].__r_.__value_.__r.__words[2] = *&v5[4].__r_.__value_.__r.__words[2];
      *&this[5].__r_.__value_.__r.__words[1] = v6;
      this += 6;
      v5 += 6;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a1);
    if (a4 <= 0x1C71C71C71C71C7)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(__str, a3, v8);

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a1, &v12->__r_.__value_.__l.__data_);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void *nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, _BYTE *a5@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(a3, a1);
  if (result)
  {
    v9 = result[3];
    v10 = result[4];
    while (v9 != v10)
    {
      v11 = *(v9 + 72);
      if (v11 < a2)
      {
        result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(a4, v11);
        if (result)
        {
          for (i = result[3]; i != result[4]; i += 88)
          {
            if (*(i + 72) == a2)
            {
              MEMORY[0x223DC3160](v13, v9);
              MEMORY[0x223DC3160](v14, i);
              MEMORY[0x223DC3150](a5, v13);
              MEMORY[0x223DC3150](a5 + 88, v14);
              a5[176] = 1;
              MEMORY[0x223DC3180](v14);
              return MEMORY[0x223DC3180](v13);
            }
          }
        }
      }

      v9 += 88;
    }
  }

  *a5 = 0;
  a5[176] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
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

void snlp::ssu::selflogging::logUserRequestEnded(snlp::ssu::selflogging *a1, unsigned int **a2)
{
  v8 = [MEMORY[0x277CBEB18] array];
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v7 = snlp::ssu::selflogging::convertUserRequestCacheEntryInfo(v5);
    [v8 addObject:v7];

    v5 += 16;
  }

  snlp::ssu::selflogging::convertRequestId(a1, v4);
}

void snlp::ssu::selflogging::logBackgroundUpdateEnded(uint64_t *a1, uint64_t *a2, char ***a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = *a3;
  v9 = a3[1];
  while (v8 != v9)
  {
    v10 = snlp::ssu::selflogging::convertBackgroundUpdateAppInfo(v8, v6);
    [v7 addObject:v10];

    v8 += 7;
  }
  v11 = ;
  [SNLPSSUSELFLoggingUtils logBackgroundUpdateEnded:v11 locale:v12 appInfos:v7];
}

id anonymous namespace::objcUUIDFromCpp(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v4 setNamespaceA:0];
  [v4 setLowInt:a1];
  [v4 setHighInt:a2];

  return v4;
}

void snlp::ssu::selflogging::logBackgroundUpdateFailed(uint64_t *a1)
  v1 = {;
  [SNLPSSUSELFLoggingUtils logBackgroundUpdateFailed:?];
}

void snlp::ssu::selflogging::buildAppBundleIdSaltedHash(char *a1@<X0>, _BYTE *a2@<X8>)
{
  {
  }

  v5 = v4;
  if (v4)
  {
    v6 = [v4 UUIDString];
    std::string::basic_string[abi:ne200100]<0>(v17, [v6 UTF8String]);

    v7 = boost::hash<std::string>::operator()(v17);
    v8 = boost::hash<std::string>::operator()(a1);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x223DC4940](&v12, 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47)) + 3864292196u)) + 3864292196u);
    std::stringbuf::str();
    v11[0] = *MEMORY[0x277D82818];
    v9 = *(MEMORY[0x277D82818] + 72);
    *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v12 = v9;
    v13 = MEMORY[0x277D82878] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    MEMORY[0x223DC4C10](&v16);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v10 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_ERROR, "Failed to get salt. Returning constant string to preserve privacy.", v11, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(a2, "salt_error");
  }
}

unint64_t boost::hash<std::string>::operator()(char *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = 0;
  if ((v1 & 0x80u) != 0)
  {
    v1 = v2;
  }

  for (; v1; --v1)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

void ___ZN12_GLOBAL__N_121getDeviceBootUniqueIdEv_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v8 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", v11, &v8, 0, 0);
  if (v0)
  {
    v1 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = strerror(v0);
      *buf = 136315138;
      v10 = v2;
      _os_log_impl(&dword_22284A000, v1, OS_LOG_TYPE_ERROR, "Failed getting kern.bootsessionuuid with sysctlbyname() %s", buf, 0xCu);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v11];
    v5 = [v4 initWithUUIDString:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22293E090(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v53 = *(v52 - 224);
  if (v53)
  {
    *(v52 - 216) = v53;
    operator delete(v53);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v55);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v57);
  _Unwind_Resume(v54);
}

void sub_22293E150(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  operator delete(v64);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::~deque[abi:ne200100](v65 - 224);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
  if (*(v65 - 145) < 0)
  {
    operator delete(*(v65 - 168));
  }

  JUMPOUT(0x22293E248);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::handleBelowVerbPaths(uint64_t a1, uint64_t a2, const void **a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "::");
  std::string::basic_string[abi:ne200100]<0>(&v13, "::common");
  std::string::basic_string[abi:ne200100]<0>(&v12, "_verb=");
  std::string::basic_string[abi:ne200100]<0>(&v11, ".");
  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = a3[1];
  }

  std::string::basic_string[abi:ne200100](v9, v4 + 12);
  if (v10 >= 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = v9[0];
  }

  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "_below_verb=");
  std::string::basic_string[abi:ne200100]<0>(&v8, "_verb_entity");
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v7, "((\\w+)::common_(\\w+)(\\.)?(\\w+))");
}

void sub_22293EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v79 - 185) < 0)
  {
    operator delete(*(v79 - 208));
  }

  if (a51)
  {
    operator delete(a51);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a65);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a71);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (*(v79 - 233) < 0)
  {
    operator delete(*(v79 - 256));
  }

  if (*(v79 - 209) < 0)
  {
    operator delete(*(v79 - 232));
  }

  _Unwind_Resume(a1);
}

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (result)
  {

    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a1, result);
  }

  return result;
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (a2[5])
  {
    v6 = "SystemPrompted";
  }

  else if (a2[4])
  {
    v6 = "SystemOffered";
  }

  else if (a2[1])
  {
    v6 = "SystemGaveOptions";
  }

  else if (a2[3])
  {
    v6 = "SystemInformed";
  }

  else if (a2[8])
  {
    v6 = "SystemReportedSuccess";
  }

  else if (a2[7])
  {
    v6 = "SystemReportedFailure";
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v26, v6);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22, (a1 + 40), (a1 + 232));
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::string::append(v22, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25 = v9->__r_.__value_.__r.__words[2];
  v24 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v22[23] & 0x80000000) != 0)
  {
    operator delete(*v22);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v24);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v11 = a2[5];
  if (v11)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v11, __p);
    goto LABEL_30;
  }

  v12 = a2[4];
  if (v12)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v12, __p);
    goto LABEL_30;
  }

  v13 = a2[1];
  if (v13)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v13, __p);
    goto LABEL_30;
  }

  v14 = a2[3];
  if (v14)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(v14, __p);
LABEL_30:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v22, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    goto LABEL_32;
  }

  v19 = a2[8];
  if (v19)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v19, __p);
  }

  else
  {
    v20 = a2[7];
    if (!v20)
    {
      goto LABEL_32;
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v20, __p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v22, __p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
LABEL_32:
  v16 = *&v22[16];
  if (*&v22[16])
  {
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, v16 + 2);
      v16 = *v16;
    }

    while (v16);
    v17 = *&v22[16];
  }

  else
  {
    v17 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v17);
  v18 = *v22;
  *v22 = 0;
  if (v18)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_22293F0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  if (*(v8 - 57) < 0)
  {
    operator delete(*(v8 - 80));
  }

  if (*(v8 - 33) < 0)
  {
    operator delete(*(v8 - 56));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v7);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "SystemPrompted");
    v4 = *(a2 + 8);
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v5 = *(a1 + 440);
  if (v5 >= 8)
  {
    v7 = SNLPOSLoggerForCategory(4);
    v6 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "<UNDEFINED_COMPONENT>";
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v6 = off_2784B6F30[v5];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v8 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = __p;
    if (SHIBYTE(v12) < 0)
    {
      v9 = __p[0];
    }

    buf[0] = 136315138;
    *&buf[1] = v9;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemPrompted dialog act; needs to contain the target UsoGraph.", buf, 0xCu);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

{
  v16 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "SystemReportedSuccess");
    v4 = *(a2 + 8);
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v5 = *(a1 + 440);
  if (v5 >= 8)
  {
    v7 = SNLPOSLoggerForCategory(4);
    v6 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "<UNDEFINED_COMPONENT>";
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v6 = off_2784B6F30[v5];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v8 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = __p;
    if (SHIBYTE(v12) < 0)
    {
      v9 = __p[0];
    }

    buf[0] = 136315138;
    *&buf[1] = v9;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemReportedSuccess dialog act; needs to supply the task UsoGraph.", buf, 0xCu);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

{
  v17 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8) && *(a2 + 16))
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "SystemReportedFailure");
    v4 = *(a2 + 16);
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v5 = *(a1 + 440);
  if (v5 >= 8)
  {
    v7 = SNLPOSLoggerForCategory(4);
    v6 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "<UNDEFINED_COMPONENT>";
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v6 = off_2784B6F30[v5];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v8 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = __p;
    if (SHIBYTE(v12) < 0)
    {
      v9 = __p[0];
    }

    buf[0] = 136315138;
    *&buf[1] = v9;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemReportedFailure dialog act; needs to supply the UsoGraphs for the failed task and for the failure reason.", buf, 0xCu);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 8);
  if (v4)
  {
    if (v4[1])
    {
      v6 = "UserAccepted";
    }

    else if (v4[2])
    {
      v6 = "UserAcknowledged";
    }

    else if (v4[4])
    {
      v6 = "UserCancelled";
    }

    else if (v4[6])
    {
      v6 = "UserRejected";
    }

    else if (v4[7])
    {
      v6 = "UserStatedTask";
    }

    else if (v4[8])
    {
      v6 = "UserWantedToPause";
    }

    else if (v4[9])
    {
      v6 = "UserWantedToProceed";
    }

    else if (v4[10])
    {
      v6 = "UserWantedToRepeat";
    }

    else
    {
      v6 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v15, v6);
    v12 = std::string::insert(&v15, 0, "SystemOffered.offered_act.");
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v12->__r_.__value_.__l + 2);
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractLimitedContextLabelsFromUserDialogAct(a1, a1 + 40, *(a2 + 8));
  }

  v7 = a1[110];
  if (v7 >= 8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    v8 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v8 = off_2784B6F30[v7];
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, v8);
  v10 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemOffered dialog act; needs to contain a user dialog act.", buf, 0xCu);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22293F5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

double nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct@<D0>(nlv4_inference_orchestrator::context::ContextLabelsExtractor *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 16))
  {
    v6 = *v4;
    v7 = "UserAccepted";
    if (!*(*v4 + 1))
    {
      v7 = "UserAcknowledged";
      if (!*(v6 + 2))
      {
        v7 = "UserCancelled";
        if (!*(v6 + 4))
        {
          v7 = "UserRejected";
          if (!*(v6 + 6))
          {
            v7 = "UserStatedTask";
            if (!*(v6 + 7))
            {
              v7 = "UserWantedToPause";
              if (!*(v6 + 8))
              {
                v7 = "UserWantedToProceed";
                if (!*(v6 + 9))
                {
                  if (*(v6 + 10))
                  {
                    v7 = "UserWantedToRepeat";
                  }

                  else
                  {
                    v7 = "";
                  }
                }
              }
            }
          }
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "SystemGaveOptions.option.");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromUserDialogAct(a1, a1 + 40, __p, v6);
  }

  return result;
}

void sub_22293F80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

double nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *(a1 + 8);
  if (v3 != *(a1 + 16))
  {
    v4 = *v3;
    std::string::basic_string[abi:ne200100]<0>(&v5, "SystemInformed.entity");
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  return result;
}

void sub_22293FDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v20);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractGraphFromUserDialogAct(nlv4_inference_orchestrator::context::ContextLabelsExtractor *this@<X0>, const sirinluexternal::UserDialogAct *a2@<X1>, sirinluexternal::UsoGraph *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    v5 = *(v6 + 8);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    v5 = *(v7 + 8);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v5 = *(v8 + 16);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  if ((v9 = *(a2 + 7)) != 0 && (v5 = *(v9 + 8)) != 0 || (v10 = *(a2 + 8)) != 0 && (v5 = *(v10 + 8)) != 0 || (v11 = *(a2 + 9)) != 0 && (v5 = *(v11 + 8)) != 0)
  {
LABEL_15:
    v12 = a3;
    v13 = v5;
LABEL_16:
    MEMORY[0x223DC3070](v12, v13);
    goto LABEL_17;
  }

  v15 = *(a2 + 10);
  if (v15)
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      v12 = a3;
      goto LABEL_16;
    }
  }

  v16 = *(this + 110);
  if (v16 >= 8)
  {
    v18 = SNLPOSLoggerForCategory(4);
    v17 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "<UNDEFINED_COMPONENT>";
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v17 = off_2784B6F30[v16];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v17);
  v19 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = __p;
    if (v22 < 0)
    {
      v20 = __p[0];
    }

    *buf = 136315138;
    v27 = v20;
    _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] Warning: Badly formed user dialog act.", buf, 0xCu);
  }

  sirinluexternal::UsoGraph::UsoGraph(a3);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(0);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2229400A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractLimitedContextLabelsFromGraph()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 1;
  v1 = 0;
  operator new();
}

void sub_2229405C0()
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v0);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v4);
  _Unwind_Resume(v1);
}

void sub_222940BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, std::locale a53)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a53);
  if (*(v53 - 209) < 0)
  {
    operator delete(*(v53 - 232));
  }

  _Unwind_Resume(a1);
}

void std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x66;
    v9 = v7 - 102;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v13);
    }

    a1[4] = v9;
    v17 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = *&v4[8 * (v14 / 0x66)] - 4080 * (v14 / 0x66) + 40 * v14;
  }

  *v15 = *a2;
  *(v15 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((v15 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v16 = *(a2 + 16);
    *(v15 + 32) = *(a2 + 32);
    *(v15 + 16) = v16;
  }

  ++a1[5];
}

void sub_2229411E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * v5 + -4080 * (v5 / 0x66);
    v9 = v3[(*(a1 + 40) + v5) / 0x66] + 40 * *(a1 + 40) + 40 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 39) < 0)
        {
          operator delete(*(v8 + 16));
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 51;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 102;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractSalientEntityContextLabels(const void **this@<X0>, const sirinluexternal::NLContext *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    do
    {
      if (*(*v4 + 40))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
      }

      v4 += 8;
    }

    while (v4 != v5);
    v4 = *(a2 + 7);
    v5 = *(a2 + 8);
  }

  while (2)
  {
    if (v4 == v5)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 23, this + 47);
      v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
    }

    else
    {
      v6 = *v4;
      v7 = *(*v4 + 8);
      for (i = *(*v4 + 8); i != *(*v4 + 16); i += 8)
      {
        if (*(*i + 8) || *(*i + 16))
        {
          goto LABEL_19;
        }
      }

      if (!v6[4] && !v6[5] && !v6[6] && !v6[7] && !v6[8] && !v6[9])
      {
        v4 += 8;
        continue;
      }

LABEL_19:
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 23, this + 44);
      v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p);
    }

    break;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(v9, a3);
}

void sub_222941540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(a1, a2, &v5);
  for (i = v6; i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, i + 2);
  }

  nlv4_inference_orchestrator::context::generatePlaceholderVerbPaths();
}

void sub_222941698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v8 - 56);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v7);
  _Unwind_Resume(a1);
}

void uaap_orchestration::resolution::InverseResolutionTable::lookupSemanticValue(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a1, a2);
  if (v4)
  {
    if (*(v4 + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a3, *(v4 + 5), *(v4 + 6));
    }

    else
    {
      *a3 = *(v4 + 20);
      *(a3 + 16) = *(v4 + 7);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v5;
}

unsigned __int16 *std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(void *a1, unsigned __int16 *a2)
{
  v4 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char16_t>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v4, v2, 2 * v1);
}

BOOL std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 1);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v3 - 1;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v11 == v9;
  }

  while (v11 == v9 && v14);
  return result;
}

uint64_t uaap_orchestration::resolution::InverseResolutionTable::buildMapFromResolutionTable@<X0>(const uaap_orchestration::grammar::ResolutionTable *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  uaap_orchestration::grammar::ResolutionTable::getSemanticValues(a1, v13);
  for (i = v14; i; i = *i)
  {
    uaap_orchestration::grammar::ResolutionTable::getSynonyms(a1, i + 8, v12);
    v6 = v12[0];
    v7 = v12[1];
    while (v6 != v7)
    {
      std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:ne200100]<true,0>(&v9, v6, i + 1);
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>>(a2, &v9);
      if (v11 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      v6 = (v6 + 24);
    }

    v9.__r_.__value_.__r.__words[0] = v12;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  return std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v13);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:ne200100]<true,0>(std::basic_string<char16_t> *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_222941AB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>>(void *a1, unsigned __int16 *a2)
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

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v11 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_222941D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100]((v2 + 2));
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

unint64_t uaap_orchestration::resolution::Resolver::getInverseResolutionTableForLabel@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = result;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = result;
    if (result >= *&v7)
    {
      v11 = result % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & result;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    v15 = 0;
    *a3 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v14 = *(v13 + 1);
    if (v8 == v14)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v13 + 8, a2);
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  result = std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(a3, (v13 + 20));
  v15 = 1;
LABEL_18:
  a3[40] = v15;
  return result;
}

uint64_t std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(a1, i + 8);
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(void *a1, unsigned __int16 *a2)
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

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v11 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_222942208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void uaap_orchestration::resolution::Resolver::lookupSemanticValueForLabel(void *a1@<X0>, unsigned __int16 *a2@<X1>, unsigned __int16 *a3@<X2>, _BYTE *a4@<X8>)
{
  uaap_orchestration::resolution::Resolver::getInverseResolutionTableForLabel(a1, a2, v6);
  if (v7 == 1)
  {
    uaap_orchestration::resolution::InverseResolutionTable::lookupSemanticValue(v6, a3, a4);
    if (v7)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(v6);
    }
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void sub_2229422A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&a9);
  }

  _Unwind_Resume(exception_object);
}

void uaap_orchestration::resolution::Resolver::buildResolutionTablesFromGrammar(const uaap_orchestration::grammar::UaapGrammar *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *a1;
  v5 = *(a1 + 1);
  if (*a1 == v5)
  {
    return;
  }

  do
  {
    std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](&v21, v4 + 48);
    if ((v26 & 1) == 0)
    {
      goto LABEL_36;
    }

    std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](v19, v25);
    if ((v20 & 1) == 0)
    {
      goto LABEL_30;
    }

    uaap_orchestration::resolution::InverseResolutionTable::buildMapFromResolutionTable(v19, v18);
    if (*(v4 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v15, *v4, *(v4 + 8));
    }

    else
    {
      v15 = *v4;
    }

    __p = v15;
    memset(&v15, 0, sizeof(v15));
    std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(&v17, v18);
    v6 = std::__string_hash<char16_t>::operator()[abi:ne200100](&__p);
    v7 = v6;
    v8 = *(a2 + 8);
    if (!*&v8)
    {
      goto LABEL_23;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v8)
      {
        v11 = v6 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v6;
    }

    v12 = *(*a2 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      v14 = *(v13 + 1);
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_23;
      }

LABEL_22:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v13 + 8, &__p))
    {
      goto LABEL_22;
    }

    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(v18);
    if (v20)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v19);
    }

LABEL_30:
    if (v26)
    {
      if (v25[40] == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v25);
      }

      __p.__r_.__value_.__r.__words[0] = &v24;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v23;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v22 == 1 && SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

LABEL_36:
    v4 += 184;
  }

  while (v4 != v5);
}

void sub_2229428D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>>>>::~unique_ptr[abi:ne200100](v43 - 112);
  std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>::~pair(&__p);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&a28);
  if (a38 == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&a33);
  }

  std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(&a40);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>>>::~__hash_table(v42);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>((v2 + 2));
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

uint64_t std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(a1 + 80);
    }

    v3 = (a1 + 56);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 32);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::isRelevantMatchingSpan(void *a1, const void *a2, uint64_t a3)
{
  result = a1[6];
  if (result)
  {
    v5 = *(result + 23);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = result;
      result = *result;
      v5 = v6[1];
    }

    if (v5 == a3 && !memcmp(result, a2, v5))
    {
      v7 = a1[1];
      v8 = a1[2];
      if (v7 != v8)
      {
        while (*v7 != 8)
        {
          if (++v7 == v8)
          {
            v7 = a1[2];
            return (v7 != v8);
          }
        }
      }

      return (v7 != v8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster *this@<X0>, std::string *a2@<X8>)
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

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::findTokenIndicesOfUngroundedNode(char **this@<X0>, nlv4_inference_orchestrator::trees::TreeNode *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  __p[0] = a2;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v39, __p);
  v6 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v35 = v3;
    v36 = a3;
    while (1)
    {
      v7 = v6 - 1;
      v8 = *(*(*&v39[8] + (((v40 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v40 + v7) & 0x1FF));
      *(&v40 + 1) = v7;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v39);
      if (v8[11] == v8[12])
      {
        break;
      }

LABEL_27:
      v29 = v8[11];
      v30 = v8[12];
      while (v29 != v30)
      {
        __p[0] = v29;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v39, __p);
        v29 += 144;
      }

      v6 = *(&v40 + 1);
      if (!*(&v40 + 1))
      {
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v39);
        v3 = v35;
        a3 = v36;
        goto LABEL_34;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, this[3]);
    v10 = this[16];
    v9 = this[17];
    v11 = v9 - v10;
    if (v9 == v10)
    {
LABEL_8:
      v18 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = __p;
        if (v38 < 0)
        {
          v19 = __p[0];
        }

        v20 = v8[9];
        *buf = 136315394;
        v42 = v19;
        v43 = 2048;
        v44 = v20;
        v21 = v18;
        v22 = "[%s] Warning: could not find start token index corresponding to node.startCharIndex=%lu";
LABEL_20:
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0x8E38E38E38E38E39 * (v11 >> 4);
      v14 = (v10 + 96);
      v15 = (v10 + 104);
      v16 = 1;
      while (1)
      {
        v17 = *v14;
        v14 += 18;
        if (v17 == v8[9])
        {
          break;
        }

        ++v12;
        v15 += 18;
        ++v16;
        if (v12 >= v13)
        {
          goto LABEL_8;
        }
      }

      if (v12 < v13)
      {
        v23 = -v13;
        while (1)
        {
          v24 = *v15;
          v15 += 18;
          if (v24 == v8[10])
          {
            break;
          }

          ++v16;
          if (v23 + v16 == 1)
          {
            goto LABEL_16;
          }
        }

        v28 = 1;
LABEL_22:
        if (v38 < 0)
        {
          operator delete(__p[0]);
          if (v28)
          {
LABEL_26:
            operator new();
          }
        }

        else if (v28)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

LABEL_16:
      v25 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = __p;
        if (v38 < 0)
        {
          v26 = __p[0];
        }

        v27 = v8[10];
        *buf = 136315394;
        v42 = v26;
        v43 = 2048;
        v44 = v27;
        v21 = v25;
        v22 = "[%s] Warning: could not find end token index corresponding to node.endCharIndex=%lu";
        goto LABEL_20;
      }
    }

    v28 = 0;
    goto LABEL_22;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v39);
LABEL_34:
  v31 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = this[3];
    if (*(v3 + 23) >= 0)
    {
      v33 = v3;
    }

    else
    {
      v33 = *v3;
    }

    *v39 = 136315394;
    *&v39[4] = v32;
    *&v39[12] = 2080;
    *&v39[14] = v33;
    _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] No grounded tokens found under node: %s", v39, 0x16u);
  }

  *a3 = 0;
  a3[16] = 0;
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22294310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::hasMatchingSpanWithIndices(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  for (i = *a2; ; i += 88)
  {
    if (i == a2[1])
    {
      return 0;
    }

    if ((*(i + 80) & 2) != 0 && (*(i + 80) & 1) != 0 && *(i + 76) == a3 && *(i + 72) == a4)
    {
      break;
    }
  }

  return 1;
}

std::string *snlp::ssu::cache::SSUCacheFileReadStreamManager::SSUCacheFileReadStreamManager(std::string *this, __int128 *a2, std::string::size_type *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  v8 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    this[2].__r_.__value_.__l.__size_ = *(a4 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v9;
  }

  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[4].__r_.__value_.__l.__data_) = 1065353216;
  return this;
}

void sub_222943698(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStreamManager::openReadStream(std::string *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(&a1[2].__r_.__value_.__r.__words[2], a2))
  {
    v4 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a2 + 8);
      v6 = a2 + 8;
      v5 = v7;
      if (*(v6 + 23) >= 0)
      {
        v5 = v6;
      }

      v8 = *(v6 + 24);
      if (v8 <= 3)
      {
        v9 = EnumNamesSSUCategoryType(void)::names[v8];
      }

      else
      {
        v9 = "";
      }

      *buf = 136315394;
      *v25 = v5;
      *&v25[8] = 2080;
      *&v25[10] = v9;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_ERROR, "Cache file read stream already open for app=%s, category=%s.", buf, 0x16u);
    }
  }

  else
  {
    snlp::ssu::cache::SSUCacheDirectory::lookupCacheFileForCategory(a1[1].__r_.__value_.__l.__data_, a1, (a2 + 8), *(a2 + 32), &a1[1].__r_.__value_.__s.__data_[16], buf);
    if (v33)
    {
      operator new();
    }

    v10 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 31) >= 0)
      {
        v11 = a2 + 8;
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = *(a2 + 32);
      if (v12 <= 3)
      {
        v13 = EnumNamesSSUCategoryType(void)::names[v12];
      }

      else
      {
        v13 = "";
      }

      v16 = 136315906;
      v17 = "SSU";
      v18 = 2080;
      v19 = "[insights-snlp-ssu]: ";
      v20 = 2080;
      v21 = v11;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] %sCache file is missing for app %s and category %s. This means that it has not yet been registered outside the request handling path. Skipping.", &v16, 0x2Au);
    }

    if (v33 == 1)
    {
      if (v32 < 0)
      {
        operator delete(__p);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(*&v25[4]);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void *std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(void *a1, char *a2)
{
  v4 = snlp::ssu::app::SSUAppCategoryHash::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (snlp::ssu::app::SSUAppCategory::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t *std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 704);
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 576));
    v3 = MEMORY[0x277D82808];
    v4 = *MEMORY[0x277D82808];
    *v2 = *MEMORY[0x277D82808];
    *(v2 + *(v4 - 24)) = *(v3 + 24);
    MEMORY[0x223DC47C0](v2 + 16);
    std::istream::~istream();
    MEMORY[0x223DC4C10](v2 + 424);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~optional(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>(uint64_t a1)
{
  std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::reset[abi:ne200100]((a1 + 40), 0);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[30];
  if (v2 != -1)
  {
    result = off_2835E43E0[v2](&v3, result);
  }

  v1[30] = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_iarchiveENS9_13text_iarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  v3 = v2 + 40;

  return boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v3);
}

std::locale *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_iarchiveENS9_13text_iarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  v3 = v2 + 5;

  return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v3);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStreamManager::getReadStream(uint64_t a1, char *a2)
{
  v4 = snlp::ssu::app::SSUAppCategoryHash::operator()(a1, a2);
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*(a1 + 64) + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v6 == v12)
          {
            if (snlp::ssu::app::SSUAppCategory::operator==((v11 + 2), a2))
            {
              return v11[7];
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= *&v5)
              {
                v12 %= *&v5;
              }
            }

            else
            {
              v12 &= *&v5 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  return 0;
}

void *snlp::ssu::cache::SSUCacheFileReadStreamManager::releaseReadStream@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 8;
  result = std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(a1 + 8, a2);
  if (result)
  {
    v8 = result[7];
    result[7] = 0;
    *a3 = v8;
    result = std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(v6, a2);
    if (result)
    {
      v9 = a1[9];
      v10 = result[1];
      v11 = vcnt_s8(v9);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        if (v10 >= *&v9)
        {
          v10 %= *&v9;
        }
      }

      else
      {
        v10 &= *&v9 - 1;
      }

      v12 = *(*v6 + 8 * v10);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != result);
      if (v13 == a1 + 10)
      {
        goto LABEL_21;
      }

      v14 = v13[1];
      if (v11.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v10)
      {
LABEL_21:
        if (!*result)
        {
          goto LABEL_22;
        }

        v15 = *(*result + 8);
        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v10)
        {
LABEL_22:
          *(*v6 + 8 * v10) = 0;
        }
      }

      v16 = *result;
      if (*result)
      {
        v17 = *(v16 + 8);
        if (v11.u32[0] > 1uLL)
        {
          if (v17 >= *&v9)
          {
            v17 %= *&v9;
          }
        }

        else
        {
          v17 &= *&v9 - 1;
        }

        if (v17 != v10)
        {
          *(*v6 + 8 * v17) = v13;
          v16 = *result;
        }
      }

      *v13 = v16;
      *result = 0;
      --a1[11];
      v18[0] = result;
      v18[1] = v6;
      v19 = 1;
      memset(v20, 0, sizeof(v20));
      return std::unique_ptr<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>>>>::~unique_ptr[abi:ne200100](v18);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *v13 = a1[1];
  *&v13[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v5 = a1[3];
  *v12 = a1[4];
  *&v12[7] = *(a1 + 39);
  v7 = *(a1 + 47);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v8 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v8;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v9 = *(a2 + 24);
  v6[2] = *(a2 + 40);
  *v6 = v9;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v10 = *(a2 + 47);
    *a2 = v3;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v4;
    if (v10 < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else
  {
    *a2 = v3;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v4;
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = *v12;
  *(a2 + 39) = *&v12[7];
  *(a2 + 47) = v7;
  v11 = *MEMORY[0x277D85DE8];
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(uint64_t *a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v9 = a5;
  v13 = a1;
  v14 = a1;
  while (v9 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    while (!snlp::ssu::usershortcut::operator<(a2, v14))
    {
      v13 = (v14 + 6);
      v14 += 6;
      if (!--a4)
      {
        return;
      }
    }

    v71 = a3;
    v72 = a6;
    if (a4 >= v9)
    {
      if (a4 == 1)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v13, a2);
        return;
      }

      v70 = a4 / 2;
      v17 = &v13[6 * (a4 / 2)];
      if (a3 == a2)
      {
        v16 = a3;
      }

      else
      {
        v68 = a7;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
        v16 = a2;
        do
        {
          v20 = &v16[6 * (v19 >> 1)];
          v21 = snlp::ssu::usershortcut::operator<(v20, &v13[6 * (a4 / 2)]);
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
            v16 = v20 + 6;
          }
        }

        while (v19);
        a7 = v68;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v16 - a2) >> 4);
    }

    else
    {
      v15 = v9 / 2;
      v16 = (a2 + 48 * (v9 / 2));
      v17 = a2;
      if (a2 != v14)
      {
        v67 = a7;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v14) >> 4);
        do
        {
          if (snlp::ssu::usershortcut::operator<(v16, &v14[6 * (v18 >> 1)]))
          {
            v18 >>= 1;
          }

          else
          {
            v14 += 6 * (v18 >> 1) + 6;
            v18 += ~(v18 >> 1);
          }
        }

        while (v18);
        v17 = v14;
        a7 = v67;
        v15 = v9 / 2;
      }

      v70 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 4);
    }

    v14 = v13;
    a3 = v16;
    if (v17 != a2)
    {
      a3 = v17;
      if (v16 != a2)
      {
        v66 = v15;
        v69 = a7;
        a3 = (v17 + 6);
        v22 = v17;
        v23 = a2;
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v22, a2);
          v22 += 6;
          a2 += 48;
          if (a2 == v16)
          {
            break;
          }

          if (v22 == v23)
          {
            v23 = a2;
          }

          a3 += 6;
        }

        if (v22 != v23)
        {
          v24 = v23;
          do
          {
            while (1)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v22, v23);
              v22 += 6;
              v23 += 48;
              if (v23 == v16)
              {
                break;
              }

              if (v22 == v24)
              {
                v24 = v23;
              }
            }

            v23 = v24;
          }

          while (v22 != v24);
        }

        a7 = v69;
        v15 = v66;
      }
    }

    a4 -= v70;
    v9 -= v15;
    if (v70 + v15 >= a4 + v9)
    {
      v25 = a4;
      v26 = v15;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a3, v16, v71, v25, v9, v72, a7);
      v16 = v17;
      v9 = v26;
      a4 = v70;
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(v13, v17, a3, v70, v15, v72, a7);
      v13 = a3;
      v14 = a3;
      a3 = v71;
    }

    a2 = v16;
    a6 = v72;
    if (!v9)
    {
      return;
    }
  }

  v73[0] = a6;
  v73[1] = &v74;
  v74 = 0;
  if (a4 > v9)
  {
    if (a3 == a2)
    {
      goto LABEL_104;
    }

    v27 = 0;
    v28 = a6;
    v29 = a2;
    do
    {
      v30 = *v29;
      *(v28 + 2) = *(v29 + 16);
      *v28 = v30;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = 0;
      v31 = *(v29 + 24);
      *(v28 + 5) = *(v29 + 40);
      *(v28 + 24) = v31;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 24) = 0;
      ++v27;
      v29 += 48;
      v28 += 3;
    }

    while (v29 != a3);
    v74 = v27;
    v32 = a3 - 6;
    while (1)
    {
      if (a2 == v14)
      {
        if (v28 != a6)
        {
          v56 = 0;
          do
          {
            v57 = &v32[v56 / 8];
            if (SHIBYTE(v32[v56 / 8 + 2]) < 0)
            {
              operator delete(*v57);
            }

            v58 = &v28[v56 / 0x10 - 3];
            v59 = *v58;
            v57[2] = *&v28[v56 / 0x10 - 2];
            *v57 = v59;
            *(&v28[v56 / 0x10 - 1] - 9) = 0;
            *v58 = 0;
            if (*(v57 + 47) < 0)
            {
              operator delete(v57[3]);
            }

            v60 = &v28[v56 / 0x10];
            v61 = *(&v28[v56 / 0x10 - 1] - 8);
            v57[5] = *(&v28[v56 / 0x10 - 1] + 1);
            *(v57 + 3) = v61;
            *(v60 - 1) = 0;
            *(v60 - 24) = 0;
            v56 -= 48;
          }

          while (&v28[v56 / 0x10] != a6);
        }

        goto LABEL_104;
      }

      v33 = (a2 - 48);
      v34 = v28 - 3;
      v35 = snlp::ssu::usershortcut::operator<(v28 - 6, (a2 - 48));
      v36 = *(v32 + 23);
      if (v35)
      {
        if (v36 < 0)
        {
          operator delete(*v32);
        }

        v37 = *v33;
        v32[2] = *(a2 - 32);
        *v32 = v37;
        *(a2 - 25) = 0;
        *(a2 - 48) = 0;
        v38 = v32 + 3;
        v39 = a2;
        v34 = v28;
        a2 -= 48;
        if ((*(v32 + 47) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v36 < 0)
        {
          operator delete(*v32);
        }

        v40 = *v34;
        v32[2] = *(v28 - 4);
        *v32 = v40;
        *(v28 - 25) = 0;
        *(v28 - 48) = 0;
        v38 = a3 - 3;
        v39 = v28;
        v33 = a2;
        v28 -= 3;
        if ((*(v32 + 47) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      operator delete(*v38);
      a2 = v33;
      v28 = v34;
LABEL_66:
      a3 -= 6;
      v41 = *(v39 - 24);
      v38[2] = *(v39 - 8);
      *v38 = v41;
      *(v39 - 1) = 0;
      *(v39 - 24) = 0;
      v32 -= 6;
      if (v28 == a6)
      {
        goto LABEL_104;
      }
    }
  }

  if (v14 == a2)
  {
    goto LABEL_104;
  }

  v42 = 0;
  v43 = a6;
  v44 = v14;
  do
  {
    v45 = v43;
    v46 = *v44;
    *(v43 + 16) = v44[2];
    *v43 = v46;
    v44[1] = 0;
    v44[2] = 0;
    *v44 = 0;
    v47 = *(v44 + 3);
    *(v43 + 40) = v44[5];
    *(v43 + 24) = v47;
    v44[4] = 0;
    v44[5] = 0;
    v44[3] = 0;
    ++v42;
    v44 += 6;
    v43 += 48;
  }

  while (v44 != a2);
  v74 = v42;
  v48 = v14 + 23;
  while (a2 != a3)
  {
    v49 = (v48 - 23);
    v50 = snlp::ssu::usershortcut::operator<(a2, a6);
    v51 = *v48;
    if (v50)
    {
      if (v51 < 0)
      {
        operator delete(*v49);
      }

      v52 = *a2;
      *(v48 - 7) = *(a2 + 16);
      *v49 = v52;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v53 = *(a2 + 24);
      *(v48 + 17) = *(a2 + 40);
      *(v48 + 1) = v53;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      a2 += 48;
    }

    else
    {
      if (v51 < 0)
      {
        operator delete(*v49);
      }

      v54 = *a6;
      *(v48 - 7) = *(a6 + 16);
      *v49 = v54;
      *(a6 + 23) = 0;
      *a6 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v55 = *(a6 + 24);
      *(v48 + 17) = *(a6 + 40);
      *(v48 + 1) = v55;
      *(a6 + 47) = 0;
      *(a6 + 24) = 0;
      a6 += 48;
    }

    v48 += 48;
    if (a6 == v43)
    {
      goto LABEL_104;
    }
  }

  if (a6 != v43)
  {
    do
    {
      v62 = (v48 - 23);
      if (*v48 < 0)
      {
        operator delete(*v62);
      }

      v63 = *a6;
      *(v48 - 7) = *(a6 + 16);
      *v62 = v63;
      *(a6 + 23) = 0;
      *a6 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v64 = *(a6 + 24);
      *(v48 + 17) = *(a6 + 40);
      *(v48 + 1) = v64;
      *(a6 + 47) = 0;
      *(a6 + 24) = 0;
      v48 += 48;
      v65 = a6 == v45;
      a6 += 48;
    }

    while (!v65);
  }

LABEL_104:
  std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](v73);
}

void snlp::ssu::usershortcut::buildPositiveExamples(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::reserve(&v7, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  if (*a1 != a1[1])
  {
    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      v10 = *(v4 + 24);
    }

    memset(v6, 0, sizeof(v6));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v6, &v10, v11, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppIntent*,snlp::ssu::app::SSUAppIntent*>(a2, v7, v8, 0x8E38E38E38E38E39 * ((v8 - v7) >> 3));
  v10.__r_.__value_.__r.__words[0] = &v7;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_222945078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __p = &a13;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this@<X0>, std::string *a2@<X8>)
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

char *nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::doesMatchingSpanHaveLabelAndSemanticValue(void *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  result = a1[6];
  if (result)
  {
    v9 = result[23];
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = result;
      result = *result;
      v9 = *(v10 + 1);
    }

    if (v9 != a3 || memcmp(result, a2, v9))
    {
      return 0;
    }

    result = a1[7];
    if (result)
    {
      v11 = result[23];
      if ((v11 & 0x8000000000000000) != 0)
      {
        result = *result;
        v11 = *(a1[7] + 8);
      }

      if (v11 != a5 || memcmp(result, a4, v11))
      {
        return 0;
      }

      v12 = a1[1];
      v13 = a1[2];
      if (v12 != v13)
      {
        while (*v12 != 3 && *v12 != 8)
        {
          if (++v12 == v13)
          {
            v12 = a1[2];
            return (v13 != v12);
          }
        }
      }

      return (v13 != v12);
    }
  }

  return result;
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::Argument_definedValue(this);
  v4 = *(this + 71);
  if (v4 >= 0)
  {
    v5 = *(this + 71);
  }

  else
  {
    v5 = *(this + 7);
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = *(this + 6);
  v9 = this + 48;
  v8 = v10;
  if (v4 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v14 = *(v3 + 8);
  v12 = (v3 + 8);
  v13 = v14;
  if (v7 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  return memcmp(v11, v15, v5) == 0;
}

BOOL snlp::ssu::app::SSUAppCategory::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5)))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

unint64_t snlp::ssu::app::SSUAppCategoryHash::operator()(uint64_t a1, char *a2)
{
  v3 = 0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u;
  v4 = boost::hash<std::string>::operator()(a2 + 8);
  return 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[32]) ^ ((0xC6A4A7935BD1E995 * a2[32]) >> 47))) ^ (3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3)));
}

void uaap_orchestration::grammar::parseValueToString(unsigned int *a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = *a1;
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v3 = (21 - *(a1 + 21));
  }

  else
  {
    a1 = *(a1 + 1);
    v3 = v2;
  }

  toU16String(a1, v3, a2);
}

void uaap_orchestration::grammar::Path::getFirstComponent(uaap_orchestration::grammar::Path *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (*this == *(this + 1))
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, *v3, *(v3 + 8));
    }

    else
    {
      *a2 = *v3;
      *(a2 + 16) = *(v3 + 16);
    }

    v4 = 1;
  }

  *(a2 + 24) = v4;
}

void uaap_orchestration::grammar::Path::getLastComponent(uaap_orchestration::grammar::Path *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (*this == v3)
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 - 1) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(v3 - 24), *(v3 - 16));
    }

    else
    {
      *a2 = *(v3 - 24);
      *(a2 + 16) = *(v3 - 8);
    }

    v4 = 1;
  }

  *(a2 + 24) = v4;
}

std::basic_string<char16_t> *uaap_orchestration::grammar::Path::toString@<X0>(std::basic_string<char16_t> *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if (this->__r_.__value_.__r.__words[0] != size)
  {
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v7 = *v4;
    }

    if (v6 >= 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = *(v4 + 8);
    }

    this = std::basic_string<char16_t>::append(a2, v7, v8);
    v4 = v2->__words[0];
    size = v2->__words[1];
  }

  v9 = v4 + 24;
  if (size != v4 + 24)
  {
    do
    {
      std::basic_string<char16_t>::append(a2, L".", 1uLL);
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      this = std::basic_string<char16_t>::append(a2, v11, v12);
      v9 += 24;
    }

    while (v9 != v2->__words[1]);
  }

  return this;
}

void sub_222945578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 2 * size, __s, 2 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

void std::basic_string<char16_t>::__grow_by_and_replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add, const std::basic_string<char16_t>::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v9 = 2 * __old_cap;
    }

    if ((v9 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (v9 | 3) + 1;
    }

    v11 = v9 >= 0xB;
    v12 = 11;
    if (v11)
    {
      v12 = v10;
    }

    if (__old_cap > 0x3FFFFFFFFFFFFFF2)
    {
      v13 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v13 = v12;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v13);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

uint64_t uaap_orchestration::grammar::Path::extendWithComponent@<X0>(__int128 **a1@<X0>, __int128 *a2@<X1>, std::basic_string<char16_t>::__raw *a3@<X8>)
{
  a3->__words[0] = 0;
  a3->__words[1] = 0;
  a3->__words[2] = 0;
  std::vector<std::basic_string<char16_t>>::reserve(a3, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1);
  std::vector<std::basic_string<char16_t>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(a3, a3->__words[0], *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  return std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a3, a2);
}

void sub_22294582C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::basic_string<char16_t>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::basic_string<char16_t>::__raw *std::vector<std::basic_string<char16_t>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(std::basic_string<char16_t>::__raw *result, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    v10 = result->__words[1];
    v9 = result->__words[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v21 = 3 * a5;
        std::vector<std::basic_string<char16_t>>::__move_range(result, a2, result->__words[1], a2 + 24 * a5);
        v22 = (v6 + 8 * v21);
        do
        {
          result = std::basic_string<char16_t>::operator=(v7, v6);
          v6 = (v6 + 24);
          ++v7;
        }

        while (v6 != v22);
      }

      else
      {
        v17 = (a3 + v15);
        v36 = result->__words[1];
        v37 = v10;
        v32 = result;
        v33 = &v36;
        *&v34 = &v37;
        v18 = v10;
        BYTE8(v34) = 0;
        if ((a3 + v15) != a4)
        {
          v18 = v10;
          v19 = (a3 + v15);
          do
          {
            if (*(v19 + 23) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(v18, *v19, *(v19 + 1));
              v18 = v37;
            }

            else
            {
              v20 = *v19;
              v18->__r_.__value_.__r.__words[2] = *(v19 + 2);
              *&v18->__r_.__value_.__l.__data_ = v20;
            }

            v19 = (v19 + 24);
            v37 = ++v18;
          }

          while (v19 != a4);
        }

        BYTE8(v34) = 1;
        result = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](&v32);
        v8->__words[1] = v18;
        if (v15 >= 1)
        {
          std::vector<std::basic_string<char16_t>>::__move_range(v8, v7, v10, &v7[a5]);
          do
          {
            result = std::basic_string<char16_t>::operator=(v7, v6);
            v6 = (v6 + 24);
            ++v7;
          }

          while (v6 != v17);
        }
      }
    }

    else
    {
      v11 = result->__words[0];
      v12 = a5 - 0x5555555555555555 * ((v10 - result->__words[0]) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v35 = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v14);
      }

      v23 = (8 * ((a2 - v11) >> 3));
      v32 = 0;
      v33 = v23;
      v34 = v23;
      v24 = &v23[a5];
      v25 = 24 * a5;
      do
      {
        if (*(v6 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v23, *v6, *(v6 + 1));
        }

        else
        {
          v26 = *v6;
          v23->__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&v23->__r_.__value_.__l.__data_ = v26;
        }

        ++v23;
        v6 = (v6 + 24);
        v25 -= 24;
      }

      while (v25);
      memcpy(v24, v7, v8->__words[1] - v7);
      v27 = v8->__words[0];
      *&v34 = v24 + v8->__words[1] - v7;
      v8->__words[1] = v7;
      v28 = v7 - v27;
      v29 = v33 - (v7 - v27);
      memcpy(v29, v27, v28);
      v30 = v8->__words[0];
      v8->__words[0] = v29;
      v31 = v8->__words[2];
      *&v8->__words[1] = v34;
      *&v34 = v30;
      *(&v34 + 1) = v31;
      v32 = v30;
      v33 = v30;
      return std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v32);
    }
  }

  return result;
}

void sub_222945BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a1, a2);
  }

  else
  {
    std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

uint64_t std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
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
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v5);
  }

  v6 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v7 = 0;
  v18 = 24 * v2;
  v19 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
    v6 = v17;
    v9 = v18;
    v7 = v19;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v6 = v8;
    v9 = 24 * v2;
  }

  v10 = v9 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = (v6 - v11);
  memcpy((v6 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v7;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v16);
  return v10;
}

void sub_222945DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
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

__n128 std::vector<std::basic_string<char16_t>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      result = *v6;
      v7[1].n128_u64[0] = v6[1].n128_u64[0];
      *v7 = result;
      v7 = (v7 + 24);
      v6->n128_u64[1] = 0;
      v6[1].n128_u64[0] = 0;
      v6->n128_u64[0] = 0;
      v6 = (v6 + 24);
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
      v11 = (v4 + v9 - 24);
      if (*(v4 + v9 - 1) < 0)
      {
        operator delete(*v11);
      }

      v12 = (v9 - 24 + v5);
      result = *v12;
      *(v4 + v9 - 8) = v12[1].n128_u64[0];
      *v11 = result;
      *(v5 + v9 - 1) = 0;
      v12->n128_u16[0] = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }

  return result;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::operator=(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::basic_string<char16_t>::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::basic_string<char16_t>::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<true>(std::basic_string<char16_t> *__dst, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = __n_add > 0xA;
  v6 = __n_add - 10;
  if (v5)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(__dst, 0xAuLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __n_add, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __n_add;
    if (__n_add)
    {
      memmove(__dst, __src, 2 * __n_add);
    }

    __dst->__r_.__value_.__s.__data_[__n_add] = 0;
  }

  return __dst;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<false>(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __n_add)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v5 - 1, __n_add - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __n_add;
    if (__n_add)
    {
      memmove(v6, __src, 2 * __n_add);
    }

    *(v6 + __n_add) = 0;
  }

  return this;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t uaap_orchestration::grammar::Path::singletonPath@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, a1);
}

void sub_222946148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void uaap_orchestration::grammar::ResolutionTable::getSemanticValues(uaap_orchestration::grammar::ResolutionTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a2, *(this + 3));
  for (i = *(this + 2); i; i = *i)
  {
    std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::pair[abi:ne200100](&__p, i + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(a2, &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v8 = &v6;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::pair[abi:ne200100](std::basic_string<char16_t> *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_2229462F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(void *a1, unsigned __int16 *a2)
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

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v11 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void uaap_orchestration::grammar::ResolutionTable::getSynonyms(void *a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a1, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(v4 + 5);
  v6 = *(v4 + 6);

  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a3, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
}

void uaap_orchestration::grammar::ResolutionTable::loadSemanticValueToSynonyms(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = v3 + 24 * *a1;
    do
    {
      if (*(v3 + 22) != 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v47, "Error parsing JSON grammar: row.IsObject() == false [for key: ");
        v40 = std::string::append(&v47, "resolution-table");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v48, " entry");
        v43 = *&v42->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&__p, "]");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v50);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v5 = *v3;
      v6 = *(v3 + 8);
      Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v3, v6, "semantic-value");
      if (&v6[12 * v5] == Member || (v8 = *(Member + 23), (v8 & 0x400) == 0))
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v48, "Error parsing JSON grammar: parsedSemanticValue != row.MemberEnd() && parsedSemanticValue->value.IsString() == false [for key: ");
        v30 = std::string::append(&v48, "semantic-value");
        v31 = *&v30->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&__p, "]");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v29, &v50);
        __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = Member[6];
      v9 = Member + 6;
      v10 = v11;
      if ((v8 & 0x1000) != 0)
      {
        v12 = (21 - *(v9 + 21));
      }

      else
      {
        v9 = *(v9 + 1);
        v12 = v10;
      }

      toU16String(v9, v12, &v50);
      v13 = *v3;
      v14 = *(v3 + 8);
      v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v3, v14, "synonyms");
      if (&v14[12 * v13] == v15 || *(v15 + 23) != 4)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v47, "Error parsing JSON grammar: parsedSynonyms != row.MemberEnd() && parsedSynonyms->value.IsArray() == false [for key: ");
        v35 = std::string::append(&v47, "synonyms");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v48, "]");
        v38 = *&v37->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v34, &__p);
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v16 = v15[6];
      if (v16)
      {
        v17 = *(v15 + 4);
        v18 = 24 * v16;
        do
        {
          if ((*(v17 + 11) & 0x400) == 0)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string[abi:ne200100]<0>(&v46, "Error parsing JSON grammar: parsedSynonym.IsString() == false [for key: ");
            v23 = std::string::append(&v46, "synonyms");
            v24 = *&v23->__r_.__value_.__l.__data_;
            v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v47.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v25 = std::string::append(&v47, " entry");
            v26 = *&v25->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v48, "]");
            v28 = *&v27->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v22, &__p);
            __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          __p.__r_.__value_.__r.__words[0] = &v50;
          v19 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(a2, &v50);
          if ((*(v17 + 11) & 0x1000) != 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = *(v17 + 1);
          }

          if ((*(v17 + 11) & 0x1000) != 0)
          {
            v21 = (21 - *(v17 + 21));
          }

          else
          {
            v21 = *v17;
          }

          toU16String(v20, v21, &__p);
          std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](v19 + 5, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v17 += 6;
          v18 -= 24;
        }

        while (v18);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_222946BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v37 & 1) == 0)
    {
LABEL_12:
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v35);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v36);
  goto LABEL_12;
}

int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(unsigned int a1, int *a2, char *__s)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[1] = __s;
  v9[2] = 0x405000000000000;
  v9[0] = strlen(__s);
  if (a1)
  {
    v5 = &a2[12 * a1];
    v6 = 48 * a1;
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v9, a2))
    {
      a2 += 12;
      v6 -= 48;
      if (!v6)
      {
        a2 = v5;
        break;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return a2;
}

unsigned __int16 *std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
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

void sub_222947128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

size_t *std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(unsigned int *a1, int *a2)
{
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v2 = 21 - *(a1 + 21);
  }

  else
  {
    v2 = *a1;
  }

  v3 = 21 - *(a2 + 21);
  if ((*(a2 + 11) & 0x1000) == 0)
  {
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x1000) == 0)
  {
    a1 = *(a1 + 1);
  }

  if ((*(a2 + 11) & 0x1000) == 0)
  {
    a2 = *(a2 + 1);
  }

  return a1 == a2 || memcmp(a1, a2, v2) == 0;
}

void uaap_orchestration::grammar::ValueConstraints::getEnumChoices(uaap_orchestration::grammar::ValueConstraints *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a2, *(this + 4), *(this + 5), 0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 3));
}

void uaap_orchestration::grammar::ValueConstraints::getOpenListChoices(uaap_orchestration::grammar::ValueConstraints *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a2, *(this + 7), *(this + 8), 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
}

_BYTE *std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    std::unordered_map<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>::unordered_map(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_2229473FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char16_t>::operator()[abi:ne200100]((i + 8));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = *(v12 + 1);
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, i + 8))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void uaap_orchestration::grammar::ValueConstraints::loadValueType(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "type");
  if (&v4[12 * v3] == Member)
  {
    v11 = 0;
    *a2 = 0;
  }

  else
  {
    v6 = *(Member + 23);
    if ((v6 & 0x400) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v17, "Error parsing JSON grammar: parsedValueType->value.IsString() == false [for key: ");
      v13 = std::string::append(&v17, "type");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v18, "]");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v19);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = Member[6];
    v7 = Member + 6;
    v8 = v9;
    if ((v6 & 0x1000) != 0)
    {
      v10 = (21 - *(v7 + 21));
    }

    else
    {
      v7 = *(v7 + 1);
      v10 = v8;
    }

    toU16String(v7, v10, a2);
    v11 = 1;
  }

  *(a2 + 24) = v11;
}

void sub_2229477FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::ValueConstraints::loadEnumChoices(uint64_t a1@<X1>, size_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "enum-choices");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v26, "Error parsing JSON grammar: parsedEnumChoices->value.IsArray() == false [for key: ");
      v20 = std::string::append(&v26, "enum-choices");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v27, "]");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v28);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::basic_string<char16_t>>::reserve(a2, Member[6]);
    v7 = v6[6];
    if (v7)
    {
      v8 = *(v6 + 4);
      v9 = 24 * v7;
      do
      {
        if ((*(v8 + 11) & 0x400) == 0)
        {
          v12 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v25, "Error parsing JSON grammar: enumChoice.IsString() == false [for key: ");
          v13 = std::string::append(&v25, "enum-choices");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
          *&v26.__r_.__value_.__l.__data_ = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          v15 = std::string::append(&v26, " entry");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v27.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v27, "]");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v12, &v28);
          __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *(v8 + 1);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v11 = (21 - *(v8 + 21));
        }

        else
        {
          v11 = *v8;
        }

        toU16String(v10, v11, &__p);
        std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 += 6;
        v9 -= 24;
      }

      while (v9);
    }
  }
}

void sub_222947AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

void uaap_orchestration::grammar::ValueConstraints::loadOpenListChoices(uint64_t a1@<X1>, size_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "open-list-choices");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v26, "Error parsing JSON grammar: parsedOpenListChoices->value.IsArray() == false [for key: ");
      v20 = std::string::append(&v26, "open-list-choices");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v27, "]");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v28);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::basic_string<char16_t>>::reserve(a2, Member[6]);
    v7 = v6[6];
    if (v7)
    {
      v8 = *(v6 + 4);
      v9 = 24 * v7;
      do
      {
        if ((*(v8 + 11) & 0x400) == 0)
        {
          v12 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v25, "Error parsing JSON grammar: openListChoice.IsString() == false [for key: ");
          v13 = std::string::append(&v25, "open-list-choices");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
          *&v26.__r_.__value_.__l.__data_ = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          v15 = std::string::append(&v26, " entry");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v27.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v27, "]");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v12, &v28);
          __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *(v8 + 1);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v11 = (21 - *(v8 + 21));
        }

        else
        {
          v11 = *v8;
        }

        toU16String(v10, v11, &__p);
        std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 += 6;
        v9 -= 24;
      }

      while (v9);
    }
  }
}

void sub_222947E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

int *uaap_orchestration::grammar::ValueConstraints::loadResolutionTable@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "resolution-table");
  if (&v4[12 * v3] == result)
  {
    *a2 = 0;
    a2[40] = 0;
  }

  else
  {
    if (*(result + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v12, "Error parsing JSON grammar: parsedResolutionTable->value.IsArray() == false [for key: ");
      v7 = std::string::append(&v12, "resolution-table");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v13, "]");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v11.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v11.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v11);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    uaap_orchestration::grammar::ResolutionTable::loadSemanticValueToSynonyms(result + 6, &v11);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a2, &v11);
    a2[40] = 1;
    return std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&v11);
  }

  return result;
}

void sub_222948108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
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
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::getLeftLabel(uaap_orchestration::grammar::Rule *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
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

void uaap_orchestration::grammar::Rule::getRightLabels(uaap_orchestration::grammar::Rule *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(a2, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 5);
}

void std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void uaap_orchestration::grammar::Rule::getRightLabelNames(uaap_orchestration::grammar::Rule *this@<X0>, size_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  for (i = *(this + 4); v2 != i; v2 += 32)
  {
    if (*(v2 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    }

    else
    {
      __p = *v2;
    }

    std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

std::basic_string<char16_t> *std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](std::basic_string<char16_t> *this, uint64_t a2)
{
  LOBYTE(this->__r_.__value_.__l.__data_) = 0;
  LOBYTE(this[5].__r_.__value_.__r.__words[1]) = 0;
  if (*(a2 + 128) == 1)
  {
    std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](this, a2);
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    this[2].__r_.__value_.__r.__words[0] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    this[2].__r_.__value_.__l.__size_ = 0;
    this[2].__r_.__value_.__r.__words[2] = 0;
    this[3].__r_.__value_.__r.__words[0] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__r.__words[1], a2 + 80);
    LOBYTE(this[5].__r_.__value_.__r.__words[1]) = 1;
  }

  return this;
}

void sub_2229484C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  if (*(v2 + 128) == 1)
  {
    uaap_orchestration::grammar::ValueConstraints::~ValueConstraints(v2);
  }

  _Unwind_Resume(a1);
}

void uaap_orchestration::grammar::ValueConstraints::~ValueConstraints(uaap_orchestration::grammar::ValueConstraints *this)
{
  if (*(this + 120) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(this + 80);
  }

  v2 = (this + 56);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void uaap_orchestration::grammar::Rule::loadLeftLabelFromJson(uint64_t a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "left-label");
  if (&v4[12 * v3] == Member || (v6 = *(Member + 23), (v6 & 0x400) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "Error parsing JSON grammar: leftLabel != jsonRule.MemberEnd() && leftLabel->value.IsString() == false [for key: ");
    v12 = std::string::append(&v16, "left-label");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v17, "]");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = Member[6];
  v7 = Member + 6;
  v8 = v9;
  if ((v6 & 0x1000) != 0)
  {
    v10 = (21 - *(v7 + 21));
  }

  else
  {
    v7 = *(v7 + 1);
    v10 = v8;
  }

  toU16String(v7, v10, a2);
}

void sub_2229486E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::loadValueConstraintsFromJson(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "value-constraints");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = std::string::basic_string[abi:ne200100]<0>(v23, "Error parsing JSON grammar: parsedValueConstraints->value.IsObject() == false [for key: ");
      v11 = std::string::append(v10, "value-constraints");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v24, "]");
      v14 = *&v13->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    uaap_orchestration::grammar::ValueConstraints::loadValueType((Member + 6), &__p);
    uaap_orchestration::grammar::ValueConstraints::loadEnumChoices((v6 + 6), &v17);
    uaap_orchestration::grammar::ValueConstraints::loadOpenListChoices((v6 + 6), &v19);
    uaap_orchestration::grammar::ValueConstraints::loadResolutionTable((v6 + 6), v21);
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v16 == 1)
    {
      *a2 = __p;
      memset(&__p, 0, sizeof(__p));
      *(a2 + 24) = 1;
    }

    v7 = v17;
    *(a2 + 80) = 0;
    *(a2 + 32) = v7;
    *(a2 + 48) = v18;
    v18 = 0;
    v17 = 0uLL;
    *(a2 + 56) = v19;
    *(a2 + 72) = v20;
    v20 = 0;
    v19 = 0uLL;
    *(a2 + 120) = 0;
    if (v22 == 1)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a2 + 80, v21);
      *(a2 + 120) = 1;
      v8 = v22;
      *(a2 + 128) = 1;
      if (v8)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v21);
      }
    }

    else
    {
      *(a2 + 128) = 1;
    }

    v24.__r_.__value_.__r.__words[0] = &v19;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24.__r_.__value_.__r.__words[0] = &v17;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2229489A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  if (*(v17 - 81) < 0)
  {
    operator delete(*(v17 - 104));
    if ((v16 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v15);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::loadRightLabelsFromJson(uint64_t a1@<X0>, std::string::size_type *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "right-labels");
  if (&v4[12 * v3] == Member || *(Member + 23) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedRightLabels != jsonRule.MemberEnd() && parsedRightLabels->value.IsArray() == false [for key: ");
    v54 = std::string::append(&__p, "right-labels");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    v56 = std::string::append(&v58, "]");
    v57 = *&v56->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v62);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = Member[6];
  if (v6)
  {
    v7 = *(Member + 4);
    v8 = v7 + 24 * v6;
    do
    {
      if (*(v7 + 22) != 3)
      {
        v46 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v60, "Error parsing JSON grammar: rightLabelObject.IsObject() == false [for key: ");
        v47 = std::string::append(&v60, "right-labels");
        v48 = *&v47->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        v49 = std::string::append(&__p, " entry");
        v50 = *&v49->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        v51 = std::string::append(&v58, "]");
        v52 = *&v51->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v46, &v62);
        __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v7, v10, "name");
      v12 = &v10[12 * v9];
      if (v12 == v11 || (v13 = v11, v14 = *(v11 + 23), (v14 & 0x400) == 0))
      {
        v36 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedName != rightLabelObject.MemberEnd() && parsedName->value.IsString() == false [for key: ");
        v37 = std::string::append(&__p, "name");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v58, "]");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v36, &v62);
        __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(v9, v10, "repeated");
      if (v12 == v15 || (v16 = v15, (*(v15 + 23) & 8) == 0))
      {
        v41 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedRepeatedFlag != rightLabelObject.MemberEnd() && parsedRepeatedFlag->value.IsBool() == false [for key: ");
        v42 = std::string::append(&__p, "repeated");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v58, "]");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v41, &v62);
        __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((v14 & 0x1000) != 0)
      {
        v17 = (v13 + 6);
      }

      else
      {
        v17 = *(v13 + 4);
      }

      if ((v14 & 0x1000) != 0)
      {
        v18 = (21 - *(v13 + 45));
      }

      else
      {
        v18 = v13[6];
      }

      toU16String(v17, v18, &__p);
      v19 = *(v16 + 23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v58, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v58 = __p;
      }

      v20 = v19 == 10;
      v59 = v19 == 10;
      v21 = a2[1];
      v22 = a2[2];
      if (v21 >= v22)
      {
        v24 = (v21 - *a2) >> 5;
        v25 = v24 + 1;
        if ((v24 + 1) >> 59)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v22 - *a2;
        if (v26 >> 4 > v25)
        {
          v25 = v26 >> 4;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFE0)
        {
          v27 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(v27);
        }

        v28 = 32 * v24;
        *v28 = v58;
        memset(&v58, 0, sizeof(v58));
        *(v28 + 24) = v20;
        v30 = *a2;
        v29 = a2[1];
        v62.__r_.__value_.__r.__words[0] = a2;
        v62.__r_.__value_.__l.__size_ = &v64;
        v62.__r_.__value_.__r.__words[2] = &v60;
        v31 = v30;
        v32 = v28 + v30 - v29;
        v60.__r_.__value_.__r.__words[0] = v32;
        v64 = v32;
        v33 = v32;
        if (v30 == v29)
        {
          v63 = 1;
        }

        else
        {
          do
          {
            v34 = *v31;
            *(v33 + 16) = v31[2];
            *v33 = v34;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = 0;
            *(v33 + 24) = *(v31 + 24);
            v31 += 4;
            v33 += 32;
          }

          while (v31 != v29);
          v60.__r_.__value_.__r.__words[0] = v33;
          v63 = 1;
          do
          {
            if (*(v30 + 23) < 0)
            {
              operator delete(*v30);
            }

            v30 += 4;
          }

          while (v30 != v29);
        }

        v23 = v28 + 32;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap_orchestration::grammar::RightLabel>,uaap_orchestration::grammar::RightLabel*>>::~__exception_guard_exceptions[abi:ne200100](&v62);
        v35 = *a2;
        *a2 = v32;
        *(a2 + 1) = (v28 + 32);
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v21 = v58;
        *(v21 + 24) = v20;
        v23 = v21 + 32;
      }

      a2[1] = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 += 24;
    }

    while (v7 != v8);
  }
}

void sub_222949030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    if ((v38 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v37);
  goto LABEL_10;
}

void uaap_orchestration::grammar::UaapGrammar::UaapGrammar(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = v2;
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(&v4);
}

void sub_222949414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v11 = v10;
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(va);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(va1);
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(va2);
  std::vector<uaap_orchestration::grammar::Rule>::__destroy_vector::operator()[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1024;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  operator new();
}

unint64_t uaap_orchestration::grammar::UaapGrammar::loadRulesFromJson@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 11) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Error parsing JSON grammar: jsonGrammar.IsObject() == false [for key: ");
    v15 = std::string::append(&v19, "(root)");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v20, "]");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21.__r_.__value_.__r.__words[2] = 0x405000000000000;
  v21.__r_.__value_.__l.__size_ = "rules";
  v21.__r_.__value_.__r.__words[0] = 5;
  v3 = *(a1 + 1);
  v4 = *a1;
  if (v4)
  {
    v5 = 48 * v4;
    v6 = *(a1 + 1);
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v21, v6))
    {
      v6 += 48;
      v5 -= 48;
      if (!v5)
      {
        v6 = v3 + 48 * v4;
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    v6 = *(a1 + 1);
  }

  if (v6 == v3 + 48 * v4 || *(v6 + 46) != 4)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Error parsing JSON grammar: parsedRules != jsonGrammar.MemberEnd() && parsedRules->value.IsArray() == false [for key: ");
    v10 = std::string::append(&v19, "rules");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v20, "]");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v9, &v21);
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = *(v6 + 24);
  if (result)
  {
    v22 = a2;
    std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>>(result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222949A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v49 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v48);
  goto LABEL_10;
}

void std::vector<uaap_orchestration::grammar::Rule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(i))
    {
      i -= 184;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      while (v3 != *(v2 + 16))
      {
        v4 = v3[2];
        free(v3);
        *v2 = v4;
        v3 = v4;
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v3[1] = 0;
    }

LABEL_7:
    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x223DC4D00](v5, 0xC400A2AC0F1);
    }

    MEMORY[0x223DC4D00](v2, 0x10A0C40AAA3F4FELL);
  }

  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(a1 + 40);
  return a1;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(a1 + 128);
    }

    v3 = (a1 + 104);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 80);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  v3 = (a1 + 24);
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::construct[abi:ne200100]<uaap_orchestration::grammar::Rule,uaap_orchestration::grammar::Rule,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(result + 48) = 0;
  *(result + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v3 = result;
    *(result + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v4 = a2[3];
      *(result + 64) = *(a2 + 8);
      *(result + 48) = v4;
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 6) = 0;
      *(result + 72) = 1;
    }

    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 80) = a2[5];
    *(result + 96) = *(a2 + 12);
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 104) = *(a2 + 104);
    *(result + 120) = *(a2 + 15);
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    *(result + 128) = 0;
    result += 128;
    *(v3 + 168) = 0;
    if (*(a2 + 168) == 1)
    {
      result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(result, a2 + 16);
      *(v3 + 168) = 1;
    }

    *(v3 + 176) = 1;
  }

  return result;
}

void uaap_orchestration::grammar::Rule::~Rule(uaap_orchestration::grammar::Rule *this)
{
  if (*(this + 176) == 1)
  {
    if (*(this + 168) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(this + 128);
    }

    v2 = (this + 104);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    v2 = (this + 80);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 72) == 1 && *(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }
  }

  v2 = (this + 24);
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>,uaap_orchestration::grammar::Rule*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::construct[abi:ne200100]<uaap_orchestration::grammar::Rule,uaap_orchestration::grammar::Rule,0>(a4, v7);
      v7 = (v7 + 184);
      a4 += 184;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(v6);
      v6 += 184;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<uaap_orchestration::grammar::Rule>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 184;
    std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(v3 - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[8] = v3;
  free(v3);
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  return a1;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0xCE708ED7uLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, unsigned __int8 **a2, char *a3, __n128 a4)
{
  v7 = *a2;
  v8 = **a2;
  if (v8 > 0x6D)
  {
    switch(v8)
    {
      case '{':
        *a2 = v7 + 1;
        v13 = *(a3 + 8);
        if (*(a3 + 9) - v13 <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v13 = *(a3 + 8);
        }

        *(a3 + 8) = v13 + 24;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = 0;
        *(v13 + 22) = 3;
        for (i = *a2; ; ++i)
        {
          v15 = *i;
          v16 = v15 > 0x20;
          v17 = (1 << v15) & 0x100002600;
          if (v16 || v17 == 0)
          {
            break;
          }
        }

        *a2 = i;
        if (!*(a1 + 48))
        {
          v19 = *i;
          if (v19 == 125)
          {
            *a2 = i + 1;
            v20 = *(a3 + 8);
            v21 = 3;
LABEL_66:
            *(v20 - 2) = v21;
            *(v20 - 24) = 0;
            *(v20 - 16) = 0;
            return;
          }

          if (v19 != 34)
          {
LABEL_181:
            v60 = i - a2[1];
            v61 = 4;
            goto LABEL_145;
          }

          v62 = 0;
          while (1)
          {
            v63.n128_f64[0] = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
            if (*(a1 + 48))
            {
              break;
            }

            for (j = *a2; ; ++j)
            {
              v65 = *j;
              v16 = v65 > 0x20;
              v66 = (1 << v65) & 0x100002600;
              if (v16 || v66 == 0)
              {
                break;
              }
            }

            *a2 = j;
            if (*j != 58)
            {
              v60 = j - a2[1];
              v61 = 5;
              goto LABEL_145;
            }

            v68 = j + 1;
            *a2 = v68;
            while (1)
            {
              v69 = *v68;
              v16 = v69 > 0x20;
              v70 = (1 << v69) & 0x100002600;
              if (v16 || v70 == 0)
              {
                break;
              }

              ++v68;
            }

            *a2 = v68;
            rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, v63);
            if (*(a1 + 48))
            {
              return;
            }

            for (k = *a2; ; ++k)
            {
              v73 = *k;
              v16 = v73 > 0x20;
              v74 = (1 << v73) & 0x100002600;
              if (v16 || v74 == 0)
              {
                break;
              }
            }

            *a2 = k;
            ++v62;
            v76 = *k;
            if (v76 != 44)
            {
              if (v76 != 125)
              {
                v60 = k - a2[1];
                v61 = 6;
                goto LABEL_145;
              }

              *a2 = k + 1;

              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v62);
              return;
            }

            i = k + 1;
            *a2 = i;
            while (1)
            {
              v77 = *i;
              v16 = v77 > 0x20;
              v78 = (1 << v77) & 0x100002600;
              if (v16 || v78 == 0)
              {
                break;
              }

              ++i;
            }

            *a2 = i;
            if (*i != 34)
            {
              goto LABEL_181;
            }
          }
        }

        break;
      case 't':
        v9 = v7 + 1;
        *a2 = v7 + 1;
        if (v7[1] == 114)
        {
          v9 = v7 + 2;
          *a2 = v7 + 2;
          if (v7[2] == 117)
          {
            v9 = v7 + 3;
            *a2 = v7 + 3;
            if (v7[3] == 101)
            {
              *a2 = v7 + 4;
              v10 = *(a3 + 8);
              if (*(a3 + 9) - v10 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v10 = *(a3 + 8);
              }

              *(a3 + 8) = v10 + 24;
              *(v10 + 8) = 0;
              *(v10 + 16) = 0;
              *v10 = 0;
              v11 = 10;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_144;
      case 'n':
        v9 = v7 + 1;
        *a2 = v7 + 1;
        if (v7[1] != 117 || (v9 = v7 + 2, *a2 = v7 + 2, v7[2] != 108) || (v9 = v7 + 3, *a2 = v7 + 3, v7[3] != 108))
        {
LABEL_144:
          v60 = v9 - a2[1];
          v61 = 3;
LABEL_145:
          *(a1 + 48) = v61;
          *(a1 + 56) = v60;
          return;
        }

        *a2 = v7 + 4;
        v12 = *(a3 + 8);
        if ((*(a3 + 9) - v12) <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v12 = *(a3 + 8);
        }

        *(a3 + 8) = v12 + 3;
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        break;
      default:
        goto LABEL_35;
    }
  }

  else
  {
    switch(v8)
    {
      case '""':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
        break;
      case '[':
        *a2 = v7 + 1;
        v33 = *(a3 + 8);
        if (*(a3 + 9) - v33 <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v33 = *(a3 + 8);
        }

        *(a3 + 8) = v33 + 24;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        *v33 = 0;
        *(v33 + 22) = 4;
        for (m = *a2; ; ++m)
        {
          v35 = *m;
          v16 = v35 > 0x20;
          v36 = (1 << v35) & 0x100002600;
          if (v16 || v36 == 0)
          {
            break;
          }
        }

        *a2 = m;
        if (!*(a1 + 48))
        {
          if (*m == 93)
          {
            *a2 = m + 1;
            v20 = *(a3 + 8);
            v21 = 4;
            goto LABEL_66;
          }

          v80 = 0;
          while (1)
          {
            rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, a4);
            if (*(a1 + 48))
            {
              break;
            }

            for (n = *a2; ; ++n)
            {
              v82 = *n;
              v16 = v82 > 0x20;
              v83 = (1 << v82) & 0x100002600;
              if (v16 || v83 == 0)
              {
                break;
              }
            }

            ++v80;
            *a2 = n;
            v85 = *n;
            if (v85 != 44)
            {
              if (v85 != 93)
              {
                v60 = n - a2[1];
                v61 = 7;
                goto LABEL_145;
              }

              *a2 = n + 1;

              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v80);
              return;
            }

            v86 = n + 1;
            *a2 = v86;
            while (1)
            {
              v87 = *v86;
              v16 = v87 > 0x20;
              v88 = (1 << v87) & 0x100002600;
              if (v16 || v88 == 0)
              {
                break;
              }

              ++v86;
            }

            *a2 = v86;
          }
        }

        break;
      case 'f':
        v9 = v7 + 1;
        *a2 = v7 + 1;
        if (v7[1] == 97)
        {
          v9 = v7 + 2;
          *a2 = v7 + 2;
          if (v7[2] == 108)
          {
            v9 = v7 + 3;
            *a2 = v7 + 3;
            if (v7[3] == 115)
            {
              v9 = v7 + 4;
              *a2 = v7 + 4;
              if (v7[4] == 101)
              {
                *a2 = v7 + 5;
                v10 = *(a3 + 8);
                if (*(a3 + 9) - v10 <= 23)
                {
                  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                  v10 = *(a3 + 8);
                }

                *(a3 + 8) = v10 + 24;
                *(v10 + 8) = 0;
                *(v10 + 16) = 0;
                *v10 = 0;
                v11 = 9;
LABEL_62:
                *(v10 + 22) = v11;
                return;
              }
            }
          }
        }

        goto LABEL_144;
      default:
LABEL_35:
        v22 = a2[1];
        if (v8 == 45)
        {
          v24 = v7 + 1;
          v23 = v7[1];
        }

        else
        {
          v23 = **a2;
          v24 = *a2;
        }

        LODWORD(v25) = v23 - 48;
        if (v23 == 48)
        {
          v39 = 0;
          v41 = 0;
          v30 = 0;
          v42 = 0;
          v29 = 0.0;
          v26 = v24[1];
          v27 = v24 + 1;
        }

        else
        {
          if ((v23 - 49) > 8)
          {
            v57 = 3;
            goto LABEL_221;
          }

          v26 = v24[1];
          v27 = v24 + 1;
          v28 = v26 - 48;
          v29 = 0.0;
          if (v8 == 45)
          {
            if (v28 <= 9)
            {
              v30 = 0;
              v31 = 214748364;
              while (1)
              {
                if (v25 > 0xCCCCCCB)
                {
                  if (v25 != 214748364)
                  {
                    goto LABEL_143;
                  }

                  if (v26 > 0x38)
                  {
                    break;
                  }
                }

                v32 = *++v27;
                LODWORD(v25) = v26 + 10 * v25 - 48;
                ++v30;
                v26 = v32;
                if (v32 - 48 >= 0xA)
                {
                  goto LABEL_81;
                }
              }

              v26 = 57;
LABEL_74:
              v39 = v31;
              if (v8 == 45)
              {
                while (v39 <= 0xCCCCCCCCCCCCCCBLL || v39 == 0xCCCCCCCCCCCCCCCLL && v26 <= 0x38)
                {
                  v40 = *++v27;
                  v39 = (v26 & 0xF) + 10 * v39;
                  ++v30;
                  v26 = v40;
                  if (v40 - 48 >= 0xA)
                  {
                    goto LABEL_91;
                  }
                }
              }

              else
              {
                while (v39 <= 0x1999999999999998 || v39 == 0x1999999999999999 && v26 <= 0x35)
                {
                  v43 = *++v27;
                  v39 = (v26 & 0xF) + 10 * v39;
                  ++v30;
                  v26 = v43;
                  if (v43 - 48 >= 0xA)
                  {
LABEL_91:
                    v41 = 0;
                    v29 = 0.0;
                    goto LABEL_92;
                  }
                }
              }

              v29 = v39;
              do
              {
                v44 = v26 - 48;
                v45 = *++v27;
                v26 = v45;
                v29 = v44 + v29 * 10.0;
              }

              while (v45 - 48 < 0xA);
              v41 = 1;
LABEL_92:
              v42 = 1;
              LODWORD(v25) = v31;
              goto LABEL_93;
            }
          }

          else if (v28 <= 9)
          {
            v30 = 0;
            v31 = 429496729;
            while (1)
            {
              if (v25 > 0x19999998)
              {
                if (v25 != 429496729)
                {
LABEL_143:
                  v31 = v25;
                  goto LABEL_74;
                }

                if (v26 > 0x35)
                {
                  goto LABEL_74;
                }
              }

              v38 = *++v27;
              LODWORD(v25) = v26 + 10 * v25 - 48;
              ++v30;
              v26 = v38;
              if (v38 - 48 >= 0xA)
              {
LABEL_81:
                v39 = 0;
                v41 = 0;
                goto LABEL_82;
              }
            }
          }

          v39 = 0;
          v41 = 0;
          v30 = 0;
LABEL_82:
          v42 = 0;
        }

LABEL_93:
        if (v26 == 46)
        {
          v26 = v27[1];
          v24 = v27 + 1;
          if (v26 - 58 < 0xFFFFFFF6)
          {
            v57 = 14;
            goto LABEL_221;
          }

          v46 = 0;
          if ((v41 & 1) == 0)
          {
            if (!v42)
            {
              v39 = v25;
            }

            while (v26 <= 0x39 && !(v39 >> 53))
            {
              v48 = *++v24;
              v47 = v48;
              v39 = v26 - 48 + 10 * v39;
              --v46;
              if (v39)
              {
                ++v30;
              }

              v26 = v47;
              if (v47 <= 47)
              {
                v49 = 0;
                v29 = v39;
                v27 = v24;
                goto LABEL_112;
              }
            }

            v29 = v39;
          }

          v27 = v24;
          while (v26 <= 0x39)
          {
            if (v30 <= 16)
            {
              v29 = (v26 - 48) + v29 * 10.0;
              --v46;
              if (v29 > 0.0)
              {
                ++v30;
              }
            }

            v50 = *++v27;
            v26 = v50;
            if (v50 <= 47)
            {
              goto LABEL_111;
            }
          }

          v41 = 1;
        }

        else
        {
          v46 = 0;
        }

        if (v26 != 101 && v26 != 69)
        {
          if ((v41 & 1) == 0)
          {
            if (v42)
            {
              if (v8 == 45)
              {
                rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v39);
              }

              else
              {
                rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v39);
              }
            }

            else if (v8 == 45)
            {
              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v25);
            }

            else
            {
              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v25);
            }

            goto LABEL_141;
          }

LABEL_111:
          v49 = 0;
LABEL_112:
          v51 = v46 + v49;
          if (v51 > -309)
          {
            if ((v51 & 0x80000000) == 0)
            {
              v52 = v29 * rapidjson::internal::Pow10(int)::e[v51];
              goto LABEL_132;
            }

            v53 = -v51;
          }

          else
          {
            v52 = 0.0;
            if (v51 < 0xFFFFFD98)
            {
              goto LABEL_135;
            }

            v29 = v29 / 1.0e308;
            v53 = -308 - v51;
          }

          v52 = v29 / rapidjson::internal::Pow10(int)::e[v53];
LABEL_132:
          if (v52 > 1.79769313e308)
          {
LABEL_133:
            v57 = 13;
            v24 = v7;
LABEL_134:
            *(a1 + 48) = v57;
            *(a1 + 56) = v24 - v22;
LABEL_141:
            *a2 = v27;
            a2[1] = v22;
            return;
          }

LABEL_135:
          if (v8 == 45)
          {
            v58 = -v52;
          }

          else
          {
            v58 = v52;
          }

          v59 = *(a3 + 8);
          if (*(a3 + 9) - v59 <= 23)
          {
            rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
            v59 = *(a3 + 8);
          }

          *(a3 + 8) = v59 + 24;
          *(v59 + 8) = 0;
          *(v59 + 16) = 0;
          *v59 = v58;
          *(v59 + 22) = 534;
          goto LABEL_141;
        }

        v24 = v27 + 1;
        v54 = v27[1];
        v25 = v25;
        if (v42)
        {
          v25 = v39;
        }

        if (!v41)
        {
          v29 = v25;
        }

        if (v54 == 43)
        {
          v24 = v27 + 2;
          v54 = v27[2];
          if ((v54 - 48) < 0xA)
          {
            v55 = 3;
            goto LABEL_124;
          }
        }

        else if (v54 == 45)
        {
          v24 = v27 + 2;
          v90 = v27[2] - 48;
          if (v90 < 0xA)
          {
            v92 = v27[3];
            v27 += 3;
            v91 = v92;
            if ((v92 - 48) <= 9)
            {
              while (1)
              {
                v90 = v91 + 10 * v90 - 48;
                if (v90 > (v46 + 2147483639) / 10)
                {
                  break;
                }

                v93 = *++v27;
                v91 = v93;
                if ((v93 - 48) >= 0xA)
                {
                  goto LABEL_216;
                }
              }

              do
              {
                v94 = *++v27;
              }

              while ((v94 - 48) < 0xA);
            }

LABEL_216:
            v49 = -v90;
            goto LABEL_112;
          }
        }

        else if ((v54 - 48) < 0xA)
        {
          v55 = 2;
LABEL_124:
          v27 += v55;
          v49 = v54 - 48;
          while (1)
          {
            v56 = *v27;
            if ((v56 - 48) > 9)
            {
              goto LABEL_112;
            }

            ++v27;
            v49 = v56 + 10 * v49 - 48;
            if (v49 > 308 - v46)
            {
              goto LABEL_133;
            }
          }
        }

        v57 = 15;
LABEL_221:
        v27 = v24;
        goto LABEL_134;
    }
  }
}

void sub_22294ACE0(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, void *a3)
{
  v27 = *a2;
  v5 = (v27 + 1);
  v28 = a2;
  *&v27 = v27 + 1;
  *v25 = a1;
  for (LODWORD(__n) = 0; ; LODWORD(__n) = __n + 1)
  {
    while (1)
    {
      v6 = *v5;
      if (v6 != 92)
      {
        break;
      }

      *&v27 = v5 + 1;
      v9 = v5[1];
      LOBYTE(v6) = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::FileReadStream,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::FileReadStream &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v9];
      if (v6)
      {
        v5 += 2;
        *&v27 = v5;
        v7 = *v25;
        v8 = *(*v25 + 24);
        if ((*(*v25 + 32) - v8) > 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25);
        v8 = *(v7 + 24);
        goto LABEL_6;
      }

      v10 = &v5[-*(&v27 + 1)];
      if (v9 != 117)
      {
        *(a1 + 48) = 10;
        *(a1 + 56) = v10;
        goto LABEL_29;
      }

      *&v27 = v5 + 2;
      v24 = &v5[-*(&v27 + 1)];
      v11 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v27, v10);
      if (*(a1 + 48))
      {
        goto LABEL_29;
      }

      v12 = v11;
      if (v11 >> 11 == 27)
      {
        if (v11 >> 10 > 0x36)
        {
          goto LABEL_31;
        }

        v13 = v27;
        if (*v27 != 92)
        {
          goto LABEL_31;
        }

        v14 = *(v27 + 1);
        *&v27 = v27 + 1;
        if (v14 != 117)
        {
          goto LABEL_31;
        }

        v15 = v11;
        *&v27 = v13 + 2;
        v16 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v27, v24);
        if (*(a1 + 48))
        {
          goto LABEL_29;
        }

        if ((v16 - 57344) <= 0xFFFFFBFF)
        {
LABEL_31:
          *(a1 + 48) = 9;
          v21 = v24;
LABEL_28:
          *(a1 + 56) = v21;
          goto LABEL_29;
        }

        v12 = v16 + (v15 << 10) - 56613888;
      }

      rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v25, v12);
      v5 = v27;
    }

    if (v6 == 34)
    {
      break;
    }

    if (v6 <= 0x1F)
    {
      v21 = &v5[-*(&v27 + 1)];
      if (*v5)
      {
        v22 = 12;
      }

      else
      {
        v22 = 11;
      }

      *(a1 + 48) = v22;
      goto LABEL_28;
    }

    *&v27 = ++v5;
    v7 = *v25;
    v8 = *(*v25 + 24);
    if ((*(*v25 + 32) - v8) <= 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    *(v7 + 24) = v8 + 1;
    *v8 = v6;
  }

  *&v27 = v5 + 1;
  v17 = *v25;
  v18 = *(*v25 + 24);
  if ((*(*v25 + 32) - v18) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25);
    v18 = *(v17 + 24);
  }

  *(v17 + 24) = v18 + 1;
  *v18 = 0;
  if (!*(a1 + 48))
  {
    v19 = __n;
    v20 = (*(v17 + 24) - (__n + 1));
    *(v17 + 24) = v20;
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v20, v19);
  }

LABEL_29:
  result = *&v27;
  *v28 = v27;
  return result;
}

char *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(char *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*(result + 9) - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = *(v3 + 8);
  }

  *(v3 + 8) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      return result;
    }

    v5 = 182;
  }

  else
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }
  }

  *(v4 + 22) = v5;
  return result;
}

char *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*(result + 9) - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = *(v3 + 8);
  }

  *(v3 + 8) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return result;
}

char *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(char *result, int a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*(result + 9) - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = *(v3 + 8);
  }

  *(v3 + 8) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return result;
}

char *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(char *result, int a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*(result + 9) - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = *(v3 + 8);
  }

  *(v3 + 8) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return result;
}