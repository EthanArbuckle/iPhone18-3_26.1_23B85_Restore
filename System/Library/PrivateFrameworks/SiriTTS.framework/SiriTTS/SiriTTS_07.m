void sub_1C300B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string,std::string>::~pair(&a26);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void TTSSynthesizerEventBus::on_audio(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    std::__function::__value_func<void ()(std::vector<float> const&)>::__value_func[abi:ne200100](v3, a1);
    v4 = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1C300B620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__function::__func<TTSSynthesizerEventBus::on_audio(std::function<void ()(std::vector<float> const&)>)::$_0,std::allocator<TTSSynthesizerEventBus::on_audio(std::function<void ()(std::vector<float> const&)>)::$_0>,void ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<TTSSynthesizerEventBus::on_marker(std::function<void ()(std::vector<TTSSynthesizer::Marker> const&)>)::$_0,std::allocator<TTSSynthesizerEventBus::on_marker(std::function<void ()(std::vector<TTSSynthesizer::Marker> const&)>)::$_0>,void ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void PipelineModule::clean_up(PipelineModule *this)
{
  Module::clean_up(this);
  v2 = (*(**(this + 34) + 64))(*(this + 34));
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = v3[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 64))(v5);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_1C300B914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void FrontendNNModule::reconstruct_from_tokens(void *a1, std::string::size_type a2)
{
  v117 = *MEMORY[0x1E69E9840];
  if (a1[44] == a1[45])
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v95 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v97 = a2;
      }

      else
      {
        v97 = *a2;
      }

      LODWORD(v116.__r_.__value_.__l.__data_) = 136315138;
      *(v116.__r_.__value_.__r.__words + 4) = v97;
    }

    if (*(a2 + 23) >= 0)
    {
      v98 = a2;
    }

    else
    {
      v98 = *a2;
    }

    goto LABEL_209;
  }

  v3 = **(a2 + 24);
  if (*(*(a2 + 24) + 8) == v3)
  {
    goto LABEL_209;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  __pos = 0;
  do
  {
    v7 = (v3 + 80 * v5);
    v8 = *(v7 + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 2);
    }

    v103 = v6;
    v104 = v5;
    v10 = v4[44];
    v9 = v4[45];
    if (v6 >= (v9 - v10) >> 4)
    {
      goto LABEL_190;
    }

    v108 = 0;
    v110 = *v7;
    v107 = v8 + v110;
    v100 = v7;
    __str = (v7 + 8);
    while (1)
    {
      v11 = v10[2 * v6];
      v13 = v11 + 8;
      if (v11 + 8 == v12)
      {
        v114 = 0;
      }

      else
      {
        v114 = *(v12 + 40) + 8;
      }

      v14 = (v9 - v10) >> 4;
      if (v14 <= v6)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v13 == v15)
      {
        v111 = 0;
      }

      else
      {
        v111 = *(v15 + 40) + 8;
      }

      if (v13 == v16)
      {
        v109 = 0;
      }

      else
      {
        v109 = (*(v16 + 40) + 8);
      }

      v113 = &v10[2 * v6];
      if (v6)
      {
        v17 = 0;
        v18 = v10 + 2;
        v19 = 1;
        v112 = v6;
        v20 = v14;
        do
        {
          if (!v20)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v21 = *(v18 - 2);
          if (v21 + 8 == v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v22 + 40) + 8;
          }

          v24 = *(v23 + 47);
          if (v24 < 0)
          {
            v24 = *(v23 + 32);
          }

          v17 += v24;
          if (v14 > v19)
          {
          }

          --v20;
          v18 += 2;
          ++v19;
          --v6;
        }

        while (v6);
        v25 = v17;
        v4 = a1;
        v6 = v112;
      }

      else
      {
        v25 = 0;
      }

      v26 = *(v114 + 47);
      if (v26 < 0)
      {
        v26 = *(v114 + 32);
      }

      v27 = v26 + v25;
      if (v26 + v25 <= v110)
      {
        v32 = v6;
        if (v13 == v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = *(v31 + 40) + 8;
        }

        v43 = v4[9];
        if (v43)
        {
          v44 = v4[8];
          v45 = v4[5];
          v46 = *(v33 + 8);
          while (1)
          {
            if (*(*(v47 + 40) + 24) + *(*(v47 + 40) + 16) > v46)
            {
              break;
            }

            ++v44;
            if (!--v43)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
LABEL_61:
          std::deque<std::shared_ptr<Agglomerate>>::push_back(v4 + 4, v113);
        }

        v6 = v32;
        goto LABEL_63;
      }

      v28 = __pos + v25;
      if (__pos)
      {
        if (v107 == v28)
        {
          break;
        }
      }

      if ((v108 & (v107 > v27)) == 1)
      {
        if (v14 <= v6 - 1)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        *(*(v30 + 40) + 24) += *(v114 + 8) - (*(v29 + 16) + *(v29 + 24)) + *(v114 + 16);
        goto LABEL_39;
      }

      if ((v108 & 1) != 0 && v107 <= v27)
      {
        if (v14 <= v6 - 1)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v34 = v25;
        v37 = *(v114 + 8);
        v38 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v111)
        {
          *(v36 + 24) += v37 - (v38 + v39) + *(v114 + 16);
          v40 = v107;
          if (v107 == v27)
          {
            std::string::basic_string(&v116, (v114 + 24), v107 - v28, 0xFFFFFFFFFFFFFFFFLL, &v115);
            if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v116;
            }

            else
            {
              v41 = v116.__r_.__value_.__r.__words[0];
            }

            if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v116.__r_.__value_.__l.__size_;
            }

            std::string::append((v36 + 32), v41, size);
            if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v116.__r_.__value_.__l.__data_);
            }

            v40 = v107;
          }
        }

        else
        {
          v40 = v107;
          *(v36 + 24) += v107 + v37 - v39 - (v28 + v38);
        }

        if (v40 == v27)
        {
          if (v109)
          {
            v83 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
            v116.__r_.__value_.__r.__words[0] = &v115;
            if (!v84)
            {
              operator new();
            }

            goto LABEL_166;
          }

          goto LABEL_188;
        }

        __pos = v40 - v34;
        if (-1 - 0x3333333333333333 * ((*(*(a2 + 24) + 8) - **(a2 + 24)) >> 4) != v104)
        {
          goto LABEL_190;
        }

        v108 = 0;
        --v6;
      }

      else
      {
        if (v110 < v28)
        {
          goto LABEL_66;
        }

        if (v107 <= v27 && v111)
        {
          if (!v6 || !__pos)
          {
            operator new();
          }

          v50 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
          if (v50 + 8 == v51)
          {
            v52 = 0;
          }

          else
          {
            v52 = (*(v51 + 40) + 8);
          }

          std::string::basic_string(&v116, (v114 + 24), __pos, v110 - v28, &v115);
          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v116;
          }

          else
          {
            v56 = v116.__r_.__value_.__r.__words[0];
          }

          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v116.__r_.__value_.__l.__size_;
          }

          std::string::append(v52 + 1, v56, v57);
          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          v58 = *(v100 + 55);
          if (v58 >= 0)
          {
            v59 = __str;
          }

          else
          {
            v59 = *(v100 + 4);
          }

          if (v58 >= 0)
          {
            v60 = *(v100 + 55);
          }

          else
          {
            v60 = *(v100 + 5);
          }

          std::string::append(v52 + 1, v59, v60);
          if (v107 == v27)
          {
            if (v109)
            {
              v89 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
              v116.__r_.__value_.__r.__words[0] = &v115;
              if (!v84)
              {
                operator new();
              }

LABEL_166:
              *(v84 + 8) = *v109;
            }

LABEL_188:
            v94 = v6 + 1;
            goto LABEL_189;
          }

          __pos = v107 - v25;
          --v6;
        }

        else
        {
          if (v107 <= v27 && !v111)
          {
            if (v110 != v28)
            {
              operator new();
            }

            operator new();
          }

          if (v107 <= v27 || v6 >= v14 - 1)
          {
LABEL_66:
            if (v107 <= v28)
            {
              std::deque<std::shared_ptr<Agglomerate>>::push_back(v4 + 4, v113);
            }

            else
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v48 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v116.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&dword_1C2F95000, v48, OS_LOG_TYPE_ERROR, "Unknown error in reconstruct_from_tokens/rewrite", &v116, 2u);
              }

              Diagnostics::log(3, "Unknown error in reconstruct_from_tokens/rewrite", v49);
            }

            goto LABEL_63;
          }

          if (v14 <= v6 + 1)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v53 = v10[2 * v6 + 2];
          if (v53 + 8 == v54)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v54 + 40) + 8;
          }

          v61 = 0;
          v62 = v6 + 1;
          do
          {
            v63 = *v10;
            if (v63 + 8 == v64)
            {
              v65 = 0;
            }

            else
            {
              v65 = *(v64 + 40) + 8;
            }

            v66 = *(v65 + 47);
            if (v66 < 0)
            {
              v66 = *(v65 + 32);
            }

            v61 = v61 + v66 - *(v65 + 16);
            v10 += 2;
            --v62;
          }

          while (v62);
          if (v111 && !__pos)
          {
            operator new();
          }

          if (!__pos || !v111)
          {
            if (v110 != v28)
            {
              operator new();
            }

            operator new();
          }

          v67 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
          if (v67 + 8 == v68)
          {
            v69 = 0;
          }

          else
          {
            v69 = (*(v68 + 40) + 8);
          }

          std::string::basic_string(&v116, (v114 + 24), __pos, v110 - v28, &v115);
          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v116;
          }

          else
          {
            v70 = v116.__r_.__value_.__r.__words[0];
          }

          if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v116.__r_.__value_.__l.__size_;
          }

          std::string::append(v69 + 1, v70, v71);
          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          v72 = *(v100 + 55);
          if (v72 >= 0)
          {
            v73 = __str;
          }

          else
          {
            v73 = *(v100 + 4);
          }

          if (v72 >= 0)
          {
            v74 = *(v100 + 55);
          }

          else
          {
            v74 = *(v100 + 5);
          }

          std::string::append(v69 + 1, v73, v74);
          if (v107 > *(v55 + 8) + v61)
          {
            __pos = 0;
LABEL_39:
            v108 = 1;
            goto LABEL_63;
          }

          if (v109)
          {
            v75 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
            v116.__r_.__value_.__r.__words[0] = &v115;
            if (!v76)
            {
              operator new();
            }

            __pos = 0;
            *(v76 + 8) = *v109;
          }

          else
          {
            __pos = 0;
          }

          if ((v108 & 1) == 0)
          {
            v94 = v6 + 1;
LABEL_189:
            v103 = v94;
            goto LABEL_190;
          }

          v108 = 1;
          v103 = v6 + 1;
        }
      }

LABEL_63:
      ++v6;
      v10 = v4[44];
      v9 = v4[45];
      if (v6 >= (v9 - v10) >> 4)
      {
        goto LABEL_190;
      }
    }

    if (v111)
    {
      if (v107 <= v25)
      {
        goto LABEL_190;
      }

      v77 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
      if (v77 + 8 == v78)
      {
        v79 = 0;
      }

      else
      {
        v79 = (*(v78 + 40) + 8);
      }

      std::string::basic_string(&v116, (v114 + 24), v107 - v25, 0xFFFFFFFFFFFFFFFFLL, &v115);
      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &v116;
      }

      else
      {
        v85 = v116.__r_.__value_.__r.__words[0];
      }

      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = v116.__r_.__value_.__l.__size_;
      }

      std::string::append(v79 + 1, v85, v86);
      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      if (v109)
      {
        v87 = *(*(v4[5] + (((v4[9] + v4[8] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v4 + 72) + *(v4 + 64) - 1));
        v116.__r_.__value_.__r.__words[0] = &v115;
        if (!v88)
        {
          operator new();
        }

        *(v88 + 8) = *v109;
      }

      __pos = 0;
      goto LABEL_188;
    }

    v80 = **(a2 + 24);
    v81 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a2 + 24) + 8) - v80) >> 4);
    if (v81 - 1 <= v104 || v6 != v14 - 1)
    {
      if (v81 - 1 == v104)
      {
        operator new();
      }

      if (v81 <= v104 + 1)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v27 <= *(v80 + 80 * (v104 + 1)))
      {
        operator new();
      }
    }

LABEL_190:
    v3 = **(a2 + 24);
    v90 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a2 + 24) + 8) - v3) >> 4);
    v91 = v104;
    if (v90 - 1 == v104)
    {
      v92 = v4[44];
      v6 = v103;
      if (v103 < (v4[45] - v92) >> 4)
      {
        v93 = 16 * v103;
        do
        {
          std::deque<std::shared_ptr<Agglomerate>>::push_back(v4 + 4, (v92 + v93));
          ++v6;
          v92 = v4[44];
          v93 += 16;
        }

        while (v6 < (v4[45] - v92) >> 4);
        v3 = **(a2 + 24);
        v90 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a2 + 24) + 8) - v3) >> 4);
        v91 = v104;
        goto LABEL_195;
      }
    }

    else
    {
LABEL_195:
      v6 = v103;
    }

    v5 = v91 + 1;
  }

  while (v90 > v5);
LABEL_209:
  v99 = *MEMORY[0x1E69E9840];
}

