std::runtime_error *ctu::EmptyMockCallArgsException::EmptyMockCallArgsException(std::runtime_error *this, const char *a2)
{
  v11.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&v11.__r_.__value_.__r.__words[1] = xmmword_1A9164DC0;
  strcpy(v11.__r_.__value_.__l.__data_, "EmptyMockCallArgsException for method '");
  v4 = strlen(a2);
  v5 = std::string::append(&v11, a2, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v12, "': method appears not to have been called", 0x29uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  std::runtime_error::runtime_error(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_1F1CB9C48;
  return this;
}

void sub_1A914C470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::EmptyMockCallArgsException::~EmptyMockCallArgsException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

uint64_t ctu::LoggerTree::LoggerTree(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *(a1 + 48) = v3;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1A914C558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 3;
  std::vector<std::weak_ptr<ctu::TrackedLogger>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<ctu::LoggerTree>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::LoggerTree::~LoggerTree(ctu::LoggerTree *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v3 = (this + 24);
  std::vector<std::weak_ptr<ctu::TrackedLogger>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<ctu::LoggerTree>::__destroy_vector::operator()[abi:ne200100](&v3);
}

__n128 ctu::LoggerTree::LoggerTree(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  *a1 = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  *(a1 + 24) = *(a2 + 24);
  a1[2].n128_u64[1] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = *(a2 + 48);
  a1[4].n128_u64[0] = *(a2 + 64);
  a1[3] = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  a1[4].n128_u16[4] = *(a2 + 72);
  v3 = *(a2 + 80);
  *(a2 + 80) = 0;
  a1[5].n128_u64[0] = v3;
  return result;
}

char **ctu::LoggerTree::operator=(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        ctu::LoggerTree::~LoggerTree((v5 - 88));
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 3);
  if (a1[3])
  {
    std::vector<std::weak_ptr<ctu::TrackedLogger>>::clear[abi:ne200100](a1 + 3);
    operator delete(*v7);
    *v7 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  v8 = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a1 + 3) = v8;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 36) = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 80) = 0;
  v10 = a1[10];
  a1[10] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

uint64_t ctu::LoggerTree::insertAt(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = ctu::LoggerTree::getOrCreateFromPath(a1, a2);
  v5 = v4;
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v7 != v6)
  {
    v8 = v6 - 2;
    v9 = *(v4 + 24);
    while (1)
    {
      v10 = v7[1];
      if (!v10 || *(v10 + 8) == -1)
      {
        break;
      }

      v7 += 2;
      v9 += 2;
      if (v7 == v6)
      {
        v7 = *(v4 + 32);
        goto LABEL_25;
      }
    }

    if (v7 != v8)
    {
      v11 = v8 - v9;
      v12 = v8;
      while (1)
      {
        v13 = v12[1];
        if (v13)
        {
          if (*(v13 + 8) != -1)
          {
            break;
          }
        }

        v12 -= 2;
        v8 -= 2;
        v11 -= 16;
        if (v7 == v12)
        {
          goto LABEL_25;
        }
      }

      v14 = v11 >> 4;
      v15 = v14 + 1;
      if (v14 < 3)
      {
        v16 = 0;
        v21 = 0;
      }

      else
      {
        if (v15 >= 0x7FFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14 + 1;
        }

        v17 = MEMORY[0x1E69E5398];
        while (1)
        {
          v18 = operator new(16 * v16, v17);
          if (v18)
          {
            break;
          }

          v19 = v16 >> 1;
          v20 = v16 > 1;
          v16 >>= 1;
          if (!v20)
          {
            v21 = 0;
            v16 = v19;
            goto LABEL_23;
          }
        }

        v21 = v18;
      }

LABEL_23:
      v7 = std::__stable_partition_impl<std::_ClassicAlgPolicy,ctu::LoggerTree::tidyUp(void)::$_0 &,std::__wrap_iter<std::weak_ptr<ctu::TrackedLogger> *>,long,std::pair<std::weak_ptr<ctu::TrackedLogger> *,long>>(v9, v8, v15, v21, v16);
      if (v21)
      {
        operator delete(v21);
      }
    }
  }

LABEL_25:
  v22 = *(v5 + 32);
  if (v7 == v22)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    while (v22 != v7)
    {
      v23 = *(v22 - 1);
      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      v22 -= 2;
    }

    *(v5 + 32) = v7;
  }

  v24 = *a3;
  v25 = a3[1];
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    v7 = *(v5 + 32);
  }

  v26 = *(v5 + 40);
  if (v7 >= v26)
  {
    v28 = *(v5 + 24);
    v29 = v7 - v28;
    v30 = (v29 >> 4) + 1;
    if (v30 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v31 = v26 - v28;
    if (v31 >> 3 > v30)
    {
      v30 = v31 >> 3;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFF0)
    {
      v32 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      v39 = v24;
      if (v32 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = operator new(16 * v32);
      v24 = v39;
    }

    else
    {
      v33 = 0;
    }

    v34 = &v33[16 * (v29 >> 4)];
    *v34 = v24;
    v27 = (v34 + 16);
    memcpy(v33, v28, v29);
    *(v5 + 24) = v33;
    *(v5 + 32) = v27;
    *(v5 + 40) = &v33[16 * v32];
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v7 = v24;
    v7[1] = v25;
    v27 = v7 + 2;
  }

  *(v5 + 32) = v27;
  if (*(v5 + 72))
  {
    v35 = *(v5 + 73) == 255;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(v5 + 72);
  }

  v37 = *(**a3 + 16);

  return v37();
}

void sub_1A914CA60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::LoggerTree::getOrCreateFromPath(uint64_t a1, __int128 *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str_16 = v3;
  *&__str_16[16] = v3;
  __str = v3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 1));
  }

  else
  {
    __str = *a2;
    *__str_16 = *(a2 + 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str_16[8], "");
  while (1)
  {
    v4 = __str_16[7];
    v5 = __str_16[7];
    v6 = *(&__str + 1);
    v7 = __str_16[7] >= 0 ? __str_16[7] : *(&__str + 1);
    if (!v7)
    {
      break;
    }

    v8 = __str_16[7] >= 0 ? &__str : __str;
    v9 = memchr(v8, 46, v7);
    if (!v9)
    {
      break;
    }

    v10 = v9 - v8;
    if (v10)
    {
      if (v10 != -1)
      {
        std::string::basic_string(&v69, &__str, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, v82);
        if ((__str_16[31] & 0x80000000) != 0)
        {
          operator delete(*&__str_16[8]);
        }

        *&__str_16[8] = v69;
        std::string::resize(&__str, v10, 0);
        v4 = __str_16[7];
        v6 = *(&__str + 1);
        v5 = __str_16[7];
      }

      break;
    }

    std::string::erase(&__str, 0, 1uLL);
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  if (v4)
  {
    v12 = *a1;
    v11 = *(a1 + 8);
    if (*a1 != v11)
    {
      if (v5 >= 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str;
      }

      v14 = v12 + 48;
      while (1)
      {
        v15 = v14[23];
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v14 + 1);
        }

        if (v15 == v4)
        {
          v17 = v16 >= 0 ? v14 : *v14;
          if (!memcmp(v17, p_str, v4))
          {
            break;
          }
        }

        v18 = (v14 + 40);
        v14 += 88;
        if (v18 == v11)
        {
          goto LABEL_35;
        }
      }

      v32 = (v14 - 48);
      if (v14 - 48 != v11)
      {
        goto LABEL_90;
      }

LABEL_35:
      v19 = 0x2E8BA2E8BA2E8BA3 * ((v11 - v12) >> 3);
      do
      {
        v20 = v12 + 88 * (v19 >> 1);
        v21 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20 + 6, &__str);
        if (v21 >= 0)
        {
          v19 >>= 1;
        }

        else
        {
          v19 += ~(v19 >> 1);
        }

        if (v21 < 0)
        {
          v12 = (v20 + 88);
        }
      }

      while (v19);
      v5 = __str_16[7];
      v11 = v12;
    }

    if (v5 < 0)
    {
      std::string::__init_copy_ctor_external(&v68, __str, *(&__str + 1));
    }

    else
    {
      *&v68.__r_.__value_.__l.__data_ = __str;
      v68.__r_.__value_.__r.__words[2] = *__str_16;
    }

    ctu::LoggerTree::LoggerTree(&v69, &v68);
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    if (v22 >= v23)
    {
      v27 = *a1;
      v28 = 0x2E8BA2E8BA2E8BA3 * ((v22 - *a1) >> 3) + 1;
      if (v28 > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0x2E8BA2E8BA2E8BA3 * ((v23 - v27) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x1745D1745D1745DLL)
      {
        v30 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v30 = v28;
      }

      v81 = a1;
      if (v30)
      {
        v30 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::LoggerTree>>(v30);
      }

      else
      {
        v31 = 0;
      }

      v35 = v11 - v27;
      v36 = v30 + 8 * ((v11 - v27) >> 3);
      v78 = v30;
      v79 = v36;
      *&v80 = v36;
      *(&v80 + 1) = v30 + 88 * v31;
      if (0x2E8BA2E8BA2E8BA3 * ((v11 - v27) >> 3) == v31)
      {
        if (v35 < 1)
        {
          if (v11 == v27)
          {
            v39 = 1;
          }

          else
          {
            v39 = 0x5D1745D1745D1746 * ((v11 - v27) >> 3);
          }

          v82[4] = a1;
          v40 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::LoggerTree>>(v39);
          v42 = v40;
          v43 = &v40[88 * (v39 >> 2)];
          v44 = &v40[88 * v41];
          v46 = v79;
          v45 = v80;
          v47 = v43;
          v48 = v80 - v79;
          if (v80 != v79)
          {
            v65 = &v40[88 * v41];
            v47 = &v43[v48];
            v49 = &v40[88 * (v39 >> 2)];
            v50 = v79;
            do
            {
              ctu::LoggerTree::LoggerTree(v49, v50);
              v49 = (v51 + 88);
              v50 += 88;
              v48 -= 88;
            }

            while (v48);
            v44 = v65;
          }

          v52 = v78;
          v53 = *(&v80 + 1);
          v78 = v42;
          v79 = v43;
          v82[0] = v52;
          v82[1] = v46;
          *&v80 = v47;
          *(&v80 + 1) = v44;
          v82[2] = v45;
          v82[3] = v53;
          std::__split_buffer<ctu::LoggerTree>::~__split_buffer(v82);
          v36 = v80;
        }

        else
        {
          v36 -= 88 * ((0x2E8BA2E8BA2E8BA3 * (v35 >> 3) + 1) >> 1);
          v79 = v36;
          *&v80 = v36;
        }
      }

      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *v36 = 0;
      *(v36 + 8) = 0;
      *v36 = v69;
      *&v69.__r_.__value_.__l.__data_ = 0uLL;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0;
      *(v36 + 24) = v70;
      *(v36 + 40) = v71;
      v69.__r_.__value_.__r.__words[2] = 0;
      v70 = 0uLL;
      v71 = 0;
      v54 = v72;
      *(v36 + 64) = v73;
      *(v36 + 48) = v54;
      v72 = 0uLL;
      *(v36 + 72) = v74;
      v55 = v75;
      v73 = 0;
      v75 = 0;
      *(v36 + 80) = v55;
      v56 = v79;
      *&v80 = v80 + 88;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctu::LoggerTree>,ctu::LoggerTree*>(v11, *(a1 + 8), v80);
      v57 = *a1;
      v58 = v79;
      *&v80 = v80 + *(a1 + 8) - v11;
      *(a1 + 8) = v11;
      v59 = (v58 + v57 - v11);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctu::LoggerTree>,ctu::LoggerTree*>(v57, v11, v59);
      v60 = *a1;
      *a1 = v59;
      v61 = *(a1 + 16);
      *(a1 + 8) = v80;
      *&v80 = v60;
      *(&v80 + 1) = v61;
      v78 = v60;
      v79 = v60;
      std::__split_buffer<ctu::LoggerTree>::~__split_buffer(&v78);
      v11 = v56;
    }

    else
    {
      v24 = v11 - v22;
      if (v11 == v22)
      {
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        *v22 = 0;
        *(v22 + 8) = 0;
        *v22 = v69;
        *&v69.__r_.__value_.__l.__data_ = 0uLL;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0;
        *(v22 + 24) = v70;
        *(v22 + 40) = v71;
        v69.__r_.__value_.__r.__words[2] = 0;
        v70 = 0uLL;
        v71 = 0;
        v33 = v72;
        *(v22 + 64) = v73;
        *(v22 + 48) = v33;
        v72 = 0uLL;
        *(v22 + 72) = v74;
        v34 = v75;
        v73 = 0;
        v75 = 0;
        *(v22 + 80) = v34;
        *(a1 + 8) = v22 + 88;
      }

      else
      {
        v25 = (v22 - 88);
        if (v22 < 0x58)
        {
          v26 = *(a1 + 8);
        }

        else
        {
          v26 = v22 + 88;
          ctu::LoggerTree::LoggerTree(v22, v22 - 88);
        }

        *(a1 + 8) = v26;
        if (v22 != (v11 + 88))
        {
          v37 = v24 + 88;
          v38 = v22 - 176;
          do
          {
            ctu::LoggerTree::operator=(v25, v38);
            v25 -= 11;
            v38 -= 88;
            v37 += 88;
          }

          while (v37);
        }

        ctu::LoggerTree::operator=(v11, &v69);
      }
    }

    ctu::LoggerTree::~LoggerTree(&v69);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 72))
    {
      v62 = *(a1 + 73) == 255;
    }

    else
    {
      v62 = 1;
    }

    if (v62)
    {
      v63 = *(a1 + 73);
    }

    else
    {
      v63 = *(a1 + 72);
    }

    ctu::LoggerTree::updateParentLogLevel(v11, v63);
    ctu::LoggerTree::commitConfigUpdate(&v66, v11);
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    v32 = v11;
LABEL_90:
    a1 = ctu::LoggerTree::getOrCreateFromPath(v32, &__str_16[8]);
  }

  if ((__str_16[31] & 0x80000000) != 0)
  {
    operator delete(*&__str_16[8]);
  }

  if ((__str_16[7] & 0x80000000) != 0)
  {
    operator delete(__str);
  }

  return a1;
}

void sub_1A914D074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::__split_buffer<ctu::LoggerTree>::~__split_buffer(v37 - 168);
  ctu::LoggerTree::~LoggerTree(&a20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string,std::string>::~pair(&a32);
  _Unwind_Resume(a1);
}

char *ctu::LoggerTree::updateParentLogLevel(uint64_t a1, int a2)
{
  result = *(a1 + 80);
  v4 = (a1 + 73);
  if (result)
  {
    v4 = (result + 1);
  }

  if (*v4 != a2)
  {
    v5 = a2;
    if (!result)
    {
      result = operator new(2uLL);
      *(a1 + 80) = result;
      *result = *(a1 + 72);
    }

    result[1] = v5;
  }

  return result;
}

void ctu::LoggerTree::commitConfigUpdate(uint64_t *__return_ptr a1@<X8>, ctu::LoggerTree *this@<X0>)
{
  ctu::LoggerTree::commitConfigUpdate_impl(this);
  v4 = operator new(0x30uLL);
  v4[3] = 0;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_1F1CB4F28;
  v4[4] = 0;
  v4[5] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  ctu::LoggerTree::appendLevels(this, __p, v4 + 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = (v4 + 3);
  a1[1] = v4;
}

void sub_1A914D1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void ctu::LoggerTree::updateLogLevels(uint64_t a1, void *a2)
{
  if (MEMORY[0x1AC581B70](*a2) == MEMORY[0x1E69E9E80])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x4002000000;
    v15 = __Block_byref_object_copy_;
    v18[0] = 0;
    v18[1] = 0;
    v16 = __Block_byref_object_dispose_;
    v17 = v18;
    v4 = *a2;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 1107296256;
    applier[2] = ___ZN3ctu10LoggerTree15updateLogLevelsEN3xpc4dictE_block_invoke;
    applier[3] = &__block_descriptor_tmp_28;
    applier[4] = &v12;
    xpc_dictionary_apply(v4, applier);
    v5 = v13[5];
    v6 = (v13 + 6);
    if (v5 != (v13 + 6))
    {
      do
      {
        v7 = ctu::LoggerTree::getOrCreateFromPath(a1, v5 + 2);
        ctu::LoggerTree::updateLocalLogLevel(v7, *(v5 + 56));
        v8 = *(v5 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v5 + 2);
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != v6);
    }

    _Block_object_dispose(&v12, 8);
    std::__tree<std::__value_type<std::string,ctu::LogLevel>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::LogLevel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::LogLevel>>>::destroy(&v17, v18[0]);
  }
}

void sub_1A914D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  _Block_object_dispose(&a15, 8);
  std::__tree<std::__value_type<std::string,ctu::LogLevel>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::LogLevel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::LogLevel>>>::destroy(v21 + 40, a21);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(void *result, void *a2)
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

uint64_t ___ZN3ctu10LoggerTree15updateLogLevelsEN3xpc4dictE_block_invoke(uint64_t a1, char *a2, xpc_object_t object)
{
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default(&objecta, 0);
  v6 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v8 = (v6 + 48);
  v7 = *(v6 + 48);
  if (!v7)
  {
    v9 = (v6 + 48);
LABEL_12:
    v10 = operator new(0x40uLL);
    v10[6] = v15;
    *(v10 + 2) = *__p;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    *(v10 + 56) = 0;
    *v10 = 0;
    v10[1] = 0;
    v10[2] = v9;
    *v8 = v10;
    v11 = **(v6 + 40);
    v12 = v10;
    if (v11)
    {
      *(v6 + 40) = v11;
      v12 = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v6 + 48), v12);
    ++*(v6 + 56);
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v9 = v7;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v7 + 4) & 0x80) == 0)
      {
        break;
      }

      v7 = *v9;
      v8 = v9;
      if (!*v9)
      {
        goto LABEL_12;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, __p) & 0x80) == 0)
    {
      break;
    }

    v8 = v9 + 1;
    v7 = v9[1];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v10 = *v8;
  if (!*v8)
  {
    goto LABEL_12;
  }

LABEL_15:
  *(v10 + 56) = v5;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(objecta);
  return 1;
}

void sub_1A914D548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

unsigned __int8 *ctu::LoggerTree::updateLocalLogLevel(uint64_t a1, int a2)
{
  result = *(a1 + 80);
  v4 = (a1 + 72);
  if (result)
  {
    v4 = result;
  }

  if (*v4 != a2)
  {
    v5 = a2;
    if (!result)
    {
      result = operator new(2uLL);
      *(a1 + 80) = result;
      *result = *(a1 + 72);
    }

    *result = v5;
  }

  return result;
}