void FrontendNNModule::polish_first_token_positions(FrontendNNModule *this)
{
  if (*(this + 9))
  {
    v2 = *(*(*(this + 5) + ((*(this + 8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 8));
    {
      if (v2 + 8 == v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v3 + 40) + 8;
      }

      if ((*(v4 + 47) & 0x8000000000000000) != 0)
      {
        if (!*(v4 + 32))
        {
          return;
        }
      }

      else if (!*(v4 + 47))
      {
        return;
      }

      v5 = *(*(v4 + 48) + 16);
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        __str.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__str.__r_.__value_.__l.__data_ = v6;
      }

      v7 = *(v4 + 8);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (v7 >= size)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v25 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1C2F95000, v25, OS_LOG_TYPE_DEBUG, "First token start position is invalid, ignore!", &__p, 2u);
        }

        Diagnostics::log(7, "First token start position is invalid, ignore!", v26);
      }

      else
      {
        std::string::basic_string(&__p, &__str, v7, *(v4 + 16), &status[1]);
        v9 = *(this + 57);
        if (v9)
        {
          *status = 0;
          v10 = *(v4 + 47);
          v11 = v10 >= 0 ? (v4 + 24) : *(v4 + 24);
          v12 = v10 >= 0 ? *(v4 + 47) : *(v4 + 32);
          v13 = utext_openUTF8(0, v11, v12, &status[1]);
          v14 = status[1] <= U_ZERO_ERROR ? v13 : 0;
          UTFRegex::set_text(v9, v14, 1);
          if (!uregex_find(*v9, -1, status))
          {
            v15 = *(this + 57);
            *status = 0;
            v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            v18 = utext_openUTF8(0, v16, v17, &status[1]);
            v19 = status[1] <= U_ZERO_ERROR ? v18 : 0;
            UTFRegex::set_text(v15, v19, 1);
            if (uregex_find(*v15, -1, status))
            {
              v20 = *(this + 57);
              status[1] = U_ZERO_ERROR;
              v21 = uregex_start(*v20, 0, &status[1]);
              v22 = *(this + 57);
              status[1] = U_ZERO_ERROR;
              v23 = uregex_end(*v22, 0, &status[1]);
              v24 = *(v4 + 16) - (v23 - v21);
              *(v4 + 8) += v23 - v21;
              *(v4 + 16) = v24;
            }
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1C300DFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<std::pair<std::string,std::vector<std::shared_ptr<Agglomerate>>>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::allocator<std::pair<std::string,std::vector<std::shared_ptr<Agglomerate>>>>::destroy[abi:ne200100](v3);
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::allocator<std::pair<std::string,std::vector<std::shared_ptr<Agglomerate>>>>::destroy[abi:ne200100](uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void ParserModule::create_token(void *a1, int a2, std::string *__str)
{
  memset(&__p, 0, sizeof(__p));
  v6 = a2;
  v4 = a1[15];
  v3 = a1[16];
  v7 = a1[13] + a1[14];
  v8 = v4;
  v5 = a1[17];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v3;
  v11 = v5;
  std::string::operator=(&__p, __str);
  operator new();
}

void std::__shared_ptr_emplace<TokenAttributes>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v2 = *(a1 + 312);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_emplace<GlobalTokenAttributes>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 152);
  if (v2)
  {
    for (i = *(a1 + 160); i != v2; std::allocator_traits<std::allocator<MetaElement>>::destroy[abi:ne200100]<MetaElement,0>(i))
    {
      i -= 72;
    }

    *(a1 + 160) = v2;
    operator delete(*(a1 + 152));
  }

  std::__tree<std::__value_type<std::string,LexiconRef>,std::__map_value_compare<std::string,std::__value_type<std::string,LexiconRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LexiconRef>>>::destroy(*(a1 + 136));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<float> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t Observable::on_event@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24))
  {
    std::mutex::lock((result + 24));
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C300E684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  std::mutex::unlock((v20 + 24));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

double TTSSynthesizer::get_event_bus@<D0>(TTSSynthesizer *this@<X0>, _OWORD *a2@<X8>)
{
  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v4, *(*this + 240));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void TTSSynthesizerEventBus::on_marker(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::__value_func[abi:ne200100](v3, a1);
    v4 = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1C300E9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t TTSSynthesizer::synthesize_text(uint64_t *a1, __int128 *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    Censor::global_plaintext(&__p, a2);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEFAULT, "Start synthesizing text: '%s'", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  Censor::global_plaintext(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Diagnostics::log(5, "Start synthesizing text: '%s'", v6, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *(v3 + 280);
  if (v8 && ((*(*v8 + 48))(v8), *(v3 + 280)))
  {
    v9 = *(v3 + 272);
    if (!v9)
    {
      operator new();
    }
  }

  else
  {
    v9 = *(v3 + 272);
    if (!v9)
    {
      *buf = &unk_1F42E98A8;
      v15 = buf;
      TTSSynthesizerCallbackResult::TTSSynthesizerCallbackResult(&__p, a2, 0, 0, 0, buf, 1);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &unk_1F42E9828;
  v17 = &__p;
  (*(*v9 + 24))(v9, a2, &__p);
  std::__function::__value_func<int ()(InternalCallbackContainer)>::~__value_func[abi:ne200100](&__p);
  do
  {
    (*(**(v3 + 280) + 56))(&v13);
    v10 = v13.__r_.__value_.__r.__words[0];
    if (v13.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13.__r_.__value_.__l.__size_);
    }
  }

  while (v10);
  kdebug_trace();
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t Pipeline::reset(Pipeline *this)
{
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v2 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C2F95000, v2, OS_LOG_TYPE_DEBUG, "Pipeline reset", v10, 2u);
  }

  result = Diagnostics::log(7, "Pipeline reset", v3);
  *(this + 104) = 0;
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    result = (*(*v7 + 64))(v7);
  }

  v9 = *(this + 4);
  v8 = *(this + 5);
  while (v9 != v8)
  {
    result = *(*v9 + 40);
    if (result)
    {
      result = (*(*result + 64))(result);
    }

    v9 += 16;
  }

  return result;
}

void ParseLegacyImpl::inject_attributes(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 136);
  *(a1 + 128) = v3;
  *(a1 + 136) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MarkupImpl::parse_markups(FrontendNNModule *a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  *(a1 + 61) = *((*(*a1 + 72))(a1) + 8);
  v17[0] = &unk_1F42F12D0;
  v17[1] = a1;
  v17[3] = v17;
  v4 = *(a1 + 59);
  std::__function::__value_func<void ()(std::deque<std::shared_ptr<Agglomerate>>)>::__value_func[abi:ne200100](v16, v17);
  (*(*v4 + 64))(v4, a2, v16, a1 + 4, *(a1 + 61));
  std::__function::__value_func<void ()(std::deque<std::shared_ptr<Agglomerate>>)>::~__value_func[abi:ne200100](v16);
  v5 = *(*(a1 + 59) + 128);
  v6 = *(*(a1 + 59) + 136);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 64);
  *(a1 + 504) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  is_last_chunk = FrontendNNModule::is_last_chunk(a1);
  v9 = *(a1 + 9);
  if (v9)
  {
    v10 = is_last_chunk;
    if (is_last_chunk)
    {
      v11 = *(*(*(a1 + 5) + (((v9 + *(a1 + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v9 + *(a1 + 64) - 1));
      v15[1] = v15;
      if (!v12)
      {
        operator new();
      }

      *(v12 + 8) = v10;
    }
  }

  result = std::__function::__value_func<void ()(std::deque<std::shared_ptr<Agglomerate>>)>::~__value_func[abi:ne200100](v17);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C300F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(std::deque<std::shared_ptr<Agglomerate>>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::deque<std::shared_ptr<Agglomerate>>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<MarkupImpl::parse_markups(std::string &)::$_0,std::allocator<MarkupImpl::parse_markups(std::string &)::$_0>,void ()(std::deque<std::shared_ptr<Agglomerate>>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F42F12D0;
  a2[1] = v2;
  return result;
}

void ParseLegacyImpl::process_text(uint64_t a1, std::string *__str)
{
  v2 = __str;
  v5 = *(a1 + 336);
  v4 = *(a1 + 344);
  if (v5 != v4)
  {
    if (*(a1 + 400) != 2)
    {
      LODWORD(status.__r_.__value_.__l.__data_) = 0;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        __str = __str->__r_.__value_.__r.__words[0];
      }

      v6 = utext_openUTF8(0, __str, -1, &status);
      ubrk_open();
      ubrk_setUText();
      while (ubrk_next() != -1)
      {
        RuleStatus = ubrk_getRuleStatus();
        v8 = ubrk_current();
        if (RuleStatus)
        {
          v9 = v8;
          goto LABEL_12;
        }
      }

      v9 = 0;
LABEL_12:
      utext_close(v6);
      ubrk_close();
      if (v9 >= 1)
      {
        v10 = *(a1 + 120);
        *(a1 + 120) = v9;
        std::string::basic_string(__stra, v2, 0, v9, &v23);
        ParserModule::create_token(a1, 1952807028, __stra);
      }

      v5 = *(a1 + 336);
      v4 = *(a1 + 344);
    }

    while (v5 != v4)
    {
      v11 = *(v4 - 8);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11);
      v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](*(a1 + 344) - 32);
      *(a1 + 344) = v4;
      v5 = *(a1 + 336);
    }
  }

  v12 = *(a1 + 400);
  if (v12 < 2)
  {
    std::string::basic_string(__stra, v2, 0, 0xFFFFFFFFFFFFFFFFLL, &status);
    ParserModule::create_token(a1, 1952807028, __stra);
  }

  if (v12 == 2)
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      if (v13 + 8 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (*(v14 + 40) + 8);
      }

      std::string::operator=(v15, v2);
      size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = v2->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::deque<std::shared_ptr<Agglomerate>>::push_back((a1 + 32), (a1 + 144));
      }
    }

    else
    {
      v16 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      if ((v16 & 0x80u) != 0)
      {
        v16 = v2->__r_.__value_.__l.__size_;
      }

      if (v16)
      {
        v22 = 0;
        *__p = 0u;
        memset(__stra, 0, sizeof(__stra));
        std::string::operator=(&__stra[1], (a1 + 360));
        std::string::operator=(__stra, v2);
        std::string::basic_string[abi:ne200100]<0>(&status, "");
        ParserModule::create_token(a1, 1885892462, &status);
      }
    }

    v18 = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_1C300F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MetaElement::~MetaElement(&a16);
  _Unwind_Resume(a1);
}

void Module::clean_up(Module *this)
{
  std::recursive_mutex::lock((this + 208));
  v2 = *(this + 15);
  v3 = *(this + 16);
  if (v3 == v2)
  {
    v4 = (this + 152);
    v3 = *(this + 15);
  }

  else
  {
    v4 = (this + 152);
    v5 = *(this + 18);
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((*(this + 19) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 152) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = *(this + 15);
      v3 = *(this + 16);
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v13 = *(this + 16);
      v2 = (*(this + 15) + 8);
      *(this + 15) = v2;
      v12 = (v13 - v2) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v14 = 256;
  }

  *(this + 18) = v14;
LABEL_17:

  std::recursive_mutex::unlock((this + 208));
}

void SoundStormModule::clean_up(SoundStormModule *this)
{
  (*(**(this + 34) + 16))(*(this + 34));

  Module::clean_up(this);
}

uint64_t InferenceEngine::BaseInferenceController::clean(InferenceEngine::BaseInferenceController *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 24);

  return InferenceEngine::MLInferenceModel::clean(this);
}

void ParseLegacyImpl::parse_hydra_markups(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  LODWORD(status.__r_.__value_.__l.__data_) = 0;
  v10 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v11 = v10;
  }

  v12 = utext_openUTF8(0, a2, v11, &status);
  if (SLODWORD(status.__r_.__value_.__l.__data_) <= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  UTFRegex::set_text((a1 + 216), v13, 1);
  *(a1 + 112) = 0;
  v14 = (a1 + 112);
  *(a1 + 400) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = a5;
  size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = v8->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    do
    {
      if (UTFRegex::search((a1 + 216)))
      {
        v16 = *v14;
        LODWORD(status.__r_.__value_.__l.__data_) = 0;
        if (v16 < uregex_start(*(a1 + 216), 0, &status))
        {
          LODWORD(status.__r_.__value_.__l.__data_) = 0;
          v17 = uregex_start(*(a1 + 216), 0, &status);
          v18 = *(a1 + 112);
          v19 = v17 - v18;
          *(a1 + 120) = v19;
          std::string::basic_string(&status, v8, v18, v19, &v47);
          ParseLegacyImpl::process_text(a1, &status);
          if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(status.__r_.__value_.__l.__data_);
          }

          std::deque<std::shared_ptr<Agglomerate>>::deque(v48, (a1 + 32));
          v20 = *(a3 + 24);
          if (!v20)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v20 + 48))(v20, v48);
          std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](v48);
        }

        LODWORD(status.__r_.__value_.__l.__data_) = 0;
        v21 = uregex_start(*(a1 + 216), 0, &status);
        if ((v8->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = v8;
        }

        else
        {
          v22 = v8->__r_.__value_.__r.__words[0];
        }

        if (v22->__r_.__value_.__s.__data_[v21] == 27)
        {
          LODWORD(status.__r_.__value_.__l.__data_) = 0;
          *(a1 + 112) = uregex_start(*(a1 + 216), 0, &status);
          LODWORD(status.__r_.__value_.__l.__data_) = 0;
          *(a1 + 120) = uregex_end(*(a1 + 216), 0, &status) - *(a1 + 112);
          UTFRegex::group<std::basic_string<char16_t>>();
        }

        UTFRegex::group<std::basic_string<char16_t>>();
      }

      v23 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
      if ((v23 & 0x80u) != 0)
      {
        v23 = v8->__r_.__value_.__l.__size_;
      }

      v24 = *(a1 + 112);
      *(a1 + 120) = v23 - v24;
      std::string::basic_string(&status, v8, v24, 0xFFFFFFFFFFFFFFFFLL, &v47);
      ParseLegacyImpl::process_text(a1, &status);
      if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(status.__r_.__value_.__l.__data_);
      }

      std::deque<std::shared_ptr<Agglomerate>>::deque(v49, (a1 + 32));
      v25 = *(a3 + 24);
      if (!v25)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v25 + 48))(v25, v49);
      std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](v49);
      v26 = *(a1 + 112) + *(a1 + 120);
      *v14 = v26;
      v27 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x80u) != 0)
      {
        v27 = v8->__r_.__value_.__l.__size_;
      }
    }

    while (v26 < v27);
  }

  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  if (v29 == v28)
  {
    v33 = (a1 + 72);
    v29 = *(a1 + 40);
  }

  else
  {
    v30 = *(a1 + 64);
    v31 = &v28[v30 >> 8];
    v32 = (*v31 + 16 * v30);
    v33 = (a1 + 72);
    v34 = *(v28 + (((*(a1 + 72) + v30) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + v30);
    if (v32 != v34)
    {
      do
      {
        v35 = v32[1];
        status.__r_.__value_.__r.__words[0] = *v32;
        status.__r_.__value_.__l.__size_ = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back(a4, &status);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        v32 += 2;
        if (v32 - *v31 == 4096)
        {
          v36 = v31[1];
          ++v31;
          v32 = v36;
        }
      }

      while (v32 != v34);
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
    }

    if (v29 != v28)
    {
      v37 = *(a1 + 64);
      v38 = &v28[v37 >> 8];
      v39 = *v38;
      v40 = *v38 + 16 * v37;
      v41 = *(v28 + (((*(a1 + 72) + v37) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + v37);
      if (v40 != v41)
      {
        do
        {
          v42 = *(v40 + 8);
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            v39 = *v38;
          }

          v40 += 16;
          if (v40 - v39 == 4096)
          {
            v43 = v38[1];
            ++v38;
            v39 = v43;
            v40 = v43;
          }
        }

        while (v40 != v41);
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
      }
    }
  }

  *v33 = 0;
  v44 = v29 - v28;
  if (v44 >= 3)
  {
    do
    {
      operator delete(*v28);
      v45 = *(a1 + 48);
      v28 = (*(a1 + 40) + 8);
      *(a1 + 40) = v28;
      v44 = (v45 - v28) >> 3;
    }

    while (v44 > 2);
  }

  if (v44 == 1)
  {
    v46 = 128;
  }

  else
  {
    if (v44 != 2)
    {
      return;
    }

    v46 = 256;
  }

  *(a1 + 64) = v46;
}

void sub_1C3010620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C3010718()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1C3010710);
}