void ctu::LoggerTree::appendLevels(const std::string *a1, const void **a2, std::string::size_type *a3)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v5 = a1[3].__r_.__value_.__s.__data_[0];
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (!v6)
  {
    if ((SHIBYTE(a1[2].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (a1[2].__r_.__value_.__l.__size_)
      {
        goto LABEL_22;
      }
    }

    else if (*(&a1[2].__r_.__value_.__s + 23))
    {
LABEL_22:
      std::string::operator=(&__p, a1 + 2);
      goto LABEL_23;
    }

    if (a1[3].__r_.__value_.__s.__data_[1] == 255 || v5 == 0)
    {
      v5 = a1[3].__r_.__value_.__s.__data_[1];
    }

    goto LABEL_22;
  }

  memset(&v39, 170, sizeof(v39));
  v8 = &v39;
  std::string::basic_string[abi:ne200100](&v39, v6 + 1);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v39.__r_.__value_.__r.__words[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  memmove(v8, v9, v6);
  *(&v8->__r_.__value_.__l.__data_ + v6) = 46;
  v10 = SHIBYTE(a1[2].__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    data = &a1[2];
  }

  else
  {
    data = a1[2].__r_.__value_.__l.__data_;
  }

  if (v10 >= 0)
  {
    size = HIBYTE(a1[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1[2].__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v39, data, size);
  v14 = v13->__r_.__value_.__r.__words[0];
  v42[0] = v13->__r_.__value_.__l.__size_;
  *(v42 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v14;
  __p.__r_.__value_.__l.__size_ = v42[0];
  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v42 + 7);
  *(&__p.__r_.__value_.__s + 23) = v15;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_23:
  if (v5)
  {
    v17 = a3[1];
    v16 = a3[2];
    if (v17 >= v16)
    {
      v19 = *a3;
      v20 = v17 - *a3;
      v21 = v20 >> 5;
      v22 = (v20 >> 5) + 1;
      if (v22 >> 59)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 4 > v22)
      {
        v22 = v23 >> 4;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFE0)
      {
        v24 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      v41 = a3;
      if (v24)
      {
        if (v24 >> 59)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = operator new(32 * v24);
      }

      else
      {
        v25 = 0;
      }

      v28 = &v25[32 * v21];
      v39.__r_.__value_.__r.__words[0] = v25;
      v39.__r_.__value_.__l.__size_ = v28;
      v29 = &v25[32 * v24];
      v39.__r_.__value_.__r.__words[2] = v28;
      v40 = v29;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v25[32 * v21], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v31 = v39.__r_.__value_.__r.__words[2];
        v30 = v39.__r_.__value_.__l.__size_;
        v29 = v40;
        v19 = *a3;
        v20 = a3[1] - *a3;
        v21 = v20 >> 5;
      }

      else
      {
        *v28 = __p;
        v30 = &v25[32 * v21];
        v31 = v30;
      }

      v28[1].__r_.__value_.__s.__data_[0] = v5;
      v27 = v31 + 32;
      v32 = (v30 - 32 * v21);
      memcpy(v32, v19, v20);
      v33 = *a3;
      *a3 = v32;
      a3[1] = v27;
      v34 = a3[2];
      a3[2] = v29;
      v39.__r_.__value_.__r.__words[2] = v33;
      v40 = v34;
      v39.__r_.__value_.__r.__words[0] = v33;
      v39.__r_.__value_.__l.__size_ = v33;
      std::__split_buffer<std::tuple<std::string,unsigned int>>::~__split_buffer(&v39);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a3[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v17 = v18;
      }

      *(v17 + 24) = v5;
      v27 = v17 + 32;
      a3[1] = v17 + 32;
    }

    a3[1] = v27;
  }

  v36 = a1->__r_.__value_.__r.__words[0];
  v35 = a1->__r_.__value_.__l.__size_;
  while (v36 != v35)
  {
    ctu::LoggerTree::appendLevels(v36, &__p, a3);
    v36 += 88;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1A914D920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__split_buffer<std::tuple<std::string,unsigned int>>::~__split_buffer(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::LoggerTree::commitConfigUpdate_impl(ctu::LoggerTree *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = v2[1];
    v4 = *(this + 72);
    v5 = *v2;
    if (v5)
    {
      v6 = v3 == 255;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5;
    }

    if (*(this + 72))
    {
      v8 = *(this + 73) == 255;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = *(this + 73);
    }

    else
    {
      v9 = *(this + 72);
    }

    if (v9 != v7)
    {
      v15 = *this;
      v16 = *(this + 1);
      while (v15 != v16)
      {
        ctu::LoggerTree::updateParentLogLevel(v15, v7);
        v15 += 88;
      }

      v17 = *(this + 3);
      v18 = *(this + 4);
      while (v17 != v18)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = std::__shared_weak_count::lock(v19);
          if (v20)
          {
            v21 = v20;
            if (*v17)
            {
              (*(**v17 + 16))(*v17, v7);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        v17 += 2;
      }
    }

    v10 = *(this + 10);
    if (v10)
    {
      v11 = *(this + 10);
    }

    else
    {
      v11 = this + 72;
    }

    *(this + 72) = *v11;
    if (v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = this + 73;
    }

    *(this + 73) = *v12;
    *(this + 10) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  v14 = *this;
  v13 = *(this + 1);
  while (v14 != v13)
  {
    ctu::LoggerTree::commitConfigUpdate(&v22, v14);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v14 = (v14 + 88);
  }
}

void ctu::LoggerTree::getSimpleConfig(ctu::LoggerTree *this, xpc::dict *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  v14 = a2;
  v15 = "kDomainLogLevels";
  xpc::dict::object_proxy::operator=(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v7 = xpc_array_create(0, 0);
  v8 = v7;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v12 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_16;
    }
  }

  if (MEMORY[0x1AC581B70](v8) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v8);
    goto LABEL_17;
  }

  v9 = xpc_null_create();
LABEL_16:
  v12 = v9;
LABEL_17:
  xpc_release(v8);
  v14 = a2;
  v15 = "kLoggers";
  xpc::dict::object_proxy::operator=(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  ctu::LoggerTree::getConfig(this, __p, a2, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A914DC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::LoggerTree::getConfig(uint64_t *a1, std::string::size_type a2, std::string::size_type a3, uint64_t a4)
{
  if ((a4 & 1) != 0 || *(a1 + 72))
  {
    object[0] = 0xAAAAAAAAAAAAAAAALL;
    __p.__r_.__value_.__r.__words[0] = a3;
    __p.__r_.__value_.__l.__size_ = "kDomainLogLevels";
    xpc::dict::object_proxy::operator xpc::dict(&__p, object);
    if (*(a1 + 72))
    {
      v8 = *(a1 + 73) == 255;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = *(a1 + 73);
    }

    else
    {
      v9 = *(a1 + 72);
    }

    v37 = xpc_int64_create(v9);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v10 = a2;
    if (*(a2 + 23) < 0)
    {
      v10 = *a2;
    }

    __p.__r_.__value_.__r.__words[0] = object;
    __p.__r_.__value_.__l.__size_ = v10;
    xpc::dict::object_proxy::operator=(&__p, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    xpc_release(v37);
    v37 = 0;
    xpc_release(object[0]);
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[0] = a3;
  __p.__r_.__value_.__l.__size_ = "kLoggers";
  xpc::dict::object_proxy::operator xpc::array(&__p, &v36);
  v12 = a1[3];
  v11 = a1[4];
  while (v12 != v11)
  {
    v13 = v12[1];
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = v14;
        v16 = *v12;
        if (*v12)
        {
          v17 = (*(*v16 + 40))(*v12);
          v18 = v17;
          if ((a4 & 1) != 0 || v17)
          {
            value = 0xAAAAAAAAAAAAAAAALL;
            v19 = xpc_dictionary_create(0, 0, 0);
            v20 = v19;
            if (v19)
            {
              value = v19;
              goto LABEL_24;
            }

            v20 = xpc_null_create();
            value = v20;
            if (v20)
            {
LABEL_24:
              if (MEMORY[0x1AC581B70](v20) != MEMORY[0x1E69E9E80])
              {
                v21 = xpc_null_create();
                goto LABEL_28;
              }

              xpc_retain(v20);
            }

            else
            {
              v21 = xpc_null_create();
              v20 = 0;
LABEL_28:
              value = v21;
            }

            xpc_release(v20);
            (*(*v16 + 32))(&__p, v16);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v33 = xpc_string_create(p_p);
            if (!v33)
            {
              v33 = xpc_null_create();
            }

            object[0] = &value;
            object[1] = "kLoggerName";
            xpc::dict::object_proxy::operator=(object, &v33, &v34);
            xpc_release(v34);
            v34 = 0;
            xpc_release(v33);
            v33 = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v29 = xpc_int64_create(v18);
            if (!v29)
            {
              v29 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &value;
            __p.__r_.__value_.__l.__size_ = "kLoggerLevel";
            xpc::dict::object_proxy::operator=(&__p, &v29, &v30);
            xpc_release(v30);
            v30 = 0;
            xpc_release(v29);
            v29 = 0;
            v23 = a2;
            if (*(a2 + 23) < 0)
            {
              v23 = *a2;
            }

            v27 = xpc_string_create(v23);
            if (!v27)
            {
              v27 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &value;
            __p.__r_.__value_.__l.__size_ = "kLoggerDomain";
            xpc::dict::object_proxy::operator=(&__p, &v27, &v28);
            xpc_release(v28);
            v28 = 0;
            xpc_release(v27);
            v27 = 0;
            xpc_array_append_value(v36, value);
            xpc_release(value);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    v12 += 2;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (*(a2 + 23))
  {
LABEL_49:
    std::string::push_back(a2, 46);
  }

LABEL_50:
  v25 = *a1;
  for (i = a1[1]; v25 != i; v25 += 88)
  {
    memset(&__p, 170, sizeof(__p));
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v25 + 48), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = __p;
    }

    ctu::LoggerTree::getConfig(v25, &v26, a3, a4);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  xpc_release(v36);
}

void ctu::LoggerTree::getFullConfig(ctu::LoggerTree *this, xpc::dict *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  v14 = a2;
  v15 = "kDomainLogLevels";
  xpc::dict::object_proxy::operator=(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v7 = xpc_array_create(0, 0);
  v8 = v7;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v12 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_16;
    }
  }

  if (MEMORY[0x1AC581B70](v8) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v8);
    goto LABEL_17;
  }

  v9 = xpc_null_create();
LABEL_16:
  v12 = v9;
LABEL_17:
  xpc_release(v8);
  v14 = a2;
  v15 = "kLoggers";
  xpc::dict::object_proxy::operator=(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  ctu::LoggerTree::getConfig(this, __p, a2, 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A914E380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict::object_proxy::operator xpc::array(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v4) != MEMORY[0x1E69E9E50])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void std::vector<std::weak_ptr<ctu::TrackedLogger>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<ctu::TrackedLogger>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::weak_ptr<ctu::TrackedLogger>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<ctu::LoggerTree>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        ctu::LoggerTree::~LoggerTree((v4 - 88));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::LoggerTree>>(unint64_t a1)
{
  if (a1 >= 0x2E8BA2E8BA2E8BBLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(88 * a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctu::LoggerTree>,ctu::LoggerTree*>(ctu::LoggerTree *a1, ctu::LoggerTree *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      ctu::LoggerTree::LoggerTree(a3, v6);
      v6 += 88;
      a3 = (a3 + 88);
    }

    while (v6 != a2);
    do
    {
      ctu::LoggerTree::~LoggerTree(v5);
      v5 = (v5 + 88);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<ctu::LoggerTree>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    ctu::LoggerTree::~LoggerTree((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,ctu::LoggerTree::tidyUp(void)::$_0 &,std::__wrap_iter<std::weak_ptr<ctu::TrackedLogger> *>,long,std::pair<std::weak_ptr<ctu::TrackedLogger> *,long>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v10 = a1[3];
    if (!v10 || *(v10 + 8) == -1)
    {
      v12 = (a1 + 2);
      v19 = a1[2];
      a1[2] = *a2;
      *a2 = v19;
      v20 = a1[3];
      a1[3] = a2[1];
      a2[1] = v20;
      v21 = *a1;
      *a1 = *(a1 + 1);
      *(a1 + 1) = v21;
      return v12;
    }

    v11 = *a1;
    *a1 = a1[2];
    a1[1] = v10;
    *(a1 + 1) = v11;
    a1[2] = *a2;
    *a2 = v11;
    v9 = a1[3];
    a1[3] = a2[1];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v8 = *a1;
    *a1 = *a2;
    *a2 = v8;
    v9 = a1[1];
    a1[1] = a2[1];
LABEL_7:
    a2[1] = v9;
    return a2;
  }

  if (a5 >= a3)
  {
    *a4 = *a1;
    v22 = a4 + 2;
    *a1 = 0;
    a1[1] = 0;
    v23 = a1 + 2;
    v24 = 1;
    if (a1 + 2 == a2)
    {
      v28 = a1;
    }

    else
    {
      do
      {
        v25 = v23[1];
        if (!v25 || *(v25 + 8) == -1)
        {
          *v22 = *v23;
          v22[1] = v25;
          v22 += 2;
          *v23 = 0;
          v23[1] = 0;
          ++v24;
        }

        else
        {
          v26 = *v23;
          *v23 = 0;
          v23[1] = 0;
          v27 = v6[1];
          *v6 = v26;
          v6[1] = v25;
          if (v27)
          {
            std::__shared_weak_count::__release_weak(v27);
          }

          v6 += 2;
        }

        v23 += 2;
      }

      while (v23 != a2);
      v28 = v23 - 2;
    }

    v33 = *v23;
    v34 = v28[3];
    *v23 = 0;
    v23[1] = 0;
    v35 = v6[1];
    *v6 = v33;
    v6[1] = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }

    v12 = (v6 + 2);
    if (v22 > a4)
    {
      v36 = (v6 + 3);
      v37 = a4;
      do
      {
        v38 = *v37;
        *v37 = 0;
        v37[1] = 0;
        v39 = *v36;
        *(v36 - 1) = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_weak(v39);
        }

        v37 += 2;
        v36 += 2;
      }

      while (v37 < v22);
    }

    if (v24)
    {
      v40 = (a4 + 1);
      do
      {
        if (*v40)
        {
          std::__shared_weak_count::__release_weak(*v40);
        }

        v40 += 2;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    v15 = &a1[2 * (a3 / 2)];
    v16 = v15 - 1;
    v17 = 16 - 16 * (a3 / 2);
    v18 = a3 / 2;
    while (!*v16 || *(*v16 + 8) == -1)
    {
      if (!v17)
      {
        goto LABEL_25;
      }

      --v18;
      v16 -= 2;
      v17 += 16;
    }

    v6 = std::__stable_partition_impl<std::_ClassicAlgPolicy,ctu::LoggerTree::tidyUp(void)::$_0 &,std::__wrap_iter<std::weak_ptr<ctu::TrackedLogger> *>,long,std::pair<std::weak_ptr<ctu::TrackedLogger> *,long>>(a1, a1 - v17, v18, a4, a5);
LABEL_25:
    v29 = a3 - a3 / 2;
    v30 = v15[1];
    if (v30)
    {
      v12 = (a2 + 2);
      v31 = v15 + 2;
      do
      {
        if (*(v30 + 8) == -1)
        {
          break;
        }

        if (v31 == a2)
        {
          goto LABEL_47;
        }

        --v29;
        v30 = v31[1];
        v31 += 2;
      }

      while (v30);
      v32 = v31 - 2;
    }

    else
    {
      v32 = v15;
    }

    v12 = std::__stable_partition_impl<std::_ClassicAlgPolicy,ctu::LoggerTree::tidyUp(void)::$_0 &,std::__wrap_iter<std::weak_ptr<ctu::TrackedLogger> *>,long,std::pair<std::weak_ptr<ctu::TrackedLogger> *,long>>(v32, a2, v29, a4, a5);
LABEL_47:
    if (v6 != v15)
    {
      if (v15 == v12)
      {
        return v6;
      }

      else
      {
        v41 = *v6;
        *v6 = *v15;
        *v15 = v41;
        v42 = v6[1];
        v6[1] = v15[1];
        v15[1] = v42;
        v43 = v6 + 2;
        for (i = v15 + 2; i != v12; i += 2)
        {
          if (v43 == v15)
          {
            v15 = i;
          }

          v45 = *v43;
          *v43 = *i;
          *i = v45;
          v46 = v43[1];
          v43[1] = i[1];
          i[1] = v46;
          v43 += 2;
        }

        if (v43 != v15)
        {
          v47 = v43;
          v48 = v15;
          do
          {
            while (1)
            {
              v49 = *v47;
              *v47 = *v48;
              *v48 = v49;
              v50 = v47[1];
              v47[1] = v48[1];
              v48[1] = v50;
              v47 += 2;
              v48 += 2;
              if (v48 == v12)
              {
                break;
              }

              if (v47 == v15)
              {
                v15 = v48;
              }
            }

            v48 = v15;
          }

          while (v47 != v15);
        }

        return v43;
      }
    }
  }

  return v12;
}

void std::__tree<std::__value_type<std::string,ctu::LogLevel>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::LogLevel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::LogLevel>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ctu::LogLevel>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::LogLevel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::LogLevel>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ctu::LogLevel>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::LogLevel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::LogLevel>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<std::vector<std::pair<std::string,ctu::LogLevel>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<std::pair<std::string,ctu::LogLevel>>>::__on_zero_shared(uint64_t a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

uint64_t ctu::serial::configure(ctu::serial *this, unsigned int a2, cc_t a3, cc_t a4, int a5)
{
  v9 = this;
  v25 = *MEMORY[0x1E69E9840];
  v24.c_ospeed = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v24.c_cc = v10;
  *&v24.c_cc[16] = v10;
  *&v24.c_iflag = v10;
  *&v24.c_cflag = v10;
  if (tcgetattr(this, &v24))
  {
    v11 = "Failed get attributes, err = %s (%d)\n";
  }

  else if (cfsetspeed(&v24, a2))
  {
    v11 = "Failed set speed, err = %s (%d)\n";
  }

  else
  {
    cfmakeraw(&v24);
    v24.c_iflag = v24.c_iflag & 0xFFFFFFFFFFFFF0CCLL | 1;
    v24.c_oflag &= ~1uLL;
    v24.c_cc[16] = a3;
    v24.c_cc[17] = a4;
    v12 = 51968;
    if (a5)
    {
      v12 = 248576;
    }

    v24.c_cflag = v24.c_cflag & 0xFFFFFFFFFFFC20FFLL | v12;
    v24.c_lflag &= 0xFFFFFFFFFFFFFA77;
    if (!tcsetattr(v9, 0, &v24))
    {
      v14 = 0;
      goto LABEL_10;
    }

    v11 = "Failed set attributes, err = %s (%d)";
  }

  v13 = __error();
  v14 = *v13;
  v15 = strerror(*v13);
  _TelephonyUtilDebugPrint("configure", v11, v16, v17, v18, v19, v20, v21, v15);
LABEL_10:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

const char *ctu::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E786BC88[a1];
  }
}

{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E786BCA8[a1];
  }
}

ctu::TextConverter *ctu::TextConverter::TextConverter(ctu::TextConverter *this)
{
  v2 = operator new(0x38uLL);
  v2[2] = 0;
  *(v2 + 2) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F1CB7040;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = 0;
  *this = v2;
  *(this + 1) = v2;
  return this;
}

{
  v2 = operator new(0x38uLL);
  v2[2] = 0;
  *(v2 + 2) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F1CB7040;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = 0;
  *this = v2;
  *(this + 1) = v2;
  return this;
}

void ctu::TextConverter::~TextConverter(ctu::TextConverter *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = v2[2];
      (*(*v2 + 8))(v2);
      v2 = *this;
    }

    while (*this);
  }
}

{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = v2[2];
      (*(*v2 + 8))(v2);
      v2 = *this;
    }

    while (*this);
  }
}

uint64_t ctu::TextConverter::popConversion(ctu::TextConverter *this)
{
  v1 = *this;
  *this = *(*this + 16);
  return (*(*v1 + 8))(v1);
}

uint64_t ctu::TextConverter::setSource(uint64_t this, const char *a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + 8) = a3;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  v4 = *this;
  if (*this)
  {
    do
    {
      this = (*(*v4 + 24))(v4);
      v4 = v4[2];
    }

    while (v4);
  }

  return this;
}

_DWORD *ctu::TextConverter::pushConversion(void *a1, int a2, int a3, int a4, int a5)
{
  switch(a2)
  {
    case 0:
      result = operator new(0x28uLL);
      v9 = *a1;
      result[2] = 0;
      *(result + 2) = v9;
      *(result + 24) = 0;
      v10 = &unk_1F1CB6E00;
      goto LABEL_4;
    case 1:
      result = operator new(0x20uLL);
      v24 = *a1;
      result[2] = 0;
      *(result + 2) = v24;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6D40;
      goto LABEL_29;
    case 2:
      result = operator new(0x20uLL);
      v19 = *a1;
      result[2] = 0;
      *(result + 2) = v19;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6E30;
      goto LABEL_29;
    case 3:
      result = operator new(0x40uLL);
      v22 = *a1;
      result[2] = 0;
      *(result + 2) = v22;
      *(result + 24) = 0;
      *result = &unk_1F1CB6E60;
      result[13] = 0;
      result[14] = 0;
      goto LABEL_30;
    case 4:
      result = operator new(0x28uLL);
      v16 = *a1;
      result[2] = 0;
      *(result + 2) = v16;
      *(result + 24) = 0;
      *result = &unk_1F1CB74A8;
      result[7] = 0;
      result[8] = 0;
      result[9] = (7 - a3) % 7;
      goto LABEL_30;
    case 5:
      result = operator new(0x30uLL);
      v26 = *a1;
      result[2] = 0;
      *(result + 2) = v26;
      *(result + 24) = 0;
      *result = &unk_1F1CB5D28;
      result[7] = a3;
      *(result + 4) = 0;
      goto LABEL_22;
    case 6:
      result = operator new(0x30uLL);
      v28 = *a1;
      result[2] = 0;
      *(result + 2) = v28;
      *(result + 24) = 0;
      result[7] = a3;
      *(result + 4) = 0;
      *(result + 20) = 0;
      v13 = &unk_1F1CB74D8;
      goto LABEL_29;
    case 7:
      result = operator new(0x28uLL);
      v23 = *a1;
      result[2] = 0;
      *(result + 2) = v23;
      *(result + 24) = 0;
      *result = &unk_1F1CB6E90;
      result[7] = -1;
      result[8] = a3;
      goto LABEL_30;
    case 8:
      result = operator new(0x28uLL);
      v32 = *a1;
      result[2] = 0;
      *(result + 2) = v32;
      *(result + 24) = 0;
      *result = &unk_1F1CB6FB8;
      result[7] = a3;
      result[8] = a5;
      goto LABEL_30;
    case 9:
      result = operator new(0x20uLL);
      v18 = *a1;
      result[2] = 0;
      *(result + 2) = v18;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6CE0;
      goto LABEL_29;
    case 10:
      result = operator new(0x30uLL);
      v30 = *a1;
      result[2] = 0;
      *(result + 2) = v30;
      *(result + 24) = 0;
      *result = &unk_1F1CB6BD8;
      *(result + 4) = 0;
      result[10] = 0;
      goto LABEL_30;
    case 11:
      result = operator new(0x20uLL);
      v14 = *a1;
      result[2] = 0;
      *(result + 2) = v14;
      *(result + 24) = 0;
      v15 = &unk_1F1CB6EC0;
      goto LABEL_9;
    case 12:
      result = operator new(0x20uLL);
      v17 = *a1;
      result[2] = 0;
      *(result + 2) = v17;
      *(result + 24) = 0;
      v15 = &unk_1F1CB6FE8;
LABEL_9:
      *result = v15;
      *(result + 13) = a3;
      goto LABEL_30;
    case 13:
      result = operator new(0x20uLL);
      v27 = *a1;
      result[2] = 0;
      *(result + 2) = v27;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6D10;
      goto LABEL_29;
    case 14:
      result = operator new(0x20uLL);
      v12 = *a1;
      result[2] = 0;
      *(result + 2) = v12;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6D70;
      goto LABEL_29;
    case 15:
      result = operator new(0x30uLL);
      v20 = *a1;
      result[2] = 0;
      *(result + 2) = v20;
      *(result + 24) = 0;
      *result = &unk_1F1CB6810;
      result[7] = 0;
      result[8] = 0;
      if (a3 <= 0)
      {
        v21 = -(-a3 & 7);
      }

      else
      {
        v21 = a3 & 7;
      }

      result[9] = v21;
LABEL_22:
      *(result + 40) = 0;
      goto LABEL_30;
    case 16:
      result = operator new(0x28uLL);
      v11 = *a1;
      result[2] = 0;
      *(result + 2) = v11;
      *(result + 24) = 0;
      v10 = &unk_1F1CB67E0;
LABEL_4:
      *result = v10;
      result[7] = 0;
      result[8] = 0;
      goto LABEL_30;
    case 17:
      result = operator new(0x20uLL);
      v25 = *a1;
      result[2] = 0;
      *(result + 2) = v25;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6B18;
      goto LABEL_29;
    case 18:
      result = operator new(0x20uLL);
      v29 = *a1;
      result[2] = 0;
      *(result + 2) = v29;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6BA8;
      goto LABEL_29;
    case 19:
      result = operator new(0x20uLL);
      v33 = *a1;
      result[2] = 0;
      *(result + 2) = v33;
      *(result + 24) = 0;
      v13 = &unk_1F1CB6988;
LABEL_29:
      *result = v13;
LABEL_30:
      *a1 = result;
      break;
    default:
      result = *a1;
      break;
  }

  result[2] = a4;
  return result;
}

uint64_t ctu::TextConverter::exceptionOccurred(ctu::TextConverter *this)
{
  v1 = *this;
  do
  {
    result = *(v1 + 24);
    if (result)
    {
      break;
    }

    v1 = *(v1 + 16);
  }

  while (v1);
  return result;
}

void ctu::TextConverter::readChars(ctu::TextConverter *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = (*(**this + 16))();
      if (v6 == -1)
      {
        break;
      }

      std::string::push_back(a3, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1A914F51C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TextConverter::getBytesToCurrentOffset(ctu::TextConverter *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(this + 1);
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (*(v4 + 32))
  {
    v5 = *(v4 + 40);
    v6 = v5 - a2;
    if (((v5 - a2) & 0x8000000000000000) == 0)
    {
      while (v6 < v5)
      {
        std::string::push_back(a3, *(*(v4 + 32) + v6++));
        v5 = *(v4 + 40);
      }
    }
  }
}

void sub_1A914F5C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TextConverter::getBytesFromCurrentOffset(ctu::TextConverter *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(this + 1);
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (v4[4])
  {
    v5 = a2;
    v6 = v4[5];
    if (v6 < v6 + a2 && (v6 + a2) < v4[6])
    {
      do
      {
        std::string::push_back(a3, *(v4[4] + v6++));
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1A914F64C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::BinaryToHexTransform::nextCode(ctu::BinaryToHexTransform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  result = *(this + 7);
  if (result == -1)
  {
    return result;
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 8) = v4 - 1;
    if (v4 != 2)
    {
      return ctu::kHexDigits[result & 0xF];
    }
  }

  else
  {
    result = (*(**(this + 2) + 16))(*(this + 2));
    *(this + 7) = result;
    if (result == -1)
    {
      return result;
    }

    *(this + 8) = 1;
  }

  LODWORD(result) = result >> 4;
  return ctu::kHexDigits[result & 0xF];
}

uint64_t ctu::BinaryToHexTransform::reset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::HexToBinaryTransform::nextCode(ctu::HexToBinaryTransform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = (*(**(this + 2) + 16))(*(this + 2));
  v4 = (*(**(this + 2) + 16))(*(this + 2));
  if (v3 == -1 || v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 - 65 >= 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 - 55;
  }

  if (v3 - 97 <= 5)
  {
    v7 = v3 - 87;
  }

  if (v3 - 48 <= 9)
  {
    v7 = v3 - 48;
  }

  v8 = 16 * v7;
  if (v4 - 65 >= 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 - 55;
  }

  if (v4 - 97 <= 5)
  {
    v9 = v4 - 87;
  }

  if (v4 - 48 <= 9)
  {
    v9 = v4 - 48;
  }

  return (v9 + v8);
}

uint64_t ctu::Utf8ToUcs2Transform::nextCode(ctu::Utf8ToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = (*(**(this + 2) + 16))(*(this + 2));
  v4 = v3;
  if (v3 != -1 && (v3 & 0x80) != 0)
  {
    if ((v3 & 0x20) == 0)
    {
      v5 = (*(**(this + 2) + 16))(*(this + 2));
      if (v5 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5 & 0x3F | ((v4 & 0x1F) << 6);
      }
    }

    if ((v3 & 0x10) == 0)
    {
      v6 = (*(**(this + 2) + 16))(*(this + 2));
      v7 = (*(**(this + 2) + 16))(*(this + 2));
      if (v6 != -1 && v7 != -1)
      {
        return ((v4 & 0xF) << 12) | ((v6 & 0x3F) << 6) | v7 & 0x3F;
      }

      return 0xFFFFFFFFLL;
    }

    if ((v3 & 8) != 0)
    {
      if ((v3 & 4) != 0)
      {
        if ((v3 & 2) != 0)
        {
          return 0;
        }

        v21 = (*(**(this + 2) + 16))(*(this + 2));
        v22 = (*(**(this + 2) + 16))(*(this + 2));
        v23 = (*(**(this + 2) + 16))(*(this + 2));
        v24 = (*(**(this + 2) + 16))(*(this + 2));
        v11 = (*(**(this + 2) + 16))(*(this + 2));
        if (v21 == -1 || v22 == -1 || v23 == -1 || v24 == -1 || v11 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = ((v21 & 0x3F) << 24) | (v4 << 30) | ((v22 & 0x3F) << 18) | ((v23 & 0x3F) << 12) | ((v24 & 0x3F) << 6);
      }

      else
      {
        v15 = (*(**(this + 2) + 16))(*(this + 2));
        v16 = (*(**(this + 2) + 16))(*(this + 2));
        v17 = (*(**(this + 2) + 16))(*(this + 2));
        v11 = (*(**(this + 2) + 16))(*(this + 2));
        if (v15 == -1 || v16 == -1 || v17 == -1 || v11 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = ((v4 & 3) << 24) | ((v15 & 0x3F) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
      }
    }

    else
    {
      v9 = (*(**(this + 2) + 16))(*(this + 2));
      v10 = (*(**(this + 2) + 16))(*(this + 2));
      v11 = (*(**(this + 2) + 16))(*(this + 2));
      if (v9 == -1 || v10 == -1 || v11 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v14 = ((v4 & 7) << 18) | ((v9 & 0x3F) << 12) | ((v10 & 0x3F) << 6);
    }

    v30 = v14 & 0xFFFFFFC0 | v11 & 0x3F;
    v31 = v30 - 0x10000;
    v32 = v30 - 64513;
    if (v31 >= 0)
    {
      v32 = v31;
    }

    return ((v32 >> 10 << 16) - 671088640) | (v31 - (v32 & 0xFFFFFC00) + 56320);
  }

  return v4;
}

uint64_t ctu::Ucs2ToUtf8Transform::nextCode(ctu::Ucs2ToUtf8Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = *(this + 13);
  if (*(this + 14) == v3)
  {
    result = (*(**(this + 2) + 16))(*(this + 2));
    if (result == -1)
    {
      return result;
    }

    v5 = ((result >> 6) & 0x36FFC00) + result - 56613888;
    if (result >> 26 != 54)
    {
      v5 = result;
    }

    if ((v5 & 0x7C000000) != 0)
    {
      *(this + 28) = vorrq_s8(vandq_s8(vshlq_u32(vdupq_n_s32(v5), xmmword_1A9164EA0), xmmword_1A9164EB0), xmmword_1A9164EC0);
      *(this + 11) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 6;
      v8 = 48;
    }

    else if ((v5 & 0x3E00000) != 0)
    {
      *(this + 7) = HIBYTE(v5) | 0xF8;
      *(this + 4) = *&vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFF4FFFFFFEELL), 0x3F0000003FLL) | 0x8000000080;
      *(this + 10) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 5;
      v8 = 44;
    }

    else if ((v5 & 0x1F0000) != 0)
    {
      *(this + 28) = vorr_s8(vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFF4FFFFFFEELL), 0x3F00000007), 0x80000000F0);
      *(this + 9) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 4;
      v8 = 40;
    }

    else if ((v5 & 0xF800) != 0)
    {
      *(this + 28) = vorr_s8(vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFFAFFFFFFF4), 0x3F0000000FLL), 0x80000000E0);
      v6 = v5 & 0x3F | 0x80;
      v7 = 3;
      v8 = 36;
    }

    else if ((v5 & 0x780) != 0)
    {
      *(this + 7) = (v5 >> 6) & 0x1F | 0xC0;
      v6 = v5 & 0x3F | 0x80;
      v7 = 2;
      v8 = 32;
    }

    else
    {
      v6 = v5 & 0x7F;
      v7 = 1;
      v8 = 28;
    }

    v3 = 0;
    *(this + v8) = v6;
    *(this + 14) = v7;
  }

  *(this + 13) = v3 + 1;
  return *(this + v3 + 7);
}

uint64_t ctu::Ucs2ToUtf8Transform::reset(uint64_t this)
{
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::SmsPacker::nextCode(ctu::SmsPacker *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  if (*(this + 40) == 1)
  {
    v3 = *(this + 9);
    goto LABEL_8;
  }

  if (!*(this + 7))
  {
    v4 = (*(**(this + 2) + 16))(*(this + 2));
    *(this + 8) = v4;
    if (v4 != -1)
    {
      goto LABEL_7;
    }

    return 0xFFFFFFFFLL;
  }

  *(this + 8) = 0;
LABEL_7:
  v3 = (*(**(this + 2) + 16))(*(this + 2));
  *(this + 9) = v3;
  *(this + 40) = 1;
LABEL_8:
  v5 = *(this + 8);
  if (v5 == -1 && v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 7);
  v8 = v5 >> v7;
  v9 = (v3 << (7 - v7));
  if (v3 == -1)
  {
    v9 = 0;
  }

  v10 = v9 | v8;
  *(this + 7) = v7 + 1;
  if (v7 == 6)
  {
    *(this + 7) = 0;
    v11 = (*(**(this + 2) + 16))(*(this + 2));
    *(this + 8) = v11;
    if (v11 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *(this + 8) = v3;
  if (v3 != -1)
  {
LABEL_19:
    v11 = (*(**(this + 2) + 16))(*(this + 2));
LABEL_20:
    *(this + 9) = v11;
  }

  return v10;
}

uint64_t ctu::SmsPacker::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 33) = 0;
  return this;
}

uint64_t ctu::SmsUnpacker::nextCode(ctu::SmsUnpacker *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = *(this + 8);
  if (v3 >= 7)
  {
    v6 = *(this + 7);
LABEL_10:
    result = v6 & 0x7F;
    *(this + 7) = v6 >> 7;
    *(this + 8) = v3 - 7;
  }

  else
  {
    while (1)
    {
      result = (*(**(this + 2) + 16))(*(this + 2));
      if (result == -1)
      {
        break;
      }

      v5 = *(this + 8);
      v6 = *(this + 7) | (result << v5);
      v3 = v5 + 8;
      *(this + 7) = v6;
      *(this + 8) = v3;
      v7 = *(this + 9);
      if (v7)
      {
        v6 >>= v7;
        v3 -= v7;
        *(this + 7) = v6;
        *(this + 4) = v3;
      }

      if (v3 >= 7)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t ctu::SmsUnpacker::reset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::UssdPacker::nextCode(ctu::UssdPacker *this)
{
  result = ctu::SmsPacker::nextCode(this);
  if (result != -1)
  {
    if (*(this + 8) == -1)
    {
      if ((result & 0xFFFFFFFE) == 0x1A && (*(this + 41) & 1) == 0)
      {
        *(this + 8) = 13;
      }
    }

    else if (*(this + 9) == -1 && *(this + 7) == 6)
    {
      *(this + 9) = 13;
      *(this + 41) = 1;
    }
  }

  return result;
}

uint64_t ctu::UssdPacker::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 33) = 0;
  return this;
}

uint64_t ctu::C2KSmsPackedToUnpackedTransform::nextCode(ctu::C2KSmsPackedToUnpackedTransform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v1 - 1;
  *(this + 2) = v3;
  if ((*(this + 40) & 1) == 0 && *(this + 9))
  {
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    result = (*(**(this + 2) + 16))(*(this + 2));
    *(this + 7) = result;
    if (result == -1)
    {
      return result;
    }

    *(this + 8) = 8 - *(this + 9);
  }

  *(this + 40) = 1;
  v5 = *(this + 8);
  if (v5 >= 7)
  {
    v6 = *(this + 7);
  }

  else
  {
    result = (*(**(this + 2) + 16))(*(this + 2));
    if (result == -1)
    {
      return result;
    }

    v5 = *(this + 8) + 8;
    v6 = result | (*(this + 7) << 8);
    *(this + 7) = v6;
  }

  v7 = v5 - 7;
  result = (v6 >> v7) & 0x7F;
  *(this + 8) = v7;
  return result;
}

uint64_t ctu::C2KSmsPackedToUnpackedTransform::reset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::C2KSmsUnpackedToPackedTransform::nextCode(ctu::C2KSmsUnpackedToPackedTransform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = *(this + 8);
  if (v3 >= 8)
  {
    v7 = *(this + 7);
LABEL_8:
    v9 = v3 - 8;
    result = (v7 >> v9);
    *(this + 8) = v9;
  }

  else
  {
    while (1)
    {
      v4 = (*(**(this + 2) + 16))(*(this + 2));
      v5 = *(this + 7);
      if (v4 == -1)
      {
        break;
      }

      v6 = *(this + 8);
      v3 = v6 + 7;
      v7 = v4 & 0x7F | (v5 << 7);
      *(this + 7) = v7;
      *(this + 8) = v6 + 7;
      if (v6 >= 1)
      {
        goto LABEL_8;
      }
    }

    result = (v5 << (8 - *(this + 8)));
    *(this + 2) = 0;
  }

  return result;
}

uint64_t ctu::C2KSmsUnpackedToPackedTransform::reset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::Ucs2ToAscii7Transform::nextCode(ctu::Ucs2ToAscii7Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result != -1 && result >= 0x80)
  {
    *(this + 24) = 1;
    return 32;
  }

  return result;
}

uint64_t ctu::Ascii7ToUcs2Transform::nextCode(ctu::Ascii7ToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  return (*(**(this + 2) + 16))();
}

uint64_t ctu::ISOLatin1ToUcs2Transform::nextCode(ctu::ISOLatin1ToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  return (*(**(this + 2) + 16))();
}

uint64_t ctu::Ucs2ToGsm7Transform::nextCode(ctu::Ucs2ToGsm7Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  result = *(this + 7);
  if (result == -1)
  {
    result = (*(**(this + 2) + 16))(*(this + 2));
    if (result != -1)
    {
      result = ctu::ucs2ToGsm7(result, *(this + 8));
      if (result == 255)
      {
        *(this + 24) = 1;
        return 32;
      }

      else if (result >= 0x80)
      {
        *(this + 7) = result & 0x7F;
        return 27;
      }
    }
  }

  else
  {
    *(this + 7) = -1;
  }

  return result;
}

uint64_t ctu::ucs2ToGsm7(unsigned int a1, unsigned int a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 255;
  }

  if (a1 < 0x100 || a1 <= 0x17F && a2 == 2)
  {
    if (a2 == 3)
    {
      v2 = 0;
    }

    else
    {
      v2 = a2;
    }

    v3 = *(&ctu::kUcs2ToGsm7Tables + v2) + a1;
    return *v3;
  }

  v5 = a1 - 896;
  if (a1 - 896 <= 0x4F && a2 == 3)
  {
    v6 = &ctu::kUcs2ToGsm7FullGreek;
LABEL_15:
    v3 = &v6[v5];
    return *v3;
  }

  v5 = a1 - 912;
  if (a1 - 912 <= 0x1F)
  {
    v6 = &ctu::kUcs2ToGsm7Greek;
    goto LABEL_15;
  }

  if (a1 != 8364)
  {
    return 255;
  }

  else
  {
    return 229;
  }
}

uint64_t ctu::Ucs2ToGsm7Transform::reset(uint64_t this)
{
  *(this + 28) = -1;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::Gsm7ToUcs2Transform::nextCode(ctu::Gsm7ToUcs2Transform *this)
{
  do
  {
    v2 = *(this + 2);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }

    *(this + 2) = v2 - 1;
    result = (*(**(this + 2) + 16))(*(this + 2));
    if (result == -1)
    {
      return result;
    }
  }

  while ((result & 0x80) != 0);
  v4 = *(&ctu::kGsm7ToUcs2Tables + *(this + 8));
  if (result != 27)
  {
    return *(v4 + 2 * result);
  }

  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result != -1)
  {
    v5 = ctu::kGsm7ExtendedToUcs2Tables[*(this + 7)][result];
    if (v5 == 32)
    {
      LOWORD(v5) = *(v4 + 2 * result);
    }

    return v5;
  }

  return result;
}

uint64_t ctu::OctetToGsm7Transform::nextCode(ctu::OctetToGsm7Transform *this)
{
  v2 = this;
  do
  {
    if (*(v2 + 24))
    {
      return 0xFFFFFFFFLL;
    }

    v2 = *(v2 + 2);
  }

  while (v2);
  v3 = *(this + 2);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v3 - 1;
  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result != -1 && (result & 0x80) != 0)
  {
    *(this + 24) = 1;
  }

  return result;
}

uint64_t ctu::OctetToUcs2Transform::nextCode(ctu::OctetToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = (*(**(this + 2) + 16))(*(this + 2));
  if (v3 != -1)
  {
    v4 = (*(**(this + 2) + 16))(*(this + 2));
    if (v4 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = v4 | (v3 << 8);
    if (v3 >> 10 == 54)
    {
      v5 = (*(**(this + 2) + 16))(*(this + 2));
      if (v5 != -1)
      {
        v6 = v5;
        v7 = (*(**(this + 2) + 16))(*(this + 2));
        if (v7 != -1)
        {
          return (v6 << 8) | (v3 << 16) | v7;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t ctu::Ucs2ToOctetTransform::nextCode(uint64_t this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this;
  *(this + 8) = v1 - 1;
  v3 = *(this + 32);
  if (!v3)
  {
    this = (*(**(this + 16) + 16))(*(this + 16));
    *(v2 + 40) = this;
    if (this == -1)
    {
      return this;
    }

    if (this >> 27 == 27)
    {
      *(v2 + 32) = 3;
      return BYTE3(this);
    }

    *(v2 + 32) = 1;
    return BYTE1(this);
  }

  *(this + 32) = v3 - 1;
  LODWORD(this) = *(this + 40);
  if (v3 == 2)
  {
    return BYTE1(this);
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      return this;
    }

    return BYTE3(this);
  }

  return BYTE2(this);
}

uint64_t ctu::Ucs2ToOctetTransform::reset(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::Ucs2ToAdn8Transform::nextCode(ctu::Ucs2ToAdn8Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result != -1)
  {
    if (result > 255)
    {
      v4 = result - *(this + 13);
      if (v4 >= 128)
      {
        return 32;
      }

      else
      {
        return v4 | 0x80u;
      }
    }

    else
    {
      return ctu::kUcs2ToGsm7Latin1[result];
    }
  }

  return result;
}

uint64_t ctu::Adn8ToUcs2Transform::nextCode(ctu::Adn8ToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result == -1)
  {
    return result;
  }

  if (result > 127)
  {
    return (result & 0x7F) + *(this + 13);
  }

  if (result == 27)
  {
    result = (*(**(this + 2) + 16))(*(this + 2));
    if (result == -1)
    {
      return result;
    }

    v4 = ctu::kGsm7ExtendedToUcs2;
  }

  else
  {
    v4 = &ctu::kGsm7ToUcs2;
  }

  return v4[result];
}

uint64_t ctu::EucKRToUcs2Transform::nextCode(ctu::EucKRToUcs2Transform *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v3 = (*(**(this + 2) + 16))(*(this + 2));
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = -86;
  bytes = v3;
  if (v3 >= 128)
  {
    v4 = (*(**(this + 2) + 16))(*(this + 2));
    if (v4 != -1)
    {
      v11 = v4;
      v5 = 2;
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 1;
LABEL_8:
  v7 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &bytes, v5, 0x422u, 0);
  if (!v7)
  {
    return 9633;
  }

  v8 = v7;
  CharacterAtIndex = CFStringGetCharacterAtIndex(v7, 0);
  CFRelease(v8);
  return CharacterAtIndex;
}

uint64_t ctu::OctetSourceBuffer::nextCode(ctu::OctetSourceBuffer *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v1 - 1;
  v2 = *(this + 4);
  v3 = *(this + 5);
  *(this + 5) = v3 + 1;
  return *(v2 + v3);
}

uint64_t ctu::OctetSourceBuffer::reset(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t ctu::TextConverter::decodeHexString(ctu::TextConverter *this, const char *a2)
{
  for (i = 0; a2; --a2)
  {
    v3 = 16 * i;
    v5 = *this;
    this = (this + 1);
    v4 = v5;
    v6 = v5 - 48;
    v7 = v5 - 97;
    v8 = v5 - 55;
    if ((v5 - 65) >= 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v4 - 87;
    if (v7 > 5)
    {
      v10 = v9;
    }

    if (v6 <= 9)
    {
      v10 = v6;
    }

    i = v10 + v3;
  }

  return i;
}

uint64_t ctu::TextConverter::getGsm7EncodedSize(unsigned int a1, unsigned int a2)
{
  if (ctu::ucs2ToGsm7(a1, a2) >= 0x80)
  {
    return 14;
  }

  else
  {
    return 7;
  }
}

uint64_t ctu::TextConverter::countCharactersInUtf8Message(ctu::TextConverter *this, const char *a2)
{
  v2 = a2;
  v4 = operator new(0x38uLL);
  v4[2] = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F1CB7040;
  *(v4 + 2) = v2;
  v4[4] = this;
  v4[5] = 0;
  v4[6] = v2;
  v5 = v4;
  do
  {
    (*(*v5 + 24))(v5);
    v5 = v5[2];
  }

  while (v5);
  v6 = operator new(0x20uLL);
  v7 = 0;
  v6[2] = v4;
  *(v6 + 24) = 0;
  v8 = &unk_1F1CB6E30;
  *v6 = &unk_1F1CB6E30;
  *(v6 + 2) = 0x7FFFFFFF;
  while (1)
  {
    v9 = v8[2](v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 >> 26 == 54)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v7 += v10;
    v8 = *v6;
  }

  do
  {
    v11 = v6[2];
    (*(*v6 + 8))(v6);
    v6 = v11;
  }

  while (v11);
  return v7;
}

void sub_1A9150DC0(_Unwind_Exception *a1)
{
  do
  {
    v3 = v1[2];
    (*(*v1 + 8))(v1);
    v1 = v3;
  }

  while (v3);
  _Unwind_Resume(a1);
}

uint64_t ctu::TextConverter::countSeptetsInMessage(uint64_t a1, int a2, int a3)
{
  v6 = operator new(0x38uLL);
  v6[2] = 0;
  *(v6 + 24) = 0;
  *v6 = &unk_1F1CB7040;
  *(v6 + 2) = a2;
  v6[4] = a1;
  v6[5] = 0;
  v6[6] = a2;
  v7 = v6;
  do
  {
    (*(*v7 + 24))(v7);
    v7 = v7[2];
  }

  while (v7);
  v8 = operator new(0x20uLL);
  v8[2] = v6;
  *(v8 + 24) = 0;
  *v8 = &unk_1F1CB6E30;
  *(v8 + 2) = 0x7FFFFFFF;
  v9 = operator new(0x28uLL);
  v10 = 0;
  v9[2] = v8;
  *(v9 + 24) = 0;
  v11 = &unk_1F1CB6E90;
  *v9 = &unk_1F1CB6E90;
  *(v9 + 7) = -1;
  *(v9 + 8) = a3;
  *(v9 + 2) = 0x7FFFFFFF;
  while (v11[2](v9) != -1)
  {
    ++v10;
    v11 = *v9;
  }

  do
  {
    v12 = v9[2];
    (*(*v9 + 8))(v9);
    v9 = v12;
  }

  while (v12);
  return v10;
}

void sub_1A9150FA8(_Unwind_Exception *a1)
{
  do
  {
    v3 = v1[2];
    (*(*v1 + 8))(v1);
    v1 = v3;
  }

  while (v3);
  _Unwind_Resume(a1);
}

uint64_t ctu::TextConverter::decodeSmsDataCodingScheme(unsigned int a1, int *a2, int *a3, BOOL *a4, BOOL *a5, _BYTE *a6, BOOL *a7, _BYTE *a8, unsigned int (***a9)(void, uint64_t))
{
  v31[4] = *MEMORY[0x1E69E9840];
  *a2 = 4;
  *a6 = 0;
  if (a1 > 0xFF)
  {
    goto LABEL_2;
  }

  if (a1 <= 0x7F)
  {
    v21 = 1798;
    v31[0] = &unk_1F1CB5A28;
    v31[3] = v31;
    ctu::logBitFieldWithDesc(a9, a1, &v21, v31);
    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v31);
    *a4 = a1 > 0x3F;
    *a5 = (a1 & 0x20) != 0;
    v21 = 1285;
    v30[0] = &unk_1F1CB59D0;
    v30[3] = v30;
    ctu::logBitFieldWithDesc(a9, a1, &v21, v30);
    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v30);
    ctu::decodeGeneralDataCodingIndication(a1, a2, a3, a9);
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  if (a1 > 0xBF)
  {
    v19 = a1 >> 4;
    if ((a1 & 0xE0) == 0xC0 || v19 == 14)
    {
      v21 = 1796;
      v26[0] = &unk_1F1CB5870;
      v26[3] = v26;
      ctu::logBitFieldWithDesc(a9, a1, &v21, v26);
      std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v26);
      v21 = 771;
      v25[0] = &unk_1F1CB5818;
      v25[3] = v25;
      ctu::logBitFieldWithDesc(a9, a1, &v21, v25);
      std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v25);
      v21 = 514;
      v24[0] = &unk_1F1CB57C0;
      v24[3] = v24;
      ctu::logBitFieldWithDesc(a9, a1, &v21, v24);
      std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v24);
      v21 = 256;
      v23[0] = &unk_1F1CB5768;
      v23[3] = v23;
      ctu::logBitFieldWithDesc(a9, a1, &v21, v23);
      std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v23);
      if (v19 == 12)
      {
        *a8 = 1;
      }

      if ((a1 & 3) == 0)
      {
        *a6 = 1;
        *a7 = (a1 & 8) != 0;
      }

      v15 = 2 * (v19 == 14);
      goto LABEL_17;
    }

    if (v19 == 15)
    {
      v21 = 1796;
      v22[0] = &unk_1F1CB5710;
      v22[3] = v22;
      ctu::logBitFieldWithDesc(a9, a1, &v21, v22);
      std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v22);
      ctu::decodeDataCodingMessageHandling(a1, a2, a3, a9);
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 1796;
    v29[0] = &unk_1F1CB5978;
    v29[3] = v29;
    ctu::logBitFieldWithDesc(a9, a1, &v21, v29);
    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v29);
    v21 = 770;
    v28[0] = &unk_1F1CB5920;
    v28[3] = v28;
    ctu::logBitFieldWithDesc(a9, a1, &v21, v28);
    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v28);
    v21 = 256;
    v27[0] = &unk_1F1CB58C8;
    v27[3] = v27;
    ctu::logBitFieldWithDesc(a9, a1, &v21, v27);
    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v27);
    if ((a1 & 0xC) == 4)
    {
      v15 = 3;
LABEL_17:
      *a3 = v15;
      goto LABEL_18;
    }
  }

LABEL_2:
  result = 0;
LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A9151440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::decodeGeneralDataCodingIndication(unsigned int a1, int *a2, int *a3, unsigned int (***a4)(void, uint64_t))
{
  v15[4] = *MEMORY[0x1E69E9840];
  v11 = 1028;
  v15[0] = &unk_1F1CB9C88;
  v15[3] = v15;
  ctu::logBitFieldWithDesc(a4, a1, &v11, v15);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v15);
  if ((a1 & 0x10) != 0)
  {
    *a2 = a1 & 3;
    v11 = 256;
    v14[0] = &unk_1F1CB9D08;
    v14[3] = v14;
    ctu::logBitFieldWithDesc(a4, a1, &v11, v14);
    v8 = v14;
  }

  else
  {
    *a2 = 4;
    v11 = 256;
    v13[0] = &unk_1F1CB9D88;
    v13[3] = v13;
    ctu::logBitFieldWithDesc(a4, a1, &v11, v13);
    v8 = v13;
  }

  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v8);
  *a3 = (a1 >> 2) & 3;
  v11 = 770;
  v12[0] = &unk_1F1CB9E08;
  v12[3] = v12;
  ctu::logBitFieldWithDesc(a4, a1, &v11, v12);
  result = std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A915166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::decodeDataCodingMessageHandling(unsigned int a1, int *a2, int *a3, unsigned int (***a4)(void, uint64_t))
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = 771;
  v13[0] = &unk_1F1CB9E88;
  v13[3] = v13;
  ctu::logBitFieldWithDesc(a4, a1, &v10, v13);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v13);
  v10 = 514;
  v12[0] = &unk_1F1CB9F08;
  v12[3] = v12;
  ctu::logBitFieldWithDesc(a4, a1, &v10, v12);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v12);
  *a3 = (a1 >> 2) & 1;
  v10 = 256;
  v11[0] = &unk_1F1CB9F88;
  v11[3] = v11;
  ctu::logBitFieldWithDesc(a4, a1, &v10, v11);
  result = std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v11);
  *a2 = a1 & 3;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A91517F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::TextConverter::decodeSmsDataCodingScheme(unsigned int a1, unsigned int *a2, _DWORD *a3, BOOL *a4, BOOL *a5, _BYTE *a6, BOOL *a7, _BYTE *a8, std::string *a9)
{
  v79 = *MEMORY[0x1E69E9840];
  *a2 = 4;
  *a6 = 0;
  if (a1 > 0xFF)
  {
    goto LABEL_2;
  }

  if (a1 <= 0x7F)
  {
    LOWORD(v71) = 1798;
    v66[0] = &unk_1F1CBA388;
    v66[3] = v66;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v66, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v15 = &v75;
    }

    else
    {
      v15 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v16 = v77;
    }

    else
    {
      v16 = v76;
    }

    std::string::append(a9, v15, v16);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v66);
    *a4 = a1 > 0x3F;
    *a5 = (a1 & 0x20) != 0;
    LOWORD(v71) = 1285;
    v65[0] = &unk_1F1CBA408;
    v65[3] = v65;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v65, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v17 = &v75;
    }

    else
    {
      v17 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v18 = v77;
    }

    else
    {
      v18 = v76;
    }

    std::string::append(a9, v17, v18);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v65);
    LOWORD(v67) = 1028;
    v75 = &unk_1F1CBA008;
    v78 = &v75;
    ctu::getBitFieldPrintWithDesc(a1, &v67, &v75, &v71);
    if ((v73 & 0x80u) == 0)
    {
      v19 = &v71;
    }

    else
    {
      v19 = v71;
    }

    if ((v73 & 0x80u) == 0)
    {
      v20 = v73;
    }

    else
    {
      v20 = v72;
    }

    std::string::append(a9, v19, v20);
    if (v73 < 0)
    {
      operator delete(v71);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v75);
    if ((a1 & 0x10) != 0)
    {
      *a2 = a1 & 3;
      LOWORD(__p) = 256;
      v71 = &unk_1F1CBA088;
      v74 = &v71;
      ctu::getBitFieldPrintWithDesc(a1, &__p, &v71, &v67);
      if ((v69 & 0x80u) == 0)
      {
        v21 = &v67;
      }

      else
      {
        v21 = v67;
      }

      if ((v69 & 0x80u) == 0)
      {
        v22 = v69;
      }

      else
      {
        v22 = v68;
      }
    }

    else
    {
      *a2 = 4;
      LOWORD(__p) = 256;
      v71 = &unk_1F1CBA108;
      v74 = &v71;
      ctu::getBitFieldPrintWithDesc(a1, &__p, &v71, &v67);
      if ((v69 & 0x80u) == 0)
      {
        v21 = &v67;
      }

      else
      {
        v21 = v67;
      }

      if ((v69 & 0x80u) == 0)
      {
        v22 = v69;
      }

      else
      {
        v22 = v68;
      }
    }

    std::string::append(a9, v21, v22);
    if (v69 < 0)
    {
      operator delete(v67);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v71);
    *a3 = (a1 >> 2) & 3;
    v53 = 770;
    v67 = &unk_1F1CBA188;
    v70 = &v67;
    ctu::getBitFieldPrintWithDesc(a1, &v53, &v67, &__p);
    if ((v56 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v43 = v56;
    }

    else
    {
      v43 = v55;
    }

    std::string::append(a9, p_p, v43);
    if (v56 < 0)
    {
      operator delete(__p);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v67);
    goto LABEL_153;
  }

  if (a1 <= 0xBF)
  {
    LOWORD(v71) = 1796;
    v64[0] = &unk_1F1CBA488;
    v64[3] = v64;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v64, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v23 = &v75;
    }

    else
    {
      v23 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v24 = v77;
    }

    else
    {
      v24 = v76;
    }

    std::string::append(a9, v23, v24);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v64);
    LOWORD(v71) = 770;
    v63[0] = &unk_1F1CBA508;
    v63[3] = v63;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v63, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v25 = &v75;
    }

    else
    {
      v25 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v26 = v77;
    }

    else
    {
      v26 = v76;
    }

    std::string::append(a9, v25, v26);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v63);
    LOWORD(v71) = 256;
    v62[0] = &unk_1F1CBA588;
    v62[3] = v62;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v62, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v27 = &v75;
    }

    else
    {
      v27 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v28 = v77;
    }

    else
    {
      v28 = v76;
    }

    std::string::append(a9, v27, v28);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v62);
    if ((a1 & 0xC) != 4)
    {
      goto LABEL_2;
    }

    v29 = 3;
    goto LABEL_152;
  }

  v33 = a1 >> 4;
  if ((a1 & 0xE0) == 0xC0 || v33 == 14)
  {
    LOWORD(v71) = 1796;
    v61[0] = &unk_1F1CBA608;
    v61[3] = v61;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v61, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v44 = &v75;
    }

    else
    {
      v44 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v45 = v77;
    }

    else
    {
      v45 = v76;
    }

    std::string::append(a9, v44, v45);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v61);
    LOWORD(v71) = 771;
    v60[0] = &unk_1F1CBA688;
    v60[3] = v60;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v60, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v46 = &v75;
    }

    else
    {
      v46 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v47 = v77;
    }

    else
    {
      v47 = v76;
    }

    std::string::append(a9, v46, v47);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v60);
    LOWORD(v71) = 514;
    v59[0] = &unk_1F1CBA708;
    v59[3] = v59;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v59, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v48 = &v75;
    }

    else
    {
      v48 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v49 = v77;
    }

    else
    {
      v49 = v76;
    }

    std::string::append(a9, v48, v49);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v59);
    LOWORD(v71) = 256;
    v58[0] = &unk_1F1CBA788;
    v58[3] = v58;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v58, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v50 = &v75;
    }

    else
    {
      v50 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v51 = v77;
    }

    else
    {
      v51 = v76;
    }

    std::string::append(a9, v50, v51);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v58);
    if (v33 == 12)
    {
      *a8 = 1;
    }

    if ((a1 & 3) == 0)
    {
      *a6 = 1;
      *a7 = (a1 & 8) != 0;
    }

    v29 = 2 * (v33 == 14);