void Agglomerate::set<std::shared_ptr<std::vector<RateMarker>>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::__shared_ptr_emplace<std::vector<RateMarker>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void Agglomerate::ItemHolder<std::shared_ptr<std::vector<RateMarker>>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F3108;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void *Mil2BnnsModel::set_bnns_input<unsigned long,float>(int8x8_t *a1, unint64_t a2, int *a3, uint64_t a4)
{
  v7 = Mil2BnnsModel::get_position<unsigned long>(a1, a2);
  v8 = *&a1[8] + 24 * v7;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 4)
    {
      goto LABEL_21;
    }

    v8 = *v8;
  }

  else if (v9 != 4)
  {
LABEL_21:
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = *&a1[8] + 24 * v7;
    if (*(v22 + 23) < 0)
    {
      v22 = *v22;
    }

    StringFormatter::StringFormatter(v23, "Mil2Bnns buffer type not supported: '%s'", v22);
    MEMORY[0x1C692A510](exception, v23);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (*v8 != 909209702)
  {
    if (*v8 != 842231910)
    {
      goto LABEL_21;
    }

    result = std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]);
    if ((result & 1) == 0)
    {
      if (a4)
      {
        v11 = *(*&a1[4] + 8 * v7);
        do
        {
          v12 = *a3++;
          *v11++ = v12;
          --a4;
        }

        while (a4);
      }

      return result;
    }

    goto LABEL_18;
  }

  result = std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]);
  if (!result)
  {
LABEL_18:
    v20 = *(*&a1[4] + 8 * v7);

    return memcpy(v20, a3, 4 * a4);
  }

  if (a4)
  {
    v13 = *(*&a1[4] + 8 * v7);
    do
    {
      v14 = *a3++;
      _S0 = v14;
      __asm { FCVT            H0, S0 }

      *v13++ = _S0;
      --a4;
    }

    while (a4);
  }

  return result;
}

void sub_1C3010A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

unint64_t Mil2BnnsModel::get_position<unsigned long>(int8x8_t *a1, unint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5490], MEMORY[0x1E69E5490]))
  {
    return a2;
  }

  v4 = MEMORY[0x1E69E5490];
  {
    exception = __cxa_allocate_exception(0x10uLL);
    StringFormatter::StringFormatter(v17, "Mil2Bnns::get_position called with '%s' not supported\n", (*(v4 + 8) & 0x7FFFFFFFFFFFFFFFLL));
    MEMORY[0x1C692A510](exception, v17);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  std::to_string(&v16, a2);
  v5 = std::__string_hash<char>::operator()[abi:ne200100](&a1[18], &v16);
  v6 = v5;
  v7 = a1[19];
  if (!*&v7)
  {
    goto LABEL_20;
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

  v11 = *(*&a1[18] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
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
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&a1[18], v12 + 2, &v16.__r_.__value_.__l.__data_))
  {
    goto LABEL_19;
  }

  a2 = v12[5];
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_1C3010DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](v23 + 8, v22);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Mil2BnnsModel::execute(Mil2BnnsModel *this)
{
  v2 = *(this + 11);
  v1 = *(this + 12);
  v3 = *(this + 6) - *(this + 5);
  v4 = *(this + 2);
  v5 = *(this + 3);
  return BNNSGraphContextExecute_v2();
}

void *Mil2BnnsModel::set_bnns_input<unsigned long>(int8x8_t *a1, unint64_t a2, const void *a3, uint64_t a4)
{
  v7 = Mil2BnnsModel::get_position<unsigned long>(a1, a2);
  v8 = *&a1[8] + 24 * v7;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 4)
    {
      goto LABEL_13;
    }

    v8 = *v8;
  }

  else if (v9 != 4)
  {
LABEL_13:
    v13 = v7;
    exception = __cxa_allocate_exception(0x10uLL);
    v15 = a1;
    v16 = exception;
    v17 = *&v15[8] + 24 * v13;
    if (*(v17 + 23) < 0)
    {
      v17 = *v17;
    }

    StringFormatter::StringFormatter(v18, "Mil2Bnns buffer type not supported: '%s'", v17);
    MEMORY[0x1C692A510](v16, v18);
    __cxa_throw(v16, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (*v8 == 909209702)
  {
    v10 = 1;
  }

  else
  {
    if (*v8 != 842231910)
    {
      goto LABEL_13;
    }

    v10 = 2;
  }

  v11 = *(*&a1[4] + 8 * v7);

  return memcpy(v11, a3, a4 << v10);
}

void sub_1C3010F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void Agglomerate::ItemHolder<TokenBasicItem>::~ItemHolder(uint64_t a1)
{
  *a1 = &unk_1F42F3750;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x1C692AE10);
}

void std::vector<std::shared_ptr<Module>>::__init_with_size[abi:ne200100]<std::shared_ptr<Module>*,std::shared_ptr<Module>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(a4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float Mil2BnnsModel::get_bnns_output<unsigned long>(int8x8_t *a1, unint64_t a2)
{
  v3 = Mil2BnnsModel::get_position<unsigned long>(a1, a2);
  v4 = *&a1[8] + 24 * v3;
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    if (*(v4 + 8) != 4)
    {
      goto LABEL_11;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
LABEL_11:
    v12 = v3;
    exception = __cxa_allocate_exception(0x10uLL);
    v14 = a1;
    v15 = exception;
    v16 = *&v14[8] + 24 * v12;
    if (*(v16 + 23) < 0)
    {
      v16 = *v16;
    }

    StringFormatter::StringFormatter(v17, "Mil2Bnns buffer type not supported: '%s'", v16);
    MEMORY[0x1C692A510](v15, v17);
    __cxa_throw(v15, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (*v4 == 909209702)
  {
    _H0 = **(*&a1[4] + 8 * v3);
    __asm { FCVT            S0, H0 }
  }

  else
  {
    if (*v4 != 842231910)
    {
      goto LABEL_11;
    }

    return **(*&a1[4] + 8 * v3);
  }

  return result;
}

void sub_1C30112A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *MilWaveRNNInference::signal_postprocessing(void *a1, float **a2, float *a3)
{
  MilWaveRNNInference::mulaw_decode(a2);
  result = std::vector<short>::vector[abi:ne200100](a1, a2[1] - *a2);
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = v8 >> 2;
    v10 = *a1;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v11 = *a3;
    do
    {
      v12 = *v7++;
      v11 = v12 + (v11 * 0.86);
      if (v11 < -1.0)
      {
        v11 = -1.0;
      }

      if (v11 > 1.0)
      {
        v11 = 1.0;
      }

      *v10++ = (v11 * 32767.0);
      *a3 = v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3011424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MilWaveRNNModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<MilWaveRNNModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::vector<short>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(*(a1 + 8), v3, v2, (v2 - v3) >> 1);
  if (v3)
  {
    operator delete(v3);
  }

  return 0;
}

void sub_1C301148C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

void MilWaveRNNModule::process_data(uint64_t a1, uint64_t *a2)
{
  v32[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 296));
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEBUG, "MIL WaveRNN Inference begin.", buf, 2u);
  }

  Diagnostics::log(7, "MIL WaveRNN Inference begin.", v5);
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(a1 + 288) = 1;
  v9 = *(*v7 + 8);
  v8 = *(*v7 + 16);
  __p[5] = v9;
  __p[6] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(*v10 + 16);
  __p[3] = *(*v10 + 8);
  __p[4] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  if (!*(v9 + 104))
  {
    (*(**(a1 + 272) + 8))(*(a1 + 272));
  }

  memset(__p, 0, 24);
  v12 = *(a1 + 272);
  v22 = v9;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32[0] = &unk_1F42DEEE8;
  v32[1] = __p;
  v32[3] = v32;
  (**v12)(v12, &v22, v32);
  std::__function::__value_func<int ()(std::vector<short>)>::~__value_func[abi:ne200100](v32);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v13 = (std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_) / 1000000;
  v14 = (*(v9 + 16) - *(v9 + 8)) >> 3;
  v15 = (0xAAAAAAAAAAAAAAAELL * v14);
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * v14;
  v17 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v18 = v15 / v13;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = (a1 + 360);
    if (*(a1 + 383) < 0)
    {
      v20 = *v20;
    }

    buf[0] = 136315906;
    *&buf[1] = v20;
    v26 = 2048;
    v27 = v16;
    v28 = 2048;
    v29 = v13;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_1C2F95000, v17, OS_LOG_TYPE_DEFAULT, "MilWaveRNN %s generated %zu frames, latency: %lld ms, RTF: %.2f", buf, 0x2Au);
  }

  v21 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    v21 = *v21;
  }

  Diagnostics::log(5, "MilWaveRNN %s generated %zu frames, latency: %lld ms, RTF: %.2f", v19, v21, v16, v13, v18);
  operator new();
}

void sub_1C3011BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (!v22)
    {
LABEL_4:
      std::mutex::unlock((v21 + 296));
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  goto LABEL_4;
}

uint64_t std::__function::__value_func<int ()(std::vector<short>)>::~__value_func[abi:ne200100](uint64_t a1)
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

float *std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(float **a1, __int16 *a2, __int16 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<int>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= v11 - result)
  {
    while (v5 != a3)
    {
      v14 = *v5++;
      *result++ = v14;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + ((v11 - result) >> 1));
    if (v11 != result)
    {
      do
      {
        v13 = *v5++;
        *result++ = v13;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v15 = *v12++;
      *v11++ = v15;
    }

    a1[1] = v11;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C3011EAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Agglomerate::set<std::shared_ptr<WaveNetFeature>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void Agglomerate::ItemHolder<std::shared_ptr<WaveNetFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42EF638;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

uint64_t std::vector<RateMarker>::__init_with_size[abi:ne200100]<RateMarker*,RateMarker*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RateMarker>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C30120D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *WaveformRateChangerImpl::set_markers(void *result, const void **a2)
{
  v2 = result;
  v3 = result + 1;
  if (result + 1 == a2)
  {
    v12 = result[2];
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 - *a2;
    v7 = result[3];
    v8 = result[1];
    if (v7 - v8 < v6)
    {
      v9 = v6 >> 3;
      if (v8)
      {
        result[2] = v8;
        operator delete(v8);
        v7 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v9 >> 61))
      {
        v10 = v7 >> 2;
        if (v7 >> 2 <= v9)
        {
          v10 = v6 >> 3;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<RateMarker>::__vallocate[abi:ne200100](v3, v11);
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = result[2];
    v14 = v13 - v8;
    if (v13 - v8 >= v6)
    {
      if (v5 != v4)
      {
        result = memmove(v8, v4, v6);
      }

      v12 = &v8[v6];
    }

    else
    {
      v15 = &v4[v14];
      if (v13 != v8)
      {
        result = memmove(result[1], *a2, v14);
        v13 = v2[2];
      }

      if (v5 != v15)
      {
        result = memmove(v13, v15, v5 - v15);
      }

      v12 = &v13[v5 - v15];
    }

    v2[2] = v12;
  }

  v16 = *v3;
  if ((&v12[-*v3] >> 3) >= 1)
  {
    if (v16 == v12)
    {
      v19 = 0;
    }

    else
    {
      v17 = (v16 + 8);
      do
      {
        v18 = *(v17 - 1);
        v19 = v18 != 0.0;
        if (v18 == 1.0)
        {
          v19 = 0;
        }

        if (v19)
        {
          break;
        }

        v20 = v17 == v12;
        v17 += 2;
      }

      while (!v20);
    }

    *(v2 + 112) = v19;
  }

  return result;
}

uint64_t std::deque<std::shared_ptr<Connection>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C3012640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void Agglomerate::ItemHolder<std::shared_ptr<FrontendInput>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42ED250;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::__shared_ptr_emplace<FrontendInput>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void Pipeline::read(Pipeline *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 12))
  {
    v2 = *(*(*(this + 8) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11));
    *a2 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<Agglomerate>>::pop_front(this + 7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void std::allocator_traits<std::allocator<PhoneFeature>>::destroy[abi:ne200100]<PhoneFeature,0>(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = (a1 + 72);
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::allocator_traits<std::allocator<WordFeature>>::destroy[abi:ne200100]<WordFeature,0>(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::vector<PhonemeRepresentation::Word>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void CountConstituentsImpl::generate_tokens(int64x2_t *this)
{
  if ((this->i8[8] & 1) == 0)
  {
    this->i8[8] = 1;
    do
    {
      (*(*this[1].i64[0] + 16))(&v31);
      v2 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v4 = v2 + 8;
      if (v2 + 8 == v3)
      {
        v5 = 0;
      }

      else
      {
        v5 = (*(v3 + 40) + 8);
      }

      v7 = v6;
      if (v4 == v6)
      {
        v10 = 0;
      }

      else
      {
        v8 = *(v6 + 40);
        v9 = this[10].i64[0];
        if (v9)
        {
          if (*(v8 + 16) != *(v9 + 1))
          {
            CountConstituentsImpl::update_phrase(this, v9, *(v8 + 32) != *(v9 + 3));
          }

          this[10].i64[0] = 0;
        }

        v10 = (v8 + 8);
        if (v5)
        {
          if (*v5 == 1952807028 || *v5 == 1885892462)
          {
            v11 = v31;
            if (*(&v31 + 1))
            {
              atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v11 + 8 == v12 || (v13 = *(v12 + 40), v14 = *(v13 + 8), v15 = *(v13 + 16), v14 == v15))
            {
              v18 = 0;
              v17 = 0;
              v16 = 0;
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
              do
              {
                v19 = *v14;
                v20 = v14[1];
                if (*v14 != v20)
                {
                  v21 = 0;
                  v22 = 0;
                  do
                  {
                    v23 = *(v19 + 16);
                    v24 = *(v19 + 24);
                    if (v23 != v24)
                    {
                      v22 += (v24 - v23 - 24) / 0x18uLL + 1;
                    }

                    ++v21;
                    v19 += 64;
                  }

                  while (v19 != v20);
                  if (v22)
                  {
                    this[6].i64[1] += v22;
                    v25 = vdupq_n_s64(1uLL);
                    v25.i64[0] = v21;
                    this[7] = vaddq_s64(this[7], v25);
                    ++v16;
                    v18 += v22;
                    v17 += v21;
                  }
                }

                v14 += 3;
              }

              while (v14 != v15);
            }

            v32[1] = v32;
            if (!v26)
            {
              operator new();
            }

            v26[1] = v18;
            v26[2] = v17;
            v26[3] = v16;
            if (*(&v11 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
            }
          }

          if (*v10 == 1)
          {
            CountConstituentsImpl::update_phrase(this, (v8 + 8), *(v8 + 9));
            goto LABEL_40;
          }

          v27 = v31;
          if (v27 + 8 == v28)
          {
LABEL_40:
            v29 = 0;
          }

          else
          {
            v29 = *(v28 + 40) + 8;
          }

          this[10].i64[0] = v29;
        }
      }

      std::deque<std::shared_ptr<Agglomerate>>::push_back(this[2].i64, &v31);
      (*(*this[1].i64[0] + 32))(this[1].i64[0]);
      this->i8[8] = 0;
      if (v4 == v7 || (v10[1] & 1) == 0)
      {
        v30 = 1;
        goto LABEL_46;
      }

LABEL_44:
      v30 = 0;
LABEL_46:
      if (*(&v31 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
      }
    }

    while ((v30 & 1) != 0);
  }
}

void sub_1C3012CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t kaldi::nnet1::SupervisedMultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "ComputeAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 330);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  kaldi::CuMatrix<float>::CuMatrix(v28, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v28, a4);
  kaldi::CuMatrix<float>::Resize(a1 + 152, v29, *(a1 + 28), 0, 0);
  kaldi::CuMatrixBase<float>::SetZero(a1 + 152);
  v9 = *(a1 + 144);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 16) / v9;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v25, v28, 0, v29, v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v22, a1 + 8, 0, *(a1 + 28), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a1 + 56, 0, *(a1 + 76), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a3, 0, *(a3 + 20), v10, v12);
      if (v11 >= *(a1 + 148))
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, &v25, &v22, &v19, &v16, 0);
      }

      else
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, &v25, &v22, &v19, &v16, a1 + 152);
      }

      v16 = &unk_1F42BFE90;
      v17 = 0u;
      v18 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v16);
      v19 = &unk_1F42BFE90;
      v20 = 0u;
      v21 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v19);
      v22 = &unk_1F42BFE90;
      v23 = 0u;
      v24 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v22);
      v25 = &unk_1F42BFE90;
      v26 = 0u;
      v27 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v25);
      ++v11;
      v10 = (v10 + v12);
    }

    while (v11 < *(a1 + 144));
  }

  v13 = *(a1 + 148);
  if (v13 > 1)
  {
    v14 = 1.0 / v13;
    kaldi::CuMatrixBase<float>::Scale(a1 + 152, v14);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v28);
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *(*(v6[8] + 8 * a2) + 56);
  if (v7 == *(*(v6[8] + 8 * a2) + 48))
  {
    v8 = 0;
  }

  else
  {
    v8 = (v7 - 48);
  }

  v9 = (*(*v6 + 24))(v6);
  v11 = *a3;
  v10 = *(a3 + 4);
  v12 = v9 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v10)
  {
    v12 = v9;
  }

  v13 = v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v10)
  {
    v13 = v12 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v11)
  {
    v12 = v13;
  }

  if (!v10)
  {
    v12 = v12 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (v8)
  {
    if (*v8 > v11)
    {
      v12 = v12 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (v8[1] > v10)
    {
      v12 = v12 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if (*(a3 + 8) != INFINITY || *(a3 + 12) != INFINITY)
  {
    v17 = *(a3 + 12);
    if (*(a3 + 8) != 0.0 || *(a3 + 12) != 0.0)
    {
      v12 = v12 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (*(a3 + 40) <= a2)
  {
    v12 = v12 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v12 & 0x4000000000) != 0)
  {
    v14 = v12 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    v14 = v12 & 0x5D7FFEB0007;
  }

  v6[1] = v6[1] & 4 | v14;
  v15 = *(v6[8] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(v15, a3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    ++a1[4];
  }

  if (!*(a2 + 4))
  {
    ++a1[5];
  }

  v5 = a1[7];
  v4 = a1[8];
  if (v5 >= v4)
  {
    v9 = a1[6];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v24 = a1 + 6;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v13);
    }

    v14 = 48 * v10;
    v21 = 0;
    v22 = v14;
    v23 = v14;
    *v14 = *a2;
    *(v14 + 8) = *(a2 + 8);
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v14 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    *(v14 + 40) = *(a2 + 40);
    *&v23 = v23 + 48;
    v15 = a1[6];
    v16 = a1[7];
    v17 = v22 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>((a1 + 6), v15, v16, v17);
    v18 = a1[6];
    a1[6] = v17;
    v19 = a1[8];
    v20 = v23;
    *(a1 + 7) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    result = std::__split_buffer<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~__split_buffer(&v21);
    v8 = v20;
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 8);
    *(v5 + 16) = 0;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    *(v5 + 40) = *(a2 + 40);
    v8 = v5 + 48;
    a1[7] = v5 + 48;
  }

  a1[7] = v8;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      *(v4 + 40) = *(v7 + 40);
      v7 += 48;
      v4 = v14 + 48;
      v14 += 48;
    }

    while (v7 != a3);
    v12 = 1;
    do
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        *(v6 + 24) = v9;
        operator delete(v9);
      }

      v6 += 48;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 48;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 48;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v9 = *a3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  v7 = *(v6[8] + 8 * a2);
  v25 = *v7;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, v7[1], v7[2], (v7[2] - v7[1]) >> 2);
  v21 = v9;
  v23 = 0;
  v24 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v10, v11, (v11 - v10) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(v6[8], a2, &v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v8 = (*(*v6 + 24))(v6);
  v17 = v25;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, v26, v27, (v27 - v26) >> 2);
  v13 = v9;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, v10, v11, (v11 - v10) >> 2);
  v6[1] = v6[1] & 4 | fst::SetFinalProperties<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(v8, &v17, &v13);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_1C3013B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    *(v23 - 48) = v25;
    operator delete(v25);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 8 * a2);
  v4 = *a3;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  *v3 = v4;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3 + 1, __p, v6, (v6 - __p) >> 2);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1C3013C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SetFinalProperties<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(unint64_t a1, float *a2, float *a3)
{
  if ((*a2 != INFINITY || a2[1] != INFINITY) && (*a2 != 0.0 || a2[1] != 0.0))
  {
    a1 &= ~0x100000000uLL;
  }

  if ((*a3 != INFINITY || a3[1] != INFINITY) && (*a3 != 0.0 || a3[1] != 0.0))
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0x3FFFFFF0007;
}