LABEL_152:
    *a3 = v29;
LABEL_153:
    result = 1;
    goto LABEL_154;
  }

  if (v33 == 15)
  {
    LOWORD(v71) = 1796;
    v57[0] = &unk_1F1CBA808;
    v57[3] = v57;
    ctu::getBitFieldPrintWithDesc(a1, &v71, v57, &v75);
    if ((v77 & 0x80u) == 0)
    {
      v34 = &v75;
    }

    else
    {
      v34 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v35 = v77;
    }

    else
    {
      v35 = v76;
    }

    std::string::append(a9, v34, v35);
    if (v77 < 0)
    {
      operator delete(v75);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v57);
    LOWORD(v67) = 771;
    v75 = &unk_1F1CBA208;
    v78 = &v75;
    ctu::getBitFieldPrintWithDesc(a1, &v67, &v75, &v71);
    if ((v73 & 0x80u) == 0)
    {
      v36 = &v71;
    }

    else
    {
      v36 = v71;
    }

    if ((v73 & 0x80u) == 0)
    {
      v37 = v73;
    }

    else
    {
      v37 = v72;
    }

    std::string::append(a9, v36, v37);
    if (v73 < 0)
    {
      operator delete(v71);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v75);
    LOWORD(__p) = 514;
    v71 = &unk_1F1CBA288;
    v74 = &v71;
    ctu::getBitFieldPrintWithDesc(a1, &__p, &v71, &v67);
    if ((v69 & 0x80u) == 0)
    {
      v38 = &v67;
    }

    else
    {
      v38 = v67;
    }

    if ((v69 & 0x80u) == 0)
    {
      v39 = v69;
    }

    else
    {
      v39 = v68;
    }

    std::string::append(a9, v38, v39);
    if (v69 < 0)
    {
      operator delete(v67);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v71);
    *a3 = (a1 >> 2) & 1;
    v53 = 256;
    v67 = &unk_1F1CBA308;
    v70 = &v67;
    ctu::getBitFieldPrintWithDesc(a1, &v53, &v67, &__p);
    if ((v56 & 0x80u) == 0)
    {
      v40 = &__p;
    }

    else
    {
      v40 = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v41 = v56;
    }

    else
    {
      v41 = v55;
    }

    std::string::append(a9, v40, v41);
    if (v56 < 0)
    {
      operator delete(__p);
    }

    std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](&v67);
    *a2 = a1 & 3;
    goto LABEL_153;
  }

LABEL_2:
  result = 0;
LABEL_154:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A91521AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v44 - 192);
  _Unwind_Resume(a1);
}

uint64_t ctu::TextConverter::decodeCbsDataCodingScheme(unsigned int a1, int *a2, int *a3, _BYTE *a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v8;
  v13 = v8;
  v11[0] = v8;
  v11[1] = v8;
  ctu::StaticLogger::StaticLogger(v11);
  BYTE8(v12) = -1;
  *a4 = 0;
  *a2 = 4;
  if (a1 > 0xFF)
  {
    goto LABEL_2;
  }

  if ((a1 & 0xF0) == 0)
  {
    goto LABEL_12;
  }

  if (a1 == 17)
  {
    *a3 = 2;
    goto LABEL_8;
  }

  if (a1 == 16)
  {
    *a3 = 0;
LABEL_8:
    v9 = 1;
    *a4 = 1;
    goto LABEL_14;
  }

  if (a1 - 33 <= 2)
  {
    *a3 = 2;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  if ((a1 & 0xE0 | 0x10) == 0x30)
  {
LABEL_12:
    *a3 = 0;
    goto LABEL_13;
  }

  if ((a1 & 0xC0) == 0x40)
  {
    ctu::decodeGeneralDataCodingIndication(a1, a2, a3, v11);
    goto LABEL_13;
  }

  if ((a1 & 0xF0) == 0xF0)
  {
    ctu::decodeDataCodingMessageHandling(a1, a2, a3, v11);
    goto LABEL_13;
  }

LABEL_2:
  v9 = 0;
LABEL_14:
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v11);
  return v9;
}

uint64_t ctu::TextConverter::decodeCbsDataCodingScheme(unsigned __int8 a1, unsigned __int8 *a2)
{
  if (a1 < 0x10u || (v2 = 0, a1 - 32 <= 0x29) && ((1 << (a1 - 32)) & 0x2000000001FLL) != 0)
  {
    *a2 = a1;
    return 1;
  }

  return v2;
}

void *ctu::asString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a2, "DCS:INVALID LANGUAGE");
  switch(a1)
  {
    case 0:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 28257;
      v4 = "DCS:German";
      goto LABEL_82;
    case 1:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1752394092;
      v7 = "DCS:English";
      goto LABEL_79;
    case 2:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1851877740;
      v7 = "DCS:Italian";
      goto LABEL_79;
    case 3:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 26723;
      v4 = "DCS:French";
      goto LABEL_82;
    case 4:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1752394094;
      v7 = "DCS:Spanish";
      goto LABEL_79;
    case 5:
      if (*(result + 23) < 0)
      {
        result[1] = 9;
        result = *result;
      }

      else
      {
        *(result + 23) = 9;
      }

      *(result + 8) = 104;
      v5 = "DCS:Dutch";
      goto LABEL_85;
    case 6:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1752394084;
      v7 = "DCS:Swedish";
      goto LABEL_79;
    case 7:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 26739;
      v4 = "DCS:Danish";
      goto LABEL_82;
    case 8:
      if (*(result + 23) < 0)
      {
        result[1] = 14;
        result = *result;
      }

      else
      {
        *(result + 23) = 14;
      }

      v6 = "DCS:Portuguese";
      goto LABEL_88;
    case 9:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1752394094;
      v7 = "DCS:Finnish";
      goto LABEL_79;
    case 10:
      if (*(result + 23) < 0)
      {
        result[1] = 14;
        result = *result;
      }

      else
      {
        *(result + 23) = 14;
      }

      v6 = "DCS:Norweigian";
LABEL_88:
      *result = *v6;
      *(result + 6) = *(v6 + 6);
      result = (result + 14);
      goto LABEL_96;
    case 11:
      if (*(result + 23) < 0)
      {
        result[1] = 9;
        result = *result;
      }

      else
      {
        *(result + 23) = 9;
      }

      *(result + 8) = 107;
      v5 = "DCS:Greek";
      goto LABEL_85;
    case 12:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1752394091;
      v7 = "DCS:Turkish";
      goto LABEL_79;
    case 13:
      if (*(result + 23) < 0)
      {
        result[1] = 13;
        result = *result;
      }

      else
      {
        *(result + 23) = 13;
      }

      v8 = "DCS:Hungarian";
      goto LABEL_93;
    case 14:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 26739;
      v4 = "DCS:Polish";
      goto LABEL_82;
    case 15:
      if (*(result + 23) < 0)
      {
        result[1] = 15;
        result = *result;
      }

      else
      {
        *(result + 23) = 15;
      }

      qmemcpy(result, "DCS:Unspecified", 15);
      result = (result + 15);
      goto LABEL_96;
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
      return result;
    case 32:
      if (*(result + 23) < 0)
      {
        result[1] = 9;
        result = *result;
      }

      else
      {
        *(result + 23) = 9;
      }

      *(result + 8) = 104;
      v5 = "DCS:Czech";
LABEL_85:
      *result = *v5;
      result = (result + 9);
      goto LABEL_96;
    case 33:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 30565;
      v4 = "DCS:Hebrew";
      goto LABEL_82;
    case 34:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 25449;
      v4 = "DCS:Arabic";
LABEL_82:
      *result = *v4;
      result = (result + 10);
      goto LABEL_96;
    case 35:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1851877747;
      v7 = "DCS:Russian";
LABEL_79:
      *result = *v7;
      result = (result + 11);
      goto LABEL_96;
    case 36:
      if (*(result + 23) < 0)
      {
        result[1] = 13;
        result = *result;
      }

      else
      {
        *(result + 23) = 13;
      }

      v8 = "DCS:Icelandic";
LABEL_93:
      *result = *v8;
      *(result + 5) = *(v8 + 5);
      result = (result + 13);
      goto LABEL_96;
    default:
      if (a1 != 73)
      {
        return result;
      }

      if (*(result + 23) < 0)
      {
        result[1] = 8;
        result = *result;
      }

      else
      {
        *(result + 23) = 8;
      }

      *result++ = 0x696168543A534344;
LABEL_96:
      *result = 0;
      return result;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9C88;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Reserved, no message class meaning";
  v6[1] = "Have a message class meaning";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9D08;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Class 0";
  v6[1] = "Class 1";
  v6[2] = "Class 2";
  v6[3] = "Class 3";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9D88;
  return result;
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9E08;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Gsm7 encoding";
  v6[1] = "8bit data encoding";
  v6[2] = "UCS2 encoding";
  v6[3] = "Reserved, used for KTF, KSC5601 encoding";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9E88;
  return result;
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9F08;
  return result;
}