double kaldi::quasar::TorchEncoderDecoder::Finish(kaldi::quasar::TorchEncoderDecoder *this, clockid_t a2)
{
  result = *(this + 512) + kaldi::Timer::GetSeconds(5, a2) - *(this + 507);
  *(this + 512) = result;
  return result;
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeCore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v127, (a1 + 4856), a1 + 5680, __p);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__p[0]);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    memset(&v129, 0, sizeof(v129));
    kaldi::JoinVectorToString<int>(a2, ",", &v129);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "DecodeCore", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 733, 3);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Input : ", 8);
      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v129;
      }

      else
      {
        v9 = v129.__r_.__value_.__r.__words[0];
      }

      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v129.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, size);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }
  }

  v11 = (((a2[1] - *a2) >> 2) - (*(a3 + 236) + *(a1 + 5204)));
  if ((*(a1 + 5200) * v11) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(a1 + 5200) * v11);
  }

  v13 = *(a1 + 5188);
  v14 = *(a1 + 5192);
  if (v14 != -1.0)
  {
    v15 = (v14 * v11);
    if (*(a1 + 5196) > v15)
    {
      v15 = *(a1 + 5196);
    }

    if (v15 >= v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v15;
    }
  }

  v16 = *(a1 + 136);
  if (*(v16 + 3924) != 1)
  {
    v126 = 0uLL;
    goto LABEL_57;
  }

  v17 = *(a3 + 111);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a3 + 96);
  }

  if (!v17)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 701);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No tar tag specified but required by model!", 43);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 683, 3);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Select models for ", 18);
    v19 = *(a3 + 159);
    if (v19 >= 0)
    {
      v20 = a3 + 136;
    }

    else
    {
      v20 = *(a3 + 136);
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 159);
    }

    else
    {
      v21 = *(a3 + 144);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "-", 1);
    v24 = *(a3 + 111);
    if (v24 >= 0)
    {
      v25 = a3 + 88;
    }

    else
    {
      v25 = *(a3 + 88);
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 111);
    }

    else
    {
      v26 = *(a3 + 96);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    v16 = *(a1 + 136);
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(v16, (a3 + 88), &v126);
  if (v126)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 686, 3);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Selected: ", 10);
      v28 = *(a3 + 159);
      if (v28 >= 0)
      {
        v29 = a3 + 136;
      }

      else
      {
        v29 = *(a3 + 136);
      }

      if (v28 >= 0)
      {
        v30 = *(a3 + 159);
      }

      else
      {
        v30 = *(a3 + 144);
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "-", 1);
      v33 = *(a3 + 111);
      if (v33 >= 0)
      {
        v34 = a3 + 88;
      }

      else
      {
        v34 = *(a3 + 88);
      }

      if (v33 >= 0)
      {
        v35 = *(a3 + 111);
      }

      else
      {
        v35 = *(a3 + 96);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    goto LABEL_57;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 688, 3);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Models for ", 11);
    v46 = *(a3 + 159);
    if (v46 >= 0)
    {
      v47 = a3 + 136;
    }

    else
    {
      v47 = *(a3 + 136);
    }

    if (v46 >= 0)
    {
      v48 = *(a3 + 159);
    }

    else
    {
      v48 = *(a3 + 144);
    }

    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, v48);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "-", 1);
    v51 = *(a3 + 111);
    if (v51 >= 0)
    {
      v52 = a3 + 88;
    }

    else
    {
      v52 = *(a3 + 88);
    }

    if (v51 >= 0)
    {
      v53 = *(a3 + 111);
    }

    else
    {
      v53 = *(a3 + 96);
    }

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " not found", 10);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  v125 = v12;
  v55 = *(a3 + 159);
  if (v55 >= 0)
  {
    v56 = a3 + 136;
  }

  else
  {
    v56 = *(a3 + 136);
  }

  if (v55 >= 0)
  {
    v57 = *(a3 + 159);
  }

  else
  {
    v57 = *(a3 + 144);
  }

  v58 = (v56 + v57);
  if (v57 >= 1)
  {
    v59 = v56;
    do
    {
      v60 = memchr(v59, 95, v57);
      if (!v60)
      {
        break;
      }

      if (*v60 == 95)
      {
        goto LABEL_98;
      }

      v59 = v60 + 1;
      v57 = v58 - v59;
    }

    while (v58 - v59 > 0);
  }

  v60 = v58;
LABEL_98:
  if (v60 == v58)
  {
    v61 = -1;
  }

  else
  {
    v61 = &v60[-v56];
  }

  std::string::basic_string(&v129, (a3 + 136), 0, v61, __p);
  v62 = *(a3 + 111);
  if (v62 >= 0)
  {
    v63 = a3 + 88;
  }

  else
  {
    v63 = *(a3 + 88);
  }

  if (v62 >= 0)
  {
    v64 = *(a3 + 111);
  }

  else
  {
    v64 = *(a3 + 96);
  }

  v65 = (v63 + v64);
  if (v64 >= 1)
  {
    v66 = v63;
    do
    {
      v67 = memchr(v66, 95, v64);
      if (!v67)
      {
        break;
      }

      if (*v67 == 95)
      {
        goto LABEL_113;
      }

      v66 = v67 + 1;
      v64 = v65 - v66;
    }

    while (v65 - v66 > 0);
  }

  v67 = v65;
LABEL_113:
  if (v67 == v65)
  {
    v68 = -1;
  }

  else
  {
    v68 = &v67[-v63];
  }

  std::string::basic_string(&v128, (a3 + 88), 0, v68, __p);
  v12 = v125;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 691, 3);
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Try to find models for ", 23);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v129;
    }

    else
    {
      v70 = v129.__r_.__value_.__r.__words[0];
    }

    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v71 = v129.__r_.__value_.__l.__size_;
    }

    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "-", 1);
    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v128;
    }

    else
    {
      v74 = v128.__r_.__value_.__r.__words[0];
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v128.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v74, v75);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(*(a1 + 136), &v128.__r_.__value_.__l.__data_, __p);
  v76 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v77 = *(&v126 + 1);
  v126 = v76;
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    if (v126)
    {
      goto LABEL_134;
    }

LABEL_187:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 696);
    v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Models for ", 11);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = &v129;
    }

    else
    {
      v117 = v129.__r_.__value_.__r.__words[0];
    }

    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v118 = v129.__r_.__value_.__l.__size_;
    }

    v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, v117, v118);
    v120 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, "-", 1);
    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = &v128;
    }

    else
    {
      v121 = v128.__r_.__value_.__r.__words[0];
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v122 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v122 = v128.__r_.__value_.__l.__size_;
    }

    v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, v121, v122);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, " not found!", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (!v76)
  {
    goto LABEL_187;
  }

LABEL_134:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "SelectModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 694, 3);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Selected: ", 10);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v129;
    }

    else
    {
      v79 = v129.__r_.__value_.__r.__words[0];
    }

    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v129.__r_.__value_.__l.__size_;
    }

    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "-", 1);
    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = &v128;
    }

    else
    {
      v83 = v128.__r_.__value_.__r.__words[0];
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v84 = v128.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v83, v84);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

LABEL_57:
  if (*(&v126 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v126 + 1));
  }

  v36 = kaldi::g_kaldi_verbose_level;
  if (*(a3 + 160))
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "DecodeCore", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 760, 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Beam decoding", 13);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      v36 = kaldi::g_kaldi_verbose_level;
    }

    if (v36 >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 901, 3);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "entered Init with #ActiveHyps: ", 31);
      if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
      {
        v38 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
      }

      else
      {
        v38 = 1;
      }

      v85 = MEMORY[0x1C692A960](v37, v38);
      v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " at decoding-position: ", 23);
      MEMORY[0x1C692A960](v86, *(a1 + 5836));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    *(a1 + 5712) = a4;
    kaldi::quasar::TorchEncoderDecoder::Start(*(a1 + 136), *(a3 + 312), a3 + 112);
    (*(**(a1 + 5712) + 224))(*(a1 + 5712));
    v87 = (*(*a4 + 200))(a4);
    (*(**(a1 + 5712) + 176))(*(a1 + 5712), v87);
    *(a1 + 5720) = -1;
    *(a1 + 5728) = vneg_f32(0x7F0000007FLL);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 5736), 0, 0, 0);
    v88 = *(a3 + 184);
    *(a1 + 5760) = 0x3F8000004F000000;
    if (v88 == 1)
    {
      *(a1 + 5764) = 1.0 - *(a3 + 180);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::NbestCompare(__p, *(a3 + 216), *(a3 + 220), *(a3 + 224));
    *(a1 + 5768) = __p[0];
    *(a1 + 5776) = __p[1];
    *(a1 + 5792) = *(a1 + 5784);
    std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), 1uLL);
    kaldi::Matrix<float>::Resize(*(a1 + 4952), 0, 0, 0, 0);
    v89 = *(a1 + 5136);
    v90 = *(a1 + 5128);
    if (v89 != v90)
    {
      v91 = v89 - 6;
      v92 = v89 - 6;
      v93 = v89 - 6;
      do
      {
        v94 = *v93;
        v93 -= 6;
        (*(v94 + 16))(v92);
        v91 -= 6;
        v95 = v92 == v90;
        v92 = v93;
      }

      while (!v95);
    }

    *(a1 + 5136) = v90;
    v96 = *(a1 + 5160);
    v97 = *(a1 + 5152);
    while (v96 != v97)
    {
      v96 = kaldi::Matrix<float>::~Matrix(v96 - 40);
    }

    *(a1 + 5160) = v97;
    *(a1 + 5832) = 0;
    *(a1 + 5872) = *(a1 + 5864);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 941, 3);
      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "entered Read to process #tokens: ", 33);
      MEMORY[0x1C692A980](v98, (a2[1] - *a2) >> 2);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    v99 = *(a1 + 4952);
    if (*(a1 + 4960) == v99)
    {
      std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), 1uLL);
      v99 = *(a1 + 4952);
    }

    v130 = 0u;
    *&v129.__r_.__value_.__r.__words[1] = 0u;
    v129.__r_.__value_.__r.__words[0] = &unk_1F42BFED8;
    v131 = 0;
    v100 = kaldi::MatrixBase<float>::NumRows(v99);
    kaldi::Matrix<float>::Resize(*(a1 + 4952), v100 + ((a2[1] - *a2) >> 2), 1, 2, 0);
    v101 = *a2;
    v102 = *(a1 + 4952);
    v103 = a2[1] - *a2;
    if (v103)
    {
      v104 = v103 >> 2;
      v105 = *(v102 + 8);
      v106 = *(v102 + 16);
      if ((v103 >> 2) <= 1)
      {
        v104 = 1;
      }

      v107 = (*v102 + 4 * v106 * v100);
      v108 = 4 * v106;
      do
      {
        v109 = *v101++;
        *v107 = v109;
        v107 = (v107 + v108);
        --v104;
      }

      while (v104);
    }

    else
    {
      v105 = *(v102 + 8);
    }

    kaldi::SubMatrix<float>::SubMatrix(__p, v102, v100, v103 >> 2, 0, v105);
    kaldi::CuMatrix<float>::operator=(&v129, __p);
    kaldi::CuMatrixBase<float>::~CuMatrixBase(__p);
    if (!v100)
    {
      if (kaldi::g_kaldi_verbose_level >= 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 963, 2);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "shortlist with biasing #tokens: ", 32);
        MEMORY[0x1C692A980](v110, (*(a1 + 5848) - *(a1 + 5840)) >> 2);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      }

      v111 = *(a1 + 136);
      v112 = *(a3 + 288);
      v113 = *(a3 + 292);
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(__p, a1, a3 + 64, a3 + 88, (a3 + 328));
      kaldi::quasar::TorchEncoderDecoder::ConstrainSoftmax(v111, a3 + 264, v112, v113, a2, (a1 + 5840), __p);
      std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(__p, __p[1]);
      kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(*(a1 + 136), 1);
      v114 = *(a1 + 136);
      if (*(a3 + 300))
      {
        kaldi::quasar::TorchEncoderDecoder::EncFeedforward(v114, &v129, 0);
      }

      else
      {
        kaldi::quasar::TorchEncoderDecoder::StartFeedforward(v114, &v129, 0, 0);
      }

      v115 = *(a3 + 200);
      if (v115)
      {
        (**v115)(v115);
      }

      if (*(a3 + 184) == 2)
      {
        (*(**(a3 + 208) + 24))(*(a3 + 208));
      }

      operator new();
    }

    kaldi::quasar::TorchEncoderDecoder::EncFeedforward(*(a1 + 136), &v129, 0);
    kaldi::CuMatrix<float>::~CuMatrix(&v129);
    v42 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, v13);
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "DecodeCore", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 747, 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Greedy decoding", 15);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    kaldi::quasar::TorchEncoderDecoder::Start(*(a1 + 136), *(a3 + 312), a3 + 112);
    v39 = *(a1 + 136);
    v40 = *(a3 + 288);
    v41 = *(a3 + 292);
    __p[0] = 0;
    __p[1] = 0;
    v133 = 0;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(&v129, a1, a3 + 64, a3 + 88, (a3 + 328));
    kaldi::quasar::TorchEncoderDecoder::ConstrainSoftmax(v39, a3 + 264, v40, v41, a2, __p, &v129);
    std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&v129, v129.__r_.__value_.__l.__size_);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    (*(*a4 + 224))(a4);
    __p[0] = 0;
    __p[1] = 0;
    v133 = 0;
    v42 = kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(*(a1 + 136), a2, __p, a3 + 112, a4, v12, v13);
    kaldi::quasar::TorchEncoderDecoder::Finish(*(a1 + 136), v43);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v127, v44);
  return v42;
}