void std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Gsm7 encoding";
  v6[1] = "8bit data encoding";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB9F88;
  return result;
}

void std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Class 0";
  v6[1] = "Class 1";
  v6[2] = "Class 2";
  v6[3] = "Class 3";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA008;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Reserved, no message class meaning";
  v6[1] = "Have a message class meaning";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA088;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Class 0";
  v6[1] = "Class 1";
  v6[2] = "Class 2";
  v6[3] = "Class 3";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA108;
  return result;
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA188;
  return result;
}

void std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Gsm7 encoding";
  v6[1] = "8bit data encoding";
  v6[2] = "UCS2 encoding";
  v6[3] = "Reserved, used for KTF, KSC5601 encoding";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3,std::allocator<ctu::decodeGeneralDataCodingIndication(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_3>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA208;
  return result;
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA288;
  return result;
}

void std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Gsm7 encoding";
  v6[1] = "8bit data encoding";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA308;
  return result;
}

void std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Class 0";
  v6[1] = "Class 1";
  v6[2] = "Class 2";
  v6[3] = "Class 3";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2,std::allocator<ctu::decodeDataCodingMessageHandling(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,std::string &)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5A28;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "General data coding indication";
  v6[1] = "Message marked for automatic deletion";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB59D0;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Uncompressed";
  v6[1] = "Compressed";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5978;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_2,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5920;
  return result;
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::operator()@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = "kKSC5601 encoding";
  }

  else
  {
    v2 = "Reserved";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_3>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_4,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_4>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB58C8;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_4,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_4>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5870;
  return result;
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5>,std::string ()(int)>::operator()@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  v2 = "Message Waiting Indication group: Store message (UCS2)";
  if (*a1 == 13)
  {
    v2 = "Message waiting indication group: Store message (GSM-7)";
  }

  if (*a1 == 12)
  {
    v3 = "Message waiting indication group: Discard message";
  }

  else
  {
    v3 = v2;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_5>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5818;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Set indication inactive";
  v6[1] = "Set indication active";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_6>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_7,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_7>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB57C0;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_7,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_7>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5768;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Voicemail message waiting";
  v6[1] = "Fax message waiting";
  v6[2] = "Electronic mail message waiting";
  v6[3] = "Other message waiting";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_8>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_9,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_9>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5710;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_9,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,ctu::StaticLogger const&)::$_9>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA388;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "General data coding indication";
  v6[1] = "Message marked for automatic deletion";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA408;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Uncompressed";
  v6[1] = "Compressed";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_1>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_2,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_2>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA488;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_2,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_2>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA508;
  return result;
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3>,std::string ()(int)>::operator()@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = "kKSC5601 encoding";
  }

  else
  {
    v2 = "Reserved";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_3>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_4,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_4>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA588;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_4,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_4>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA608;
  return result;
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5>,std::string ()(int)>::operator()@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  v2 = "Message Waiting Indication group: Store message (UCS2)";
  if (*a1 == 13)
  {
    v2 = "Message waiting indication group: Store message (GSM-7)";
  }

  if (*a1 == 12)
  {
    v3 = "Message waiting indication group: Discard message";
  }

  else
  {
    v3 = v2;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_5>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA688;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Set indication inactive";
  v6[1] = "Set indication active";
  if (v2 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_6>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_7,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_7>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA708;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_7,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_7>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA788;
  return result;
}

void std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8>,std::string ()(int)>::operator()(unsigned int *a1@<X1>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6[0] = "Voicemail message waiting";
  v6[1] = "Fax message waiting";
  v6[2] = "Electronic mail message waiting";
  v6[3] = "Other message waiting";
  if (v2 > 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v6[v2];
    v4 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_8>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_9,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_9>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CBA808;
  return result;
}

uint64_t std::__function::__func<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_9,std::allocator<ctu::TextConverter::decodeSmsDataCodingScheme(int,ctu::TextConverter::MessageClass &,ctu::TextConverter::MessageEncoding &,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,std::string &)::$_9>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ctu::hex_sp(ctu **a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  ctu::hex_sp(v4, v3, a2);
}

void ctu::hex(ctu *this@<X0>, unint64_t a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xF) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = v2 > 0xF;
    v2 >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xFu) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v5 = v2;
    v2 >>= 4;
  }

  while (v5 > 0xF);
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = (v8 + v9 - 1);
  if (v9)
  {
    v11 = v10 > v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = *v10;
      *v10-- = v13;
    }

    while (v12++ < v10);
  }
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((v2 & 0xF) >= 0xA)
    {
      v4 = (v2 & 0xF) + 87;
    }

    else
    {
      v4 = v2 & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = v2 > 0xF;
    v2 >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

void sub_1A9155218(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91552E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91553A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex(unint64_t this@<X0>, unint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if ((this & 0xF) >= 0xA)
    {
      v4 = (this & 0xF) + 87;
    }

    else
    {
      v4 = this & 0xF | 0x30;
    }

    std::string::push_back(a2, v4);
    v10 = this > 0xF;
    this >>= 4;
  }

  while (v10);
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = (v7 + v8 - 1);
  if (v8)
  {
    v10 = v9 > v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }
}

void sub_1A9155470(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155538(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91556C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155790(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155858(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155920(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91559E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex0(ctu *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xF) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    v8 = (v2 >> 4) + 87;
    if (v2 < 0xA0)
    {
      LOBYTE(v8) = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 4uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      v7 = v2;
      if ((v2 & 0xFu) >= 0xA)
      {
        v8 = (v2 & 0xF) + 87;
      }

      else
      {
        v8 = v2 & 0xF | 0x30;
      }

      *v6 = v8;
      if (v2 >= 0xA0u)
      {
        v9 = (v2 >> 4) + 87;
      }

      else
      {
        v9 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v9;
      LOWORD(v2) = BYTE1(v2);
      v6 -= 2;
    }

    while (v7 >= 0x100);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 8uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((v2 & 0xF) >= 0xA)
      {
        v7 = (v2 & 0xF) + 87;
      }

      else
      {
        v7 = v2 & 0xF | 0x30;
      }

      *v6 = v7;
      if (v2 >= 0xA0u)
      {
        v8 = (v2 >> 4) + 87;
      }

      else
      {
        v8 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = v2 >= 0x100;
      v2 >>= 8;
    }

    while (v9);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xFu) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    if (v2 >= 0xA0u)
    {
      v8 = (v2 >> 4) + 87;
    }

    else
    {
      v8 = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xFu) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    if (v2 >= 0xA0u)
    {
      v8 = (v2 >> 4) + 87;
    }

    else
    {
      v8 = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 4uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      v7 = v2;
      if ((v2 & 0xFu) >= 0xA)
      {
        v8 = (v2 & 0xF) + 87;
      }

      else
      {
        v8 = v2 & 0xF | 0x30;
      }

      *v6 = v8;
      if (v2 >= 0xA0u)
      {
        v9 = (v2 >> 4) + 87;
      }

      else
      {
        v9 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v9;
      LOWORD(v2) = BYTE1(v2);
      v6 -= 2;
    }

    while (v7 >= 0x100);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 8uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((v2 & 0xF) >= 0xA)
      {
        v7 = (v2 & 0xF) + 87;
      }

      else
      {
        v7 = v2 & 0xF | 0x30;
      }

      *v6 = v7;
      if (v2 >= 0xA0u)
      {
        v8 = (v2 >> 4) + 87;
      }

      else
      {
        v8 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = v2 >= 0x100;
      v2 >>= 8;
    }

    while (v9);
  }
}

void sub_1A9155A94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155B60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155C2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex0(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

void sub_1A9155CF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155DC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155E74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155F24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9155FF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91560BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9156188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9156254(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ctu::parse_hex@<D0>(char *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  return ctu::parse_hex(a1, v5, a2, a3);
}

double ctu::parse_hex@<D0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 == 2)
  {
    v5 = a2;
    v6 = 0;
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v5 = a2;
    v6 = 1;
    goto LABEL_7;
  }

  v5 = a2;
  v6 = 0;
  v7 = 1;
LABEL_8:
  ctu::parse_hex_impl(&v9, a1, v5, v6, v7);
  result = *&v9;
  *a4 = v9;
  a4[2] = v10;
  return result;
}

void ctu::parse_hex_impl(ctu *this, const char *a2, uint64_t a3, int a4, int a5)
{
  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v10 = &a2[a3];
  v11 = MEMORY[0x1E69E9830];
  while (1)
  {
    if (!a4 || v5 == v10)
    {
      if (v5 == v10)
      {
        return;
      }
    }

    else
    {
      while (1)
      {
        v12 = *v5;
        if (!((v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(v11 + 4 * v12 + 60) & 0x4000))
        {
          break;
        }

        if (++v5 == v10)
        {
          return;
        }
      }
    }

    v14 = *v5;
    v15 = v14 - 48;
    v16 = v14 - 97;
    if ((v14 - 65) >= 6)
    {
      v17 = -1;
    }

    else
    {
      v17 = v14 - 55;
    }

    v18 = v14 - 87;
    if (v16 > 5)
    {
      v18 = v17;
    }

    if (v15 < 0xA)
    {
      v18 = v15;
    }

    if (v5 + 1 == v10)
    {
      break;
    }

    v19 = v5 + 2;
    v20 = *(v5 + 1);
    v21 = v20 - 48;
    v22 = v20 - 97;
    if ((v20 - 65) >= 6)
    {
      v23 = -1;
    }

    else
    {
      v23 = v20 - 55;
    }

    v24 = v20 - 87;
    if (v22 > 5)
    {
      v24 = v23;
    }

    if (v21 < 0xA)
    {
      v24 = v21;
    }

    if (a5)
    {
      if (v19 != v10)
      {
        if (v5[2] != 32)
        {
          break;
        }

        v19 = v5 + 3;
        if (v5 + 3 == v10)
        {
          break;
        }
      }
    }

    if (v18 == -1 || v24 == -1)
    {
      break;
    }

    v25 = v24 | (16 * v18);
    if (v9 >= v8)
    {
      v26 = v9 - v7;
      v27 = v9 - v7 + 1;
      if (v27 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v8 - v7) > v27)
      {
        v27 = 2 * (v8 - v7);
      }

      if ((v8 - v7) >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        v29 = operator new(v28);
      }

      else
      {
        v29 = 0;
      }

      v8 = &v29[v28];
      v29[v26] = v25;
      v9 = &v29[v26 + 1];
      memcpy(v29, v7, v26);
      *this = v29;
      *(this + 1) = v9;
      *(this + 2) = v8;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v29;
    }

    else
    {
      *v9++ = v25;
    }

    *(this + 1) = v9;
    v5 = v19;
  }

  *(this + 1) = *this;
}

void sub_1A9156538(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::Gestalt::getSysctlAsString@<X0>(const char *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __n = 0;
  result = sysctlbyname(a1, 0, &__n, 0, 0);
  if (!result && __n)
  {
    std::string::resize(a2, __n, 0);
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    return sysctlbyname(a1, v6, &__n, 0, 0);
  }

  return result;
}

void sub_1A91565F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::Gestalt::isIPhone(ctu::Gestalt *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu7Gestalt8isIPhoneEv_block_invoke;
  block[3] = &__block_descriptor_tmp_10;
  block[4] = this;
  if (qword_1EB382958 != -1)
  {
    dispatch_once(&qword_1EB382958, block);
  }

  return _MergedGlobals_9;
}

void ___ZNK3ctu7Gestalt8isIPhoneEv_block_invoke(uint64_t a1)
{
  v1 = v11;
  (*(**(a1 + 32) + 48))(v11);
  v2 = v12;
  v4 = v11[0];
  v3 = v11[1];
  if (v12 < 0)
  {
    v1 = v11[0];
  }

  if (v12 >= 0)
  {
    v3 = v12;
  }

  v5 = v1 + v3;
  if (v3 >= 6)
  {
    v6 = v1;
    do
    {
      v7 = memchr(v6, 105, v3 - 5);
      if (!v7)
      {
        break;
      }

      if (*v7 == 1869107305 && *(v7 + 2) == 25966)
      {
        goto LABEL_14;
      }

      v6 = v7 + 1;
      v3 = v5 - v6;
    }

    while (v5 - v6 > 5);
  }

  v7 = v5;
LABEL_14:
  v10 = v7 != v5 && v7 - v1 != -1;
  _MergedGlobals_9 = v10;
  if (v2 < 0)
  {
    operator delete(v4);
  }
}

uint64_t ctu::Gestalt::isIPad(ctu::Gestalt *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu7Gestalt6isIPadEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = this;
  if (qword_1EB382960 != -1)
  {
    dispatch_once(&qword_1EB382960, block);
  }

  return byte_1EB382951;
}

void ___ZNK3ctu7Gestalt6isIPadEv_block_invoke(uint64_t a1)
{
  v1 = v10;
  (*(**(a1 + 32) + 48))(v10);
  v2 = v11;
  v4 = v10[0];
  v3 = v10[1];
  if (v11 < 0)
  {
    v1 = v10[0];
  }

  if (v11 >= 0)
  {
    v3 = v11;
  }

  v5 = v1 + v3;
  if (v3 >= 4)
  {
    v6 = v1;
    do
    {
      v7 = memchr(v6, 105, v3 - 3);
      if (!v7)
      {
        break;
      }

      if (*v7 == 1684099177)
      {
        goto LABEL_11;
      }

      v6 = v7 + 1;
      v3 = v5 - v6;
    }

    while (v5 - v6 > 3);
  }

  v7 = v5;
LABEL_11:
  v9 = v7 != v5 && v7 - v1 != -1;
  byte_1EB382951 = v9;
  if (v2 < 0)
  {
    operator delete(v4);
  }
}

uint64_t ctu::Gestalt::isWatch(ctu::Gestalt *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu7Gestalt7isWatchEv_block_invoke;
  block[3] = &__block_descriptor_tmp_5_0;
  block[4] = this;
  if (qword_1EB382968 != -1)
  {
    dispatch_once(&qword_1EB382968, block);
  }

  return byte_1EB382952;
}

void ___ZNK3ctu7Gestalt7isWatchEv_block_invoke(uint64_t a1)
{
  v1 = v11;
  (*(**(a1 + 32) + 48))(v11);
  v2 = v12;
  v4 = v11[0];
  v3 = v11[1];
  if (v12 < 0)
  {
    v1 = v11[0];
  }

  if (v12 >= 0)
  {
    v3 = v12;
  }

  v5 = v1 + v3;
  if (v3 >= 5)
  {
    v6 = v1;
    do
    {
      v7 = memchr(v6, 87, v3 - 4);
      if (!v7)
      {
        break;
      }

      if (*v7 == 1668571479 && v7[4] == 104)
      {
        goto LABEL_14;
      }

      v6 = v7 + 1;
      v3 = v5 - v6;
    }

    while (v5 - v6 > 4);
  }

  v7 = v5;
LABEL_14:
  v10 = v7 != v5 && v7 - v1 != -1;
  byte_1EB382952 = v10;
  if (v2 < 0)
  {
    operator delete(v4);
  }
}

uint64_t ctu::Gestalt::isMac(ctu::Gestalt *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu7Gestalt5isMacEv_block_invoke;
  block[3] = &__block_descriptor_tmp_7;
  block[4] = this;
  if (qword_1EB382970 != -1)
  {
    dispatch_once(&qword_1EB382970, block);
  }

  return byte_1EB382953;
}

void ___ZNK3ctu7Gestalt5isMacEv_block_invoke(uint64_t a1)
{
  v1 = v11;
  (*(**(a1 + 32) + 48))(v11);
  v2 = v12;
  v4 = v11[0];
  v3 = v11[1];
  if (v12 < 0)
  {
    v1 = v11[0];
  }

  if (v12 >= 0)
  {
    v3 = v12;
  }

  v5 = v1 + v3;
  if (v3 >= 3)
  {
    v6 = v1;
    do
    {
      v7 = memchr(v6, 77, v3 - 2);
      if (!v7)
      {
        break;
      }

      if (*v7 == 24909 && v7[2] == 99)
      {
        goto LABEL_14;
      }

      v6 = v7 + 1;
      v3 = v5 - v6;
    }

    while (v5 - v6 > 2);
  }

  v7 = v5;
LABEL_14:
  v10 = v7 != v5 && v7 - v1 != -1;
  byte_1EB382953 = v10;
  if (v2 < 0)
  {
    operator delete(v4);
  }
}

std::string *ctu::appendLabelIfBitSet(std::string *result, void *a2, char *__s, uint64_t a4, char *a5)
{
  if ((*a2 & a4) != 0)
  {
    v8 = result;
    *a2 &= ~a4;
    size = HIBYTE(result->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = result->__r_.__value_.__l.__size_;
    }

    if (__s && size)
    {
      v10 = strlen(__s);
      std::string::append(v8, __s, v10);
    }

    v11 = strlen(a5);

    return std::string::append(v8, a5, v11);
  }

  return result;
}

{
  if ((*a2 & a4) != 0)
  {
    v8 = result;
    *a2 &= ~a4;
    size = HIBYTE(result->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = result->__r_.__value_.__l.__size_;
    }

    if (__s && size)
    {
      v10 = strlen(__s);
      std::string::append(v8, __s, v10);
    }

    v11 = strlen(a5);

    return std::string::append(v8, a5, v11);
  }

  return result;
}

void ctu::appendLeftoverBits(std::string *a1, ctu *this, char *a3)
{
  v12 = this;
  if (this)
  {
    ctu::hex(this, &v9);
    v6 = std::string::insert(&v9, 0, "0x", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v11 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    ctu::appendLabelIfBitSet(a1, &v12, a3, this, v8);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A9156E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void xpc::get_subpath(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  memset(v23, 170, sizeof(v23));
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  ctu::split_any(v6, v7, ".", 1, v23);
  v8 = *a1;
  *a3 = *a1;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v8 = xpc_null_create();
    *a3 = v8;
  }

  v9 = v23[0];
  v10 = v23[1];
  if (v23[0] == v23[1])
  {
    goto LABEL_43;
  }

  v11 = MEMORY[0x1E69E9E80];
  v12 = MEMORY[0x1E69E9E50];
  while (1)
  {
    v13 = MEMORY[0x1AC581B70](v8);
    if (v13 == v11)
    {
      object = v8;
      if (v8 && MEMORY[0x1AC581B70](v8) == v11)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      ctu::llvm::StringRef::operator std::string(v9, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v20[0] = &object;
      v20[1] = p_p;
      xpc::dict::object_proxy::operator xpc::object(v20, &v21);
      v17 = v21;
      *a3 = v21;
      v21 = v8;
      xpc_release(v8);
      v21 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      xpc_release(object);
      goto LABEL_37;
    }

    if (v13 != v12)
    {
      break;
    }

    if (v8 && MEMORY[0x1AC581B70](v8) == v12)
    {
      xpc_retain(v8);
      v14 = v8;
    }

    else
    {
      v14 = xpc_null_create();
    }

    ctu::llvm::StringRef::operator std::string(v9, &__p);
    v15 = std::stoul(&__p, 0, 10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (MEMORY[0x1AC581B70](v14) == v12 && v15 < xpc_array_get_count(v14))
    {
      value = xpc_array_get_value(v14, v15);
      v17 = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v17 = xpc_null_create();
      }

      *a3 = v17;
      xpc_release(v8);
    }

    else
    {
      v17 = xpc_null_create();
      *a3 = v17;
      xpc_release(v8);
    }

    xpc_release(v14);
LABEL_37:
    v9 += 2;
    v8 = v17;
    if (v9 == v10)
    {
      goto LABEL_42;
    }
  }

  *a3 = xpc_null_create();
  xpc_release(v8);
LABEL_42:
  v9 = v23[0];
LABEL_43:
  if (v9)
  {
    v23[1] = v9;
    operator delete(v9);
  }
}

void sub_1A9157114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20)
{
  xpc_release(v21);
  xpc_release(*v20);
  *v20 = 0;
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::StagedLogger::~StagedLogger(ctu::StagedLogger *this)
{
  if (*(this + 11))
  {
    goto LABEL_6;
  }

  if ((*(this + 87) & 0x8000000000000000) != 0)
  {
    if (!*(this + 9))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 87))
  {
LABEL_6:
    ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(this, *(this + 120), (this + 64));
  }

LABEL_7:
  ctu::LogMessageBuffer::~LogMessageBuffer((this + 64));

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);
}

void ctu::StagedLogger::forceLog(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 120);
  if (a2 > v5)
  {
    LOBYTE(v5) = a2;
  }

  *(a1 + 120) = v5;
  if (*(a1 + 88))
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 87);
  if (v6 < 0)
  {
    v6 = *(a1 + 72);
  }

  if (v6)
  {
LABEL_10:
    if (*(a3 + 24))
    {
      goto LABEL_11;
    }

    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
LABEL_11:
      ctu::LogMessageBuffer::appendChar((a1 + 64), 10);
    }
  }

  ctu::LogMessageBuffer::merge((a1 + 64), a3);
}

void ctu::AssertionRestResourceState::createNotifyWithState(uint64_t a1@<X0>, unsigned int a2@<W1>, xpc_object_t *a3@<X8>)
{
  v3[0] = *(a1 + 16);
  v3[1] = a2;
  ctu::rest::write_rest_value(v3, a3);
}

void ctu::AssertionRestResourceState::createNotifyForProvider(ctu::AssertionRestResourceState *this@<X0>, xpc_object_t *a2@<X8>)
{
  v7[0] = *(this + 4);
  v2 = *(this + 4);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = *(this + 3) + 8;
    while (!*v4 || *(*v4 + 8) == -1)
    {
      v4 += 16;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    LODWORD(v5) = 1;
  }

  else
  {
LABEL_6:
    v5 = *(this + 7);
    if (v5)
    {
      v5 *= 16;
      v6 = *(this + 6) + 8;
      while (!*v6 || *(*v6 + 8) == -1)
      {
        v6 += 16;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      LODWORD(v5) = 2;
    }
  }

LABEL_14:
  v7[1] = v5;
  ctu::rest::write_rest_value(v7, a2);
}

void ctu::AssertionRestResourceState::dumpState(ctu::AssertionRestResourceState *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v22 = xpc_int64_create(*(this + 4));
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v20 = a2;
  v21 = "generation";
  xpc::dict::object_proxy::operator=(&v20, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v7 = *(this + 1);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *this;
      if (*this)
      {
        v10 = (v9 + 8);
        if (*(v9 + 31) < 0)
        {
          v10 = *v10;
        }

        v18 = xpc_string_create(v10);
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        v20 = a2;
        v21 = "provider";
        xpc::dict::object_proxy::operator=(&v20, &v18, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v18);
        v18 = 0;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = a2;
  v21 = "provider";
  xpc::dict::object_proxy::operator=(&v20, &v17);
  xpc_release(v17);
  v17 = 0;
  if (v8)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ctu::AssertionRestResourceState::dumpState(void)const::$_0::operator()(&v15, this + 3);
  v20 = a2;
  v21 = "waiting";
  xpc::dict::object_proxy::operator=(&v20, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  ctu::AssertionRestResourceState::dumpState(void)const::$_0::operator()(&v13, this + 6);
  v20 = a2;
  v21 = "granted";
  xpc::dict::object_proxy::operator=(&v20, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  ctu::AssertionRestResourceState::dumpState(void)const::$_0::operator()(&v11, this + 9);
  v20 = a2;
  v21 = "revoked";
  xpc::dict::object_proxy::operator=(&v20, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
}

uint64_t ctu::AssertionRestResourceState::dumpState(void)const::$_0::operator()(void *a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) != MEMORY[0x1E69E9E50])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a1 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v9[0] = &unk_1F1CB5450;
  v9[1] = a1;
  v9[3] = v9;
  ctu::rest::WatchableRestResourceHelper::map(a2, v9);
  result = std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A9157760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ctu::AssertionRestResource::AssertionRestResource(uint64_t this)
{
  *this = &unk_1F1CB6B48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F1CB6B48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t ctu::AssertionRestResource::AssertionRestResource(uint64_t result)
{
  *result = &unk_1F1CB6B48;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

{
  *result = &unk_1F1CB6B48;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

void ctu::AssertionRestResource::~AssertionRestResource(ctu::AssertionRestResource *this)
{
  *this = &unk_1F1CB6B48;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6B48;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6B48;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::~vector(this + 1);

  operator delete(this);
}

uint64_t ctu::AssertionRestResource::handleRestMessage_GET(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v11, 170, sizeof(v11));
  v5 = *(a3 + 1);
  *object = *a3;
  v10 = v5;
  if (SLODWORD(v11[0]) <= 3)
  {
    switch(LODWORD(v11[0]))
    {
      case 1:
        ctu::AssertionRestResource::handleMessage_Root_GET(this, a2);
        return 1;
      case 2:
        ctu::AssertionRestResource::handleMessage_DumpState_GET(this, a2);
        return 1;
      case 3:
        ctu::AssertionRestResource::handleMessage_Resource_GET(v6, a2);
        return 1;
    }

LABEL_13:
    object[0] = xpc_null_create();
    (*(*a2 + 32))(a2, object);
    xpc_release(object[0]);
    return 1;
  }

  if (SLODWORD(v11[0]) > 5)
  {
    if (LODWORD(v11[0]) == 6)
    {
      ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(this, a2, v11[1], v11[2]);
      return 1;
    }

    if (LODWORD(v11[0]) == 7)
    {
      ctu::AssertionRestResource::handleMessage_Resource_Provider_GET(this, a2, v7, v11[1], v11[2]);
      return 1;
    }

    goto LABEL_13;
  }

  if (LODWORD(v11[0]) == 4)
  {
    ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(this, a2, v11[1], v11[2]);
  }

  else
  {
    ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(this, a2, v11[1], v11[2]);
  }

  return 1;
}

uint64_t ctu::AssertionRestResource::handleMessage_Root_GET(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::AssertionRestResource::getResourceArray(this, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A9157B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::AssertionRestResource::handleMessage_DumpState_GET(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 32 * v7;
    do
    {
      ctu::AssertionRestResourceState::dumpState(v8[3], &v13);
      v10 = v8;
      if (*(v8 + 23) < 0)
      {
        v10 = *v8;
      }

      v12[0] = &v15;
      v12[1] = v10;
      xpc::dict::object_proxy::operator=(v12, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      v13 = 0;
      v8 += 4;
      v9 -= 32;
    }

    while (v9);
  }

  v12[0] = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v12[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, v12);
  xpc_release(v12[0]);
  xpc_release(v15);
  return 1;
}

void sub_1A9157CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_GET(uint64_t a1, uint64_t a2)
{
  v3 = xpc::array_creator::array_creator(&v11);
  xpc::array_creator::operator()<char const*>("grant", v3, &v6);
  xpc_release(v11);
  xpc::array_creator::operator()<char const*>("revoke", &v6, &v7);
  xpc::array_creator::operator()<char const*>("granted", &v7, &v8);
  xpc::array_creator::operator()<char const*>("revoked", &v8, &object);
  xpc::array_creator::operator()<char const*>("waiting", &object, &v10);
  v4 = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  v10 = 0;
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  v7 = 0;
  xpc_release(v6);
  v11 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v11 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v11);
  xpc_release(v11);
  xpc_release(v4);
  return 1;
}

void sub_1A9157E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t object)
{
  xpc_release(*(v13 - 24));
  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14[0] = a3;
  v14[1] = a4;
  v6 = xpc_array_create(0, 0);
  v7 = v6;
  if (v6)
  {
    object = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  object = v8;
LABEL_9:
  xpc_release(v7);
  ctu::llvm::StringRef::operator std::string(v14, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v17, (a1 + 8), __p);
  v9 = v17;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v10 = *(v9 + 24);
    v18[0] = &unk_1F1CBA888;
    v18[1] = &object;
    v18[3] = v18;
    ctu::rest::WatchableRestResourceHelper::map((v10 + 48), v18);
    std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v18);
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(object);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A91580AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14[0] = a3;
  v14[1] = a4;
  v6 = xpc_array_create(0, 0);
  v7 = v6;
  if (v6)
  {
    object = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  object = v8;
LABEL_9:
  xpc_release(v7);
  ctu::llvm::StringRef::operator std::string(v14, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v17, (a1 + 8), __p);
  v9 = v17;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v10 = *(v9 + 24);
    v18[0] = &unk_1F1CBA908;
    v18[1] = &object;
    v18[3] = v18;
    ctu::rest::WatchableRestResourceHelper::map((v10 + 72), v18);
    std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v18);
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(object);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A91582C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14[0] = a3;
  v14[1] = a4;
  v6 = xpc_array_create(0, 0);
  v7 = v6;
  if (v6)
  {
    object = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  object = v8;
LABEL_9:
  xpc_release(v7);
  ctu::llvm::StringRef::operator std::string(v14, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v17, (a1 + 8), __p);
  v9 = v17;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v10 = *(v9 + 24);
    v18[0] = &unk_1F1CBA988;
    v18[1] = &object;
    v18[3] = v18;
    ctu::rest::WatchableRestResourceHelper::map((v10 + 24), v18);
    std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v18);
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(object);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A91584D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Provider_GET(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v18[0] = a4;
  v18[1] = a5;
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  ctu::llvm::StringRef::operator std::string(v18, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v21, (a1 + 8), __p);
  v9 = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v10 = *(v9 + 24);
    v11 = v10[1];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *v10;
        if (*v10)
        {
          v15 = (v14 + 8);
          if (*(v14 + 31) < 0)
          {
            v15 = *v15;
          }

          v16 = xpc_string_create(v15);
          if (!v16)
          {
            v16 = xpc_null_create();
          }

          xpc_array_append_value(v8, v16);
          xpc_release(v16);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  __p[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(v8);
  return 1;
}

void sub_1A91586E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

uint64_t ctu::AssertionRestResource::handleRestMessage_SET(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v9, 170, sizeof(v9));
  v6 = *(a3 + 1);
  v8[0] = *a3;
  v8[1] = v6;
  if (LODWORD(v9[0]) == 5)
  {
    ctu::AssertionRestResource::handleMessage_Resource_Revoked_SET(this, a2, a3, v9[1], v9[2]);
    return 1;
  }

  if (LODWORD(v9[0]) == 4)
  {
    ctu::AssertionRestResource::handleMessage_Resource_Granted_SET(this, a2, a3, v9[1], v9[2]);
    return 1;
  }

  return 0;
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Granted_SET(uint64_t a1, ctu::RestResourceContext *a2, _OWORD *a3, const void *a4, const void *a5)
{
  v32[0] = a4;
  v32[1] = a5;
  ctu::llvm::StringRef::operator std::string(v32, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v23, (a1 + 8), __p);
  v8 = v23;
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 != (*(a1 + 8) + 32 * *(a1 + 16)))
  {
    (*(*a2 + 24))(__p, a2);
    v9 = xpc::dyn_cast_or_default(__p, 0);
    xpc_release(__p[0]);
    if (*(v8[3] + 4) == v9)
    {
      v10 = a3[1];
      *__p = *a3;
      v31 = v10;
      ctu::PathView::advance(__p, 1);
      object = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(v23) = *(v8[3] + 4);
      HIDWORD(v23) = 2;
      ctu::rest::write_rest_value(&v23, &object);
      v11 = v8[3];
      ctu::rest::WatchableRestResourceHelper::removeWatchers((v11 + 3), &v27);
      v12 = v27;
      for (i = v28; v12 != i; v12 += 16)
      {
        v14 = *(v12 + 8);
        v25 = *v12;
        v26 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 0xAAAAAAAAAAAAAAAALL;
        v24 = 0xAAAAAAAAAAAAAAAALL;
        boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(v11 + 6, &v25, &v23);
        v15 = v24;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v15)
        {
          if (*(&v31 + 1))
          {
            v16 = __p[0];
            if (v31 - __p[0] > 1)
            {
              if ((v31 - __p[0] - 1) >= __p[1])
              {
                v17 = __p[1];
              }

              else
              {
                v17 = (v31 - __p[0] - 1);
              }
            }

            else if ((v31 - __p[0]) >= __p[1])
            {
              v17 = __p[1];
            }

            else
            {
              v17 = (v31 - __p[0]);
            }
          }

          else
          {
            v16 = __p[0];
            v17 = __p[1];
          }

          v18 = ctu::PathView::PathView(&v23, v16, v17);
          ctu::AssertionRestResource::notifyWatcherWithState(v18, a2, &v23, *v12, &object);
        }
      }

      v23 = &v27;
      std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](&v23);
      if (*(&v31 + 1))
      {
        v19 = __p[0];
        if (v31 - __p[0] > 1)
        {
          if ((v31 - __p[0] - 1) >= __p[1])
          {
            v20 = __p[1];
          }

          else
          {
            v20 = (v31 - __p[0] - 1);
          }
        }

        else if ((v31 - __p[0]) >= __p[1])
        {
          v20 = __p[1];
        }

        else
        {
          v20 = (v31 - __p[0]);
        }
      }

      else
      {
        v19 = __p[0];
        v20 = __p[1];
      }

      v21 = ctu::PathView::PathView(&v23, v19, v20);
      ctu::AssertionRestResource::notifyProvider(v21, a2, &v23, v8[3]);
      xpc_release(object);
    }
  }

  return 1;
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Revoked_SET(uint64_t a1, ctu::RestResourceContext *a2, _OWORD *a3, const void *a4, const void *a5)
{
  v17[0] = a4;
  v17[1] = a5;
  ctu::llvm::StringRef::operator std::string(v17, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(v14, (a1 + 8), __p);
  v8 = v14[0];
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    (*(*a2 + 24))(__p, a2);
    v9 = xpc::dyn_cast_or_default(__p, 0);
    xpc_release(__p[0]);
    if (*(*(v8 + 24) + 16) == v9)
    {
      v10 = a3[1];
      *__p = *a3;
      v16 = v10;
      ctu::PathView::advance(__p, 1);
      if (*(&v16 + 1))
      {
        v11 = __p[0];
        if (v16 - __p[0] > 1)
        {
          if ((v16 - __p[0] - 1) >= __p[1])
          {
            v12 = __p[1];
          }

          else
          {
            v12 = (v16 - __p[0] - 1);
          }
        }

        else if ((v16 - __p[0]) >= __p[1])
        {
          v12 = __p[1];
        }

        else
        {
          v12 = (v16 - __p[0]);
        }
      }

      else
      {
        v11 = __p[0];
        v12 = __p[1];
      }

      ctu::PathView::PathView(v14, v11, v12);
      ctu::AssertionRestResource::startNewGeneration(a1, a2, v14, *(v8 + 24));
    }
  }

  return 1;
}

void ctu::AssertionRestResource::notifyWatcherWithState(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3, const ctu::RestResourceConnection *a4, const xpc::object *a5)
{
  v14 = xpc_null_create();
  v10 = *a3;
  ctu::llvm::StringRef::operator std::string(&v10, __p);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  object = xpc_string_create(v9);
  if (!object)
  {
    object = xpc_null_create();
  }

  (*(*a2 + 48))(a2, a4, &v14, &object, a5);
  xpc_release(object);
  object = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v14);
}

void sub_1A9158CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v18 - 40));
  _Unwind_Resume(a1);
}

void ctu::AssertionRestResource::notifyProvider(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3, const ctu::AssertionRestResourceState *a4)
{
  v4 = *(a4 + 1);
  if (v4)
  {
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = *a4;
      if (*a4)
      {
        *v14 = *a3;
        memset(&__p, 170, sizeof(__p));
        ctu::llvm::StringRef::operator std::string(v14, &__p);
        ctu::path_join_impl(&__p, "provider", 8);
        v14[0] = 0xAAAAAAAAAAAAAAAALL;
        ctu::AssertionRestResourceState::createNotifyForProvider(a4, v14);
        v13 = xpc_null_create();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        object = xpc_string_create(p_p);
        if (!object)
        {
          object = xpc_null_create();
        }

        (*(*a2 + 48))(a2, v10, &v13, &object, v14);
        xpc_release(object);
        xpc_release(v13);
        xpc_release(v14[0]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1A9158E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void ctu::AssertionRestResource::startNewGeneration(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3, ctu::AssertionRestResourceState *a4)
{
  v11[0] = a4;
  v11[1] = this;
  v11[2] = a2;
  v11[3] = a3;
  ctu::AssertionRestResource::startNewGeneration(ctu::RestResourceContext &,ctu::PathView const&,ctu::AssertionRestResourceState &)const::$_0::operator()(v11, (a4 + 48));
  if ((*(this + 32) & 1) == 0)
  {
    ctu::AssertionRestResource::startNewGeneration(ctu::RestResourceContext &,ctu::PathView const&,ctu::AssertionRestResourceState &)const::$_0::operator()(v11, (a4 + 24));
  }

  v9 = *(a4 + 4);
  if ((v9 + 1) > 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 1;
  }

  *(a4 + 4) = v10;

  ctu::AssertionRestResource::notifyProvider(v8, a2, a3, a4);
}

uint64_t ctu::AssertionRestResource::handleRestMessage_POP(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v10, 170, sizeof(v10));
  v6 = *(a3 + 1);
  v9[0] = *a3;
  v9[1] = v6;
  if (LODWORD(v10[0]) == 7)
  {
    ctu::AssertionRestResource::handleMessage_Resource_Provider_POP(this, a2, v7, v10[1], v10[2]);
    return 1;
  }

  if (LODWORD(v10[0]) == 3)
  {
    ctu::AssertionRestResource::handleMessage_Resource_POP(this, a2, a3, v10[1], v10[2]);
    return 1;
  }

  return 0;
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_POP(uint64_t a1, ctu::RestResourceContext *a2, const ctu::PathView *a3, const void *a4, const void *a5)
{
  v20[0] = a4;
  v20[1] = a5;
  ctu::llvm::StringRef::operator std::string(v20, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v24, (a1 + 8), &__p);
  v8 = v24;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v8 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    (**a2)(&__p, a2);
    if (!__p)
    {
LABEL_22:
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      return 1;
    }

    v9 = ctu::rest::WatchableRestResourceHelper::removeWatcher((*(v8 + 24) + 48), &__p);
    v10 = *(v8 + 24);
    if (v9)
    {
      v11 = v10[7];
      if (v11)
      {
        v12 = 16 * v11;
        v13 = v10[6] + 8;
        while (!*v13 || *(*v13 + 8) == -1)
        {
          v13 += 16;
          v12 -= 16;
          if (!v12)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      v14 = ctu::rest::WatchableRestResourceHelper::removeWatcher(v10 + 3, &__p);
      v10 = *(v8 + 24);
      if (!v14)
      {
LABEL_19:
        v18 = 0;
LABEL_20:
        ctu::rest::WatchableRestResourceHelper::removeWatcher(v10 + 9, &__p);
        if (v18)
        {
          ctu::AssertionRestResource::startNewGeneration(a1, a2, a3, *(v8 + 24));
        }

        goto LABEL_22;
      }

      v15 = v10[4];
      if (v15)
      {
        v16 = 16 * v15;
        v17 = v10[3] + 8;
        while (!*v17 || *(*v17 + 8) == -1)
        {
          v17 += 16;
          v16 -= 16;
          if (!v16)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v18 = 1;
    goto LABEL_20;
  }

  return 1;
}

void sub_1A91591B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Provider_POP(uint64_t a1, void (***a2)(void **__return_ptr, void), uint64_t a3, const void *a4, const void *a5)
{
  v14[0] = a4;
  v14[1] = a5;
  ctu::llvm::StringRef::operator std::string(v14, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v18, (a1 + 8), &__p);
  v7 = v18;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v7 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v8 = *(v7 + 24);
    (**a2)(&__p, a2);
    v9 = *(v8 + 8);
    v10 = v16;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v10 == v9)
    {
      v11 = *(v7 + 24);
      v12 = v11[1];
      *v11 = 0;
      v11[1] = 0;
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }

  return 1;
}

uint64_t ctu::AssertionRestResource::handleRestMessage_PUSH(ctu::AssertionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v9, 170, sizeof(v9));
  v6 = *(a3 + 1);
  v8[0] = *a3;
  v8[1] = v6;
  if (LODWORD(v9[0]) == 7)
  {
    ctu::AssertionRestResource::handleMessage_Resource_Provider_PUSH(this, a2, a3, v9[1], v9[2]);
    return 1;
  }

  if (LODWORD(v9[0]) == 3)
  {
    ctu::AssertionRestResource::handleMessage_Resource_PUSH(this, a2, a3, v9[1], v9[2]);
    return 1;
  }

  return 0;
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_PUSH(uint64_t a1, ctu::RestResourceContext *a2, const ctu::PathView *a3, const void *a4, const void *a5)
{
  v32[0] = a4;
  v32[1] = a5;
  (**a2)(&v30, a2);
  if (v30)
  {
    ctu::llvm::StringRef::operator std::string(v32, &v33);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v29, (a1 + 8), &v33);
    if (v35 < 0)
    {
      operator delete(v33);
    }

    ctu::llvm::StringRef::operator std::string(v32, &v33);
    ctu::AssertionRestResource::createIfNotPresent(a1, &v33, &v29);
    if (v35 < 0)
    {
      operator delete(v33);
    }

    v8 = v29;
    v9 = *(v29 + 3);
    v10 = v9[7];
    if (v10)
    {
      v11 = 16 * v10;
      v12 = v9[6] + 8;
      while (!*v12 || *(*v12 + 8) == -1)
      {
        v12 += 16;
        v11 -= 16;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if ((*(a1 + 32) & 1) == 0)
      {
        v27 = v30;
        v28 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = 0xAAAAAAAAAAAAAAAALL;
        v34 = 0xAAAAAAAAAAAAAAAALL;
        boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(v9 + 6, &v27, &v33);
        v22 = v34;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (v22)
        {
          object = 0xAAAAAAAAAAAAAAAALL;
          LODWORD(v33) = *(*(v8 + 3) + 16);
          HIDWORD(v33) = 2;
          ctu::rest::write_rest_value(&v33, &object);
          ctu::AssertionRestResource::notifyWatcherWithState(v23, a2, a3, v30, &object);
          xpc_release(object);
        }

LABEL_27:
        ctu::rest::WatchableRestResourceHelper::removeWatcher((*(v8 + 3) + 72), &v30);
        goto LABEL_28;
      }

      v13 = 1;
    }

    else
    {
LABEL_11:
      v13 = 0;
    }

    v16 = v9[3];
    v15 = v9[4];
    v14 = v9 + 3;
    if (v15)
    {
      v17 = 16 * v15;
      v18 = v16 + 8;
      while (!*v18 || *(*v18 + 8) == -1)
      {
        v18 += 16;
        v17 -= 16;
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      v19 = 1;
    }

    else
    {
LABEL_17:
      v19 = 0;
    }

    v24 = v30;
    v25 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = 0xAAAAAAAAAAAAAAAALL;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(v14, &v24, &v33);
    v20 = v25;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (((v13 | v19) & 1) == 0)
    {
      ctu::AssertionRestResource::notifyProvider(v20, a2, a3, *(v8 + 3));
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  return 1;
}

void sub_1A91595A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  xpc_release(object);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::AssertionRestResource::handleMessage_Resource_Provider_PUSH(uint64_t a1, ctu::RestResourceContext *a2, __int128 *a3, const void *a4, const void *a5)
{
  v27[0] = a4;
  v27[1] = a5;
  ctu::llvm::StringRef::operator std::string(v27, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v26, (a1 + 8), __p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::llvm::StringRef::operator std::string(v27, __p);
  ctu::AssertionRestResource::createIfNotPresent(a1, __p, &v26);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  (**a2)(&v24, a2);
  v8 = v24;
  if (v24)
  {
    v9 = v26;
    v10 = *(v26 + 3);
    v11 = v10[1];
    if (v11)
    {
      v12 = v11->__shared_owners_ == -1;
    }

    else
    {
      v12 = 1;
    }

    v13 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = v10[1];
    }

    *v10 = v8;
    v10[1] = v13;
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v12)
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v14;
      v23 = v14;
      v15 = a3[1];
      v20 = *a3;
      v21 = v15;
      ctu::PathView::advance(&v20, 1);
      if (*(&v21 + 1))
      {
        v16 = v20;
        if (v21 - v20 > 1uLL)
        {
          if ((v21 - v20 - 1) >= *(&v20 + 1))
          {
            v17 = *(&v20 + 1);
          }

          else
          {
            v17 = v21 - v20 - 1;
          }
        }

        else if (v21 - v20 >= *(&v20 + 1))
        {
          v17 = *(&v20 + 1);
        }

        else
        {
          v17 = v21 - v20;
        }
      }

      else
      {
        v17 = *(&v20 + 1);
        v16 = v20;
      }

      v18 = ctu::PathView::PathView(__p, v16, v17);
      ctu::AssertionRestResource::notifyProvider(v18, a2, __p, *(v9 + 3));
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  return 1;
}

void sub_1A91597B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ctu::AssertionRestResource::getResourceArray(ctu::AssertionRestResource *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 32 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(p_p);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v12);
      xpc_release(v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }
}

BOOL ctu::AssertionRestResource::createIfNotPresent(void *a1, uint64_t a2, __int128 **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  v6 = &v3[2 * v5];
  v7 = *a3;
  if (*a3 == v6)
  {
    v11 = operator new(0x60uLL);
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = 0;
    *(v11 + 4) = 1;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 11) = 0;
    v23[0] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v25 = v12;
    *&v25[16] = v12;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v25, *a2, *(a2 + 8));
      v3 = a1[1];
      v5 = a1[2];
    }

    else
    {
      *v25 = *a2;
      *&v25[16] = *(a2 + 16);
    }

    v23[0] = 0;
    *&v25[24] = v11;
    v23[1] = v25;
    v23[2] = v4;
    v13 = &v3[2 * v5];
    while (v5)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v3[2 * (v5 >> 1)], v25) & 0x80u) == 0)
      {
        v5 >>= 1;
      }

      else
      {
        v3 += 2 * (v5 >> 1) + 2;
        v5 += ~(v5 >> 1);
      }
    }

    if (v3 == v13 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, v3) & 0x80) != 0)
    {
      v14 = a1[2];
      if (a1[3] == v14)
      {
        boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>>(&v24, v4, v3, v25);
        v3 = v24;
      }

      else
      {
        v15 = *v4 + 32 * v14;
        if (v15 == v3)
        {
          v20 = *v25;
          *(v15 + 16) = *&v25[16];
          *v15 = v20;
          memset(v25, 0, sizeof(v25));
          *(v15 + 24) = *&v25[24];
          ++a1[2];
        }

        else
        {
          v16 = v15 - 32;
          *v15 = *(v15 - 32);
          *(v15 - 32) = 0;
          *(v15 - 24) = 0;
          v17 = *(v15 - 16);
          v18 = *(v15 - 8);
          *(v15 - 16) = 0;
          *(v15 - 8) = 0;
          *(v15 + 16) = v17;
          *(v15 + 24) = v18;
          ++a1[2];
          if ((v15 - 32) != v3)
          {
            do
            {
              v19 = (v16 - 32);
              boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>::operator=(v16, (v16 - 32));
              v16 = v19;
            }

            while (v19 != v3);
          }

          boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>::operator=(v3, v25);
        }
      }
    }

    std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](&v25[24], 0);
    if ((v25[23] & 0x80000000) != 0)
    {
      operator delete(*v25);
    }

    *a3 = v3;
    std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](v23, 0);
  }

  result = v7 == v6;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A9159BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>::~value_destructor(va1);
  std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void ctu::AssertionRestResource::startNewGeneration(ctu::RestResourceContext &,ctu::PathView const&,ctu::AssertionRestResourceState &)const::$_0::operator()(ctu::RestResourceContext **a1, ctu::rest::WatchableRestResourceHelper *this)
{
  memset(v11, 170, sizeof(v11));
  ctu::rest::WatchableRestResourceHelper::removeWatchers(this, v11);
  if (v11[0] != v11[1])
  {
    object = 0xAAAAAAAAAAAAAAAALL;
    v13 = *(*a1 + 4);
    ctu::rest::write_rest_value(&v13, &object);
    v3 = v11[0];
    for (i = v11[1]; v3 != i; v3 += 16)
    {
      v5 = *a1;
      v6 = *(v3 + 8);
      v9 = *v3;
      v10 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = 0xAAAAAAAAAAAAAAAALL;
      v14 = 0xAAAAAAAAAAAAAAAALL;
      boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(v5 + 9, &v9, &v13);
      v7 = v14;
      v8 = v10;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v7)
      {
        ctu::AssertionRestResource::notifyWatcherWithState(v8, a1[2], a1[3], *v3, &object);
      }
    }

    xpc_release(object);
  }

  v13 = v11;
  std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1A9159D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *object)
{
  object = &a11;
  std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](&object);
  _Unwind_Resume(a1);
}

void ctu::AssertionRestResource::handleDroppedConnection(ctu::AssertionRestResource *a1, ctu::RestResourceContext *a2, _OWORD *a3, void *a4)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v9 = *(a1 + 1);
    v10 = v9 + 32 * v4;
    do
    {
      v11 = ctu::rest::WatchableRestResourceHelper::removeWatcher((*(v9 + 24) + 24), a4);
      v12 = *(v9 + 24);
      if (v11)
      {
        v13 = v12[4];
        if (!v13)
        {
LABEL_9:
          v16 = 1;
          goto LABEL_11;
        }

        v14 = 16 * v13;
        v15 = v12[3] + 8;
        while (!*v15 || *(*v15 + 8) == -1)
        {
          v15 += 16;
          v14 -= 16;
          if (!v14)
          {
            goto LABEL_9;
          }
        }
      }

      v16 = 0;
LABEL_11:
      v17 = ctu::rest::WatchableRestResourceHelper::removeWatcher(v12 + 6, a4);
      v18 = *(v9 + 24);
      if (v17)
      {
        v19 = v18[7];
        if (v19)
        {
          v20 = 16 * v19;
          v21 = v18[6] + 8;
          while (!*v21 || *(*v21 + 8) == -1)
          {
            v21 += 16;
            v20 -= 16;
            if (!v20)
            {
              goto LABEL_17;
            }
          }

          ctu::rest::WatchableRestResourceHelper::removeWatcher(v18 + 9, a4);
          goto LABEL_34;
        }

LABEL_17:
        ctu::rest::WatchableRestResourceHelper::removeWatcher(v18 + 9, a4);
LABEL_19:
        v27[0] = *a3;
        memset(&__p, 170, sizeof(__p));
        ctu::llvm::StringRef::operator std::string(v27, &__p);
        v22 = *(v9 + 23);
        if (v22 >= 0)
        {
          v23 = v9;
        }

        else
        {
          v23 = *v9;
        }

        if (v22 >= 0)
        {
          v24 = *(v9 + 23);
        }

        else
        {
          v24 = *(v9 + 8);
        }

        ctu::path_join_impl(&__p, v23, v24);
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
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        ctu::PathView::PathView(v27, p_p, size);
        ctu::AssertionRestResource::startNewGeneration(a1, a2, v27, *(v9 + 24));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_34;
      }

      ctu::rest::WatchableRestResourceHelper::removeWatcher(v18 + 9, a4);
      if (v16)
      {
        goto LABEL_19;
      }

LABEL_34:
      v9 += 32;
    }

    while (v9 != v10);
  }
}

void sub_1A9159F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1},std::allocator<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1}>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F1CB5450;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1},std::allocator<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1}>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1CB5450;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1},std::allocator<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1}>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_array_append_value(*v2, v7);
  xpc_release(v7);
}

uint64_t std::__function::__func<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1},std::allocator<ctu::AssertionRestResourceState::dumpState(void)::$_0::operator() const(ctu::rest::WatchableRestResourceHelper const&)::{lambda(ctu::RestResourceConnection const&)#1}>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 24);
    do
    {
      std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](v3, 0);
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F1CBA888;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1CBA888;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_array_append_value(*v2, v7);
  xpc_release(v7);
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Granted_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F1CBA908;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1CBA908;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_array_append_value(*v2, v7);
  xpc_release(v7);
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Revoked_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F1CBA988;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1CBA988;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_array_append_value(*v2, v7);
  xpc_release(v7);
}

uint64_t std::__function::__func<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0,std::allocator<ctu::AssertionRestResource::handleMessage_Resource_Waiting_GET(ctu::RestResourceContext &,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(v2 + 9);
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(v2 + 6);
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(v2 + 3);
    v3 = v2[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v2);
  }
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = 0x3FFFFFFFFFFFFFFLL;
  v6 = *(a2 + 1) + 1;
  if (0x3FFFFFFFFFFFFFFLL - v4 < v6 - v4)
  {
    goto LABEL_27;
  }

  v7 = v4 >> 61;
  v8 = 8 * v4;
  if (v7 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 / 5;
  if (v7)
  {
    v10 = v9;
  }

  if (v10 < 0x3FFFFFFFFFFFFFFLL)
  {
    v5 = v10;
  }

  v11 = v6 <= v5 ? v5 : *(a2 + 1) + 1;
  if (v6 >> 58)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(32 * v11);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 32 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      v23 = *v22;
      *(v21 + 2) = *(v22 + 2);
      *v21 = v23;
      *v22 = 0;
      *(v22 + 1) = 0;
      v24 = *(v22 + 3);
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v21 + 3) = v24;
      v22 += 32;
      v21 += 32;
    }

    while (v22 != a3);
  }

  v25 = *a4;
  *(v21 + 2) = *(a4 + 2);
  *v21 = v25;
  *a4 = 0;
  *(a4 + 1) = 0;
  v26 = *(a4 + 3);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(v21 + 3) = v26;
  if (v20 != a3)
  {
    v27 = v21 + 56;
    v28 = a3;
    do
    {
      v29 = *v28;
      *(v27 - 1) = *(v28 + 2);
      *(v27 - 3) = v29;
      *v28 = 0;
      *(v28 + 1) = 0;
      v30 = *(v28 + 3);
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *v27 = v30;
      v27 += 4;
      v28 += 2;
    }

    while (v28 != v20);
  }

  if (v19)
  {
    v31 = *(a2 + 1);
    if (v31)
    {
      v32 = (v19 + 24);
      do
      {
        std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100](v32, 0);
        if (*(v32 - 1) < 0)
        {
          operator delete(*(v32 - 3));
        }

        v32 += 4;
        --v31;
      }

      while (v31);
    }

    operator delete(*a2);
  }

  v33 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v33;
  *(a2 + 2) = v11;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>::operator=(uint64_t a1, __int128 *a2)
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
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100]((a1 + 24), v5);
  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::AssertionRestResourceState>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  std::unique_ptr<ctu::AssertionRestResourceState>::reset[abi:ne200100]((*a1 + 24), 0);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