void sub_1C3014D24(_Unwind_Exception *a1, clockid_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C3014DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&a23, a24);
  if (a29)
  {
    a30 = a29;
    JUMPOUT(0x1C3014E24);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&a14, v31);
  _Unwind_Resume(a1);
}

void sub_1C3014DCC(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C3014E30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C3014E74);
}

void sub_1C3014E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a29);
  kaldi::quasar::TimeBlock::~TimeBlock(&a14, v30);
  _Unwind_Resume(a1);
}

void sub_1C3014E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  kaldi::quasar::TimeBlock::~TimeBlock(va, v7);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  if (*(a3 + 308) == 1)
  {
    kaldi::quasar::TorchEncoderDecoder::GetTiming(*(a1 + 136), &v4);
    std::__tree<std::string>::destroy(&v7, v8);
    v3 = v5;
    v7 = v4;
    v8 = v5;
    v9 = v6;
    if (v6)
    {
      *(v5 + 16) = &v8;
      v4 = &v5;
      v5 = 0;
      v6 = 0;
      v3 = 0;
    }

    else
    {
      v7 = &v8;
    }

    std::__tree<std::string>::destroy(&v4, v3);
  }

  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
}

void sub_1C3015264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va1);
  v4 = (v2 - 184);
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v2 - 160));
  std::__tree<std::string>::destroy(v2 - 144, *(v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1C3015B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a17);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&STACK[0x2B0], STACK[0x2B8]);
  a17 = v17 - 248;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v17 - 224));
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v17 - 144));
  _Unwind_Resume(a1);
}

void sub_1C3015DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(v15);
  MEMORY[0x1C692AE10](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Properties(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v12 = 0;
    if (FLAGS_fst_verify_properties == 1)
    {
      v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
      v6 = fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, &v12, 0);
      if (!fst::CompatProperties(v5, v6))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        v7 = fst::LogMessage::LogMessage(&v15, __p);
        v8 = fst::cerr(v7);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "TestProperties: stored Fst properties incorrect", 47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (stored: props1, computed: props2)", 35);
        fst::LogMessage::~LogMessage(&v15);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v6 = fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, &v12, 1);
    }

    *(a1[1] + 8) = *(a1[1] + 8) & (~v12 | 4) | v12 & v6;
    return v6 & a2;
  }

  else
  {
    v10 = *(*a1[1] + 32);

    return v10();
  }
}

void sub_1C3015FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F42EB858;
  *(a1 + 24) = 0u;
  v3 = (a1 + 48);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        __p[0] = v3;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v6;
        fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a2, __p);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1C3017488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (*(v35 - 153) < 0)
  {
    operator delete(*(v35 - 176));
  }

  if (__p)
  {
    operator delete(__p);
  }

  v37 = *v34;
  if (*v34)
  {
    *(a12 + 56) = v37;
    operator delete(v37);
  }

  v38 = *a11;
  if (*a11)
  {
    *(a12 + 32) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v1, a1);
}

void sub_1C30178B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a23);
  a13 = v23 - 72;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t *a1, uint64_t *a2, float *a3)
{
  v65 = a1;
  v66 = a2;
  v67 = *a3;
  v68 = a3[4];
  v69 = *(a3 + 20);
  v70 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  memset(v74, 0, 29);
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](a2);
  v5 = *(a3 + 3);
  if ((*(*a1 + 24))(a1) == -1)
  {
    v9 = (*(*v65 + 64))(v65, 4, 0);
    goto LABEL_112;
  }

  (*(**(v67 + 16) + 56))(*(v67 + 16));
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](v66);
  v7 = *(&v71 + 1);
  v6 = v71;
  while (v7 != v6)
  {
    v8 = *(v7 - 24);
    if (v8)
    {
      *(v7 - 16) = v8;
      operator delete(v8);
    }

    v7 -= 32;
  }

  *(&v71 + 1) = v6;
  *&v73 = 0;
  if (v5 == -1)
  {
    v5 = (*(*v65 + 24))(v65);
  }

  v10 = v66;
  v11 = *v66;
  if (v5 >= ((v66[1] - *v66) >> 5))
  {
    v12 = vneg_f32(0x7F0000007FLL);
    do
    {
      v88 = v12;
      v90 = 0uLL;
      v89 = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v10, &v88);
      v88 = v12;
      v90 = 0uLL;
      v89 = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](&v71, &v88);
      v88.i8[0] = 0;
      std::vector<BOOL>::push_back(&v72 + 8, &v88);
      v10 = v66;
      v11 = *v66;
    }

    while (v5 >= ((v66[1] - *v66) >> 5));
  }

  if (v70 == 1)
  {
    v13 = *&v74[0];
    if (v5 >= ((*(&v74[0] + 1) - *&v74[0]) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](v74, &fst::kNoStateId);
        v13 = *&v74[0];
      }

      while (v5 >= ((*(&v74[0] + 1) - *&v74[0]) >> 2));
      v11 = *v66;
    }

    *(v13 + 4 * v5) = DWORD2(v74[1]);
  }

  v14 = (v11 + 32 * v5);
  *v14 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v14 + 1, 0, 0, 0);
  v15 = (v71 + 32 * v5);
  *v15 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v15 + 1, 0, 0, 0);
  v16 = *(v67 + 16);
  v17 = *v16;
  *(*(&v72 + 1) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  (*(v17 + 24))(v16, v5);
  v18 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(v67 + 16) + 48))(*(v67 + 16)))
    {
      goto LABEL_111;
    }

    v19 = (*(**(v67 + 16) + 16))(*(v67 + 16));
    (*(**(v67 + 16) + 32))(*(v67 + 16));
    while (v19 >= ((v66[1] - *v66) >> 5))
    {
      v88 = v18;
      v90 = 0uLL;
      v89 = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v66, &v88);
      v88 = v18;
      v90 = 0uLL;
      v89 = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](&v71, &v88);
      v88.i8[0] = 0;
      std::vector<BOOL>::push_back(&v72 + 8, &v88);
    }

    if (v69 == 1)
    {
      (*(*v65 + 32))(&v88);
      v79.i32[0] = v88.i32[1];
      v83.i32[0] = v88.i32[0];
      v75.i32[0] = 2139095040;
      v87 = INFINITY;
      v20 = v88.f32[0] != INFINITY || v79.f32[0] != v87;
      if (v89)
      {
        *&v90 = v89;
        operator delete(v89);
      }

      if (v20)
      {
LABEL_111:
        ++DWORD2(v74[1]);
        v9 = (*(*v65 + 64))(v65, 4, 0);
LABEL_112:
        if (v9)
        {
          BYTE12(v74[1]) = 1;
        }

        break;
      }
    }

    *(*(&v72 + 1) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
    v21 = v71 + 32 * v19;
    v83 = *v21;
    v85 = 0;
    v86 = 0;
    v84 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *(v21 + 8), *(v21 + 16), (*(v21 + 16) - *(v21 + 8)) >> 2);
    v22 = (v71 + 32 * v19);
    *v22 = v18;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v22[1], 0, 0, 0);
    v23 = *v65;
    v91 = 0;
    (*(v23 + 136))(v65, v19, &v88);
    while (1)
    {
      if (!*&v88)
      {
        v29 = v91;
        if (v91 >= v90)
        {
          v57 = 10;
          goto LABEL_102;
        }

        goto LABEL_40;
      }

      v24 = (*(**&v88 + 24))(v88);
      v27 = v88;
      if (v24)
      {
        break;
      }

      if (!*&v88)
      {
        v29 = v91;
LABEL_40:
        v28 = &v89[48 * v29];
        goto LABEL_41;
      }

      v28 = (*(**&v88 + 32))(v88);
LABEL_41:
      v30 = v66;
      for (i = v28[5].i32[0]; i >= (v66[1] - *v66) >> 5; i = v28[5].i32[0])
      {
        v79 = v18;
        v81 = 0;
        v82 = 0;
        v80 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v30, &v79);
        v79 = v18;
        v81 = 0;
        v82 = 0;
        v80 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](&v71, &v79);
        v79.i8[0] = 0;
        std::vector<BOOL>::push_back(&v72 + 8, &v79);
        v30 = v66;
      }

      if (v70 == 1)
      {
        while (1)
        {
          LODWORD(i) = v28[5].i32[0];
          if (i < ((*(&v74[0] + 1) - *&v74[0]) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](v74, &fst::kNoStateId);
        }

        v30 = v66;
        if (*(*&v74[0] + 4 * i) != DWORD2(v74[1]))
        {
          v32 = (*v66 + 32 * i);
          *v32 = v18;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v32[1], 0, 0, 0);
          v33 = (v71 + 32 * v28[5].i32[0]);
          *v33 = v18;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v33[1], 0, 0, 0);
          i = *&v74[0];
          v34 = DWORD2(v74[1]);
          v30 = v66;
          v35 = v28[5].i32[0];
          *(*(&v72 + 1) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v35);
          *(i + 4 * v35) = v34;
          LODWORD(i) = v28[5].i32[0];
        }
      }

      v36 = i;
      v37 = (*v30 + 32 * i);
      v38 = v71;
      v39 = vadd_f32(v83, v28[1]);
      v79 = v39;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      v40 = *v37;
      v41 = vadd_f32(vzip1_s32(*v37, v39), vzip2_s32(*v37, v39));
      v42 = v41.f32[1];
      if (v41.f32[0] >= v41.f32[1])
      {
        if (v41.f32[0] > v41.f32[1])
        {
          goto LABEL_51;
        }

        if ((vcgt_f32(v39, v40).u8[0] & 1) == 0)
        {
          v43 = v37;
          if ((vcgt_f32(v40, v39).u8[0] & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_51:
          v43 = &v79;
          v40 = v39;
          goto LABEL_52;
        }
      }

      v43 = v37;
LABEL_52:
      v75 = v40;
      v77 = 0;
      v78 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *&v43[1], *&v43[2], (*&v43[2] - *&v43[1]) >> 2);
      v25.n128_u32[0] = v37->i32[0];
      v26.n128_u32[0] = v37->u32[1];
      if (*v37->i32 == v75.f32[0] && v26.n128_f32[0] == v75.f32[1])
      {
        v46 = 1;
      }

      else
      {
        v45 = v25.n128_f32[0] + v26.n128_f32[0];
        v26.n128_f32[0] = v75.f32[0] + v75.f32[1];
        v25.n128_f32[0] = vabds_f32(v45, v75.f32[0] + v75.f32[1]);
        v46 = v25.n128_f32[0] <= v68;
      }

      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      if (v46)
      {
        v57 = 0;
        v47 = 1;
        goto LABEL_86;
      }

      v48 = *v37;
      v49 = vaddv_f32(*v37);
      if (v49 >= v42)
      {
        if (v49 > v42)
        {
          goto LABEL_68;
        }

        if ((vcgt_f32(v39, v48).u8[0] & 1) == 0)
        {
          v50 = v37;
          if ((vcgt_f32(v48, v39).u8[0] & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_68:
          v50 = &v79;
          v48 = v39;
          goto LABEL_69;
        }
      }

      v50 = v37;
LABEL_69:
      v75 = v48;
      v77 = 0;
      v78 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *&v50[1], *&v50[2], (*&v50[2] - *&v50[1]) >> 2);
      *v37 = v75;
      if (v37 != &v75)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v37[1], __p, v77, (v77 - __p) >> 2);
      }

      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      v51 = (v38 + 32 * v36);
      v52 = *v51;
      v53 = vaddv_f32(*v51);
      if (v53 >= v42)
      {
        if (v53 > v42)
        {
          goto LABEL_76;
        }

        if ((vcgt_f32(v39, v52).u8[0] & 1) == 0)
        {
          v54 = v51;
          if ((vcgt_f32(v52, v39).u8[0] & 1) == 0)
          {
            goto LABEL_77;
          }

LABEL_76:
          v54 = &v79;
          v52 = v39;
          goto LABEL_77;
        }
      }

      v54 = v51;