void ctu::LoggerBase<ctu::DummyLogServer>::~LoggerBase(void **a1)
{
  ctu::LoggerCommonBase::~LoggerCommonBase(a1);

  operator delete(v1);
}

void ctu::XpcLogger::create(NSObject **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, std::__shared_weak_count_vtbl **a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x80uLL);
  v11 = *a1;
  v21 = *a1;
  *a1 = 0;
  *__p = *a3;
  v20 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  ctu::XpcLogger::XpcLogger(v10, &v21, a2, __p);
  *a5 = v10;
  v12 = operator new(0x20uLL);
  v12->__vftable = &unk_1F1CB4A90;
  v12->__shared_owners_ = 0;
  v12->__shared_weak_owners_ = 0;
  v12[1].__vftable = v10;
  a5[1] = v12;
  get_deleter = v10[1].__get_deleter;
  if (get_deleter)
  {
    if (get_deleter->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10[1].__on_zero_shared = &v10[1].~__shared_weak_count_0;
    v10[1].__get_deleter = v12;
    std::__shared_weak_count::__release_weak(get_deleter);
  }

  else
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10[1].__on_zero_shared = &v10[1].~__shared_weak_count_0;
    v10[1].__get_deleter = v12;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_6:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (MEMORY[0x1AC581B70](*a4) == MEMORY[0x1E69E9E90])
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1174405120;
    v16[2] = ___ZN3ctu9XpcLogger6createEN8dispatch5queueEPKcNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEN3xpc8endpointE_block_invoke;
    v16[3] = &__block_descriptor_tmp_29;
    v16[4] = v10;
    v17 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = *a4;
    object = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      object = xpc_null_create();
    }

    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v24, &v10[1].__on_zero_shared);
    on_zero_shared_weak = v10[1].__on_zero_shared_weak;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
    block[3] = &__block_descriptor_tmp_17_0;
    block[5] = v24;
    v23 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v16;
    dispatch_async(on_zero_shared_weak, block);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    xpc_release(object);
    object = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    std::__shared_weak_count::__release_weak(v12);
  }
}

void ___ZN3ctu9XpcLogger6createEN8dispatch5queueEPKcNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEN3xpc8endpointE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = xpc_null_create();
        v9 = v6;
        if (MEMORY[0x1AC581B70](*(a1 + 48)) == MEMORY[0x1E69E9E90])
        {
          v7 = xpc_connection_create_from_endpoint(*(a1 + 48));
          if (!v7)
          {
            v7 = xpc_null_create();
          }

          v8 = xpc_null_create();
          v9 = v7;
          xpc_release(v6);
          xpc_release(v8);
        }

        else
        {
          v7 = v6;
        }

        ctu::XpcLogger::init_sync(v5, &v9);
        xpc_release(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1A915AC10(_Unwind_Exception *a1)
{
  xpc_release(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ctu::XpcLogger::init_sync(uint64_t a1, xpc_object_t *a2)
{
  v16 = *a2;
  v3 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v3 = xpc_null_create();
    v16 = v3;
  }

  ctu::XpcClient::setServer_sync((a1 + 48), &v16);
  xpc_release(v3);
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_12;
  }

  v6 = xpc_null_create();
LABEL_11:
  v15 = v6;
LABEL_12:
  xpc_release(v5);
  v7 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    v7 = *v7;
  }

  v13 = xpc_string_create(v7);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "kLoggerName";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  if (*(a1 + 31) >= 0)
  {
    v8 = (a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = xpc_string_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "kLoggerDomain";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  xpc_connection_send_message(*(a1 + 88), v15);
  xpc_release(v15);
}

xpc_object_t __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcLoggerEEE48c19_ZTSN3xpc8endpointE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[6];
  a1[6] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcLoggerEEE48c19_ZTSN3xpc8endpointE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *ctu::XpcLogger::XpcLogger(void *a1, NSObject **a2, const char *a3, __int128 *a4)
{
  v7 = ctu::LoggerCommonBase::LoggerCommonBase(a1, a4, MEMORY[0x1E69E9C10]);
  *v7 = &unk_1F1CB7530;
  v8 = (v7 + 6);
  v9 = strlen(a3);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v10;
    v16 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v16) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_9:
    memcpy(p_dst, a3, v10);
  }

  *(p_dst + v10) = 0;
  v14 = 0;
  ctu::XpcClient::XpcClient(v8, &__dst, a2, &v14);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }

  *a1 = &unk_1F1CB5C90;
  a1[6] = &unk_1F1CB5CC8;
  a1[15] = 0;
  return a1;
}

void ctu::XpcLogger::setInvalidationCallback(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = ___ZN3ctu9XpcLogger23setInvalidationCallbackEU13block_pointerFvvE_block_invoke;
  v4[3] = &__block_descriptor_tmp_1_2;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v7, (a1 + 56));
  v3 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  block[3] = &__block_descriptor_tmp_17_0;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t ___ZN3ctu9XpcLogger23setInvalidationCallbackEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v5 = *(v3 + 120);
  *(v3 + 120) = v2;
  if (v5)
  {
    _Block_release(v5);
  }

  result = MEMORY[0x1AC581B70](*(v3 + 88));
  if (result != MEMORY[0x1E69E9E68])
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }

  return result;
}

void ctu::XpcLogger::handleServerError_sync(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = xpc_null_create();
  v4 = v3;
  ctu::XpcClient::setServer_sync((a1 + 48), &v4);
  xpc_release(v3);
}

void ctu::XpcLogger::handleMessage_sync(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_dictionary_get_value(*a2, "kLoggerLevel"))
  {
    v5[0] = a2;
    v5[1] = "kLoggerLevel";
    xpc::dict::object_proxy::operator xpc::object(v5, &object);
    v4 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    *(a1 + 41) = v4;
  }
}

void ctu::XpcLogger::forceLog(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v32 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v32 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v32 = v8;
LABEL_9:
  xpc_release(v7);
  v30 = xpc_int64_create(a2);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  block = &v32;
  v34 = "kLogMessageLevel";
  xpc::dict::object_proxy::operator=(&block, &v30, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v30);
  v30 = 0;
  ctu::LogMessageBuffer::str(a3);
  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  v28 = xpc_string_create(v9);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  block = &v32;
  v34 = "kLogMessage";
  xpc::dict::object_proxy::operator=(&block, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v11 = ctu::Clock::now_in_nanoseconds(v10);
  v26 = xpc_int64_create(v11);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  block = &v32;
  v34 = "kLogMessageTimestamp";
  xpc::dict::object_proxy::operator=(&block, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = *(a3 + 32);
  v12 = v24;
  v25 = *(a3 + 40);
  v13 = v25;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  if (v12 != v13)
  {
    v14 = xpc_array_create(0, 0);
    if (v14 || (v14 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1AC581B70](v14) == MEMORY[0x1E69E9E50])
      {
        xpc_retain(v14);
        v15 = v14;
      }

      else
      {
        v15 = xpc_null_create();
      }
    }

    else
    {
      v15 = xpc_null_create();
      v14 = 0;
    }

    xpc_release(v14);
    for (i = v24; i != v25; i += 24)
    {
      v17 = i;
      if (*(i + 23) < 0)
      {
        v17 = *i;
      }

      v18 = xpc_string_create(v17);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_array_append_value(v15, v18);
      xpc_release(v18);
    }

    v22 = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      v22 = xpc_null_create();
    }

    block = &v32;
    v34 = "kLogMessageMetadata";
    xpc::dict::object_proxy::operator=(&block, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(v22);
    v22 = 0;
    xpc_release(v15);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1174405120;
  v20[2] = ___ZNK3ctu9XpcLogger8forceLogENS_8LogLevelEONS_16LogMessageBufferE_block_invoke;
  v20[3] = &__block_descriptor_tmp_9_2;
  v20[4] = a1;
  v21 = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    v21 = xpc_null_create();
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v40, (a1 + 56));
  v19 = *(a1 + 72);
  block = MEMORY[0x1E69E9820];
  v34 = 1174405120;
  v35 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  v36 = &__block_descriptor_tmp_17_0;
  v38 = v40;
  v39 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v20;
  dispatch_async(v19, &block);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  xpc_release(v21);
  v21 = 0;
  block = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
  xpc_release(v32);
}

void ___ZNK3ctu9XpcLogger8forceLogENS_8LogLevelEONS_16LogMessageBufferE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (MEMORY[0x1AC581B70](*(v2 + 88)) == MEMORY[0x1E69E9E68])
  {
    v3 = *(v2 + 88);
    v4 = *(a1 + 40);

    xpc_connection_send_message(v3, v4);
  }
}

void ctu::XpcLogger::setLogLevel(uint64_t a1, unsigned int a2)
{
  *(a1 + 40) = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v12 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v12 = v6;
LABEL_9:
  xpc_release(v5);
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  block = &v12;
  v14 = "kLoggerLevel";
  xpc::dict::object_proxy::operator=(&block, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN3ctu9XpcLogger11setLogLevelENS_8LogLevelE_block_invoke;
  v8[3] = &__block_descriptor_tmp_12_1;
  v8[4] = a1;
  v9 = v12;
  v10 = 0;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    v9 = xpc_null_create();
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v20, (a1 + 56));
  v7 = *(a1 + 72);
  block = MEMORY[0x1E69E9820];
  v14 = 1174405120;
  v15 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  v16 = &__block_descriptor_tmp_17_0;
  v18 = v20;
  v19 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v8;
  dispatch_async(v7, &block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  xpc_release(v9);
  v9 = 0;
  xpc_release(v12);
}

void ___ZN3ctu9XpcLogger11setLogLevelENS_8LogLevelE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (MEMORY[0x1AC581B70](*(v2 + 88)) == MEMORY[0x1E69E9E68])
  {
    v3 = *(v2 + 88);
    v4 = *(a1 + 40);

    xpc_connection_send_message(v3, v4);
  }
}

void ctu::XpcLogger::~XpcLogger(ctu::XpcLogger *this)
{
  *this = &unk_1F1CB5C90;
  v2 = (this + 48);
  *(this + 6) = &unk_1F1CB5CC8;
  v3 = *(this + 15);
  if (v3)
  {
    _Block_release(v3);
  }

  ctu::XpcClient::~XpcClient(v2);

  ctu::LoggerCommonBase::~LoggerCommonBase(this);
}

{
  *this = &unk_1F1CB5C90;
  v2 = (this + 48);
  *(this + 6) = &unk_1F1CB5CC8;
  v3 = *(this + 15);
  if (v3)
  {
    _Block_release(v3);
  }

  ctu::XpcClient::~XpcClient(v2);
  ctu::LoggerCommonBase::~LoggerCommonBase(this);

  operator delete(v4);
}