LABEL_77:
      v75 = v52;
      v77 = 0;
      v78 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *&v54[1], *&v54[2], (*&v54[2] - *&v54[1]) >> 2);
      *v51 = v75;
      if (v51 != &v75)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v51[1], __p, v77, (v77 - __p) >> 2);
      }

      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      if (fst::LatticeWeightTpl<float>::Member(v37) && fst::LatticeWeightTpl<float>::Member(v51))
      {
        v55 = **(v67 + 16);
        if ((*(*(&v72 + 1) + ((v28[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28[5].i32[0]))
        {
          (*(v55 + 40))();
          v57 = 0;
          v47 = 1;
        }

        else
        {
          (*(v55 + 24))();
          v57 = 0;
          v56 = v28[5].i32[0];
          v47 = 1;
          *(*(&v72 + 1) + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        }
      }

      else
      {
        v47 = 0;
        v57 = 1;
        BYTE12(v74[1]) = 1;
      }

LABEL_86:
      if (v80)
      {
        operator delete(v80);
      }

      v27 = v88;
      if (!v47)
      {
        goto LABEL_100;
      }

      if (v88)
      {
        (*(**&v88 + 40))(v88, v25, v26);
      }

      else
      {
        ++v91;
      }
    }

    v57 = 10;
LABEL_100:
    if (v27)
    {
      (*(**&v27 + 8))(v27, v25, v26);
      goto LABEL_104;
    }

LABEL_102:
    if (*(&v90 + 1))
    {
      --**(&v90 + 1);
    }

LABEL_104:
    if (v57 == 10)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    if (v84)
    {
      v85 = v84;
      operator delete(v84);
    }
  }

  while (!v58);
  if (BYTE12(v74[1]) == 1)
  {
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](a2);
    v59 = *a2;
    v60 = a2[1];
    if (v60 == *a2)
    {
      if (a2[2] == v60)
      {
        v91 = a2;
        std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(1uLL);
      }

      *v60 = vneg_f32(0x3F0000003FLL);
      v60[2] = 0;
      v60[3] = 0;
      v60[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v60[1], 0, 0, 0);
      a2[1] = &v60[4];
    }

    else if (v60 - *a2 >= 0x21)
    {
      for (j = (v59 + 32); v60 != j; v60 -= 4)
      {
        v62 = v60[-3];
        if (v62)
        {
          v60[-2] = v62;
          operator delete(v62);
        }
      }

      a2[1] = j;
    }
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ShortestDistanceState(&v65);
}

void sub_1C301853C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::~__split_buffer(v36 - 160);
  fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ShortestDistanceState(&a11);
  _Unwind_Resume(a1);
}

void std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

double fst::StateOrderQueue<int>::Clear_(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(v10);
    }

    v11 = (32 * v7);
    v17 = 0;
    v18 = v11;
    v19 = (32 * v7);
    *v11 = *a2;
    v11[2] = 0;
    v11[3] = 0;
    v11[1] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(32 * v7 + 8, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
    *&v19 = v19 + 32;
    v12 = *(a1 + 8);
    v13 = (v18 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    v16 = v19;
    *(a1 + 8) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::~__split_buffer(&v17);
    v6 = v16;
  }

  else
  {
    *v4 = *a2;
    v4[2] = 0;
    v4[3] = 0;
    v4[1] = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
    v6 = v4 + 4;
    *(a1 + 8) = v4 + 4;
  }

  *(a1 + 8) = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 1), v7[1], v7[2], (v7[2] - v7[1]) >> 2);
      v7 += 4;
      v4 = v13 + 4;
      v13 += 4;
    }

    while (v7 != a3);
    v11 = 1;
    do
    {
      v8 = v6[1];
      if (v8)
      {
        v6[2] = v8;
        operator delete(v8);
      }

      v6 += 4;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

uint64_t fst::StateOrderQueue<int>::Enqueue_(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  if (*(result + 32) <= a2)
  {
    do
    {
      v6 = 0;
      result = std::vector<BOOL>::push_back(v2 + 24, &v6);
    }

    while (*(v2 + 32) <= v5);
  }

  *(*(v2 + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  return result;
}

uint64_t fst::StateOrderQueue<int>::Dequeue_(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 48);
  v4 = *v5;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

BOOL fst::LatticeWeightTpl<float>::Member(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = v2 == -INFINITY || v1 == -INFINITY;
  result = 0;
  if (!v4)
  {
    if (v1 != INFINITY && v2 != INFINITY)
    {
      return 1;
    }

    if (v1 == INFINITY && v2 == INFINITY)
    {
      return 1;
    }
  }

  return result;
}

uint64_t fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ShortestDistanceState(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    operator delete(v3);
  }

  v5 = (a1 + 40);
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

void std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  if (*(v2 + 72) != v3)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(*(v3 + 8 * v4++));
      v3 = *(v2 + 64);
    }

    while (v4 < (*(v2 + 72) - v3) >> 3);
  }

  *(v2 + 72) = v3;
  *(v2 + 88) = -1;
  result = (*(*v2 + 24))(v2);
  *(v2 + 8) = (*(v2 + 8) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
  }

  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddState();
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *(*(v6[8] + 8 * a2) + 56);
  if (v7 == *(*(v6[8] + 8 * a2) + 48))
  {
    v8 = 0;
  }

  else
  {
    v8 = (v7 - 48);
  }

  v9 = (*(*v6 + 24))(v6);
  v11 = *a3;
  v10 = *(a3 + 4);
  v12 = v9 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v10)
  {
    v12 = v9;
  }

  v13 = v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v10)
  {
    v13 = v12 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v11)
  {
    v12 = v13;
  }

  if (!v10)
  {
    v12 = v12 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (v8)
  {
    if (*v8 > v11)
    {
      v12 = v12 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (v8[1] > v10)
    {
      v12 = v12 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if (*(a3 + 8) != INFINITY || *(a3 + 12) != INFINITY)
  {
    v17 = *(a3 + 12);
    if (*(a3 + 8) != 0.0 || *(a3 + 12) != 0.0)
    {
      v12 = v12 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (*(a3 + 40) <= a2)
  {
    v12 = v12 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v12 & 0x4000000000) != 0)
  {
    v14 = v12 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    v14 = v12 & 0x5D7FFEB0007;
  }

  v6[1] = v6[1] & 4 | v14;
  v15 = *(v6[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(v15, a3);
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    ++a1[4];
  }

  if (!*(a2 + 4))
  {
    ++a1[5];
  }

  v5 = a1[7];
  v4 = a1[8];
  if (v5 >= v4)
  {
    v9 = a1[6];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v24 = a1 + 6;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v13);
    }

    v14 = 48 * v10;
    v21 = 0;
    v22 = v14;
    v23 = v14;
    *v14 = *a2;
    *(v14 + 8) = *(a2 + 8);
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v14 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    *(v14 + 40) = *(a2 + 40);
    *&v23 = v23 + 48;
    v15 = a1[6];
    v16 = a1[7];
    v17 = v22 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>((a1 + 6), v15, v16, v17);
    v18 = a1[6];
    a1[6] = v17;
    v19 = a1[8];
    v20 = v23;
    *(a1 + 7) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    result = std::__split_buffer<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~__split_buffer(&v21);
    v8 = v20;
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 8);
    *(v5 + 16) = 0;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    *(v5 + 40) = *(a2 + 40);
    v8 = v5 + 48;
    a1[7] = v5 + 48;
  }

  a1[7] = v8;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      *(v4 + 40) = *(v7 + 40);
      v7 += 48;
      v4 = v14 + 48;
      v14 += 48;
    }

    while (v7 != a3);
    v12 = 1;
    do
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        *(v6 + 24) = v9;
        operator delete(v9);
      }

      v6 += 48;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

unint64_t fst::ReverseProperties(unint64_t this, int a2)
{
  v2 = 0xE05430007;
  if (a2)
  {
    v2 = 0xF05430007;
  }

  return v2 & this;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::NShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, int a6, int a7, float a8)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_18;
  }

  v8 = a7;
  v12 = a4;
  if ((a7 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v129, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v129, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&v100, &v129);
    v17 = fst::cerr(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
    fst::LogMessage::~LogMessage(&v100);
    if (SBYTE7(v130) < 0)
    {
      operator delete(v129);
    }

    (*(*a2 + 192))(a2, 4, 4);
    goto LABEL_18;
  }

  (*(*a2 + 224))(a2);
  v18 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v18);
  v19 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v19);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  __p = 0;
  v114 = 0;
  v115 = 0;
  if ((*(*a1 + 24))(a1) != -1)
  {
    v22 = *a3;
    v21 = a3[1];
    if ((*(*a1 + 24))(a1) < ((v21 - v22) >> 5))
    {
      v23 = (*a3 + 32 * (*(*a1 + 24))(a1));
      v24 = v23[1];
      LODWORD(v129) = *v23;
      LODWORD(v100) = v24;
      LODWORD(v93) = 2139095040;
      LODWORD(v124) = 2139095040;
      if (*&v129 != INFINITY || (v20.n128_u32[0] = v100, *&v100 != *&v124))
      {
        v20.n128_u32[0] = *a5;
        v25 = *a5 + *(a5 + 4);
        if (v25 >= 0.0)
        {
          v27 = v25 <= 0.0 && v20.n128_f32[0] < 0.0;
          v28 = v27;
          if (a6 && !v28)
          {
            v29 = (*(*a2 + 200))(a2);
            (*(*a2 + 176))(a2, v29);
            v112 = (*(*a2 + 200))(a2);
            v110 = 0u;
            v111 = 0u;
            (*(*a2 + 184))(a2);
            v92 = a3;
            if (0xCCCCCCCCCCCCCCCDLL * ((v120 - v119) >> 3) <= v112)
            {
              v30 = vneg_f32(0x7F0000007FLL);
              do
              {
                LODWORD(v129) = -1;
                *(&v129 + 1) = v30;
                v131 = 0;
                v130 = 0uLL;
                std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v119, &v129);
              }

              while (0xCCCCCCCCCCCCCCCDLL * ((v120 - v119) >> 3) <= v112);
            }

            v31 = (*(*a1 + 24))(a1);
            v32 = v119 + 40 * v112;
            *v32 = v31;
            *(v32 + 8) = 0;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v32 + 16), 0, 0, 0);
            std::vector<int>::push_back[abi:ne200100](&v116, &v112);
            v89 = 0;
            v33 = (*a3 + 32 * (*(*a1 + 24))(a1));
            v34 = v33[1];
            v35 = *(a5 + 4);
            v36 = *v33 + *a5;
            memset(v109, 0, sizeof(v109));
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v86 = v12;
            v37 = v36 + (v34 + v35);
            v38 = vneg_f32(0x7F0000007FLL);
            v87 = a6;
            v88 = v8;
LABEL_31:
            v39 = v117;
            v40 = v116;
            if (v116 == v117)
            {
              goto LABEL_138;
            }

            *&v129 = &v119;
            *(&v129 + 1) = a3;
            LODWORD(v130) = -1;
            *(&v130 + 1) = a8;
            v41 = (v117 - v116) >> 2;
            if (v41 >= 2)
            {
              v42 = 0;
              v90 = *v116;
              v43 = v116;
              do
              {
                v44 = &v43[v42 + 1];
                v45 = (2 * v42) | 1;
                v46 = 2 * v42 + 2;
                if (v46 < v41)
                {
                  v47 = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(&v129, *v44, v43[v42 + 2]);
                  v48 = 4;
                  if (!v47)
                  {
                    v48 = 0;
                  }

                  v44 = (v44 + v48);
                  if (v47)
                  {
                    v45 = v46;
                  }
                }

                *v43 = *v44;
                v43 = v44;
                v42 = v45;
              }

              while (v45 <= ((v41 - 2) >> 1));
              v49 = (v39 - 4);
              if (v39 - 4 == v44)
              {
                *v44 = v90;
              }

              else
              {
                *v44 = *v49;
                *v49 = v90;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v40, (v44 + 1), &v129, ((v44 + 1) - v40) >> 2);
              }

              a6 = v87;
              v8 = v88;
              v12 = v86;
            }

            v50 = *(v117 - 1);
            v51 = v119 + 40 * v50;
            LODWORD(v100) = *v51;
            v101 = *(v51 + 8);
            v103 = 0;
            v104 = 0;
            v102 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v102, *(v51 + 16), *(v51 + 24), (*(v51 + 24) - *(v51 + 16)) >> 2);
            v117 -= 4;
            a3 = v92;
            if (v100 == -1)
            {
              *v98 = 0u;
              v99 = 0u;
              v53 = 0;
            }

            else if (v100 >= ((v92[1] - *v92) >> 5))
            {
              v98[0] = v38;
              v99 = 0uLL;
              v53 = v38;
              v98[1] = 0;
            }

            else
            {
              v52 = *v92 + 32 * v100;
              v98[0] = *v52;
              v99 = 0uLL;
              v98[1] = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v98[1], *(v52 + 8), *(v52 + 16), (*(v52 + 16) - *(v52 + 8)) >> 2);
              v53 = v98[0];
            }

            v54 = 0;
            v55 = vadd_f32(v53, v101);
            v56 = vaddv_f32(v55);
            v58 = v37 <= v56 && v36 < v55.f32[0];
            if (v37 < v56 || v58)
            {
              goto LABEL_131;
            }

            if (a6 != -1 && (*(*a2 + 160))(a2) >= a6)
            {
              goto LABEL_130;
            }

            v59 = __p;
            for (i = v100; v100 + 1 >= ((v114 - __p) >> 2); i = v100)
            {
              LODWORD(v129) = 0;
              std::vector<int>::push_back[abi:ne200100](&__p, &v129);
              v59 = __p;
            }

            if (v8 && i + 1 >= ((v106 - v105) >> 5))
            {
              do
              {
                v129 = v38;
                v130 = 0uLL;
                std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](&v105, &v129);
                i = v100;
              }

              while (v100 + 1 >= ((v106 - v105) >> 5));
              v59 = __p;
            }

            ++v59[i + 1];
            v61 = v100;
            if (v100 == -1)
            {
              if (v89)
              {
                v62 = v108.f32[0] == v101.f32[0] && v108.f32[1] == v101.f32[1];
                v63 = vabds_f32(v108.f32[0] + v108.f32[1], v101.f32[0] + v101.f32[1]);
                if (!v62 && v63 > 0.00097656)
                {
                  v54 = 1;
                  v89 = 1;
                  goto LABEL_131;
                }
              }

              v65 = (*(*a2 + 24))(a2);
              v131 = 0;
              v129 = 0u;
              v130 = 0u;
              v132 = v50;
              (*(*a2 + 208))(a2, v65, &v129);
              if (v130)
              {
                *(&v130 + 1) = v130;
                operator delete(v130);
              }

              v61 = v100;
            }

            if ((v89 & 1) == 0)
            {
              if (v61 != -1)
              {
                v89 = 0;
                if (v8)
                {
                  goto LABEL_80;
                }

                goto LABEL_85;
              }

              v69 = *__p;
              v54 = v69 == v12;
              if (v69 != v12 || v8 == 0)
              {
                v89 = 0;
                goto LABEL_131;
              }

              v108 = v101;
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v109, v102, v103, (v103 - v102) >> 2);
              v61 = v100;
            }

            v89 = 1;
            if (v61 == -1)
            {
              goto LABEL_130;
            }

            if (v8)
            {
LABEL_80:
              v66 = v61 + 1;
              v67 = *(__p + v66);
              if (v67 == v12)
              {
                v68 = (v105 + 32 * v66);
                *v68 = v101;
                if (v68 != &v101)
                {
                  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v68[1], v102, v103, (v103 - v102) >> 2);
                  v61 = v100;
                }
              }

              else if (v67 > v12)
              {
                v71 = (v105 + 32 * v66);
                v72 = v71[1];
                v73 = v101.f32[0] == *v71 && v101.f32[1] == v72;
                v74 = vabds_f32(v101.f32[0] + v101.f32[1], *v71 + v72);
                if (!v73 && v74 > 0.00097656)
                {
                  goto LABEL_130;
                }
              }

              goto LABEL_101;
            }

LABEL_85:
            if (*(__p + v61 + 1) > v12)
            {
              goto LABEL_130;
            }

LABEL_101:
            v97 = 0;
            (*(*a1 + 136))(a1, v61, &v93);
            while (1)
            {
              if (v93)
              {
                if ((*(*v93 + 24))(v93))
                {
                  if (v93)
                  {
                    (*(*v93 + 8))();
                  }

                  else
                  {
LABEL_119:
                    if (v96)
                    {
                      --*v96;
                    }
                  }

                  (*(*a1 + 32))(&v129, a1, v100);
                  v93 = v129;
                  v95 = 0;
                  v96 = 0;
                  v94 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, *(&v129 + 1), v130, (v130 - *(&v129 + 1)) >> 2);
                  if (*(&v129 + 1))
                  {
                    *&v130 = *(&v129 + 1);
                    operator delete(*(&v129 + 1));
                  }

                  LODWORD(v124) = HIDWORD(v93);
                  LODWORD(v129) = v93;
                  v123 = 2139095040;
                  v122 = INFINITY;
                  v83.n128_u32[0] = v93;
                  if (*&v93 != INFINITY || (v83.n128_u32[0] = v124, *&v124 != v122))
                  {
                    v91 = v93;
                    v84 = v101;
                    LODWORD(v124) = (*(*a2 + 200))(a2, v83);
                    LODWORD(v129) = -1;
                    *(&v129 + 1) = vadd_f32(v84, v91);
                    v131 = 0;
                    v130 = 0uLL;
                    std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v119, &v129);
                    v85 = v124;
                    *&v129 = 0;
                    *(&v129 + 1) = v93;
                    v131 = 0;
                    v130 = 0uLL;
                    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v94, v95, (v95 - v94) >> 2);
                    v132 = v50;
                    (*(*a2 + 208))(a2, v85, &v129);
                    if (v130)
                    {
                      *(&v130 + 1) = v130;
                      operator delete(v130);
                    }

                    std::vector<int>::push_back[abi:ne200100](&v116, &v124);
                    *&v129 = &v119;
                    *(&v129 + 1) = v92;
                    LODWORD(v130) = -1;
                    *(&v130 + 1) = a8;
                    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v116, v117, &v129, (v117 - v116) >> 2);
                  }

                  if (v94)
                  {
                    v95 = v94;
                    operator delete(v94);
                  }

LABEL_130:
                  v54 = 0;
LABEL_131:
                  if (v98[1])
                  {
                    *&v99 = v98[1];
                    operator delete(v98[1]);
                  }

                  if (v102)
                  {
                    v103 = v102;
                    operator delete(v102);
                  }

                  if (v54)
                  {
LABEL_138:
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v93 = 0;
                    v94 = 0;
                    v95 = 0;
                    v98[0] = 0;
                    *&v129 = 0;
                    *(&v129 + 1) = &v100;
                    *&v130 = &v93;
                    *(&v130 + 1) = v98;
                    fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a2, &v129);
                  }

                  goto LABEL_31;
                }

                if (v93)
                {
                  v76 = (*(*v93 + 32))();
                  goto LABEL_110;
                }

                v77 = v97;
              }

              else
              {
                v77 = v97;
                if (v97 >= v95)
                {
                  goto LABEL_119;
                }
              }

              v76 = v94 + 48 * v77;
LABEL_110:
              v78 = *v76;
              v124 = *(v76 + 1);
              v126 = 0;
              v127 = 0;
              v125 = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v125, *(v76 + 2), *(v76 + 3), (*(v76 + 3) - *(v76 + 2)) >> 2);
              v79 = *(v76 + 10);
              *&v129 = v78;
              *(&v129 + 1) = v124;
              v131 = 0;
              v130 = 0uLL;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v125, v126, (v126 - v125) >> 2);
              v132 = v79;
              if (v125)
              {
                v126 = v125;
                operator delete(v125);
              }

              v80 = v101;
              v81 = *(&v129 + 8);
              v123 = (*(*a2 + 200))(a2);
              LODWORD(v124) = v132;
              v125 = vadd_f32(v80, v81);
              v127 = 0;
              v128 = 0;
              v126 = 0;
              std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v119, &v124);
              v82 = *a2;
              v132 = v50;
              (*(v82 + 208))(a2, v123, &v129);
              std::vector<int>::push_back[abi:ne200100](&v116, &v123);
              v124 = &v119;
              v125 = v92;
              LODWORD(v126) = -1;
              *(&v126 + 1) = a8;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v116, v117, &v124, (v117 - v116) >> 2);
              if (v130)
              {
                *(&v130 + 1) = v130;
                operator delete(v130);
              }

              if (v93)
              {
                (*(*v93 + 40))(v93);
              }

              else
              {
                ++v97;
              }
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 64))(a1, 4, 0, v20))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  *&v129 = &v119;
  std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v129);
LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1C301A7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  a25 = &a30;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a25 = &a48;
  std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  if (*(v2 + 72) != v3)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(*(v3 + 8 * v4++));
      v3 = *(v2 + 64);
    }

    while (v4 < (*(v2 + 72) - v3) >> 3);
  }

  *(v2 + 72) = v3;
  *(v2 + 88) = -1;
  result = (*(*v2 + 24))(v2);
  *(v2 + 8) = (*(v2 + 8) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(v4, a2);
}

uint64_t std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    v24 = a1;
    if (v10)
    {
      if (v10 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 40 * v7;
    v21 = 0;
    v22 = v11;
    v23 = 40 * v7;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(40 * v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    *&v23 = v23 + 40;
    v13 = *a1;
    v12 = a1[1];
    v25[0] = a1;
    v25[1] = &v27;
    v25[2] = &v28;
    v26 = 0;
    v14 = v22 + v13 - v12;
    v27 = v14;
    v28 = v14;
    if (v13 == v12)
    {
      v26 = 1;
    }

    else
    {
      v15 = v22 + v13 - v12;
      v16 = v13;
      do
      {
        *v15 = *v16;
        *(v15 + 8) = *(v16 + 8);
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 16) = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15 + 16, *(v16 + 16), *(v16 + 24), (*(v16 + 24) - *(v16 + 16)) >> 2);
        v16 += 40;
        v15 = v28 + 40;
        v28 += 40;
      }

      while (v16 != v12);
      v26 = 1;
      do
      {
        v17 = *(v13 + 16);
        if (v17)
        {
          *(v13 + 24) = v17;
          operator delete(v17);
        }

        v13 += 40;
      }

      while (v13 != v12);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](v25);
    v18 = *a1;
    *a1 = v14;
    v19 = a1[2];
    v20 = v23;
    *(a1 + 1) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    result = std::__split_buffer<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::~__split_buffer(&v21);
    v6 = v20;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v6 = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = v6;
  return result;
}

void sub_1C301AD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 48);
  v4 = *v5;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(_BOOL8 result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

void fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    *(*a2 + 8) = **a2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a2 + 52) = 0;
    **(a2 + 24) = **(a2 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a2 + 32) = a1;
    v5 = (*(*a1 + 24))(a1);
    *(a2 + 44) = 0;
    *(a2 + 48) = 0;
    *(a2 + 40) = v5;
    operator new();
  }

  operator new();
}

void sub_1C301B8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MemoryPool(uint64_t a1)
{
  *a1 = &unk_1F42EB6D8;
  *(a1 + 8) = &unk_1F42EB718;
  *(a1 + 16) = xmmword_1C3844BE0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new[]();
}

void sub_1C301BA44(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v1);
  _Unwind_Resume(a1);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0xDF)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 56 > v2)
  {
    operator new[]();
  }

  v4 = *(a1[4] + 16) + v3;
  a1[2] = v3 + 56;
  return v4;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> **>>(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> **,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> **>>::emplace_back<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> **&>(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_1C301C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitState(uint64_t a1, int a2, int a3)
{
  v18 = a2;
  std::vector<int>::push_back[abi:ne200100](*(a1 + 80), &v18);
  v5 = **(a1 + 56);
  for (i = v18; v18 >= ((*(*(a1 + 56) + 8) - v5) >> 2); i = v18)
  {
    v7 = *a1;
    if (*a1)
    {
      v17 = -1;
      std::vector<int>::push_back[abi:ne200100](v7, &v17);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      LOBYTE(v17) = 0;
      std::vector<BOOL>::push_back(v8, &v17);
    }

    v9 = *(a1 + 16);
    LOBYTE(v17) = 0;
    std::vector<BOOL>::push_back(v9, &v17);
    v10 = *(a1 + 56);
    v17 = -1;
    std::vector<int>::push_back[abi:ne200100](v10, &v17);
    v11 = *(a1 + 64);
    v17 = -1;
    std::vector<int>::push_back[abi:ne200100](v11, &v17);
    v12 = *(a1 + 72);
    LOBYTE(v17) = 0;
    std::vector<BOOL>::push_back(v12, &v17);
    v5 = **(a1 + 56);
  }

  v13 = *(a1 + 44);
  *(v5 + 4 * i) = v13;
  *(**(a1 + 64) + 4 * v18) = v13;
  v14 = v18 >> 6;
  v15 = 1 << v18;
  *(**(a1 + 72) + 8 * v14) |= 1 << v18;
  v16 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v16)
    {
      *(*v16 + 8 * v14) |= v15;
    }
  }

  else
  {
    if (v16)
    {
      *(*v16 + 8 * v14) &= ~v15;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
}

void fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v21);
  v26 = *(&v21 + 1);
  v27 = v21;
  v25 = 2139095040;
  v24 = INFINITY;
  v6 = *&v21 != INFINITY || v26 != v24;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_21;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_20;
    }

LABEL_18:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_20:
  ++*(a1 + 48);
LABEL_21:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t std::deque<char *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 6) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x400)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinishVisit(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    v2 = **result;
    v3 = *(*result + 8) - v2;
    if (v3)
    {
      v4 = v3 >> 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        *v2 = *(result + 48) + ~*v2;
        ++v2;
        --v4;
      }

      while (v4);
    }
  }

  if (*(result + 52) == 1)
  {
    v5 = *(result + 16);
    if (v5)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      result = MEMORY[0x1C692AE10](v5, 0x1010C40113C0ABBLL);
    }
  }

  v6 = v1[7];
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    result = MEMORY[0x1C692AE10](v6, 0x10C402FEFCB83);
  }

  v8 = v1[8];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    result = MEMORY[0x1C692AE10](v8, 0x10C402FEFCB83);
  }

  v10 = v1[9];
  if (v10)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    result = MEMORY[0x1C692AE10](v10, 0x1010C40113C0ABBLL);
  }

  v11 = v1[10];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v12;
      operator delete(v12);
    }

    JUMPOUT(0x1C692AE10);
  }

  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = &unk_1F42EB718;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1C692ADF0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return kaldi::CuMatrixBase<float>::~CuMatrixBase(a1);
}

uint64_t std::deque<char *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<char **>::~__split_buffer(a1);
}

uint64_t std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  std::vector<int>::vector[abi:ne200100](__p, (*(v4 + 72) - *(v4 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 72);
  if (v11 != v10)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(__p[0] + v12) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(*(v10 + 8 * v12));
      }

      else
      {
        *(__p[0] + v12) = v13;
        if (v12 != v13)
        {
          *(v10 + 8 * v13) = *(v10 + 8 * v12);
        }

        ++v13;
      }

      ++v12;
      v10 = *(v4 + 64);
      v11 = *(v4 + 72);
      v14 = (v11 - v10) >> 3;
    }

    while (v14 > v12);
    v15 = v13;
    v16 = v13 - v14;
    if (v13 <= v14)
    {
      if (v13 >= v14)
      {
        goto LABEL_26;
      }

      v11 = v10 + 8 * v13;
    }

    else
    {
      v17 = *(v4 + 80);
      if (v16 > (v17 - v11) >> 3)
      {
        if ((v13 & 0x80000000) == 0)
        {
          v18 = v17 - v10;
          if (v18 >> 2 > v13)
          {
            v15 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v15;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v19);
        }

        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(v4 + 72), 8 * v16);
      v11 += 8 * v16;
    }

    *(v4 + 72) = v11;
  }

LABEL_26:
  v20 = *(v4 + 64);
  if (v11 != v20)
  {
    v21 = 0;
    do
    {
      v22 = *(v20 + 8 * v21);
      v23 = v22[2];
      v24 = v22[3].i64[1] - v22[3].i64[0];
      if (v24)
      {
        v25 = v22[3].i64[0];
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = 0;
        v27 = 0;
        v28 = (v25 + 40);
        do
        {
          v29 = *(__p[0] + *v28);
          if (v29 == -1)
          {
            v31 = *(v28 - 5);
            v32.i64[0] = v31;
            v32.i64[1] = HIDWORD(v31);
            v23 = vaddq_s64(v23, vceqzq_s64(v32));
          }

          else
          {
            *v28 = v29;
            if (v26 != v27)
            {
              v38 = v23;
              v30 = (v25 + 48 * v27);
              *v30 = *(v28 - 5);
              fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::operator=(v30 + 1, (v28 - 8));
              *(v25 + 48 * v27 + 40) = *v28;
              v20 = *(v4 + 64);
              v23 = v38;
            }

            ++v27;
          }

          ++v26;
          v22 = *(v20 + 8 * v21);
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v22[3].i64[1] - v22[3].i64[0]) >> 4);
          v28 += 12;
        }

        while (v26 < v33);
        v39 = v23;
      }

      else
      {
        v39 = v22[2];
        v27 = 0;
        v33 = 0;
      }

      fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteArcs(v22, v33 - v27);
      v20 = *(v4 + 64);
      v34 = *(v4 + 72);
      *(*(v20 + 8 * v21++) + 32) = v39;
    }

    while (v21 < (v34 - v20) >> 3);
  }

  v35 = *(v4 + 88);
  if (v35 != -1)
  {
    v36 = __p[0];
    *(v4 + 88) = *(__p[0] + v35);
LABEL_45:
    __p[1] = v36;
    operator delete(v36);
    goto LABEL_46;
  }

  v36 = __p[0];
  if (__p[0])
  {
    goto LABEL_45;
  }

LABEL_46:
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = *(v4 + 8) & 4 | result & 0x6A5A950007;
  return result;
}

void sub_1C301CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteArcs(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = a1[7] - 48;
    do
    {
      if (!*v4)
      {
        --a1[4];
      }

      if (!*(v4 + 4))
      {
        --a1[5];
      }

      v5 = *(v4 + 16);
      if (v5)
      {
        *(v4 + 24) = v5;
        operator delete(v5);
      }

      a1[7] = v4;
      v4 -= 48;
      --v2;
    }

    while (v2);
  }
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

unint64_t fst::ShortestPathProperties(unint64_t this, int a2)
{
  v2 = 0x52800000000;
  if (a2)
  {
    v2 = 0x12800000000;
  }

  return v2 | this;
}