void non-virtual thunk toctu::XpcLogger::~XpcLogger(ctu::XpcLogger *this)
{
  v2 = (this - 48);
  *(this - 6) = &unk_1F1CB5C90;
  *this = &unk_1F1CB5CC8;
  v3 = *(this + 9);
  if (v3)
  {
    _Block_release(v3);
  }

  ctu::XpcClient::~XpcClient(this);

  ctu::LoggerCommonBase::~LoggerCommonBase(v2);
}

{
  v2 = (this - 48);
  *(this - 6) = &unk_1F1CB5C90;
  *this = &unk_1F1CB5CC8;
  v3 = *(this + 9);
  if (v3)
  {
    _Block_release(v3);
  }

  ctu::XpcClient::~XpcClient(this);
  ctu::LoggerCommonBase::~LoggerCommonBase(v2);

  operator delete(v4);
}

void std::__shared_ptr_pointer<ctu::XpcLogger *,std::shared_ptr<ctu::XpcLogger> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<ctu::XpcLogger>(ctu::XpcLogger*)::{lambda(ctu::XpcLogger *)#1},std::allocator<ctu::XpcLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::XpcLogger *,std::shared_ptr<ctu::XpcLogger> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<ctu::XpcLogger>(ctu::XpcLogger*)::{lambda(ctu::XpcLogger *)#1},std::allocator<ctu::XpcLogger>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::XpcLogger> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<ctu::XpcLogger>(ctu::XpcLogger*)::{lambda(ctu::XpcLogger*)#1}::operator() const(ctu::XpcLogger*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void ctu::XpcLoggerProxy::create(void *a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  v10 = a1[1];
  v12 = operator new(0x80uLL);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = &unk_1F1CB5078;
  v17 = v11;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v16 = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v13 = xpc_null_create();
    v16 = v13;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
  }

  else
  {
    v15 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a4, *(a4 + 8));
  }

  else
  {
    v14 = *a4;
  }

  ctu::XpcLoggerProxy::XpcLoggerProxy(v12 + 1, &v17, &v16, &v15, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  xpc_release(v13);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *a5 = v12 + 1;
  a5[1] = v12;
  atomic_fetch_add_explicit(&v12->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  (***a1)(*a1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1A915BF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v27);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  _Unwind_Resume(a1);
}

std::string *ctu::XpcLoggerProxy::XpcLoggerProxy(std::string *a1, void *a2, void **a3, __int128 *a4, __int128 *a5)
{
  v8 = ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, a5, a2);
  *v8 = &unk_1F1CB71D8;
  v8[8] = &unk_1F1CB7220;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    a1[3].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v9;
  }

  v10 = *a3;
  a1[4].__r_.__value_.__r.__words[0] = *a3;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    a1[4].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  return a1;
}

void ctu::XpcLoggerProxy::updateTrackedConfig(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    message = v4;
  }

  else
  {
    v5 = xpc_null_create();
    message = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  message = v6;
LABEL_9:
  xpc_release(v5);
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = &message;
  v7[1] = "kLoggerLevel";
  xpc::dict::object_proxy::operator=(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  xpc_connection_send_message(*(a1 + 96), message);
  xpc_release(message);
}

void ctu::XpcLoggerProxy::getTrackedLoggerName(ctu::XpcLoggerProxy *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

void non-virtual thunk toctu::XpcLoggerProxy::getTrackedLoggerName(ctu::XpcLoggerProxy *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void ctu::XpcLoggerProxy::handleMessage(ctu::XpcLoggerProxy *this, xpc_object_t *a2)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *v17 = a2;
  *&v17[8] = "kLogMessage";
  xpc::dict::object_proxy::operator xpc::object(v17, &v20);
  if (MEMORY[0x1AC581B70](v20) != MEMORY[0x1E69E9ED0])
  {
    v5 = *(this + 6);
    v4 = *(this + 7);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v19 = 0;
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      v21 = 0;
      v22 = 0;
      v23 = 0;
      xpc::dyn_cast_or_default(&v20, &v21, &__p);
      ctu::LogMessageBuffer::appendString(v17, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      v21 = a2;
      v22 = "kLogMessageMetadata";
      xpc::dict::object_proxy::operator xpc::array(&v21, &__p);
      if (MEMORY[0x1AC581B70](__p.__r_.__value_.__r.__words[0]) == MEMORY[0x1E69E9E50])
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = ___ZN3ctu14XpcLoggerProxy13handleMessageERKN3xpc4dictE_block_invoke;
        applier[3] = &__block_descriptor_tmp_11;
        applier[4] = v17;
        xpc_array_apply(__p.__r_.__value_.__l.__data_, applier);
      }

      v21 = a2;
      v22 = "kLogMessageTimestamp";
      xpc::dict::object_proxy::operator xpc::object(&v21, &object);
      v6 = xpc::dyn_cast_or_default(&object, 0);
      xpc_release(object);
      if (!v6)
      {
        v6 = ctu::Clock::now_in_nanoseconds(v7);
      }

      v21 = a2;
      v22 = "kLogMessageLevel";
      xpc::dict::object_proxy::operator xpc::object(&v21, &object);
      v8 = xpc::dyn_cast_or_default(&object, 0);
      xpc_release(object);
      v9 = operator new(0x60uLL);
      if (*(this + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *(this + 1), *(this + 2));
      }

      else
      {
        v13 = *(this + 8);
      }

      ctu::LogMessageBuffer::str(v17);
      *v9 = &unk_1F1CB7558;
      *(v9 + 1) = v6;
      v9[16] = v8;
      *(v9 + 1) = v13;
      memset(&v13, 0, sizeof(v13));
      *(v9 + 3) = *v17;
      *(v9 + 8) = *&v17[16];
      *v17 = 0uLL;
      *(v9 + 72) = v18;
      *(v9 + 11) = v19;
      *&v17[16] = 0;
      v18 = 0uLL;
      v19 = 0;
      v10 = operator new(0x20uLL);
      v10->__vftable = &unk_1F1CB4DD8;
      v10->__shared_owners_ = 0;
      v10->__shared_weak_owners_ = 0;
      v10[1].__vftable = v9;
      v11 = v9;
      v12 = v10;
      ctu::LogServer::log(v5, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      xpc_release(__p.__r_.__value_.__l.__data_);
      ctu::LogMessageBuffer::~LogMessageBuffer(v17);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (xpc_dictionary_get_value(*a2, "kLoggerLevel"))
  {
    *v17 = a2;
    *&v17[8] = "kLoggerLevel";
    xpc::dict::object_proxy::operator xpc::object(v17, &v21);
    *(this + 40) = xpc::dyn_cast_or_default(&v21, 0);
    xpc_release(v21);
  }

  xpc_release(v20);
}

void sub_1A915C5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  operator delete(v30);
  xpc_release(object);
  ctu::LogMessageBuffer::~LogMessageBuffer(&a29);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  xpc_release(*(v31 - 96));
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ctu14XpcLoggerProxy13handleMessageERKN3xpc4dictE_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  v3 = *(a1 + 32);
  v6 = object;
  if (object)
  {
    v4 = object;
    xpc_retain(object);
  }

  else
  {
    v4 = xpc_null_create();
    v6 = v4;
  }

  memset(v9, 0, sizeof(v9));
  xpc::dyn_cast_or_default(&v6, v9, &v7);
  __p = v7;
  memset(&v7, 0, sizeof(v7));
  ctu::operator<<(v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  xpc_release(v4);
  return 1;
}

void sub_1A915C7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ctu::XpcLogServer::create(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, std::__shared_weak_count_vtbl **a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0xA8uLL);
  v14 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *__p = *a3;
  v13 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  ctu::XpcLogServer::XpcLogServer(v8, &v14, a2, __p);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9->__vftable = &unk_1F1CB4DA0;
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  a4[1] = v9;
  on_zero_shared = v8->__on_zero_shared;
  if (on_zero_shared)
  {
    if (on_zero_shared->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8->~__shared_weak_count_0 = v8;
    v8->__on_zero_shared = v9;
    std::__shared_weak_count::__release_weak(on_zero_shared);
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8->~__shared_weak_count_0 = v8;
    v8->__on_zero_shared = v9;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_6:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  if (v8[3].~__shared_weak_count_0)
  {
    std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v15, &v8->~__shared_weak_count_0);
    if (v15)
    {
      v11 = v15 + 72;
    }

    else
    {
      v11 = 0;
    }

    v15 = v11;
    (**v8[3].~__shared_weak_count_0)();
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_1A915C994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void *ctu::XpcLogServer::XpcLogServer(void *a1, void *a2, char *__s, __int128 *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v7 = xpc_null_create();
  v9 = 0;
  v10 = v7;
  ctu::XpcServer::XpcServer(a1, __p, &v10, &v9);
  xpc_release(v7);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  a1[9] = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase((a1 + 10), a4, a2);
  *a1 = &unk_1F1CB72F8;
  a1[9] = &unk_1F1CB7338;
  a1[19] = 0;
  a1[20] = 0;
  a1[18] = 0;
  return a1;
}

void ctu::XpcLogServer::startListeningOn(void *a1, void **a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN3ctu12XpcLogServer16startListeningOnEN3xpc10connectionE_block_invoke;
  v9[3] = &__block_descriptor_tmp_7_1;
  v3 = *a2;
  v9[4] = a1;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_37;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  xpc_release(object);
}

void ___ZN3ctu12XpcLogServer16startListeningOnEN3xpc10connectionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::XpcServer::setListener_sync(v2, &object);
  xpc_release(object);

  ctu::XpcServer::startListener_sync(v2);
}

xpc_object_t __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ctu::XpcLogServer::getEndpoint(ctu::XpcLogServer *this@<X0>, xpc_object_t *a2@<X8>)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK3ctu12XpcLogServer11getEndpointEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_9_0;
  v4[4] = this;
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIU13block_pointerFN3xpc8endpointEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v6[3] = &__block_descriptor_tmp_38;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = *(this + 3);
  if (*(this + 4))
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *a2 = xpc_null_create();
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_40;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *a2 = xpc_null_create();
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_39;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void *___ZNK3ctu12XpcLogServer11getEndpointEv_block_invoke@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = xpc_endpoint_create(*(*(a1 + 32) + 64));
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void ctu::XpcLogServer::handleServerError_sync(uint64_t a1, xpc::object *a2)
{
  v3 = a1 + 80;
  if ((**(a1 + 80))(a1 + 80, 40))
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    ctu::LogMessageBuffer::appendString(v6, "Server error: ");
    xpc::object::describe(a2, __p);
    ctu::LogMessageBuffer::appendString(v6, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(v3, 40, v6);
    ctu::LogMessageBuffer::~LogMessageBuffer(v6);
  }
}

void sub_1A915D030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::LogMessageBuffer::~LogMessageBuffer(&a16);
  _Unwind_Resume(a1);
}

void ctu::XpcLogServer::handleNewClient_sync(uint64_t a1@<X0>, void **a2@<X8>)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3802000000;
  v3[3] = __Block_byref_object_copy__0;
  v3[5] = 0;
  v4 = 0;
  v3[4] = __Block_byref_object_dispose__0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = ___ZN3ctu12XpcLogServer20handleNewClient_syncEN3xpc10connectionE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_19_0;
  aBlock[4] = v3;
  aBlock[5] = a1;
  *a2 = _Block_copy(aBlock);
  _Block_object_dispose(v3, 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN3ctu12XpcLogServer20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {

    ctu::XpcLoggerProxy::handleMessage(v5, a3);
    return;
  }

  v7 = *(a1 + 40);
  memset(&v44, 170, sizeof(v44));
  v43.__r_.__value_.__r.__words[0] = a3;
  v43.__r_.__value_.__l.__size_ = "kLoggerName";
  xpc::dict::object_proxy::operator xpc::object(&v43, v41);
  memset(v38, 0, 24);
  xpc::dyn_cast_or_default(v41, v38, &v44);
  xpc_release(v41[0]);
  memset(&v43, 170, sizeof(v43));
  v41[0] = a3;
  v41[1] = "kLoggerDomain";
  xpc::dict::object_proxy::operator xpc::object(v41, &v42);
  memset(v38, 0, 24);
  xpc::dyn_cast_or_default(&v42, v38, &v43);
  xpc_release(v42);
  size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_18;
  }

  v9 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v43.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v10 = (*(*v7 + 40))(v7, &v44, &v43);
    v11 = **(v7 + 80);
    if (v10)
    {
      if (v11(v7 + 80, 40))
      {
        v40 = 0;
        v39 = 0u;
        memset(v38, 0, sizeof(v38));
        ctu::LogMessageBuffer::appendString(v38, "Got client checkin for client '");
        ctu::LogMessageBuffer::appendString(v38, &v44);
        ctu::LogMessageBuffer::appendString(v38, "' in domain '");
        ctu::LogMessageBuffer::appendString(v38, &v43);
        ctu::LogMessageBuffer::appendString(v38, "'");
        ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(v7 + 80, 40, v38);
        ctu::LogMessageBuffer::~LogMessageBuffer(v38);
      }

      v12 = *(v7 + 136);
      v37[0] = *(v7 + 128);
      v37[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a2;
      v36 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v13 = xpc_null_create();
        v36 = v13;
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
      }

      else
      {
        v35 = v44;
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
      }

      else
      {
        v34 = v43;
      }

      ctu::XpcLoggerProxy::create(v37, &v36, &v35, &v34, v38);
      v16 = *(*(a1 + 32) + 8);
      v17 = *v38;
      *v38 = 0uLL;
      v18 = *(v16 + 48);
      *(v16 + 40) = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      xpc_release(v13);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v19 = *(*(*(a1 + 32) + 8) + 40);
      v20 = *(v7 + 152);
      v21 = *(v7 + 160);
      if (v20 >= v21)
      {
        v23 = *(v7 + 144);
        v24 = v20 - v23;
        v25 = (v20 - v23) >> 4;
        v26 = v25 + 1;
        if ((v25 + 1) >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v27 = v21 - v23;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF0)
        {
          v28 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          v33 = v19;
          if (v28 >> 60)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v29 = operator new(16 * v28);
          v19 = v33;
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[16 * v25];
        *v30 = v19;
        if (*(&v19 + 1))
        {
          atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
          v23 = *(v7 + 144);
          v24 = *(v7 + 152) - v23;
          v25 = v24 >> 4;
        }

        v31 = &v29[16 * v28];
        v22 = v30 + 16;
        v32 = &v30[-16 * v25];
        memcpy(v32, v23, v24);
        *(v7 + 144) = v32;
        *(v7 + 152) = v22;
        *(v7 + 160) = v31;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v20 = v19;
        if (*(&v19 + 1))
        {
          atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v22 = v20 + 16;
      }

      *(v7 + 152) = v22;
      goto LABEL_24;
    }

    if (v11(v7 + 80, 40))
    {
      v40 = 0;
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
      ctu::LogMessageBuffer::appendString(v38, "Request DENIED for new logger '");
      ctu::LogMessageBuffer::appendString(v38, &v44);
      ctu::LogMessageBuffer::appendString(v38, "' in domain '");
      ctu::LogMessageBuffer::appendString(v38, &v43);
      ctu::LogMessageBuffer::appendString(v38, "'");
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(v7 + 80, 40, v38);
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
    v15 = *(v7 + 80);
    v14 = v7 + 80;
    if ((*v15)(v14, 80))
    {
      v40 = 0;
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
      ctu::LogMessageBuffer::appendString(v38, "Got request for new logger, but check in failed");
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(v14, 80, v38);
LABEL_22:
      ctu::LogMessageBuffer::~LogMessageBuffer(v38);
    }
  }

  xpc_connection_cancel(*a2);
LABEL_24:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1A915D684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  _Unwind_Resume(a1);
}

void ctu::XpcLogServer::handleClientError_sync(uint64_t a1, xpc_object_t *a2, xpc::object *a3)
{
  v6 = *(a1 + 144);
  v7 = *(a1 + 152);
  if (v6 != v7)
  {
    while (!xpc_equal(*a2, *(*v6 + 96)))
    {
      v6 += 16;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a1 + 152);
  }

  v8 = a1 + 80;
  v9 = **(a1 + 80);
  v10 = a1 + 80;
  if (v6 == v7)
  {
    if (v9(v10, 80))
    {
      v25 = 0;
      v24 = 0u;
      memset(v23, 0, sizeof(v23));
      ctu::LogMessageBuffer::appendString(v23, "Got client error for conn ");
      v19 = *a2;
      v20 = ctu::LogMessageBuffer::operator std::ostream &(v23);
      MEMORY[0x1AC580AA0](v20, v19);
      ctu::LogMessageBuffer::appendString(v23, ", but no client found: ");
      xpc::object::describe(a3, __p);
      ctu::LogMessageBuffer::appendString(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(v8, 80, v23);
      ctu::LogMessageBuffer::~LogMessageBuffer(v23);
    }
  }

  else
  {
    if (v9(v10, 20))
    {
      v25 = 0;
      v24 = 0u;
      memset(v23, 0, sizeof(v23));
      ctu::LogMessageBuffer::appendString(v23, "Client disconnected (");
      v11 = *a2;
      v12 = ctu::LogMessageBuffer::operator std::ostream &(v23);
      MEMORY[0x1AC580AA0](v12, v11);
      ctu::LogMessageBuffer::appendString(v23, ": ");
      ctu::LogMessageBuffer::appendString(v23, *v6 + 72);
      ctu::LogMessageBuffer::appendString(v23, ")");
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1 + 80, 20, v23);
      ctu::LogMessageBuffer::~LogMessageBuffer(v23);
    }

    v13 = *(a1 + 152);
    if (v6 + 16 != v13)
    {
      do
      {
        v14 = *(v6 + 16);
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        v15 = *(v6 + 8);
        *v6 = v14;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v16 = v6 + 16;
        v17 = v6 + 32;
        v6 += 16;
      }

      while (v17 != v13);
      v13 = *(a1 + 152);
      v6 = v16;
    }

    while (v13 != v6)
    {
      v18 = *(v13 - 8);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v13 -= 16;
    }

    *(a1 + 152) = v6;
  }
}

void sub_1A915D990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::LogMessageBuffer::~LogMessageBuffer(&a16);
  _Unwind_Resume(a1);
}

void ctu::XpcLoggerProxy::~XpcLoggerProxy(ctu::XpcLoggerProxy *this)
{
  *this = &unk_1F1CB71D8;
  *(this + 8) = &unk_1F1CB7220;
  xpc_release(*(this + 12));
  *(this + 12) = 0;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);
}

{
  *this = &unk_1F1CB71D8;
  *(this + 8) = &unk_1F1CB7220;
  xpc_release(*(this + 12));
  *(this + 12) = 0;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);

  operator delete(v2);
}

void non-virtual thunk toctu::XpcLoggerProxy::~XpcLoggerProxy(ctu::XpcLoggerProxy *this)
{
  v2 = (this - 64);
  *(this - 8) = &unk_1F1CB71D8;
  *this = &unk_1F1CB7220;
  xpc_release(*(this + 4));
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v2);
}

{
  v2 = (this - 64);
  *(this - 8) = &unk_1F1CB71D8;
  *this = &unk_1F1CB7220;
  xpc_release(*(this + 4));
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v2);

  operator delete(v3);
}

void ctu::XpcLogServer::~XpcLogServer(ctu::XpcLogServer *this)
{
  *this = &unk_1F1CB72F8;
  *(this + 9) = &unk_1F1CB7338;
  v2 = (this + 144);
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *(this + 9) = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((this + 80));

  ctu::XpcServer::~XpcServer(this);
}

{
  *this = &unk_1F1CB72F8;
  *(this + 9) = &unk_1F1CB7338;
  v3 = (this + 144);
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *(this + 9) = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((this + 80));
  ctu::XpcServer::~XpcServer(this);

  operator delete(v2);
}

void non-virtual thunk toctu::XpcLogServer::~XpcLogServer(ctu::XpcLogServer *this)
{
  v2 = (this - 72);
  *(this - 9) = &unk_1F1CB72F8;
  *this = &unk_1F1CB7338;
  v3 = (this + 72);
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((this + 8));

  ctu::XpcServer::~XpcServer(v2);
}

{
  v2 = (this - 72);
  *(this - 9) = &unk_1F1CB72F8;
  *this = &unk_1F1CB7338;
  v4 = (this + 72);
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((this + 8));
  ctu::XpcServer::~XpcServer(v2);

  operator delete(v3);
}

void ctu::Loggable<ctu::XpcLogServer,ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>>::getTrackedLoggerName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 - 9) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 - 32), *(a1 - 24));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 - 32);
    a2->__r_.__value_.__r.__words[2] = *(a1 - 16);
  }
}

void *ctu::Loggable<ctu::XpcLogServer,ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>>::~Loggable(void *a1)
{
  *a1 = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((a1 + 1));
  return a1;
}

void ctu::Loggable<ctu::XpcLogServer,ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>>::~Loggable(void *a1)
{
  *a1 = &unk_1F1CB5DF0;
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase((a1 + 1));

  operator delete(a1);
}

void std::__shared_ptr_emplace<ctu::XpcLoggerProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB5078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ctu::XpcLogServer *,std::shared_ptr<ctu::XpcLogServer> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ctu::XpcLogServer>(ctu::XpcLogServer*)::{lambda(ctu::XpcLogServer *)#1},std::allocator<ctu::XpcLogServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::XpcLogServer *,std::shared_ptr<ctu::XpcLogServer> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ctu::XpcLogServer>(ctu::XpcLogServer*)::{lambda(ctu::XpcLogServer *)#1},std::allocator<ctu::XpcLogServer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::XpcLogServer> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ctu::XpcLogServer>(ctu::XpcLogServer*)::{lambda(ctu::XpcLogServer*)#1}::operator() const(ctu::XpcLogServer*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void __copy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return MEMORY[0x1EEE644C0](retstr, __val);
}

{
  return MEMORY[0x1EEE644D0](retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete(void *__p)
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