void std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
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

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F42EBDE8;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1C692AE10);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F42EBE58;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(uint64_t *__p)
{
  if (__p)
  {
    v2 = (__p + 6);
    if (__p[6])
    {
      std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::clear[abi:ne200100](__p + 6);
      operator delete(*v2);
    }

    v3 = __p[1];
    if (v3)
    {
      __p[2] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F42EBE20;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *fst::AutoQueue<int>::~AutoQueue(void *a1)
{
  *a1 = &unk_1F42EB858;
  v3 = a1[3];
  v2 = a1[4];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = a1[3];
        v2 = a1[4];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    a1[4] = v8;
    operator delete(v8);
  }

  return a1;
}

void fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_1F42EB8D0;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x1C692AE10);
}

void fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(&v5, a2);
}

void sub_1C301D684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  fst::AutoQueue<int>::~AutoQueue(&a18);
  a9 = &a15;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void ***fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::FinishVisit(const void ***result)
{
  v1 = result;
  if (*result[1])
  {
    (*result)[1] = **result;
    v2 = result[2];
    result = *v2;
    if (v2[1] == *v2)
    {
      goto LABEL_6;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*v1, &fst::kNoStateId);
      ++v3;
      v2 = v1[2];
      result = *v2;
      v4 = v2[1] - *v2;
      v5 = v4 >> 2;
    }

    while (v4 >> 2 > v3);
    if (!v5)
    {
LABEL_6:
      if (!result)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = 0;
    v7 = **v1;
    v8 = (result + v4 - 4);
    do
    {
      v9 = *v8--;
      v7[v9] = v6++;
    }

    while (v5 != v6);
  }

  else
  {
    v2 = result[2];
  }

  if (v2)
  {
    result = *v2;
    if (!*v2)
    {
LABEL_8:

      JUMPOUT(0x1C692AE10);
    }

LABEL_7:
    v2[1] = result;
    operator delete(result);
    goto LABEL_8;
  }

  return result;
}

double fst::TopOrderQueue<int>::Clear_(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Enqueue_(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Dequeue_(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    v6 = (v1 + 4 * v3);
    do
    {
      v7 = *v6++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

void fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = &unk_1F42EB938;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1C692AE10);
}

uint64_t fst::ConvertNbestToVector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 16;
    v7 = (v4 - 16);
    v8 = (v4 - 16);
    do
    {
      v9 = *v8;
      v8 -= 2;
      (*v9)(v7);
      v6 -= 16;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    return result;
  }

  v12 = result;
  v13 = (*(*a1 + 40))(a1, result);
  (*(*a1 + 32))(&v38, a1, v12);
  LODWORD(v35[0]) = HIDWORD(v38);
  LODWORD(v44[0]) = v38;
  v52 = 2139095040;
  v51 = INFINITY;
  v14 = *&v38 != INFINITY || *v35 != v51;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v15 = v13 + v14;
  if (v15 > (a2[2] - *a2) >> 4)
  {
    if (!(v15 >> 60))
    {
      v16 = a2[1] - *a2;
      v42 = a2;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>(v15);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (v14)
  {
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v17 = (*(*(a2[1] - 16) + 200))();
    v18 = a2[1];
    (*(*a1 + 32))(&v47, a1, v12);
    (*(*(v18 - 16) + 184))(v18 - 16, v17, &v47);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }
  }

  v46 = 0;
  (*(*a1 + 136))(a1, v12, v44);
  while (1)
  {
    result = v44[0];
    if (v44[0])
    {
      break;
    }

    if (v46 >= v44[2])
    {
      goto LABEL_54;
    }

LABEL_22:
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v19 = a2[1];
    if (v44[0])
    {
      v20 = (*(*v44[0] + 32))(v44[0]);
    }

    else
    {
      v20 = v44[1] + 48 * v46;
    }

    v22 = *(v19 - 16);
    v21 = v19 - 16;
    v23 = (*(v22 + 200))(v21);
    (*(*v21 + 176))(v21, v23);
    v24 = (*(*v21 + 200))(v21);
    v25 = *(v20 + 8);
    v38 = *v20;
    __p = v25;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, *(v20 + 16), *(v20 + 24), (*(v20 + 24) - *(v20 + 16)) >> 2);
    v43 = v24;
    (*(*v21 + 208))(v21, v23, &v38);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    v26 = *(v20 + 40);
    while ((*(*a1 + 40))(a1, v26))
    {
      (*(*a1 + 32))(&v38, a1, v26);
      v52 = HIDWORD(v38);
      LODWORD(v35[0]) = v38;
      v51 = INFINITY;
      v50 = 2139095040;
      v27.n128_u32[0] = v38;
      if (*&v38 == INFINITY)
      {
        v27.n128_u32[0] = v50;
      }

      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      v37 = 0;
      (*(*a1 + 136))(a1, v26, v35, v27);
      if (v35[0])
      {
        v28 = (*(*v35[0] + 32))(v35[0]);
      }

      else
      {
        v28 = v35[1] + 48 * v37;
      }

      v29 = (*(*v21 + 200))(v21);
      v30 = *(v28 + 8);
      v38 = *v28;
      __p = v30;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, *(v28 + 16), *(v28 + 24), (*(v28 + 24) - *(v28 + 16)) >> 2);
      v43 = v29;
      (*(*v21 + 208))(v21, v24, &v38);
      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      v26 = *(v28 + 40);
      if (v35[0])
      {
        (*(*v35[0] + 8))(v35[0]);
      }

      else if (v36)
      {
        --*v36;
      }

      v24 = v29;
    }

    (*(*a1 + 32))(&v38, a1, v26);
    v52 = HIDWORD(v38);
    LODWORD(v35[0]) = v38;
    v51 = INFINITY;
    v50 = 2139095040;
    v31.n128_u32[0] = v38;
    if (*&v38 == INFINITY)
    {
      v31.n128_u32[0] = v50;
    }

    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    (*(*a1 + 32))(&v32, a1, v26, v31);
    (*(*v21 + 184))(v21, v24, &v32);
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v44[0])
    {
      (*(*v44[0] + 40))(v44[0]);
    }

    else
    {
      ++v46;
    }
  }

  if (!(*(*v44[0] + 24))(v44[0]))
  {
    goto LABEL_22;
  }

  result = v44[0];
  if (v44[0])
  {
    return (*(*v44[0] + 8))(v44[0]);
  }

LABEL_54:
  if (v45)
  {
    --*v45;
  }

  return result;
}

void sub_1C301E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = (a3 + 8);
    v5 = result;
    do
    {
      v6 = v5[1];
      *v4 = v6;
      ++*(v6 + 14);
      *(v4 - 1) = &unk_1F42EB2D0;
      v5 += 2;
      v4 += 2;
      a3 += 16;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 2;
      (*v9)();
      v7 += 2;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 4;
  if (a2 > v5)
  {
    v6 = result[2];
    if (a2 - v5 > (v6 - v3) >> 4)
    {
      if (!(a2 >> 60))
      {
        v16 = result;
        v7 = v6 - v4;
        v8 = (v6 - v4) >> 3;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v9 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>(v9);
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
  }

  if (a2 < v5)
  {
    v10 = (v4 + 16 * a2);
    if (v3 != v10)
    {
      v11 = v3 - 2;
      v12 = v11;
      v13 = v11;
      do
      {
        v14 = *v13;
        v13 -= 2;
        result = (*v14)(v12);
        v11 -= 2;
        v15 = v12 == v10;
        v12 = v13;
      }

      while (!v15);
    }

    v2[1] = v10;
  }

  return result;
}

void sub_1C301E5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  kaldi::quasar::MultiLangDecorator::GetTags(&v23, a2 + 120, a3, a4);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::SplitStringToVector(&v23, " ", 1, &v20);
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v8 = v20;
  v9 = v21;
  while (v8 != v9)
  {
    v10 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a2 + 136));
    LODWORD(v19[0]) = (*(*v10 + 96))(v10, v8) - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int>(a1, v19[0]);
    v8 += 24;
  }

  v11 = *a5;
  v12 = a5[1];
  while (v11 != v12)
  {
    v13 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a2 + 136));
    v14 = (*(*v13 + 96))(v13, v11);
    if (v14 == -1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "SuppressedIds", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 2398);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Token to suppress not found in symbol table: ", 45);
      v16 = *(v11 + 23);
      if (v16 >= 0)
      {
        v17 = v11;
      }

      else
      {
        v17 = *v11;
      }

      if (v16 >= 0)
      {
        v18 = *(v11 + 23);
      }

      else
      {
        v18 = *(v11 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
    }

    LODWORD(v19[0]) = v14 - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int>(a1, v14 - 1);
    v11 += 24;
  }

  v19[0] = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void kaldi::quasar::MultiLangDecorator::GetTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v9 = *(a3 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a3 + 8);
    }

    if (v9)
    {
      v10 = *(a4 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a4 + 8);
      }

      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = kaldi::g_kaldi_verbose_level <= -2;
      }

      if (v11)
      {
        goto LABEL_33;
      }
    }

    else if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_33;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39, "GetTags", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/input-hammer.h", 88);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "A Both type TagFormat requires non-empty source and target tags", 63);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v39);
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    v12 = *(a3 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v13)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39, "GetTags", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/input-hammer.h", 92);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "SrcTag cannot be empty for TagFormat::Src", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v39);
    v8 = *(a2 + 8);
  }

  if (v8 == 1)
  {
    v14 = *(a4 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a4 + 8);
    }

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v15)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39, "GetTags", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/input-hammer.h", 96);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "TarTag cannot be empty for TagFormat::Tar", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v39);
    v8 = *(a2 + 8);
  }

LABEL_33:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v8 <= 1)
  {
    if (v8 <= 1)
    {
LABEL_44:
      std::operator+<char>();
      v21 = std::string::append(&v39, ">");
      v22 = v21->__r_.__value_.__r.__words[0];
      v40.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
      *(v40.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      *(a1 + 15) = *(v40.__r_.__value_.__r.__words + 7);
      v25 = v40.__r_.__value_.__r.__words[0];
      *a1 = v22;
      *(a1 + 8) = v25;
      *(a1 + 23) = v23;
      if (v24 < 0)
      {
        v26 = v39.__r_.__value_.__r.__words[0];
LABEL_59:
        operator delete(v26);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

LABEL_46:
    MEMORY[0x1C692A640](a1, "");
    goto LABEL_60;
  }

  if (v8 == 2)
  {
    std::operator+<char>();
    v27 = std::string::append(&v38, "-");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = *(a4 + 23);
    if (v29 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    if (v29 >= 0)
    {
      v20 = *(a4 + 23);
    }

    else
    {
      v20 = *(a4 + 8);
    }
  }

  else
  {
    if (v8 != 3)
    {
      goto LABEL_46;
    }

    std::operator+<char>();
    v16 = std::string::append(&v38, "> <tar-");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(a4 + 23);
    if (v18 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    if (v18 >= 0)
    {
      v20 = *(a4 + 23);
    }

    else
    {
      v20 = *(a4 + 8);
    }
  }

  v30 = std::string::append(&v40, v19, v20);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v39, ">");
  v33 = v32->__r_.__value_.__r.__words[0];
  v41[0] = v32->__r_.__value_.__l.__size_;
  *(v41 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
  v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v35 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
  *(a1 + 15) = *(v41 + 7);
  v36 = v41[0];
  *a1 = v33;
  *(a1 + 8) = v36;
  *(a1 + 23) = v34;
  if (v35 < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    v26 = v38.__r_.__value_.__r.__words[0];
    goto LABEL_59;
  }

LABEL_60:
  v37 = *MEMORY[0x1E69E9840];
}

void kaldi::SplitStringToVector(const std::string *a1, const char *a2, int a3, uint64_t a4)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v35 = size;
  std::vector<std::string>::clear[abi:ne200100](a4);
  v9 = 0;
  do
  {
    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(a2);
    if (v12 <= v9 || v13 == 0)
    {
      v15 = -1;
      if (a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = (v11 + v12);
      v17 = (v11 + v9);
LABEL_17:
      v18 = v13;
      v19 = a2;
      while (*v17 != *v19)
      {
        ++v19;
        if (!--v18)
        {
          if (++v17 != v16)
          {
            goto LABEL_17;
          }

          v17 = (v11 + v12);
          break;
        }
      }

      if (v17 == v16)
      {
        v15 = -1;
      }

      else
      {
        v15 = &v17[-v11];
      }

      if (a3)
      {
LABEL_26:
        if (v15 == v9 || v9 == v35)
        {
          goto LABEL_40;
        }
      }
    }

    std::string::basic_string(&v36, a1, v9, v15 - v9, &v37);
    v21 = *(a4 + 8);
    v20 = *(a4 + 16);
    if (v21 >= v20)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a4) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      v37.__end_cap_.__value_ = a4;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4, v26);
      }

      v27 = 24 * v23;
      v28 = *&v36.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v27 = v28;
      memset(&v36, 0, sizeof(v36));
      v29 = 24 * v23 + 24;
      v30 = *(a4 + 8) - *a4;
      v31 = 24 * v23 - v30;
      memcpy((v27 - v30), *a4, v30);
      v32 = *a4;
      *a4 = v31;
      *(a4 + 8) = v29;
      v33 = *(a4 + 16);
      *(a4 + 16) = 0;
      v37.__end_ = v32;
      v37.__end_cap_.__value_ = v33;
      v37.__first_ = v32;
      v37.__begin_ = v32;
      std::__split_buffer<std::string>::~__split_buffer(&v37);
      v34 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
      *(a4 + 8) = v29;
      if (v34 < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v22 = *&v36.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v21 = v22;
      *(a4 + 8) = v21 + 24;
    }

LABEL_40:
    v9 = v15 + 1;
  }

  while (v15 != -1);
}

void sub_1C301EF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *fst::SymbolTableImpl::Find@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    v3 = *(this + 19);
    if (!v3)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    v4 = (this + 152);
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == (this + 152))
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    if (v4[4] > a2)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }
  }

  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, a3);
  }
}

unint64_t fst::internal::DenseSymbolMap::GetSymbol@<X0>(fst::internal::DenseSymbolMap *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(*(this + 1) + 8 * a2);
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a3[23] = result;
  if (result)
  {
    result = memmove(a3, v4, result);
  }

  a3[v6] = 0;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](uint64_t a1, kaldi::quasar::TranslationUtil::PathElement *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0x111111111111111)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x88888888888888)
    {
      v10 = 0x111111111111111;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(v10);
    }

    v16 = 0;
    v17 = 240 * v7;
    kaldi::quasar::TranslationUtil::PathElement::PathElement((240 * v7), a2);
    v18 = 240 * v7 + 240;
    v11 = *(a1 + 8);
    v12 = (240 * v7 + *a1 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v18;
    *(a1 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = kaldi::quasar::TranslationUtil::PathElement::PathElement(*(a1 + 8), a2);
    v6 = v4 + 240;
    *(a1 + 8) = v4 + 240;
  }

  *(a1 + 8) = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(unint64_t a1)
{
  if (a1 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *kaldi::quasar::TranslationUtil::PathElement::PathElement(std::string *this, const kaldi::quasar::TranslationUtil::PathElement *a2)
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

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  v7 = *(a2 + 10);
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__l.__size_ = v7;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[5].__r_.__value_.__r.__words[2], *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[6].__r_.__value_.__r.__words[2], *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[7].__r_.__value_.__r.__words[2], *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[8].__r_.__value_.__r.__words[2], *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  LODWORD(this[9].__r_.__value_.__r.__words[2]) = *(a2 + 58);
  return this;
}

void sub_1C301F3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}