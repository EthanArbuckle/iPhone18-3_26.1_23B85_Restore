uint64_t ___getPreSmartSet_block_invoke()
  v0 = {;
  v1 = _getPreSmartSet___preSmartSet;
  _getPreSmartSet___preSmartSet = v0;

  v2 = _getPreSmartSet___preSmartSet;
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [_getPreSmartSet___preSmartSet addCharactersInRange:{161, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{163, 3}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{167, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{169, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{171, 4}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{177, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{182, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{187, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{191, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8208, 6}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8216, 8}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8226, 6}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8249, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8259, 3}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8352, 22}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{4352, 256}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{11904, 352}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{12272, 464}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{12800, 29392}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{44032, 11183}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{63744, 352}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{65072, 32}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{65280, 240}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{0x20000, 42711}];
  v4 = _getPreSmartSet___preSmartSet;

  return [v4 addCharactersInRange:{194560, 542}];
}

void ___getPostSmartSet_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:{@"]., :?'!%*-/}>"}]);;
  v1 = _getPostSmartSet___postSmartSet;
  _getPostSmartSet___postSmartSet = v0;

  v2 = _getPostSmartSet___postSmartSet;
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [_getPostSmartSet___postSmartSet addCharactersInRange:{162, 1}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{170, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{173, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{176, 1}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{178, 3}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{185, 3}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8208, 6}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8216, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8220, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8224, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8228, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8240, 5}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8250, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8262, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8240, 5}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8304, 37}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{4352, 256}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{11904, 352}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{12272, 464}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{12800, 29392}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{44032, 11183}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{63744, 352}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{65072, 32}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{65280, 240}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{0x20000, 42711}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{194560, 542}];
  v4 = _getPostSmartSet___postSmartSet;
  v5 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v5];
}

void sub_26B45785C(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v4, 0x60C4044C4A2DFLL);

  _Unwind_Resume(a1);
}

CMDPFst **std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100](CMDPFst **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CMDPFst::~CMDPFst(v2);
    MEMORY[0x26D6787B0]();
  }

  return a1;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_26B458478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_26B4586BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, CMDPFst *a15)
{
  if (__p)
  {
    [CMDPGrammar addAdlibFstWithLabel:? outputIndex:?];
  }

  std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_26B4588C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100]((v21 - 40));
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF5288, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

CMDPNormalizer *std::unique_ptr<CMDPNormalizer>::reset[abi:ne200100](CMDPNormalizer **a1, CMDPNormalizer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CMDPNormalizer::~CMDPNormalizer(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

void CMDPFst::~CMDPFst(CMDPFst *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

void std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__construct_one_at_end[abi:ne200100]<std::string const&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *(v5 + 24) = v7;
  *(a1 + 8) = v5 + 32;
}

std::string::value_type *std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v26 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(a1, v9);
  }

  v10 = (32 * v3);
  v22 = 0;
  v23 = v10;
  v11 = 0;
  v24 = v10;
  v25 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v23;
    v14 = v24;
    v11 = v25;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v15 = *a3;
  *a3 = 0;
  v10[1].__r_.__value_.__r.__words[0] = v15;
  v16 = &v14[1].__r_.__value_.__s.__data_[8];
  v17 = *(a1 + 8) - *a1;
  v18 = v13 - v17;
  memcpy(v13 - v17, *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v16;
  v20 = *(a1 + 16);
  *(a1 + 16) = v11;
  v24 = v19;
  v25 = v20;
  v22 = v19;
  v23 = v19;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(&v22);
  return v16;
}

void sub_26B459058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](v4, i - 32);
  }
}

void std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__emplace_back_slow_path<char const*&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(a1, v9);
  }

  v18 = 0;
  v19 = 32 * v3;
  v20 = 32 * v3;
  v21 = 0;
  v10 = std::string::basic_string[abi:ne200100]<0>((32 * v3), *a2);
  v11 = *a3;
  *a3 = 0;
  *(v10 + 3) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v19 - v13;
  memcpy((v19 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(&v18);
  return v12;
}

void sub_26B459360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_26B4614B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B462558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B463104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_26B4631E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_26B463428(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x60C4044C4A2DFLL);

  _Unwind_Resume(a1);
}

void sub_26B46376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::vector<std::vector<std::pair<std::string,std::string>>>::__destroy_vector::operator()[abi:ne200100](va);

  (*(*v15 + 8))(v15);
  _Unwind_Resume(a1);
}

void sub_26B464254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  a23 = a10;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<CMDPToken>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<CMDPToken>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void **std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void sub_26B464A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void **a44)
{
  a44 = a10;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&a44);

  _Unwind_Resume(a1);
}

void sub_26B464CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6787B0](v17, 0x1012C408B718000);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF5290, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::default_delete<CMDPToken>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<CMDPToken>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CMDPToken>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<CMDPToken>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<CMDPToken>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<unsigned int ()(CMDPToken const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::vector<std::pair<std::string,std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CMDPToken>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<CMDPToken>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<CMDPToken>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

_BYTE *OUTLINED_FUNCTION_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t AllValidCommandParameterIdentifiers()
{
  if (AllValidCommandParameterIdentifiers_staticValidLMIdentifierSetup != -1)
  {
    AllValidCommandParameterIdentifiers_cold_1();
  }

  return AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet;
}

uint64_t __AllValidCommandParameterIdentifiers_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB58]);
  AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet = [v0 initWithObjects:{kSRCSCommandParameterSwitchableApplication[0], kSRCSCommandParameterRunningApplication[0], kSRCSCommandParameterMenuBarItem[0], kSRCSCommandParameterMenuItem[0], kSRCSCommandParameterWindowItem[0], kSRCSCommandParameterWindowItem2[0], kSRCSCommandParameterModifierKeys[0], kSRCSCommandParameterKeyboardKeyName[0], kSRCSCommandParameterDictation[0], kSRCSCommandParameterDictation2[0], kSRCSCommandParameterOverlayLabel[0], kSRCSCommandParameterOverlayLabel2[0], kSRCSCommandParameterTextSegmentCardinalNumber[0], kSRCSCommandParameterScreenDistanceCardinalNumber[0], kSRCSCommandParameterDeviceName[0], kSRCSCommandParameterNumberZeroThroughOneHundred[0], kSRCSCommandParameterNumberTwoThroughNinetyNine[0], kSRCSCommandParameterNumberTwoThroughNinetyNine2[0], 0}];

  return MEMORY[0x2821F96F8]();
}

BOOL IsValidCommandParameterIdentifier(uint64_t a1)
{
  if (AllValidCommandParameterIdentifiers_staticValidLMIdentifierSetup != -1)
  {
    AllValidCommandParameterIdentifiers_cold_1();
  }

  v2 = [AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet member:a1];
  v3 = v2 != 0;

  return v3;
}

id SRCSLogGeneral()
{
  if (SRCSLogGeneral_onceToken != -1)
  {
    SRCSLogGeneral_cold_1();
  }

  v1 = SRCSLogGeneral_sLogGeneral;

  return v1;
}

uint64_t __SRCSLogGeneral_block_invoke()
{
  SRCSLogGeneral_sLogGeneral = os_log_create("com.apple.speech.SpeechRecognitionCommandServices", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_26B46ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_26B46BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t yyparse()
{
  MEMORY[0x28223BE20]();
  v0 = 0;
  v44 = *MEMORY[0x277D85DE8];
  v1 = v40;
  v2 = 200;
  memset(v40, 0, 512);
  yynerrs = 0;
  yychar = -2;
  value = *MEMORY[0x277CBED28];
  v3 = v40;
  v4 = v41;
  v5 = v41;
  while (1)
  {
    *v4 = v0;
    if (&v5[2 * v2 - 2] <= v4)
    {
      break;
    }

LABEL_12:
    if ((0xF4C2uLL >> v0))
    {
      goto LABEL_27;
    }

    v9 = yypact[v0];
    v10 = yychar;
    if (yychar == -2)
    {
      v10 = yylex();
      yychar = v10;
    }

    if (v10 <= 0)
    {
      v11 = 0;
      yychar = 0;
    }

    else
    {
      v11 = v10 > 0x103 ? 2 : yytranslate[v10];
    }

    v12 = (v11 + v9);
    if (v12 > 0x16 || v11 != yycheck[v12])
    {
LABEL_27:
      if (((0xB1DuLL >> v0) & 1) == 0)
      {
        v13 = yydefact[v0];
        v14 = yyr2[yydefact[v0]];
        v15 = *(v1 + 1 - v14);
        if (v13 <= 5)
        {
          if (v13 > 3)
          {
            v15 = *v1;
          }

          else if (v13 == 2)
          {
            v20 = *v1;
            CommandParseDictionary = CreateCommandParseDictionary();
            if (!CommandParseDictionary || (v15 = CommandParseDictionary, !*v1))
            {
              bzero(buffer, 0x1388uLL);
              v26 = @"Nil parameter in ': spokenCommandStringComponent'";
              goto LABEL_71;
            }

            CFRelease(*v1);
            sResultDictionary = v15;
          }

          else if (v13 == 3)
          {
            v17 = *(v1 - 2);
            if (v17 && *v1)
            {
              v18 = CFDictionaryGetValue(v17, kSRCSCommandParseDictionaryKeyChildren[0]);
              if (v18)
              {
                CFArrayAppendValue(v18, *v1);
              }

              else
              {
                bzero(buffer, 0x1388uLL);
                CFStringGetCString(@"Nil children in '| spokenCommandList '|' spokenCommandStringComponent'", buffer, 5000, 0x8000100u);
                yyerror(buffer);
              }

              CFRelease(*v1);
              v15 = *(v1 - 2);
              goto LABEL_76;
            }

            bzero(buffer, 0x1388uLL);
            v26 = @"Nil parameter in '| spokenCommandList '|' spokenCommandStringComponent'";
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (v13 > 7)
        {
          switch(v13)
          {
            case 8:
              v22 = CFDictionaryGetValue(*(v1 - 1), kSRCSCommandParseDictionaryKeyAttributes[0]);
              if (v22)
              {
                CFDictionaryAddValue(v22, kSRCSCommandParseAttributeOptional[0], value);
              }

              else
              {
                bzero(buffer, 0x1388uLL);
                CFStringGetCString(@"Nil attribute in ': '[' spokenCommandStringComponent ']''", buffer, 5000, 0x8000100u);
                yyerror(buffer);
              }

              v15 = *(v1 - 1);
              break;
            case 9:
              v24 = CreateCommandParseDictionary();
              if (v24)
              {
                v25 = *(v1 - 1);
                if (v25)
                {
                  v15 = v24;
                  CFDictionaryAddValue(v24, kSRCSCommandParseDictionaryKeyIdentifier[0], v25);
                  CFDictionaryAddValue(v15, kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0], value);
                  v23 = *(v1 - 1);
                  goto LABEL_64;
                }
              }

              bzero(buffer, 0x1388uLL);
              v26 = @"Nil parameter in '| '{' kParameterToken '}''";
              goto LABEL_71;
            case 10:
              v16 = CreateCommandParseDictionary();
              if (v16 && *v1)
              {
                v15 = v16;
                CFDictionaryAddValue(v16, kSRCSCommandParseDictionaryKeyText[0], *v1);
LABEL_60:
                v23 = *v1;
LABEL_64:
                CFRelease(v23);
                break;
              }

              bzero(buffer, 0x1388uLL);
              v26 = @"Nil parameter in '| string'";
LABEL_71:
              CFStringGetCString(v26, buffer, 5000, 0x8000100u);
              yyerror(buffer);
              v15 = 0;
              break;
          }

LABEL_76:
          v27 = v1 - 8 * v14;
          v4 -= 2 * v14;
          *(v27 + 1) = v15;
          v1 = v27 + 8;
          v28 = yyr1[v13] - 12;
          v29 = *v4 + yypgoto[v28];
          if (v29 <= 0x16 && *v4 == yycheck[v29])
          {
            v0 = yytable[v29];
          }

          else
          {
            v0 = yydefgoto[v28];
          }

          goto LABEL_80;
        }

        if (v13 == 6)
        {
          if (!*(v1 - 1) || !*v1)
          {
            bzero(buffer, 0x1388uLL);
            v26 = @"Nil parameter in '| spokenCommandStringComponent stringOrIdentifierComponent'";
            goto LABEL_71;
          }

          v15 = CreateCommandParseDictionary();
          if (!v15)
          {
            bzero(buffer, 0x1388uLL);
            v19 = @"Nil dictionary in '| spokenCommandStringComponent stringOrIdentifierComponent'";
            goto LABEL_58;
          }
        }

        else
        {
          if (!*(v1 - 1) || !*v1)
          {
            bzero(buffer, 0x1388uLL);
            v26 = @"Nil parameter in '| spokenCommandStringComponent optionalComponent'";
            goto LABEL_71;
          }

          v15 = CreateCommandParseDictionary();
          if (!v15)
          {
            bzero(buffer, 0x1388uLL);
            v19 = @"Nil dictionary in '| spokenCommandStringComponent optionalComponent'";
LABEL_58:
            CFStringGetCString(v19, buffer, 5000, 0x8000100u);
            yyerror(buffer);
          }
        }

        CFRelease(*(v1 - 1));
        goto LABEL_60;
      }

LABEL_82:
      ++yynerrs;
      v31 = yysyntax_error(0, v0, yychar);
      v32 = v31;
      v30 = v42;
      if (v31 < 0x81)
      {
        v35 = 128;
      }

      else
      {
        if (v31 < 0)
        {
          v33 = -1;
        }

        else
        {
          v33 = 2 * v31;
        }

        v34 = malloc_type_malloc(v33, 0x100004077774924uLL);
        v35 = 128;
        if (v34)
        {
          v35 = v33;
          v30 = v34;
        }
      }

      if (v32 - 1 < v35)
      {
        yysyntax_error(v30, v0, yychar);
        yyerror(v30);
LABEL_93:
        v36 = 1;
        goto LABEL_94;
      }

      yyerror("syntax error");
      if (!v32)
      {
        goto LABEL_93;
      }

LABEL_92:
      yyerror("memory exhausted");
      v36 = 2;
LABEL_94:
      v7 = v5;
      goto LABEL_95;
    }

    if ((0x208440uLL >> (v11 + v9)))
    {
      goto LABEL_82;
    }

    if (v12 == 2)
    {
      v36 = 0;
      v30 = v42;
      goto LABEL_94;
    }

    if (v10 >= 1)
    {
      yychar = -2;
    }

    v0 = yytable[v12];
    *(v1 + 1) = yylval;
    v1 = (v1 + 8);
LABEL_80:
    v4 += 2;
  }

  if (v2 > 0x7CF || (2 * v2 >= 0x7D0 ? (v2 = 2000) : (v2 *= 2), (v6 = malloc_type_malloc(10 * v2 + 7, 0x1000040BDFB0063uLL)) == 0))
  {
    v30 = v42;
    goto LABEL_92;
  }

  v7 = v6;
  v8 = ((v4 - v5) >> 1) + 1;
  memcpy(v6, v5, 2 * v8);
  memcpy(&v7[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8], v3, 8 * v8);
  if (v5 != v41)
  {
    free(v5);
  }

  if (v2 > v8)
  {
    v4 = &v7[2 * v8 - 2];
    v1 = &v7[8 * v8 - 8 + ((2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8)];
    v3 = &v7[(2 * v2 + 7) & 0x7FFFFFFFFFFFFFF8];
    v5 = v7;
    goto LABEL_12;
  }

  v30 = v42;
  v36 = 1;
LABEL_95:
  if (v7 != v41)
  {
    free(v7);
  }

  if (v30 != v42)
  {
    free(v30);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

__CFDictionary *CreateCommandParseDictionary()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v25 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v8)
    {
      v9 = v8;
      CFDictionaryAddValue(Mutable, kSRCSCommandParseDictionaryKeyAttributes[0], v8);
      CFRelease(v9);
      if (v5)
      {
        CFDictionaryAddValue(v9, kSRCSCommandParseAttributePath[0], *MEMORY[0x277CBED28]);
      }
    }

    else
    {
      bzero(v24, 0x1388uLL);
      CFStringGetCString(@"Nil attributes for in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
      yyerror(v24);
    }

    v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      if (v4)
      {
        Value = CFDictionaryGetValue(v4, kSRCSCommandParseDictionaryKeyAttributes[0]);
        if (Value)
        {
          v13 = CFDictionaryContainsKey(Value, kSRCSCommandParseAttributeOptional[0]) != 0;
          if (!v2)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

        bzero(v24, 0x1388uLL);
        CFStringGetCString(@"Nil attribute for child 1 in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
        yyerror(v24);
      }

      v13 = 0;
      if (!v2)
      {
        goto LABEL_17;
      }

LABEL_14:
      v14 = CFDictionaryGetValue(v2, kSRCSCommandParseDictionaryKeyAttributes[0]);
      if (v14)
      {
        v13 = CFDictionaryContainsKey(v14, kSRCSCommandParseAttributeOptional[0]) != 0;
      }

      else
      {
        bzero(v24, 0x1388uLL);
        CFStringGetCString(@"Nil attribute for child 2 in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
        yyerror(v24);
      }

LABEL_17:
      if (v4)
      {
        v15 = CFDictionaryGetValue(v4, kSRCSCommandParseDictionaryKeyChildren[0]);
        if (v15)
        {
          v16 = v15;
          Count = CFArrayGetCount(v15);
          if (v2)
          {
            v18 = v13;
          }

          else
          {
            v18 = 1;
          }

          if (Count >= 1 && (v18 & 1) == 0)
          {
            v26.length = Count;
            v26.location = 0;
            CFArrayAppendArray(v11, v16, v26);
            goto LABEL_27;
          }

          CFArrayAppendValue(v11, v4);
          if (!v2)
          {
LABEL_33:
            CFDictionaryAddValue(Mutable, kSRCSCommandParseDictionaryKeyChildren[0], v11);
            CFRelease(v11);
            goto LABEL_34;
          }

LABEL_27:
          v19 = CFDictionaryGetValue(v2, kSRCSCommandParseDictionaryKeyChildren[0]);
          if (v19)
          {
            v20 = v19;
            v21 = CFArrayGetCount(v19);
            if (v21 < 1 || v13)
            {
              CFArrayAppendValue(v11, v2);
            }

            else
            {
              v27.length = v21;
              v27.location = 0;
              CFArrayAppendArray(v11, v20, v27);
            }
          }

          else
          {
            bzero(v24, 0x1388uLL);
            CFStringGetCString(@"Nil children 2 in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
            yyerror(v24);
          }

          goto LABEL_33;
        }

        bzero(v24, 0x1388uLL);
        CFStringGetCString(@"Nil children 1 in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
        yyerror(v24);
      }

      if (!v2)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    bzero(v24, 0x1388uLL);
    CFStringGetCString(@"Nil children in 'CreateCommandParseDictionary()'", v24, 5000, 0x8000100u);
    yyerror(v24);
  }

LABEL_34:
  v22 = *MEMORY[0x277D85DE8];
  return Mutable;
}

unint64_t yysyntax_error(_BYTE *a1, int a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((0x10B3DuLL >> a2))
  {
    v5 = a2;
    v6 = yypact[a2];
    if (a3 > 0x103)
    {
      v7 = 2;
    }

    else
    {
      v7 = yytranslate[a3];
    }

    v8 = yytname[v7];
    v9 = yytnamerr(0, v8);
    v39 = 0u;
    v38 = 0u;
    v37 = v8;
    strcpy(v36, "syntax error, unexpected %s");
    if ((0xF6C2uLL >> v5))
    {
      v10 = -v6;
    }

    else
    {
      v10 = 0;
    }

    if (23 - v6 >= 12)
    {
      v11 = 12;
    }

    else
    {
      v11 = 23 - v6;
    }

    if (v10 < v11)
    {
      v12 = 0;
      v13 = &v36[27];
      v14 = v10;
      v15 = v11;
      v16 = ", expecting %s";
      v17 = 1;
      v35 = v9;
      v18 = v9;
      while (1)
      {
        if (v14 != 1 && v14 == yycheck[v14 + v6])
        {
          if (v17 == 5)
          {
            v36[27] = 0;
            v17 = 1;
            v18 = v35;
            goto LABEL_27;
          }

          v19 = yytname[v14];
          (&v37)[v17] = v19;
          v20 = yytnamerr(0, v19);
          v21 = __CFADD__(v20, v18);
          v18 += v20;
          v22 = v21;
          --v13;
          do
          {
            v23 = *v16++;
            *++v13 = v23;
          }

          while (v23);
          ++v17;
          v12 |= v22;
          v16 = " or %s";
        }

        if (++v14 == v15)
        {
          goto LABEL_27;
        }
      }
    }

    v12 = 0;
    v17 = 1;
    v18 = v9;
LABEL_27:
    v3 = v18 - 1;
    v24 = v36;
    do
    {
      v25 = *v24++;
      ++v3;
    }

    while (v25);
    if (v12 | (v3 < v18))
    {
      v3 = -1;
      goto LABEL_31;
    }

    if (!a1)
    {
      goto LABEL_31;
    }

    v28 = 0;
    for (i = v36; ; i += v33)
    {
      v30 = *i;
      *a1 = v30;
      if (v30 != 37)
      {
        break;
      }

      if (i[1] != 115 || v28 >= v17)
      {
        goto LABEL_41;
      }

      v34 = v28 + 1;
      v32 = yytnamerr(a1, (&v37)[v28]);
      v33 = 2;
      v28 = v34;
LABEL_43:
      a1 += v32;
    }

    if (!v30)
    {
      goto LABEL_31;
    }

LABEL_41:
    v32 = 1;
    v33 = 1;
    goto LABEL_43;
  }

  v3 = 0;
LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

CFStringRef yyerror(char *cStr)
{
  sLastErrorLineNumber = 1;
  if (sLastErrorDescriptionString)
  {
    CFRelease(sLastErrorDescriptionString);
  }

  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  sLastErrorDescriptionString = result;
  return result;
}

uint64_t CreateMutableDictionaryFromSpokenCommandString(const __CFString *a1, void *a2)
{
  sResultDictionary = 0;
  sCurSpokenCommandStringOffset = 0;
  sSpokenCommandString = a1;
  sSpokenCommandStringLength = CFStringGetLength(a1);
  sLastErrorLineNumber = 0;
  if (sLastErrorDescriptionString)
  {
    CFRelease(sLastErrorDescriptionString);
    sLastErrorDescriptionString = 0;
  }

  yyparse();
  if (a2 && sLastErrorDescriptionString && CFStringGetLength(sLastErrorDescriptionString) >= 1)
  {
    v3 = sLastErrorDescriptionString;
    *a2 = sLastErrorDescriptionString;
    CFRetain(v3);
  }

  return sResultDictionary;
}

uint64_t yylex()
{
  if (!sReservedCharacterSet)
  {
    sReservedCharacterSet = CFCharacterSetCreateMutable(0);
    CFCharacterSetAddCharactersInString(sReservedCharacterSet, @"[]{}|");
  }

  if (sCurSpokenCommandStringOffset >= sSpokenCommandStringLength)
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(sSpokenCommandString, sCurSpokenCommandStringOffset);
  if (!CharacterAtIndex)
  {
    return 0;
  }

  v1 = CharacterAtIndex;
  v2 = sCurSpokenCommandStringOffset;
  if (CFCharacterSetIsCharacterMember(sReservedCharacterSet, CharacterAtIndex))
  {
    ++sCurSpokenCommandStringOffset;
    return v1;
  }

  while (1)
  {
    v4 = sCurSpokenCommandStringOffset + 1;
    sCurSpokenCommandStringOffset = v4;
    v5 = sSpokenCommandStringLength;
    if (v4 < sSpokenCommandStringLength)
    {
      v1 = CFStringGetCharacterAtIndex(sSpokenCommandString, v4);
      v4 = sCurSpokenCommandStringOffset;
      v5 = sSpokenCommandStringLength;
    }

    if (v4 >= v5)
    {
      break;
    }

    if (CFCharacterSetIsCharacterMember(sReservedCharacterSet, v1))
    {
      v4 = sCurSpokenCommandStringOffset;
      break;
    }
  }

  v6 = *MEMORY[0x277CBECE8];
  v10.length = v4 - v2;
  v10.location = v2;
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], sSpokenCommandString, v10);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  yylval = CFStringCreateMutable(v6, 0);
  CFStringAppend(yylval, v8);
  if (IsValidCommandParameterIdentifier(v8))
  {
    v3 = 258;
  }

  else
  {
    v3 = 259;
  }

  CFRelease(v8);
  if (sLastErrorSymbolString)
  {
    CFRelease(sLastErrorSymbolString);
    sLastErrorSymbolString = 0;
  }

  if (yylval)
  {
    sLastErrorSymbolString = CFStringCreateCopy(0, yylval);
  }

  return v3;
}

uint64_t yytnamerr(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    v9 = 0;
    if (a1)
    {
      do
      {
        v10 = a2[v9];
        *(a1 + v9++) = v10;
      }

      while (v10);
    }

    else
    {
        ;
      }
    }

    return v9 - 1;
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

void sub_26B46D28C()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v400 = sub_26B542AB4();
  v399 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B5450B0;
  v409[0] = 0;
  v12 = sub_26B470D98(&unk_287BF12A8);
  v13 = sub_26B470D98(&unk_287BF12D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B5450C0;
  v402 = sub_26B4C6A78();
  v15 = *v402;
  *(v14 + 32) = *v402;
  *(v14 + 40) = 1;
  *(v14 + 48) = v15;
  *(v14 + 56) = 3;
  *(v14 + 64) = v15;
  *(v14 + 72) = 8;
  *(v14 + 80) = 0x403A000000000000;
  *(v14 + 88) = 10;
  v16 = sub_26B470F10(&unk_287BF12F8);
  v408 = 4;
  v407 = 4;
  v17.value._countAndFlagsBits = 0x68507463656C6573;
  v17.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v17, 0);
  v403 = v405;
  v404 = v406;
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  *&v358 = sub_26B4D4408();
  *(&v358 + 1) = sub_26B4D4414();
  *&v320 = v13;
  *(&v320 + 1) = v14;
  v401._rawValue = v11;
  *&v282 = v12;
  *(&v282 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B550030, &unk_287BF3B80, &unk_287BF1238, &unk_287BF1270, 0, 0, v409, v11 + 32, v18 & 1, v19 & 1, v282, v320, v358, v16, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v20 = sub_26B470D98(&unk_287BF13C0);
  v21 = sub_26B470D98(&unk_287BF13E8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B5450C0;
  v23 = *v402;
  *(v22 + 32) = *v402;
  *(v22 + 40) = 1;
  *(v22 + 48) = v23;
  *(v22 + 56) = 3;
  *(v22 + 64) = v23;
  *(v22 + 72) = 8;
  *(v22 + 80) = 0x403A000000000000;
  *(v22 + 88) = 10;
  v24 = sub_26B470F10(&unk_287BF1410);
  v408 = 4;
  v407 = 4;
  v25.value._countAndFlagsBits = 0x68507463656C6573;
  v25.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v25, 0);
  v403 = v405;
  v404 = v406;
  v26 = sub_26B4CE5C8();
  v27 = sub_26B4D4400();
  *&v359 = sub_26B4D4408();
  *(&v359 + 1) = sub_26B4D4414();
  *&v321 = v21;
  *(&v321 + 1) = v22;
  *&v283 = v20;
  *(&v283 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B550050, &unk_287BF3BB0, &unk_287BF1350, &unk_287BF1388, 0, 0, v409, v11 + 216, v26 & 1, v27 & 1, v283, v321, v359, v24, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v28 = sub_26B470D98(&unk_287BF14D8);
  v29 = sub_26B470D98(&unk_287BF1500);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26B5450C0;
  v31 = *v402;
  *(v30 + 32) = *v402;
  *(v30 + 40) = 1;
  *(v30 + 48) = v31;
  *(v30 + 56) = 3;
  *(v30 + 64) = v31;
  *(v30 + 72) = 8;
  *(v30 + 80) = 0x403A000000000000;
  *(v30 + 88) = 10;
  v32 = sub_26B470F10(&unk_287BF1528);
  v408 = 4;
  v407 = 4;
  v33.value._countAndFlagsBits = 0x68507463656C6573;
  v33.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v33, 0);
  v403 = v405;
  v404 = v406;
  v34 = sub_26B4CE5C8();
  v35 = sub_26B4D4400();
  *&v360 = sub_26B4D4408();
  *(&v360 + 1) = sub_26B4D4414();
  *&v322 = v29;
  *(&v322 + 1) = v30;
  *&v284 = v28;
  *(&v284 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B550070, &unk_287BF3BE0, &unk_287BF1468, &unk_287BF14A0, 0, 0, v409, v11 + 400, v34 & 1, v35 & 1, v284, v322, v360, v32, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v36 = sub_26B470D98(&unk_287BF15C8);
  v37 = sub_26B470D98(&unk_287BF15F0);
  v38 = sub_26B471088(&unk_287BF1668);
  v39 = sub_26B470F10(&unk_287BF1690);
  v408 = 4;
  v407 = 4;
  v40.value._object = 0x800000026B5500B0;
  v40.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v40, 0);
  v403 = v405;
  v404 = v406;
  v41 = sub_26B4D43F4();
  v42 = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  *&v361 = v38;
  *(&v361 + 1) = sub_26B4D4414();
  *&v323 = v37;
  *(&v323 + 1) = &unk_287BF1618;
  *&v285 = v36;
  *(&v285 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550090, &unk_287BF3C10, &unk_287BF1590, v41, 0, 0, v409, v11 + 584, v42 & 1, v28 & 1, v285, v323, v361, v39, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v43 = sub_26B470D98(&unk_287BF1730);
  v44 = sub_26B470D98(&unk_287BF1758);
  v45 = sub_26B471088(&unk_287BF17D0);
  v46 = sub_26B470F10(&unk_287BF17F8);
  v408 = 4;
  v407 = 4;
  v47.value._object = 0x800000026B5500F0;
  v47.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v47, 0);
  v403 = v405;
  v404 = v406;
  v48 = sub_26B4D43F4();
  LOBYTE(v39) = sub_26B4CE5C8();
  v49 = sub_26B4D4400();
  *&v362 = v45;
  *(&v362 + 1) = sub_26B4D4414();
  *&v324 = v44;
  *(&v324 + 1) = &unk_287BF1780;
  *&v286 = v43;
  *(&v286 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5500D0, &unk_287BF3C40, &unk_287BF16F8, v48, 0, 0, v409, v11 + 768, v39 & 1, v49 & 1, v286, v324, v362, v46, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v50 = sub_26B470D98(&unk_287BF18E0);
  v51 = sub_26B470D98(&unk_287BF1908);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26B5450D0;
  v53 = *v402;
  *(v52 + 32) = *v402;
  *(v52 + 40) = 1;
  *(v52 + 48) = v53;
  *(v52 + 56) = 3;
  *(v52 + 64) = 0x403A000000000000;
  *(v52 + 72) = 10;
  v54 = sub_26B470F10(&unk_287BF1930);
  v408 = 4;
  v407 = 4;
  v55.value._object = 0x800000026B550130;
  v55.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v55, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v48) = sub_26B4CE5C8();
  LOBYTE(v39) = sub_26B4D4400();
  *&v363 = sub_26B4D4408();
  *(&v363 + 1) = sub_26B4D4414();
  *&v325 = v51;
  *(&v325 + 1) = v52;
  *&v287 = v50;
  *(&v287 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B550110, &unk_287BF3C70, &unk_287BF1870, &unk_287BF18A8, 0, 0, v409, v401._rawValue + 952, v48 & 1, v39 & 1, v287, v325, v363, v54, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v56 = sub_26B470D98(&unk_287BF19F8);
  v57 = sub_26B470D98(&unk_287BF1A20);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_26B5450D0;
  v59 = *v402;
  *(v58 + 32) = *v402;
  *(v58 + 40) = 1;
  *(v58 + 48) = v59;
  *(v58 + 56) = 3;
  *(v58 + 64) = 0x403A000000000000;
  *(v58 + 72) = 10;
  v60 = sub_26B470F10(&unk_287BF1A48);
  v408 = 4;
  v407 = 4;
  v61.value._countAndFlagsBits = 0x68507463656C6573;
  v61.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v61, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v39) = sub_26B4CE5C8();
  v62 = sub_26B4D4400();
  *&v364 = sub_26B4D4408();
  *(&v364 + 1) = sub_26B4D4414();
  *&v326 = v57;
  *(&v326 + 1) = v58;
  *&v288 = v56;
  *(&v288 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B550150, &unk_287BF3CA0, &unk_287BF1988, &unk_287BF19C0, 0, 0, v409, v401._rawValue + 1136, v39 & 1, v62 & 1, v288, v326, v364, v60, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v396 = sub_26B470D98(&unk_287BF1AF8);
  v63 = sub_26B470D98(&unk_287BF1B20);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26B5450C0;
  v65 = *v402;
  *(v64 + 32) = *v402;
  *(v64 + 40) = 1;
  *(v64 + 48) = v65;
  *(v64 + 56) = 3;
  *(v64 + 64) = v65;
  *(v64 + 72) = 8;
  *(v64 + 80) = 0x403A000000000000;
  *(v64 + 88) = 10;
  v408 = 4;
  v407 = 4;
  v66.value._countAndFlagsBits = 0x6E556D6574737973;
  v67.value._object = 0x800000026B550170;
  v67.value._countAndFlagsBits = 0xD000000000000012;
  v66.value._object = 0xEA00000000006F64;
  Action.init(_:mac:)(v67, v66);
  v403 = v405;
  v404 = v406;
  v68 = sub_26B4D43F4();
  LOBYTE(v60) = sub_26B4CE5C8();
  v69 = sub_26B4D4400();
  v70 = sub_26B4D4408();
  v71 = sub_26B4D4414();
  v72 = sub_26B4D4414();
  *&v365 = v70;
  *(&v365 + 1) = v71;
  *&v327 = v63;
  *(&v327 + 1) = v64;
  *(&v289 + 1) = MEMORY[0x277D84FA0];
  *&v289 = v396;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x552E6D6574737953, 0xEB000000006F646ELL, &unk_287BF3CD0, &unk_287BF1AC0, v68, 0, 0, v409, v401._rawValue + 1320, v60 & 1, v69 & 1, v289, v327, v365, v72, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v73 = sub_26B470D98(&unk_287BF1BC0);
  v74 = sub_26B470D98(&unk_287BF1BE8);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_26B5450C0;
  v76 = *v402;
  *(v75 + 32) = *v402;
  *(v75 + 40) = 1;
  *(v75 + 48) = v76;
  *(v75 + 56) = 3;
  *(v75 + 64) = v76;
  *(v75 + 72) = 8;
  *(v75 + 80) = 0x403A000000000000;
  *(v75 + 88) = 10;
  v408 = 4;
  v407 = 4;
  v77.value._countAndFlagsBits = 0x65526D6574737973;
  v78.value._object = 0x800000026B550190;
  v78.value._countAndFlagsBits = 0xD000000000000012;
  v77.value._object = 0xEA00000000006F64;
  Action.init(_:mac:)(v78, v77);
  v403 = v405;
  v404 = v406;
  v79 = sub_26B4D43F4();
  LOBYTE(v60) = sub_26B4CE5C8();
  v80 = sub_26B4D4400();
  v81 = sub_26B4D4408();
  v82 = sub_26B4D4414();
  v83 = sub_26B4D4414();
  *&v366 = v81;
  *(&v366 + 1) = v82;
  *&v328 = v74;
  *(&v328 + 1) = v75;
  *&v290 = v73;
  *(&v290 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x522E6D6574737953, 0xEB000000006F6465, &unk_287BF3D00, &unk_287BF1B88, v79, 0, 0, v409, v401._rawValue + 1504, v60 & 1, v80 & 1, v290, v328, v366, v83, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v84 = sub_26B470D98(&unk_287BF1CB0);
  v85 = sub_26B470D98(&unk_287BF1CD8);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26B5450D0;
  v87 = *v402;
  *(v86 + 32) = *v402;
  *(v86 + 40) = 1;
  *(v86 + 48) = v87;
  *(v86 + 56) = 3;
  *(v86 + 64) = v87;
  *(v86 + 72) = 8;
  v408 = 4;
  v407 = 4;
  v88.value._countAndFlagsBits = 0x616F626574736170;
  v88.value._object = 0xEE003A7475436472;
  v89.value._countAndFlagsBits = 0x75436D6574737973;
  v89.value._object = 0xE900000000000074;
  Action.init(_:mac:)(v88, v89);
  v403 = v405;
  v404 = v406;
  v90 = sub_26B4D43F4();
  LOBYTE(v60) = sub_26B4CE5C8();
  v91 = sub_26B4D4400();
  v92 = sub_26B4D4408();
  v93 = sub_26B4D4414();
  v94 = sub_26B4D4414();
  *&v367 = v92;
  *(&v367 + 1) = v93;
  *&v329 = v85;
  *(&v329 + 1) = v86;
  *&v291 = v84;
  *(&v291 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x432E6D6574737953, 0xEA00000000007475, &unk_287BF3D30, &unk_287BF1C60, v90, 0, 0, v409, v401._rawValue + 1688, v60 & 1, v91 & 1, v291, v329, v367, v94, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v95 = sub_26B470D98(&unk_287BF1DA0);
  v96 = sub_26B470D98(&unk_287BF1DC8);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B5450D0;
  v98 = *v402;
  *(v97 + 32) = *v402;
  *(v97 + 40) = 1;
  *(v97 + 48) = v98;
  *(v97 + 56) = 3;
  *(v97 + 64) = v98;
  *(v97 + 72) = 8;
  v408 = 4;
  v407 = 4;
  v99.value._object = 0xEF3A79706F436472;
  v100.value._countAndFlagsBits = 0x6F436D6574737973;
  v100.value._object = 0xEA00000000007970;
  v99.value._countAndFlagsBits = 0x616F626574736170;
  Action.init(_:mac:)(v99, v100);
  v403 = v405;
  v404 = v406;
  v101 = sub_26B4D43F4();
  LOBYTE(v60) = sub_26B4CE5C8();
  v102 = sub_26B4D4400();
  v103 = sub_26B4D4408();
  v104 = sub_26B4D4414();
  v105 = sub_26B4D4414();
  *&v368 = v103;
  *(&v368 + 1) = v104;
  *&v330 = v96;
  *(&v330 + 1) = v97;
  *&v292 = v95;
  *(&v292 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x432E6D6574737953, 0xEB0000000079706FLL, &unk_287BF3D60, &unk_287BF1D50, v101, 0, 0, v409, v401._rawValue + 1872, v60 & 1, v102 & 1, v292, v330, v368, v105, &v408, &v407, 0, 0, &v403);
  v409[0] = 0;
  v397 = sub_26B470D98(&unk_287BF1E90);
  v106 = sub_26B470D98(&unk_287BF1EB8);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B5450D0;
  v108 = *v402;
  *(v107 + 32) = *v402;
  *(v107 + 40) = 1;
  *(v107 + 48) = v108;
  *(v107 + 56) = 3;
  *(v107 + 64) = v108;
  *(v107 + 72) = 8;
  v408 = 4;
  v407 = 4;
  v109.value._countAndFlagsBits = 0x61506D6574737973;
  v109.value._object = 0xEB00000000657473;
  v110.value._object = 0x800000026B5501B0;
  v110.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v110, v109);
  v403 = v405;
  v404 = v406;
  v111 = sub_26B4D43F4();
  v112 = sub_26B4CE5C8();
  LOBYTE(v103) = sub_26B4D4400();
  v113 = sub_26B4D4408();
  v114 = sub_26B4D4414();
  v115 = sub_26B4D4414();
  *&v369 = v113;
  *(&v369 + 1) = v114;
  *&v331 = v106;
  *(&v331 + 1) = v107;
  *(&v293 + 1) = MEMORY[0x277D84FA0];
  *&v293 = v397;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x502E6D6574737953, 0xEC00000065747361, &unk_287BF3D90, &unk_287BF1E40, v111, 0, 0, v409, v401._rawValue + 2056, v112 & 1, v103 & 1, v293, v331, v369, v115, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v116 = sub_26B470D98(&unk_287BF1F98);
  v117 = sub_26B470D98(&unk_287BF1FC0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_26B5450C0;
  v119 = *v402;
  *(v118 + 32) = *v402;
  *(v118 + 40) = 1;
  *(v118 + 48) = v119;
  *(v118 + 56) = 3;
  *(v118 + 64) = v119;
  *(v118 + 72) = 8;
  *(v118 + 80) = 0x403A000000000000;
  *(v118 + 88) = 10;
  v120 = sub_26B470F10(&unk_287BF1FE8);
  v408 = 4;
  v407 = 4;
  v121.value._countAndFlagsBits = 0x726F46796C707061;
  v121.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v121, 0);
  v403 = v405;
  v404 = v406;
  v122 = sub_26B4D43F4();
  LOBYTE(v103) = sub_26B4CE5C8();
  LOBYTE(v97) = sub_26B4D4400();
  *&v370 = sub_26B4D4408();
  *(&v370 + 1) = sub_26B4D4414();
  *&v332 = v117;
  *(&v332 + 1) = v118;
  *&v294 = v116;
  *(&v294 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5501D0, &unk_287BF3DC0, &unk_287BF1F60, v122, 0, 0, v409, v401._rawValue + 2240, v103 & 1, v97 & 1, v294, v332, v370, v120, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v398 = sub_26B470D98(&unk_287BF20B0);
  v123 = sub_26B470D98(&unk_287BF20D8);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_26B5450C0;
  v125 = *v402;
  *(v124 + 32) = *v402;
  *(v124 + 40) = 1;
  *(v124 + 48) = v125;
  *(v124 + 56) = 3;
  *(v124 + 64) = v125;
  *(v124 + 72) = 8;
  *(v124 + 80) = 0x403A000000000000;
  *(v124 + 88) = 10;
  v126 = sub_26B470F10(&unk_287BF2100);
  v408 = 4;
  v407 = 4;
  v127.value._countAndFlagsBits = 0x68507463656C6573;
  v127.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v127, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v120) = sub_26B4CE5C8();
  LOBYTE(v103) = sub_26B4D4400();
  *&v371 = sub_26B4D4408();
  *(&v371 + 1) = sub_26B4D4414();
  *&v333 = v123;
  *(&v333 + 1) = v124;
  *(&v295 + 1) = MEMORY[0x277D84FA0];
  *&v295 = v398;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5501F0, &unk_287BF3DF0, &unk_287BF2040, &unk_287BF2078, 0, 0, v409, v401._rawValue + 2424, v120 & 1, v103 & 1, v295, v333, v371, v126, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v128 = sub_26B470D98(&unk_287BF21B0);
  v129 = sub_26B470D98(&unk_287BF21D8);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_26B5450C0;
  v131 = *v402;
  *(v130 + 32) = *v402;
  *(v130 + 40) = 1;
  *(v130 + 48) = v131;
  *(v130 + 56) = 3;
  *(v130 + 64) = v131;
  *(v130 + 72) = 8;
  *(v130 + 80) = 0x403A000000000000;
  *(v130 + 88) = 10;
  v132 = sub_26B470F10(&unk_287BF2200);
  v408 = 4;
  v407 = 4;
  v133.value._countAndFlagsBits = 0x726F46796C707061;
  v133.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v133, 0);
  v403 = v405;
  v404 = v406;
  v134 = sub_26B4D43F4();
  LOBYTE(v120) = sub_26B4CE5C8();
  LOBYTE(v103) = sub_26B4D4400();
  *&v372 = sub_26B4D4408();
  *(&v372 + 1) = sub_26B4D4414();
  *&v334 = v129;
  *(&v334 + 1) = v130;
  *&v296 = v128;
  *(&v296 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B550210, &unk_287BF3E20, &unk_287BF2178, v134, 0, 0, v409, v401._rawValue + 2608, v120 & 1, v103 & 1, v296, v334, v372, v132, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v135 = sub_26B470D98(&unk_287BF22C8);
  v136 = sub_26B470D98(&unk_287BF22F0);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B5450C0;
  v138 = *v402;
  *(v137 + 32) = *v402;
  *(v137 + 40) = 1;
  *(v137 + 48) = v138;
  *(v137 + 56) = 3;
  *(v137 + 64) = v138;
  *(v137 + 72) = 8;
  *(v137 + 80) = 0x403A000000000000;
  *(v137 + 88) = 10;
  v139 = sub_26B470F10(&unk_287BF2318);
  v408 = 4;
  v407 = 4;
  v140.value._countAndFlagsBits = 0x68507463656C6573;
  v140.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v140, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v373 = sub_26B4D4408();
  *(&v373 + 1) = sub_26B4D4414();
  *&v335 = v136;
  *(&v335 + 1) = v137;
  *&v297 = v135;
  *(&v297 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550230, &unk_287BF3E50, &unk_287BF2258, &unk_287BF2290, 0, 0, v409, v401._rawValue + 2792, v85 & 1, v120 & 1, v297, v335, v373, v139, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v141 = sub_26B470D98(&unk_287BF23C8);
  v142 = sub_26B470D98(&unk_287BF23F0);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_26B5450C0;
  v144 = *v402;
  *(v143 + 32) = *v402;
  *(v143 + 40) = 1;
  *(v143 + 48) = v144;
  *(v143 + 56) = 3;
  *(v143 + 64) = v144;
  *(v143 + 72) = 8;
  *(v143 + 80) = 0x403A000000000000;
  *(v143 + 88) = 10;
  v145 = sub_26B470F10(&unk_287BF2418);
  v408 = 4;
  v407 = 4;
  v146.value._countAndFlagsBits = 0x726F46796C707061;
  v146.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v146, 0);
  v403 = v405;
  v404 = v406;
  v147 = sub_26B4D43F4();
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v374 = sub_26B4D4408();
  *(&v374 + 1) = sub_26B4D4414();
  *&v336 = v142;
  *(&v336 + 1) = v143;
  *&v298 = v141;
  *(&v298 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B550250, &unk_287BF3E80, &unk_287BF2390, v147, 0, 0, v409, v401._rawValue + 2976, v85 & 1, v120 & 1, v298, v336, v374, v145, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v148 = sub_26B470D98(&unk_287BF24E0);
  v149 = sub_26B470D98(&unk_287BF2508);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B5450C0;
  v151 = *v402;
  *(v150 + 32) = *v402;
  *(v150 + 40) = 1;
  *(v150 + 48) = v151;
  *(v150 + 56) = 3;
  *(v150 + 64) = v151;
  *(v150 + 72) = 8;
  *(v150 + 80) = 0x403A000000000000;
  *(v150 + 88) = 10;
  v152 = sub_26B470F10(&unk_287BF2530);
  v408 = 4;
  v407 = 4;
  v153.value._countAndFlagsBits = 0x68507463656C6573;
  v153.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v153, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v375 = sub_26B4D4408();
  *(&v375 + 1) = sub_26B4D4414();
  *&v337 = v149;
  *(&v337 + 1) = v150;
  *&v299 = v148;
  *(&v299 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550270, &unk_287BF3EB0, &unk_287BF2470, &unk_287BF24A8, 0, 0, v409, v401._rawValue + 3160, v85 & 1, v120 & 1, v299, v337, v375, v152, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v154 = sub_26B470D98(&unk_287BF2618);
  v155 = sub_26B470D98(&unk_287BF2640);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_26B5450D0;
  v157 = *v402;
  *(v156 + 32) = *v402;
  *(v156 + 40) = 1;
  *(v156 + 48) = v157;
  *(v156 + 56) = 3;
  *(v156 + 64) = v157;
  *(v156 + 72) = 8;
  v158 = sub_26B470F10(&unk_287BF2668);
  v408 = 4;
  v407 = 4;
  v159.value._countAndFlagsBits = 0x726F46796C707061;
  v159.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v159, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v376 = sub_26B4D4408();
  *(&v376 + 1) = sub_26B4D4414();
  *&v338 = v155;
  *(&v338 + 1) = v156;
  *&v300 = v154;
  *(&v300 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x726F462E74786554, 0xEF646C6F4274616DLL, &unk_287BF3EE0, &unk_287BF25A8, &unk_287BF25E0, 0, 0, v409, v401._rawValue + 3344, v85 & 1, v120 & 1, v300, v338, v376, v158, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v160 = sub_26B470D98(&unk_287BF2730);
  v161 = sub_26B470D98(&unk_287BF2758);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_26B5450D0;
  v163 = *v402;
  *(v162 + 32) = *v402;
  *(v162 + 40) = 1;
  *(v162 + 48) = v163;
  *(v162 + 56) = 3;
  *(v162 + 64) = v163;
  *(v162 + 72) = 8;
  v164 = sub_26B470F10(&unk_287BF2780);
  v408 = 4;
  v407 = 4;
  v165.value._countAndFlagsBits = 0x68507463656C6573;
  v165.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v165, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v377 = sub_26B4D4408();
  *(&v377 + 1) = sub_26B4D4414();
  *&v339 = v161;
  *(&v339 + 1) = v162;
  *&v301 = v160;
  *(&v301 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B550290, &unk_287BF3F10, &unk_287BF26C0, &unk_287BF26F8, 0, 0, v409, v401._rawValue + 3528, v85 & 1, v120 & 1, v301, v339, v377, v164, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v166 = sub_26B470D98(&unk_287BF2868);
  v167 = sub_26B470D98(&unk_287BF2890);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B5450D0;
  v169 = *v402;
  *(v168 + 32) = *v402;
  *(v168 + 40) = 1;
  *(v168 + 48) = v169;
  *(v168 + 56) = 3;
  *(v168 + 64) = v169;
  *(v168 + 72) = 8;
  v170 = sub_26B470F10(&unk_287BF28B8);
  v408 = 4;
  v407 = 4;
  v171.value._countAndFlagsBits = 0x726F46796C707061;
  v171.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v171, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v378 = sub_26B4D4408();
  *(&v378 + 1) = sub_26B4D4414();
  *&v340 = v167;
  *(&v340 + 1) = v168;
  *&v302 = v166;
  *(&v302 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B5502B0, &unk_287BF3F40, &unk_287BF27F8, &unk_287BF2830, 0, 0, v409, v401._rawValue + 3712, v85 & 1, v120 & 1, v302, v340, v378, v170, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v172 = sub_26B470D98(&unk_287BF2980);
  v173 = sub_26B470D98(&unk_287BF29A8);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B5450D0;
  v175 = *v402;
  *(v174 + 32) = *v402;
  *(v174 + 40) = 1;
  *(v174 + 48) = v175;
  *(v174 + 56) = 3;
  *(v174 + 64) = v175;
  *(v174 + 72) = 8;
  v176 = sub_26B470F10(&unk_287BF29D0);
  v408 = 4;
  v407 = 4;
  v177.value._countAndFlagsBits = 0x68507463656C6573;
  v177.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v177, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v379 = sub_26B4D4408();
  *(&v379 + 1) = sub_26B4D4414();
  *&v341 = v173;
  *(&v341 + 1) = v174;
  *&v303 = v172;
  *(&v303 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B5502D0, &unk_287BF3F70, &unk_287BF2910, &unk_287BF2948, 0, 0, v409, v401._rawValue + 3896, v85 & 1, v120 & 1, v303, v341, v379, v176, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v178 = sub_26B470D98(&unk_287BF2AB8);
  v179 = sub_26B470D98(&unk_287BF2AE0);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_26B5450C0;
  v181 = *v402;
  *(v180 + 32) = *v402;
  *(v180 + 40) = 1;
  *(v180 + 48) = v181;
  *(v180 + 56) = 3;
  *(v180 + 64) = v181;
  *(v180 + 72) = 8;
  *(v180 + 80) = 0x403A000000000000;
  *(v180 + 88) = 10;
  v182 = sub_26B470F10(&unk_287BF2B08);
  v408 = 4;
  v407 = 4;
  v183.value._countAndFlagsBits = 0x726F46796C707061;
  v183.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v183, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v85) = sub_26B4CE5C8();
  LOBYTE(v120) = sub_26B4D4400();
  *&v380 = sub_26B4D4408();
  *(&v380 + 1) = sub_26B4D4414();
  *&v342 = v179;
  *(&v342 + 1) = v180;
  *&v304 = v178;
  *(&v304 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5502F0, &unk_287BF3FA0, &unk_287BF2A48, &unk_287BF2A80, 0, 0, v409, v401._rawValue + 4080, v85 & 1, v120 & 1, v304, v342, v380, v182, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v184 = sub_26B470D98(&unk_287BF2BD0);
  v185 = sub_26B470D98(&unk_287BF2BF8);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_26B5450C0;
  v187 = *v402;
  *(v186 + 32) = *v402;
  *(v186 + 40) = 1;
  *(v186 + 48) = v187;
  *(v186 + 56) = 3;
  *(v186 + 64) = v187;
  *(v186 + 72) = 8;
  *(v186 + 80) = 0x403A000000000000;
  *(v186 + 88) = 10;
  v188 = sub_26B470F10(&unk_287BF2C20);
  v408 = 4;
  v407 = 4;
  v189.value._countAndFlagsBits = 0x68507463656C6573;
  v189.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v189, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v103) = sub_26B4CE5C8();
  LOBYTE(v179) = sub_26B4D4400();
  *&v381 = sub_26B4D4408();
  *(&v381 + 1) = sub_26B4D4414();
  *&v343 = v185;
  *(&v343 + 1) = v186;
  *&v305 = v184;
  *(&v305 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B550310, &unk_287BF3FD0, &unk_287BF2B60, &unk_287BF2B98, 0, 0, v409, v401._rawValue + 4264, v103 & 1, v179 & 1, v305, v343, v381, v188, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v190 = sub_26B470D98(&unk_287BF2D08);
  v191 = sub_26B470D98(&unk_287BF2D30);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_26B5450C0;
  v193 = *v402;
  *(v192 + 32) = *v402;
  *(v192 + 40) = 1;
  *(v192 + 48) = v193;
  *(v192 + 56) = 3;
  *(v192 + 64) = v193;
  *(v192 + 72) = 8;
  *(v192 + 80) = 0x403A000000000000;
  *(v192 + 88) = 10;
  v194 = sub_26B470F10(&unk_287BF2D58);
  v408 = 4;
  v407 = 4;
  v195.value._object = 0x800000026B550360;
  v195.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v195, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v103) = sub_26B4CE5C8();
  LOBYTE(v179) = sub_26B4D4400();
  *&v382 = sub_26B4D4408();
  *(&v382 + 1) = sub_26B4D4414();
  *&v344 = v191;
  *(&v344 + 1) = v192;
  *&v306 = v190;
  *(&v306 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B550330, &unk_287BF4000, &unk_287BF2C98, &unk_287BF2CD0, 0, 0, v409, v401._rawValue + 4448, v103 & 1, v179 & 1, v306, v344, v382, v194, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v196 = sub_26B470D98(&unk_287BF2E20);
  v197 = sub_26B470D98(&unk_287BF2E48);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B5450C0;
  v199 = *v402;
  *(v198 + 32) = *v402;
  *(v198 + 40) = 1;
  *(v198 + 48) = v199;
  *(v198 + 56) = 3;
  *(v198 + 64) = v199;
  *(v198 + 72) = 8;
  *(v198 + 80) = 0x403A000000000000;
  *(v198 + 88) = 10;
  v200 = sub_26B470F10(&unk_287BF2E70);
  v408 = 4;
  v407 = 4;
  v201.value._countAndFlagsBits = 0x68507463656C6573;
  v201.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v201, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v103) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v383 = sub_26B4D4408();
  *(&v383 + 1) = sub_26B4D4414();
  *&v345 = v197;
  *(&v345 + 1) = v198;
  *&v307 = v196;
  *(&v307 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B550390, &unk_287BF4030, &unk_287BF2DB0, &unk_287BF2DE8, 0, 0, v409, v401._rawValue + 4632, v103 & 1, v180 & 1, v307, v345, v383, v200, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v202 = sub_26B470D98(&unk_287BF2F50);
  v203 = sub_26B470D98(&unk_287BF2F78);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_26B5450C0;
  v205 = *v402;
  *(v204 + 32) = *v402;
  *(v204 + 40) = 1;
  *(v204 + 48) = v205;
  *(v204 + 56) = 3;
  *(v204 + 64) = v205;
  *(v204 + 72) = 8;
  *(v204 + 80) = 0x403A000000000000;
  *(v204 + 88) = 10;
  v206 = sub_26B470F10(&unk_287BF2FA0);
  v408 = 4;
  v407 = 4;
  v207.value._object = 0x800000026B550360;
  v207.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v207, 0);
  v403 = v405;
  v404 = v406;
  v208 = sub_26B4D43F4();
  LOBYTE(v180) = sub_26B4CE5C8();
  LOBYTE(v147) = sub_26B4D4400();
  *&v384 = sub_26B4D4408();
  *(&v384 + 1) = sub_26B4D4414();
  *&v346 = v203;
  *(&v346 + 1) = v204;
  *&v308 = v202;
  *(&v308 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B5503C0, &unk_287BF4060, &unk_287BF2F18, v208, 0, 0, v409, v401._rawValue + 4816, v180 & 1, v147 & 1, v308, v346, v384, v206, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v209 = sub_26B470D98(&unk_287BF3078);
  v210 = sub_26B470D98(&unk_287BF30A0);
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_26B5450C0;
  v212 = *v402;
  *(v211 + 32) = *v402;
  *(v211 + 40) = 1;
  *(v211 + 48) = v212;
  *(v211 + 56) = 3;
  *(v211 + 64) = v212;
  *(v211 + 72) = 8;
  *(v211 + 80) = 0x403A000000000000;
  *(v211 + 88) = 10;
  v213 = sub_26B470F10(&unk_287BF30C8);
  v408 = 4;
  v407 = 4;
  v214.value._countAndFlagsBits = 0x68507463656C6573;
  v214.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v214, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v208) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v385 = sub_26B4D4408();
  *(&v385 + 1) = sub_26B4D4414();
  *&v347 = v210;
  *(&v347 + 1) = v211;
  *&v309 = v209;
  *(&v309 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B5503F0, &unk_287BF4090, &unk_287BF3008, &unk_287BF3040, 0, 0, v409, v401._rawValue + 5000, v208 & 1, v180 & 1, v309, v347, v385, v213, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v215 = sub_26B470D98(&unk_287BF31A0);
  v216 = sub_26B470D98(&unk_287BF31C8);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B5450C0;
  v218 = *v402;
  *(v217 + 32) = *v402;
  *(v217 + 40) = 1;
  *(v217 + 48) = v218;
  *(v217 + 56) = 3;
  *(v217 + 64) = v218;
  *(v217 + 72) = 8;
  *(v217 + 80) = 0x403A000000000000;
  *(v217 + 88) = 10;
  v219 = sub_26B470F10(&unk_287BF31F0);
  v408 = 4;
  v407 = 4;
  v220.value._object = 0x800000026B550360;
  v220.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v220, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v208) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v386 = sub_26B4D4408();
  *(&v386 + 1) = sub_26B4D4414();
  *&v348 = v216;
  *(&v348 + 1) = v217;
  *&v310 = v215;
  *(&v310 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B550420, &unk_287BF40C0, &unk_287BF3130, &unk_287BF3168, 0, 0, v409, v401._rawValue + 5184, v208 & 1, v180 & 1, v310, v348, v386, v219, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v221 = sub_26B470D98(&unk_287BF32B8);
  v222 = sub_26B470D98(&unk_287BF32E0);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_26B5450C0;
  v224 = *v402;
  *(v223 + 32) = *v402;
  *(v223 + 40) = 1;
  *(v223 + 48) = v224;
  *(v223 + 56) = 3;
  *(v223 + 64) = v224;
  *(v223 + 72) = 8;
  *(v223 + 80) = 0x403A000000000000;
  *(v223 + 88) = 10;
  v225 = sub_26B470F10(&unk_287BF3308);
  v408 = 4;
  v407 = 4;
  v226.value._countAndFlagsBits = 0x68507463656C6573;
  v226.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v226, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v208) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v387 = sub_26B4D4408();
  *(&v387 + 1) = sub_26B4D4414();
  *&v349 = v222;
  *(&v349 + 1) = v223;
  *&v311 = v221;
  *(&v311 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B550450, &unk_287BF40F0, &unk_287BF3248, &unk_287BF3280, 0, 0, v409, v401._rawValue + 5368, v208 & 1, v180 & 1, v311, v349, v387, v225, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v227 = sub_26B470D98(&unk_287BF33C8);
  v228 = sub_26B470D98(&unk_287BF33F0);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_26B5450C0;
  v230 = *v402;
  *(v229 + 32) = *v402;
  *(v229 + 40) = 1;
  *(v229 + 48) = v230;
  *(v229 + 56) = 3;
  *(v229 + 64) = v230;
  *(v229 + 72) = 8;
  *(v229 + 80) = 0x403A000000000000;
  *(v229 + 88) = 10;
  v231 = sub_26B470F10(&unk_287BF3418);
  v408 = 4;
  v407 = 4;
  v232.value._object = 0x800000026B550360;
  v232.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v232, 0);
  v403 = v405;
  v404 = v406;
  v233 = sub_26B4D43F4();
  LOBYTE(v223) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v388 = sub_26B4D4408();
  *(&v388 + 1) = sub_26B4D4414();
  *&v350 = v228;
  *(&v350 + 1) = v229;
  *&v312 = v227;
  *(&v312 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B550480, &unk_287BF4120, &unk_287BF3390, v233, 0, 0, v409, v401._rawValue + 5552, v223 & 1, v180 & 1, v312, v350, v388, v231, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v234 = sub_26B470D98(&unk_287BF34F0);
  v235 = sub_26B470D98(&unk_287BF3518);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_26B5450C0;
  v237 = *v402;
  *(v236 + 32) = *v402;
  *(v236 + 40) = 1;
  *(v236 + 48) = v237;
  *(v236 + 56) = 3;
  *(v236 + 64) = v237;
  *(v236 + 72) = 8;
  *(v236 + 80) = 0x403A000000000000;
  *(v236 + 88) = 10;
  v238 = sub_26B470F10(&unk_287BF3540);
  v408 = 4;
  v407 = 4;
  v239.value._countAndFlagsBits = 0x68507463656C6573;
  v239.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v239, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v233) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v389 = sub_26B4D4408();
  *(&v389 + 1) = sub_26B4D4414();
  *&v351 = v235;
  *(&v351 + 1) = v236;
  *&v313 = v234;
  *(&v313 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B5504B0, &unk_287BF4150, &unk_287BF3480, &unk_287BF34B8, 0, 0, v409, v401._rawValue + 5736, v233 & 1, v223 & 1, v313, v351, v389, v238, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v240 = sub_26B470D98(&unk_287BF35E0);
  v241 = sub_26B470D98(&unk_287BF3608);
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_26B5450C0;
  v243 = *v402;
  *(v242 + 32) = *v402;
  *(v242 + 40) = 1;
  *(v242 + 48) = v243;
  *(v242 + 56) = 3;
  *(v242 + 64) = v243;
  *(v242 + 72) = 8;
  *(v242 + 80) = 0x403A000000000000;
  *(v242 + 88) = 10;
  v244 = sub_26B470F10(&unk_287BF3630);
  v408 = 4;
  v407 = 4;
  v245.value._object = 0x800000026B550360;
  v245.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v245, 0);
  v403 = v405;
  v404 = v406;
  v246 = sub_26B4D43F4();
  LOBYTE(v223) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v390 = sub_26B4D4408();
  *(&v390 + 1) = sub_26B4D4414();
  *&v352 = v241;
  *(&v352 + 1) = v242;
  *&v314 = v240;
  *(&v314 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B5504E0, &unk_287BF4180, &unk_287BF35A8, v246, 0, 0, v409, v401._rawValue + 5920, v223 & 1, v180 & 1, v314, v352, v390, v244, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v247 = sub_26B470D98(&unk_287BF36F8);
  v248 = sub_26B470D98(&unk_287BF3720);
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_26B5450C0;
  v250 = *v402;
  *(v249 + 32) = *v402;
  *(v249 + 40) = 1;
  *(v249 + 48) = v250;
  *(v249 + 56) = 3;
  *(v249 + 64) = v250;
  *(v249 + 72) = 8;
  *(v249 + 80) = 0x403A000000000000;
  *(v249 + 88) = 10;
  v251 = sub_26B470F10(&unk_287BF3748);
  v408 = 4;
  v407 = 4;
  v252.value._countAndFlagsBits = 0x68507463656C6573;
  v252.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v252, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v246) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v391 = sub_26B4D4408();
  *(&v391 + 1) = sub_26B4D4414();
  *&v353 = v248;
  *(&v353 + 1) = v249;
  *&v315 = v247;
  *(&v315 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B550510, &unk_287BF41B0, &unk_287BF3688, &unk_287BF36C0, 0, 0, v409, v401._rawValue + 6104, v246 & 1, v180 & 1, v315, v353, v391, v251, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v253 = sub_26B470D98(&unk_287BF37E8);
  v254 = sub_26B470D98(&unk_287BF3810);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_26B5450C0;
  v256 = *v402;
  *(v255 + 32) = *v402;
  *(v255 + 40) = 1;
  *(v255 + 48) = v256;
  *(v255 + 56) = 3;
  *(v255 + 64) = v256;
  *(v255 + 72) = 8;
  *(v255 + 80) = 0x403A000000000000;
  *(v255 + 88) = 10;
  v257 = sub_26B470F10(&unk_287BF3838);
  v408 = 4;
  v407 = 4;
  v258.value._object = 0x800000026B550360;
  v258.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v258, 0);
  v403 = v405;
  v404 = v406;
  v259 = sub_26B4D43F4();
  LOBYTE(v180) = sub_26B4CE5C8();
  LOBYTE(v147) = sub_26B4D4400();
  *&v392 = sub_26B4D4408();
  *(&v392 + 1) = sub_26B4D4414();
  *&v354 = v254;
  *(&v354 + 1) = v255;
  *&v316 = v253;
  *(&v316 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B550530, &unk_287BF41E0, &unk_287BF37B0, v259, 0, 0, v409, v401._rawValue + 6288, v180 & 1, v147 & 1, v316, v354, v392, v257, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v260 = sub_26B470D98(&unk_287BF3900);
  v261 = sub_26B470D98(&unk_287BF3928);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_26B5450C0;
  v263 = *v402;
  *(v262 + 32) = *v402;
  *(v262 + 40) = 1;
  *(v262 + 48) = v263;
  *(v262 + 56) = 3;
  *(v262 + 64) = v263;
  *(v262 + 72) = 8;
  *(v262 + 80) = 0x403A000000000000;
  *(v262 + 88) = 10;
  v264 = sub_26B470F10(&unk_287BF3950);
  v408 = 4;
  v407 = 4;
  v265.value._countAndFlagsBits = 0x68507463656C6573;
  v265.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v265, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v259) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v393 = sub_26B4D4408();
  *(&v393 + 1) = sub_26B4D4414();
  *&v355 = v261;
  *(&v355 + 1) = v262;
  *&v317 = v260;
  *(&v317 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B550560, &unk_287BF4210, &unk_287BF3890, &unk_287BF38C8, 0, 0, v409, v401._rawValue + 6472, v259 & 1, v180 & 1, v317, v355, v393, v264, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v266 = sub_26B470D98(&unk_287BF39F0);
  v267 = sub_26B470D98(&unk_287BF3A18);
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_26B5450C0;
  v269 = *v402;
  *(v268 + 32) = *v402;
  *(v268 + 40) = 1;
  *(v268 + 48) = v269;
  *(v268 + 56) = 3;
  *(v268 + 64) = v269;
  *(v268 + 72) = 8;
  *(v268 + 80) = 0x403A000000000000;
  *(v268 + 88) = 10;
  v270 = sub_26B470F10(&unk_287BF3A40);
  v408 = 4;
  v407 = 4;
  v271.value._object = 0x800000026B550360;
  v271.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v271, 0);
  v403 = v405;
  v404 = v406;
  v272 = sub_26B4D43F4();
  LOBYTE(v180) = sub_26B4CE5C8();
  LOBYTE(v147) = sub_26B4D4400();
  *&v394 = sub_26B4D4408();
  *(&v394 + 1) = sub_26B4D4414();
  *&v356 = v267;
  *(&v356 + 1) = v268;
  *&v318 = v266;
  *(&v318 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B550590, &unk_287BF4240, &unk_287BF39B8, v272, 0, 0, v409, v401._rawValue + 6656, v180 & 1, v147 & 1, v318, v356, v394, v270, &v408, &v407, 0, 0, &v403);
  v409[0] = 1;
  v273 = sub_26B470D98(&unk_287BF3B08);
  v274 = sub_26B470D98(&unk_287BF3B30);
  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_26B5450C0;
  v276 = *v402;
  *(v275 + 32) = *v402;
  *(v275 + 40) = 1;
  *(v275 + 48) = v276;
  *(v275 + 56) = 3;
  *(v275 + 64) = v276;
  *(v275 + 72) = 8;
  *(v275 + 80) = 0x403A000000000000;
  *(v275 + 88) = 10;
  v277 = sub_26B470F10(&unk_287BF3B58);
  v408 = 4;
  v407 = 4;
  v278.value._countAndFlagsBits = 0x68507463656C6573;
  v278.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v278, 0);
  v403 = v405;
  v404 = v406;
  LOBYTE(v268) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v395 = sub_26B4D4408();
  *(&v395 + 1) = sub_26B4D4414();
  *&v357 = v274;
  *(&v357 + 1) = v275;
  *&v319 = v273;
  *(&v319 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B5505C0, &unk_287BF4270, &unk_287BF3A98, &unk_287BF3AD0, 0, 0, v409, v401._rawValue + 6840, v268 & 1, v180 & 1, v319, v357, v395, v277, &v408, &v407, 0, 0, &v403);
  LOBYTE(v240) = sub_26B4CE5C8();
  v279 = sub_26B4D4400() & 1;
  v280._countAndFlagsBits = 0x676E6974696445;
  v280._object = 0xE700000000000000;
  v281._countAndFlagsBits = v400;
  v281._object = v399;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406C48, v280, v281, v240 & 1, v279, v401);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B470D00()
{
  if (qword_2804003C0 != -1)
  {
    swift_once();
  }

  return &stru_280406C48;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B470D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC80, &qword_26B5450E8);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v18 = a1 + 32;
    sub_26B471350();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v20 = *(v18 + v5);
      v10 = *(v3 + 40);
      result = sub_26B5429B4();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v4 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_26B4713A4();
        while (1)
        {
          v19 = *(*(v3 + 48) + v13);
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v4 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v20;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26B470F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC68, &qword_26B5450E0);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v18 = a1 + 32;
    sub_26B4712A8();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v20 = *(v18 + v5);
      v10 = *(v3 + 40);
      result = sub_26B5429B4();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v4 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_26B4712FC();
        while (1)
        {
          v19 = *(*(v3 + 48) + v13);
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v4 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v20;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26B471088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v18 = a1 + 32;
    sub_26B471200();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v20 = *(v18 + v5);
      v10 = *(v3 + 40);
      result = sub_26B5429B4();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v4 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_26B471254();
        while (1)
        {
          v19 = *(*(v3 + 48) + v13);
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v4 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v20;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26B471200()
{
  result = qword_2803FFC58;
  if (!qword_2803FFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC58);
  }

  return result;
}

unint64_t sub_26B471254()
{
  result = qword_2803FFC60;
  if (!qword_2803FFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC60);
  }

  return result;
}

unint64_t sub_26B4712A8()
{
  result = qword_2803FFC70;
  if (!qword_2803FFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC70);
  }

  return result;
}

unint64_t sub_26B4712FC()
{
  result = qword_2803FFC78;
  if (!qword_2803FFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC78);
  }

  return result;
}

unint64_t sub_26B471350()
{
  result = qword_2803FFC88;
  if (!qword_2803FFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC88);
  }

  return result;
}

unint64_t sub_26B4713A4()
{
  result = qword_2803FFC90;
  if (!qword_2803FFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC90);
  }

  return result;
}

void sub_26B4713F8()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v470 = sub_26B542AB4();
  v469 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B5450F0;
  v485[0] = 0;
  v12 = sub_26B470D98(&unk_287BF4320);
  v13 = sub_26B470D98(&unk_287BF4348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B5450C0;
  v477 = sub_26B4C6A78();
  v15 = *v477;
  *(v14 + 32) = *v477;
  *(v14 + 40) = 1;
  *(v14 + 48) = v15;
  *(v14 + 56) = 3;
  *(v14 + 64) = v15;
  *(v14 + 72) = 8;
  *(v14 + 80) = 0x403A000000000000;
  *(v14 + 88) = 10;
  v16 = sub_26B471088(&unk_287BF4370);
  v484 = 4;
  v483 = 4;
  v17.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v17.value._object = 0xE90000000000003ALL;
  v18.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v18.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v17, v18);
  v479 = v481;
  v480 = v482;
  v19 = sub_26B4D43F4();
  v20 = sub_26B4CE5C8();
  v21 = sub_26B4D4400();
  v22 = sub_26B4D4414();
  v23 = sub_26B4D4414();
  *&v408 = v16;
  *(&v408 + 1) = v22;
  *&v366 = v13;
  *(&v366 + 1) = v14;
  v478._rawValue = v11;
  *&v324 = v12;
  *(&v324 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5524B0, &unk_287BF6CC0, &unk_287BF42D0, v19, 0, 0, v485, v11 + 32, v20 & 1, v21 & 1, v324, v366, v408, v23, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v473 = sub_26B470D98(&unk_287BF4400);
  v24 = sub_26B470D98(&unk_287BF4428);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26B545100;
  *(v25 + 32) = *v477;
  *(v25 + 40) = 1;
  v26 = sub_26B471088(&unk_287BF4450);
  v484 = 4;
  v483 = 4;
  v27.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v27.value._object = 0xE90000000000003ALL;
  v28.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v28.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v27, v28);
  v479 = v481;
  v480 = v482;
  v29 = sub_26B4D43F4();
  v30 = sub_26B4CE5C8();
  LOBYTE(v22) = sub_26B4D4400();
  v31 = sub_26B4D4414();
  v32 = sub_26B4D4414();
  *&v409 = v26;
  *(&v409 + 1) = v31;
  *&v367 = v24;
  *(&v367 + 1) = v25;
  *(&v325 + 1) = MEMORY[0x277D84FA0];
  *&v325 = v473;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B5524D0, &unk_287BF6CF0, &unk_287BF43C8, v29, 0, 0, v485, v11 + 216, v30 & 1, v22 & 1, v325, v367, v409, v32, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v33 = sub_26B470D98(&unk_287BF44F8);
  v34 = sub_26B470D98(&unk_287BF4520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26B5450C0;
  v36 = *v477;
  *(v35 + 32) = *v477;
  *(v35 + 40) = 1;
  *(v35 + 48) = v36;
  *(v35 + 56) = 3;
  *(v35 + 64) = v36;
  *(v35 + 72) = 8;
  *(v35 + 80) = 0x403A000000000000;
  *(v35 + 88) = 10;
  v37 = sub_26B471088(&unk_287BF4548);
  v484 = 4;
  v483 = 4;
  v38.value._countAndFlagsBits = 0x3A705565766F6DLL;
  v39.value._countAndFlagsBits = 0x705565766F6DLL;
  v38.value._object = 0xE700000000000000;
  v39.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v38, v39);
  v479 = v481;
  v480 = v482;
  v40 = sub_26B4D43F4();
  v41 = sub_26B4CE5C8();
  LOBYTE(v22) = sub_26B4D4400();
  v42 = sub_26B4D4414();
  v43 = sub_26B4D4414();
  *&v410 = v37;
  *(&v410 + 1) = v42;
  *&v368 = v34;
  *(&v368 + 1) = v35;
  *&v326 = v33;
  *(&v326 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5524F0, &unk_287BF6D20, &unk_287BF44A8, v40, 0, 0, v485, v478._rawValue + 400, v41 & 1, v22 & 1, v326, v368, v410, v43, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v471 = sub_26B470D98(&unk_287BF45D8);
  v44 = sub_26B470D98(&unk_287BF4600);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26B545100;
  *(v45 + 32) = *v477;
  *(v45 + 40) = 1;
  v46 = sub_26B471088(&unk_287BF4628);
  v484 = 4;
  v483 = 4;
  v47.value._countAndFlagsBits = 0x3A705565766F6DLL;
  v47.value._object = 0xE700000000000000;
  v48.value._countAndFlagsBits = 0x705565766F6DLL;
  v48.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v47, v48);
  v479 = v481;
  v480 = v482;
  v49 = sub_26B4D43F4();
  LOBYTE(v42) = sub_26B4CE5C8();
  v50 = sub_26B4D4400();
  v51 = sub_26B4D4414();
  v52 = sub_26B4D4414();
  *&v411 = v46;
  *(&v411 + 1) = v51;
  *&v369 = v44;
  *(&v369 + 1) = v45;
  *(&v327 + 1) = MEMORY[0x277D84FA0];
  *&v327 = v471;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B552510, &unk_287BF6D50, &unk_287BF45A0, v49, 0, 0, v485, v478._rawValue + 584, v42 & 1, v50 & 1, v327, v369, v411, v52, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v472 = sub_26B470D98(&unk_287BF46D0);
  v53 = sub_26B470D98(&unk_287BF46F8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B5450C0;
  v55 = *v477;
  *(v54 + 32) = *v477;
  *(v54 + 40) = 1;
  *(v54 + 48) = v55;
  *(v54 + 56) = 3;
  *(v54 + 64) = v55;
  *(v54 + 72) = 8;
  *(v54 + 80) = 0x403A000000000000;
  *(v54 + 88) = 10;
  v56 = sub_26B471088(&unk_287BF4720);
  v484 = 4;
  v483 = 4;
  v57.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v57.value._object = 0xE90000000000003ALL;
  v58.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v58.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v57, v58);
  v479 = v481;
  v480 = v482;
  v59 = sub_26B4D43F4();
  LOBYTE(v42) = sub_26B4CE5C8();
  v60 = sub_26B4D4400();
  v61 = sub_26B4D4414();
  v62 = sub_26B4D4414();
  *&v412 = v56;
  *(&v412 + 1) = v61;
  *&v370 = v53;
  *(&v370 + 1) = v54;
  *(&v328 + 1) = MEMORY[0x277D84FA0];
  *&v328 = v472;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B552530, &unk_287BF6D80, &unk_287BF4680, v59, 0, 0, v485, v478._rawValue + 768, v42 & 1, v60 & 1, v328, v370, v412, v62, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v475 = sub_26B470D98(&unk_287BF47B0);
  v63 = sub_26B470D98(&unk_287BF47D8);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26B545100;
  *(v64 + 32) = *v477;
  *(v64 + 40) = 1;
  v65 = sub_26B471088(&unk_287BF4800);
  v484 = 4;
  v483 = 4;
  v66.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v66.value._object = 0xE90000000000003ALL;
  v67.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v67.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v66, v67);
  v479 = v481;
  v480 = v482;
  v68 = sub_26B4D43F4();
  v69 = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  v70 = sub_26B4D4414();
  v71 = sub_26B4D4414();
  *&v413 = v65;
  *(&v413 + 1) = v70;
  *&v371 = v63;
  *(&v371 + 1) = v64;
  *(&v329 + 1) = MEMORY[0x277D84FA0];
  *&v329 = v475;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B552550, &unk_287BF6DB0, &unk_287BF4778, v68, 0, 0, v485, v478._rawValue + 952, v69 & 1, v61 & 1, v329, v371, v413, v71, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v72 = sub_26B470D98(&unk_287BF48A8);
  v73 = sub_26B470D98(&unk_287BF48D0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_26B5450C0;
  v75 = *v477;
  *(v74 + 32) = *v477;
  *(v74 + 40) = 1;
  *(v74 + 48) = v75;
  *(v74 + 56) = 3;
  *(v74 + 64) = v75;
  *(v74 + 72) = 8;
  *(v74 + 80) = 0x403A000000000000;
  *(v74 + 88) = 10;
  v76 = sub_26B471088(&unk_287BF48F8);
  v484 = 4;
  v483 = 4;
  v77.value._countAndFlagsBits = 0x6867695265766F6DLL;
  v78.value._object = 0xE900000000000074;
  v77.value._object = 0xEA00000000003A74;
  v78.value._countAndFlagsBits = 0x6867695265766F6DLL;
  Action.init(_:mac:)(v77, v78);
  v479 = v481;
  v480 = v482;
  v79 = sub_26B4D43F4();
  LOBYTE(v65) = sub_26B4CE5C8();
  v80 = sub_26B4D4400();
  v81 = sub_26B4D4414();
  v82 = sub_26B4D4414();
  *&v414 = v76;
  *(&v414 + 1) = v81;
  *&v372 = v73;
  *(&v372 + 1) = v74;
  *&v330 = v72;
  *(&v330 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B552570, &unk_287BF6DE0, &unk_287BF4858, v79, 0, 0, v485, v478._rawValue + 1136, v65 & 1, v80 & 1, v330, v372, v414, v82, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v83 = sub_26B470D98(&unk_287BF4988);
  v84 = sub_26B470D98(&unk_287BF49B0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26B545100;
  *(v85 + 32) = *v477;
  *(v85 + 40) = 1;
  v86 = sub_26B471088(&unk_287BF49D8);
  v484 = 4;
  v483 = 4;
  v87.value._object = 0xE900000000000074;
  v88.value._countAndFlagsBits = 0x6867695265766F6DLL;
  v88.value._object = 0xEA00000000003A74;
  v87.value._countAndFlagsBits = 0x6867695265766F6DLL;
  Action.init(_:mac:)(v88, v87);
  v479 = v481;
  v480 = v482;
  v89 = sub_26B4D43F4();
  v90 = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  v91 = sub_26B4D4414();
  v92 = sub_26B4D4414();
  *&v415 = v86;
  *(&v415 + 1) = v91;
  *&v373 = v84;
  *(&v373 + 1) = v85;
  *&v331 = v83;
  *(&v331 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552590, &unk_287BF6E10, &unk_287BF4950, v89, 0, 0, v485, v478._rawValue + 1320, v90 & 1, v81 & 1, v331, v373, v415, v92, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v93 = sub_26B470D98(&unk_287BF4A98);
  v94 = sub_26B470D98(&unk_287BF4AC0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B5450C0;
  v96 = *v477;
  *(v95 + 32) = *v477;
  *(v95 + 40) = 1;
  *(v95 + 48) = v96;
  *(v95 + 56) = 3;
  *(v95 + 64) = v96;
  *(v95 + 72) = 8;
  *(v95 + 80) = 0x403A000000000000;
  *(v95 + 88) = 10;
  v97 = sub_26B470F10(&unk_287BF4AE8);
  v484 = 4;
  v483 = 4;
  v98.value._object = 0x800000026B5525D0;
  v98.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v98, 0);
  v479 = v481;
  v480 = v482;
  v99 = sub_26B4D43F4();
  v100 = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v416 = sub_26B4D4408();
  *(&v416 + 1) = sub_26B4D4414();
  *&v374 = v94;
  *(&v374 + 1) = v95;
  *&v332 = v93;
  *(&v332 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5525B0, &unk_287BF6E40, &unk_287BF4A60, v99, 0, 0, v485, v478._rawValue + 1504, v100 & 1, v81 & 1, v332, v374, v416, v97, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v460 = sub_26B470D98(&unk_287BF4BA8);
  v101 = sub_26B470D98(&unk_287BF4BD0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_26B5450C0;
  v103 = *v477;
  *(v102 + 32) = *v477;
  *(v102 + 40) = 1;
  *(v102 + 48) = v103;
  *(v102 + 56) = 3;
  *(v102 + 64) = v103;
  *(v102 + 72) = 8;
  *(v102 + 80) = 0x403A000000000000;
  *(v102 + 88) = 10;
  v104 = sub_26B470F10(&unk_287BF4BF8);
  v484 = 4;
  v483 = 4;
  v105.value._countAndFlagsBits = 0xD000000000000012;
  v105.value._object = 0x800000026B552610;
  Action.init(_:mac:)(v105, 0);
  v479 = v481;
  v480 = v482;
  v106 = sub_26B4D43F4();
  v107 = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v417 = sub_26B4D4408();
  *(&v417 + 1) = sub_26B4D4414();
  *&v375 = v101;
  *(&v375 + 1) = v102;
  *(&v333 + 1) = MEMORY[0x277D84FA0];
  *&v333 = v460;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5525F0, &unk_287BF6E70, &unk_287BF4B70, v106, 0, 0, v485, v478._rawValue + 1688, v107 & 1, v81 & 1, v333, v375, v417, v104, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v452 = sub_26B470D98(&unk_287BF4C98);
  v108 = sub_26B470D98(&unk_287BF4CC0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B5450C0;
  v110 = *v477;
  *(v109 + 32) = *v477;
  *(v109 + 40) = 1;
  *(v109 + 48) = v110;
  *(v109 + 56) = 3;
  *(v109 + 64) = v110;
  *(v109 + 72) = 8;
  *(v109 + 80) = 0x403A000000000000;
  *(v109 + 88) = 10;
  v111 = sub_26B470F10(&unk_287BF4CE8);
  v484 = 4;
  v483 = 4;
  v112.value._countAndFlagsBits = 0xD000000000000010;
  v112.value._object = 0x800000026B552650;
  Action.init(_:mac:)(v112, 0);
  v479 = v481;
  v480 = v482;
  v113 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v114 = sub_26B4D4400();
  *&v418 = sub_26B4D4408();
  *(&v418 + 1) = sub_26B4D4414();
  *&v376 = v108;
  *(&v376 + 1) = v109;
  *(&v334 + 1) = MEMORY[0x277D84FA0];
  *&v334 = v452;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552630, &unk_287BF6EA0, &unk_287BF4C60, v113, 0, 0, v485, v478._rawValue + 1872, v104 & 1, v114 & 1, v334, v376, v418, v111, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v453 = sub_26B470D98(&unk_287BF4D88);
  v115 = sub_26B470D98(&unk_287BF4DB0);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_26B5450C0;
  v117 = *v477;
  *(v116 + 32) = *v477;
  *(v116 + 40) = 1;
  *(v116 + 48) = v117;
  *(v116 + 56) = 3;
  *(v116 + 64) = v117;
  *(v116 + 72) = 8;
  *(v116 + 80) = 0x403A000000000000;
  *(v116 + 88) = 10;
  v118 = sub_26B470F10(&unk_287BF4DD8);
  v484 = 4;
  v483 = 4;
  v119.value._countAndFlagsBits = 0x4F646E456F546F67;
  v119.value._object = 0xEE003A64726F5766;
  Action.init(_:mac:)(v119, 0);
  v479 = v481;
  v480 = v482;
  v120 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v121 = sub_26B4D4400();
  *&v419 = sub_26B4D4408();
  *(&v419 + 1) = sub_26B4D4414();
  *&v377 = v115;
  *(&v377 + 1) = v116;
  *(&v335 + 1) = MEMORY[0x277D84FA0];
  *&v335 = v453;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B552670, &unk_287BF6ED0, &unk_287BF4D50, v120, 0, 0, v485, v478._rawValue + 2056, v104 & 1, v121 & 1, v335, v377, v419, v118, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v454 = sub_26B470D98(&unk_287BF4E78);
  v450 = sub_26B470D98(&unk_287BF4EA0);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B5450C0;
  v123 = *v477;
  *(v122 + 32) = *v477;
  *(v122 + 40) = 1;
  *(v122 + 48) = v123;
  *(v122 + 56) = 3;
  *(v122 + 64) = v123;
  *(v122 + 72) = 8;
  *(v122 + 80) = 0x403A000000000000;
  *(v122 + 88) = 10;
  v124 = sub_26B470F10(&unk_287BF4EC8);
  v484 = 4;
  v483 = 4;
  v125.value._object = 0x800000026B5526B0;
  v125.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v125, 0);
  v479 = v481;
  v480 = v482;
  v126 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v127 = sub_26B4D4400();
  *&v420 = sub_26B4D4408();
  *(&v420 + 1) = sub_26B4D4414();
  *(&v378 + 1) = v122;
  *&v378 = v450;
  *(&v336 + 1) = MEMORY[0x277D84FA0];
  *&v336 = v454;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B552690, &unk_287BF6F00, &unk_287BF4E40, v126, 0, 0, v485, v478._rawValue + 2240, v104 & 1, v127 & 1, v336, v378, v420, v124, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v461 = sub_26B470D98(&unk_287BF4F68);
  v128 = sub_26B470D98(&unk_287BF4F90);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_26B5450C0;
  v130 = *v477;
  *(v129 + 32) = *v477;
  *(v129 + 40) = 1;
  *(v129 + 48) = v130;
  *(v129 + 56) = 3;
  *(v129 + 64) = v130;
  *(v129 + 72) = 8;
  *(v129 + 80) = 0x403A000000000000;
  *(v129 + 88) = 10;
  v131 = sub_26B470F10(&unk_287BF4FB8);
  v484 = 4;
  v483 = 4;
  v132.value._object = 0x800000026B5526F0;
  v132.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v132, 0);
  v479 = v481;
  v480 = v482;
  v133 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v134 = sub_26B4D4400();
  *&v421 = sub_26B4D4408();
  *(&v421 + 1) = sub_26B4D4414();
  *&v379 = v128;
  *(&v379 + 1) = v129;
  *(&v337 + 1) = MEMORY[0x277D84FA0];
  *&v337 = v461;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5526D0, &unk_287BF6F30, &unk_287BF4F30, v133, 0, 0, v485, v478._rawValue + 2424, v104 & 1, v134 & 1, v337, v379, v421, v131, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v455 = sub_26B470D98(&unk_287BF5058);
  v135 = sub_26B470D98(&unk_287BF5080);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B5450C0;
  v137 = *v477;
  *(v136 + 32) = *v477;
  *(v136 + 40) = 1;
  *(v136 + 48) = v137;
  *(v136 + 56) = 3;
  *(v136 + 64) = v137;
  *(v136 + 72) = 8;
  *(v136 + 80) = 0x403A000000000000;
  *(v136 + 88) = 10;
  v138 = sub_26B470F10(&unk_287BF50A8);
  v484 = 4;
  v483 = 4;
  v139.value._countAndFlagsBits = 0xD000000000000015;
  v139.value._object = 0x800000026B552730;
  Action.init(_:mac:)(v139, 0);
  v479 = v481;
  v480 = v482;
  v140 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v141 = sub_26B4D4400();
  *&v422 = sub_26B4D4408();
  *(&v422 + 1) = sub_26B4D4414();
  *&v380 = v135;
  *(&v380 + 1) = v136;
  *(&v338 + 1) = MEMORY[0x277D84FA0];
  *&v338 = v455;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B552710, &unk_287BF6F60, &unk_287BF5020, v140, 0, 0, v485, v478._rawValue + 2608, v104 & 1, v141 & 1, v338, v380, v422, v138, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v142 = sub_26B470D98(&unk_287BF5148);
  v143 = sub_26B470D98(&unk_287BF5170);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_26B5450C0;
  v145 = *v477;
  *(v144 + 32) = *v477;
  *(v144 + 40) = 1;
  *(v144 + 48) = v145;
  *(v144 + 56) = 3;
  *(v144 + 64) = v145;
  *(v144 + 72) = 8;
  *(v144 + 80) = 0x403A000000000000;
  *(v144 + 88) = 10;
  v146 = sub_26B470F10(&unk_287BF5198);
  v484 = 4;
  v483 = 4;
  v147.value._object = 0x800000026B552770;
  v147.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v147, 0);
  v479 = v481;
  v480 = v482;
  v148 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v149 = sub_26B4D4400();
  *&v423 = sub_26B4D4408();
  *(&v423 + 1) = sub_26B4D4414();
  *&v381 = v143;
  *(&v381 + 1) = v144;
  *&v339 = v142;
  *(&v339 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552750, &unk_287BF6F90, &unk_287BF5110, v148, 0, 0, v485, v478._rawValue + 2792, v104 & 1, v149 & 1, v339, v381, v423, v146, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v150 = sub_26B470D98(&unk_287BF5238);
  v151 = sub_26B470D98(&unk_287BF5260);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26B5450C0;
  v153 = *v477;
  *(v152 + 32) = *v477;
  *(v152 + 40) = 1;
  *(v152 + 48) = v153;
  *(v152 + 56) = 3;
  *(v152 + 64) = v153;
  *(v152 + 72) = 8;
  *(v152 + 80) = 0x403A000000000000;
  *(v152 + 88) = 10;
  v154 = sub_26B470F10(&unk_287BF5288);
  v484 = 4;
  v483 = 4;
  v155.value._object = 0x800000026B5527B0;
  v155.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v155, 0);
  v479 = v481;
  v480 = v482;
  v156 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v157 = sub_26B4D4400();
  *&v424 = sub_26B4D4408();
  *(&v424 + 1) = sub_26B4D4414();
  *&v382 = v151;
  *(&v382 + 1) = v152;
  *&v340 = v150;
  *(&v340 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552790, &unk_287BF6FC0, &unk_287BF5200, v156, 0, 0, v485, v478._rawValue + 2976, v104 & 1, v157 & 1, v340, v382, v424, v154, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v158 = sub_26B470D98(&unk_287BF5328);
  v159 = sub_26B470D98(&unk_287BF5350);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_26B5450C0;
  v161 = *v477;
  *(v160 + 32) = *v477;
  *(v160 + 40) = 1;
  *(v160 + 48) = v161;
  *(v160 + 56) = 3;
  *(v160 + 64) = v161;
  *(v160 + 72) = 8;
  *(v160 + 80) = 0x403A000000000000;
  *(v160 + 88) = 10;
  v162 = sub_26B470F10(&unk_287BF5378);
  v484 = 4;
  v483 = 4;
  v163.value._object = 0xEE003A656E694C66;
  v163.value._countAndFlagsBits = 0x4F646E456F546F67;
  Action.init(_:mac:)(v163, 0);
  v479 = v481;
  v480 = v482;
  v164 = sub_26B4D43F4();
  LOBYTE(v104) = sub_26B4CE5C8();
  v165 = sub_26B4D4400();
  *&v425 = sub_26B4D4408();
  *(&v425 + 1) = sub_26B4D4414();
  *&v383 = v159;
  *(&v383 + 1) = v160;
  *&v341 = v158;
  *(&v341 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B5527D0, &unk_287BF6FF0, &unk_287BF52F0, v164, 0, 0, v485, v478._rawValue + 3160, v104 & 1, v165 & 1, v341, v383, v425, v162, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v166 = sub_26B470D98(&unk_287BF5418);
  v167 = sub_26B470D98(&unk_287BF5440);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B5450C0;
  v169 = *v477;
  *(v168 + 32) = *v477;
  *(v168 + 40) = 1;
  *(v168 + 48) = v169;
  *(v168 + 56) = 3;
  *(v168 + 64) = v169;
  *(v168 + 72) = 8;
  *(v168 + 80) = 0x403A000000000000;
  *(v168 + 88) = 10;
  v170 = sub_26B470F10(&unk_287BF5468);
  v484 = 4;
  v483 = 4;
  v171.value._object = 0x800000026B552810;
  v171.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v171, 0);
  v479 = v481;
  v480 = v482;
  v172 = sub_26B4D43F4();
  v173 = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v426 = sub_26B4D4408();
  *(&v426 + 1) = sub_26B4D4414();
  *&v384 = v167;
  *(&v384 + 1) = v168;
  *&v342 = v166;
  *(&v342 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5527F0, &unk_287BF7020, &unk_287BF53E0, v172, 0, 0, v485, v478._rawValue + 3344, v173 & 1, v81 & 1, v342, v384, v426, v170, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v174 = sub_26B470D98(&unk_287BF5508);
  v175 = sub_26B470D98(&unk_287BF5530);
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_26B5450C0;
  v177 = *v477;
  *(v176 + 32) = *v477;
  *(v176 + 40) = 1;
  *(v176 + 48) = v177;
  *(v176 + 56) = 3;
  *(v176 + 64) = v177;
  *(v176 + 72) = 8;
  *(v176 + 80) = 0x403A000000000000;
  *(v176 + 88) = 10;
  v178 = sub_26B470F10(&unk_287BF5558);
  v484 = 4;
  v483 = 4;
  v179.value._object = 0x800000026B552850;
  v179.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v179, 0);
  v479 = v481;
  v480 = v482;
  v180 = sub_26B4D43F4();
  v181 = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v427 = sub_26B4D4408();
  *(&v427 + 1) = sub_26B4D4414();
  *&v385 = v175;
  *(&v385 + 1) = v176;
  *&v343 = v174;
  *(&v343 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552830, &unk_287BF7050, &unk_287BF54D0, v180, 0, 0, v485, v478._rawValue + 3528, v181 & 1, v81 & 1, v343, v385, v427, v178, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v182 = sub_26B470D98(&unk_287BF5608);
  v183 = sub_26B470D98(&unk_287BF5630);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B5450C0;
  v185 = *v477;
  *(v184 + 32) = *v477;
  *(v184 + 40) = 1;
  *(v184 + 48) = v185;
  *(v184 + 56) = 3;
  *(v184 + 64) = v185;
  *(v184 + 72) = 8;
  *(v184 + 80) = 0x403A000000000000;
  *(v184 + 88) = 10;
  v186 = sub_26B470F10(&unk_287BF5658);
  v484 = 4;
  v483 = 4;
  v187.value._object = 0x800000026B5528A0;
  v187.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v187, 0);
  v479 = v481;
  v480 = v482;
  v188 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v428 = sub_26B4D4408();
  *(&v428 + 1) = sub_26B4D4414();
  *&v386 = v183;
  *(&v386 + 1) = v184;
  *&v344 = v182;
  *(&v344 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552870, &unk_287BF7080, &unk_287BF55D0, v188, 0, 0, v485, v478._rawValue + 3712, v81 & 1, v180 & 1, v344, v386, v428, v186, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v189 = sub_26B470D98(&unk_287BF5738);
  v190 = sub_26B470D98(&unk_287BF5760);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_26B5450C0;
  v192 = *v477;
  *(v191 + 32) = *v477;
  *(v191 + 40) = 1;
  *(v191 + 48) = v192;
  *(v191 + 56) = 3;
  *(v191 + 64) = v192;
  *(v191 + 72) = 8;
  *(v191 + 80) = 0x403A000000000000;
  *(v191 + 88) = 10;
  v193 = sub_26B470F10(&unk_287BF5788);
  v484 = 4;
  v483 = 4;
  v194.value._countAndFlagsBits = 0xD00000000000002ALL;
  v194.value._object = 0x800000026B552900;
  Action.init(_:mac:)(v194, 0);
  v479 = v481;
  v480 = v482;
  v195 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v180) = sub_26B4D4400();
  *&v429 = sub_26B4D4408();
  *(&v429 + 1) = sub_26B4D4414();
  *&v387 = v190;
  *(&v387 + 1) = v191;
  *&v345 = v189;
  *(&v345 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B5528D0, &unk_287BF70B0, &unk_287BF5700, v195, 0, 0, v485, v478._rawValue + 3896, v81 & 1, v180 & 1, v345, v387, v429, v193, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v196 = sub_26B470D98(&unk_287BF5838);
  v197 = sub_26B470D98(&unk_287BF5860);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B5450C0;
  v199 = *v477;
  *(v198 + 32) = *v477;
  *(v198 + 40) = 1;
  *(v198 + 48) = v199;
  *(v198 + 56) = 3;
  *(v198 + 64) = v199;
  *(v198 + 72) = 8;
  *(v198 + 80) = 0x403A000000000000;
  *(v198 + 88) = 10;
  v200 = sub_26B470F10(&unk_287BF5888);
  v484 = 4;
  v483 = 4;
  v201.value._countAndFlagsBits = 0xD000000000000024;
  v201.value._object = 0x800000026B552960;
  Action.init(_:mac:)(v201, 0);
  v479 = v481;
  v480 = v482;
  v202 = sub_26B4D43F4();
  LOBYTE(v195) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v430 = sub_26B4D4408();
  *(&v430 + 1) = sub_26B4D4414();
  *&v388 = v197;
  *(&v388 + 1) = v198;
  *&v346 = v196;
  *(&v346 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552930, &unk_287BF70E0, &unk_287BF5800, v202, 0, 0, v485, v478._rawValue + 4080, v195 & 1, v81 & 1, v346, v388, v430, v200, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v463 = sub_26B470D98(&unk_287BF5968);
  v203 = sub_26B470D98(&unk_287BF5990);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_26B5450C0;
  v205 = *v477;
  *(v204 + 32) = *v477;
  *(v204 + 40) = 1;
  *(v204 + 48) = v205;
  *(v204 + 56) = 3;
  *(v204 + 64) = v205;
  *(v204 + 72) = 8;
  *(v204 + 80) = 0x403A000000000000;
  *(v204 + 88) = 10;
  v206 = sub_26B470F10(&unk_287BF59B8);
  v484 = 4;
  v483 = 4;
  v207.value._countAndFlagsBits = 0xD000000000000025;
  v207.value._object = 0x800000026B5529C0;
  Action.init(_:mac:)(v207, 0);
  v479 = v481;
  v480 = v482;
  v208 = sub_26B4D43F4();
  LOBYTE(v195) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v431 = sub_26B4D4408();
  *(&v431 + 1) = sub_26B4D4414();
  *&v389 = v203;
  *(&v389 + 1) = v204;
  *(&v347 + 1) = MEMORY[0x277D84FA0];
  *&v347 = v463;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552990, &unk_287BF7110, &unk_287BF5930, v208, 0, 0, v485, v478._rawValue + 4264, v195 & 1, v81 & 1, v347, v389, v431, v206, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v209 = sub_26B470D98(&unk_287BF5A68);
  v210 = sub_26B470D98(&unk_287BF5A90);
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_26B5450C0;
  v212 = *v477;
  *(v211 + 32) = *v477;
  *(v211 + 40) = 1;
  *(v211 + 48) = v212;
  *(v211 + 56) = 3;
  *(v211 + 64) = v212;
  *(v211 + 72) = 8;
  *(v211 + 80) = 0x403A000000000000;
  *(v211 + 88) = 10;
  v213 = sub_26B470F10(&unk_287BF5AB8);
  v484 = 4;
  v483 = 4;
  v214.value._object = 0x800000026B552A20;
  v214.value._countAndFlagsBits = 0xD000000000000028;
  Action.init(_:mac:)(v214, 0);
  v479 = v481;
  v480 = v482;
  v215 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v208) = sub_26B4D4400();
  *&v432 = sub_26B4D4408();
  *(&v432 + 1) = sub_26B4D4414();
  *&v390 = v210;
  *(&v390 + 1) = v211;
  *&v348 = v209;
  *(&v348 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B5529F0, &unk_287BF7140, &unk_287BF5A30, v215, 0, 0, v485, v478._rawValue + 4448, v81 & 1, v208 & 1, v348, v390, v432, v213, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v464 = sub_26B470D98(&unk_287BF5B98);
  v216 = sub_26B470D98(&unk_287BF5BC0);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B5450C0;
  v218 = *v477;
  *(v217 + 32) = *v477;
  *(v217 + 40) = 1;
  *(v217 + 48) = v218;
  *(v217 + 56) = 3;
  *(v217 + 64) = v218;
  *(v217 + 72) = 8;
  *(v217 + 80) = 0x403A000000000000;
  *(v217 + 88) = 10;
  v219 = sub_26B470F10(&unk_287BF5BE8);
  v484 = 4;
  v483 = 4;
  v220.value._object = 0x800000026B552A80;
  v220.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v220, 0);
  v479 = v481;
  v480 = v482;
  v221 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v208) = sub_26B4D4400();
  *&v433 = sub_26B4D4408();
  *(&v433 + 1) = sub_26B4D4414();
  *&v391 = v216;
  *(&v391 + 1) = v217;
  *(&v349 + 1) = MEMORY[0x277D84FA0];
  *&v349 = v464;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552A50, &unk_287BF7170, &unk_287BF5B60, v221, 0, 0, v485, v478._rawValue + 4632, v81 & 1, v208 & 1, v349, v391, v433, v219, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v222 = sub_26B470D98(&unk_287BF5C98);
  v223 = sub_26B470D98(&unk_287BF5CC0);
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_26B5450C0;
  v225 = *v477;
  *(v224 + 32) = *v477;
  *(v224 + 40) = 1;
  *(v224 + 48) = v225;
  *(v224 + 56) = 3;
  *(v224 + 64) = v225;
  *(v224 + 72) = 8;
  *(v224 + 80) = 0x403A000000000000;
  *(v224 + 88) = 10;
  v226 = sub_26B470F10(&unk_287BF5CE8);
  v484 = 4;
  v483 = 4;
  v227.value._object = 0x800000026B552AE0;
  v227.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v227, 0);
  v479 = v481;
  v480 = v482;
  v228 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v208) = sub_26B4D4400();
  *&v434 = sub_26B4D4408();
  *(&v434 + 1) = sub_26B4D4414();
  *&v392 = v223;
  *(&v392 + 1) = v224;
  *&v350 = v222;
  *(&v350 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552AB0, &unk_287BF71A0, &unk_287BF5C60, v228, 0, 0, v485, v478._rawValue + 4816, v81 & 1, v208 & 1, v350, v392, v434, v226, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v465 = sub_26B470D98(&unk_287BF5DC8);
  v229 = sub_26B470D98(&unk_287BF5DF0);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_26B5450C0;
  v231 = *v477;
  *(v230 + 32) = *v477;
  *(v230 + 40) = 1;
  *(v230 + 48) = v231;
  *(v230 + 56) = 3;
  *(v230 + 64) = v231;
  *(v230 + 72) = 8;
  *(v230 + 80) = 0x403A000000000000;
  *(v230 + 88) = 10;
  v232 = sub_26B470F10(&unk_287BF5E18);
  v484 = 4;
  v483 = 4;
  v233.value._countAndFlagsBits = 0xD00000000000002ALL;
  v233.value._object = 0x800000026B552B40;
  Action.init(_:mac:)(v233, 0);
  v479 = v481;
  v480 = v482;
  v234 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v208) = sub_26B4D4400();
  *&v435 = sub_26B4D4408();
  *(&v435 + 1) = sub_26B4D4414();
  *&v393 = v229;
  *(&v393 + 1) = v230;
  *(&v351 + 1) = MEMORY[0x277D84FA0];
  *&v351 = v465;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B552B10, &unk_287BF71D0, &unk_287BF5D90, v234, 0, 0, v485, v478._rawValue + 5000, v81 & 1, v208 & 1, v351, v393, v435, v232, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v466 = sub_26B470D98(&unk_287BF5EC8);
  v235 = sub_26B470D98(&unk_287BF5EF0);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_26B5450C0;
  v237 = *v477;
  *(v236 + 32) = *v477;
  *(v236 + 40) = 1;
  *(v236 + 48) = v237;
  *(v236 + 56) = 3;
  *(v236 + 64) = v237;
  *(v236 + 72) = 8;
  *(v236 + 80) = 0x403A000000000000;
  *(v236 + 88) = 10;
  v238 = sub_26B470F10(&unk_287BF5F18);
  v484 = 4;
  v483 = 4;
  v239.value._object = 0x800000026B552BA0;
  v239.value._countAndFlagsBits = 0xD000000000000024;
  Action.init(_:mac:)(v239, 0);
  v479 = v481;
  v480 = v482;
  v240 = sub_26B4D43F4();
  LOBYTE(v234) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v436 = sub_26B4D4408();
  *(&v436 + 1) = sub_26B4D4414();
  *&v394 = v235;
  *(&v394 + 1) = v236;
  *(&v352 + 1) = MEMORY[0x277D84FA0];
  *&v352 = v466;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552B70, &unk_287BF7200, &unk_287BF5E90, v240, 0, 0, v485, v478._rawValue + 5184, v234 & 1, v81 & 1, v352, v394, v436, v238, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v467 = sub_26B470D98(&unk_287BF5FF8);
  v241 = sub_26B470D98(&unk_287BF6020);
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_26B5450C0;
  v243 = *v477;
  *(v242 + 32) = *v477;
  *(v242 + 40) = 1;
  *(v242 + 48) = v243;
  *(v242 + 56) = 3;
  *(v242 + 64) = v243;
  *(v242 + 72) = 8;
  *(v242 + 80) = 0x403A000000000000;
  *(v242 + 88) = 10;
  v244 = sub_26B470F10(&unk_287BF6048);
  v484 = 4;
  v483 = 4;
  v245.value._object = 0x800000026B552C00;
  v245.value._countAndFlagsBits = 0xD000000000000025;
  Action.init(_:mac:)(v245, 0);
  v479 = v481;
  v480 = v482;
  v246 = sub_26B4D43F4();
  LOBYTE(v234) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v437 = sub_26B4D4408();
  *(&v437 + 1) = sub_26B4D4414();
  *&v395 = v241;
  *(&v395 + 1) = v242;
  *(&v353 + 1) = MEMORY[0x277D84FA0];
  *&v353 = v467;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552BD0, &unk_287BF7230, &unk_287BF5FC0, v246, 0, 0, v485, v478._rawValue + 5368, v234 & 1, v81 & 1, v353, v395, v437, v244, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v468 = sub_26B470D98(&unk_287BF60F8);
  v247 = sub_26B470D98(&unk_287BF6120);
  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_26B5450C0;
  v249 = *v477;
  *(v248 + 32) = *v477;
  *(v248 + 40) = 1;
  *(v248 + 48) = v249;
  *(v248 + 56) = 3;
  *(v248 + 64) = v249;
  *(v248 + 72) = 8;
  *(v248 + 80) = 0x403A000000000000;
  *(v248 + 88) = 10;
  v250 = sub_26B470F10(&unk_287BF6148);
  v484 = 4;
  v483 = 4;
  v251.value._countAndFlagsBits = 0xD000000000000027;
  v251.value._object = 0x800000026B552C60;
  Action.init(_:mac:)(v251, 0);
  v479 = v481;
  v480 = v482;
  v252 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v246) = sub_26B4D4400();
  *&v438 = sub_26B4D4408();
  *(&v438 + 1) = sub_26B4D4414();
  *&v396 = v247;
  *(&v396 + 1) = v248;
  *(&v354 + 1) = MEMORY[0x277D84FA0];
  *&v354 = v468;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B552C30, &unk_287BF7260, &unk_287BF60C0, v252, 0, 0, v485, v478._rawValue + 5552, v81 & 1, v246 & 1, v354, v396, v438, v250, &v484, &v483, 0, 0, &v479);
  v485[0] = 0;
  v253 = sub_26B470D98(&unk_287BF61F8);
  v254 = sub_26B470D98(&unk_287BF6220);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_26B5450C0;
  v256 = *v477;
  *(v255 + 32) = *v477;
  *(v255 + 40) = 1;
  *(v255 + 48) = v256;
  *(v255 + 56) = 3;
  *(v255 + 64) = v256;
  *(v255 + 72) = 8;
  *(v255 + 80) = 0x403A000000000000;
  *(v255 + 88) = 10;
  v257 = sub_26B470F10(&unk_287BF6248);
  v484 = 4;
  v483 = 4;
  v258.value._countAndFlagsBits = 0xD000000000000026;
  v258.value._object = 0x800000026B552CC0;
  Action.init(_:mac:)(v258, 0);
  v479 = v481;
  v480 = v482;
  v259 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v164) = sub_26B4D4400();
  *&v439 = sub_26B4D4408();
  *(&v439 + 1) = sub_26B4D4414();
  *&v397 = v254;
  *(&v397 + 1) = v255;
  *&v355 = v253;
  *(&v355 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552C90, &unk_287BF7290, &unk_287BF61C0, v259, 0, 0, v485, v478._rawValue + 5736, v81 & 1, v164 & 1, v355, v397, v439, v257, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v462 = sub_26B470D98(&unk_287BF62F8);
  v260 = sub_26B470D98(&unk_287BF6320);
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_26B5450C0;
  v262 = *v477;
  *(v261 + 32) = *v477;
  *(v261 + 40) = 1;
  *(v261 + 48) = v262;
  *(v261 + 56) = 3;
  *(v261 + 64) = v262;
  *(v261 + 72) = 8;
  *(v261 + 80) = 0x403A000000000000;
  *(v261 + 88) = 10;
  v263 = sub_26B470F10(&unk_287BF6348);
  v484 = 4;
  v483 = 4;
  v264.value._countAndFlagsBits = 0xD000000000000022;
  v264.value._object = 0x800000026B552D20;
  Action.init(_:mac:)(v264, 0);
  v479 = v481;
  v480 = v482;
  v265 = sub_26B4D43F4();
  LOBYTE(v259) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v440 = sub_26B4D4408();
  *(&v440 + 1) = sub_26B4D4414();
  *&v398 = v260;
  *(&v398 + 1) = v261;
  *(&v356 + 1) = MEMORY[0x277D84FA0];
  *&v356 = v462;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B552CF0, &unk_287BF72C0, &unk_287BF62C0, v265, 0, 0, v485, v478._rawValue + 5920, v259 & 1, v81 & 1, v356, v398, v440, v263, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v456 = sub_26B470D98(&unk_287BF63F8);
  v266 = sub_26B470D98(&unk_287BF6420);
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_26B5450C0;
  v268 = *v477;
  *(v267 + 32) = *v477;
  *(v267 + 40) = 1;
  *(v267 + 48) = v268;
  *(v267 + 56) = 3;
  *(v267 + 64) = v268;
  *(v267 + 72) = 8;
  *(v267 + 80) = 0x403A000000000000;
  *(v267 + 88) = 10;
  v269 = sub_26B470F10(&unk_287BF6448);
  v484 = 4;
  v483 = 4;
  v270.value._countAndFlagsBits = 0xD000000000000021;
  v270.value._object = 0x800000026B552D80;
  Action.init(_:mac:)(v270, 0);
  v479 = v481;
  v480 = v482;
  v271 = sub_26B4D43F4();
  LOBYTE(v259) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v441 = sub_26B4D4408();
  *(&v441 + 1) = sub_26B4D4414();
  *&v399 = v266;
  *(&v399 + 1) = v267;
  *(&v357 + 1) = MEMORY[0x277D84FA0];
  *&v357 = v456;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B552D50, &unk_287BF72F0, &unk_287BF63C0, v271, 0, 0, v485, v478._rawValue + 6104, v259 & 1, v81 & 1, v357, v399, v441, v269, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v457 = sub_26B470D98(&unk_287BF64F8);
  v451 = sub_26B470D98(&unk_287BF6520);
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_26B5450C0;
  v273 = *v477;
  *(v272 + 32) = *v477;
  *(v272 + 40) = 1;
  *(v272 + 48) = v273;
  *(v272 + 56) = 3;
  *(v272 + 64) = v273;
  *(v272 + 72) = 8;
  *(v272 + 80) = 0x403A000000000000;
  *(v272 + 88) = 10;
  v274 = sub_26B470F10(&unk_287BF6548);
  v484 = 4;
  v483 = 4;
  v275.value._object = 0x800000026B552DE0;
  v275.value._countAndFlagsBits = 0xD000000000000026;
  Action.init(_:mac:)(v275, 0);
  v479 = v481;
  v480 = v482;
  v276 = sub_26B4D43F4();
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v160) = sub_26B4D4400();
  *&v442 = sub_26B4D4408();
  *(&v442 + 1) = sub_26B4D4414();
  *(&v400 + 1) = v272;
  *&v400 = v451;
  *(&v358 + 1) = MEMORY[0x277D84FA0];
  *&v358 = v457;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552DB0, &unk_287BF7320, &unk_287BF64C0, v276, 0, 0, v485, v478._rawValue + 6288, v81 & 1, v160 & 1, v358, v400, v442, v274, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v458 = sub_26B470D98(&unk_287BF65F8);
  v277 = sub_26B470D98(&unk_287BF6620);
  v278 = swift_allocObject();
  *(v278 + 16) = xmmword_26B5450C0;
  v279 = *v477;
  *(v278 + 32) = *v477;
  *(v278 + 40) = 1;
  *(v278 + 48) = v279;
  *(v278 + 56) = 3;
  *(v278 + 64) = v279;
  *(v278 + 72) = 8;
  *(v278 + 80) = 0x403A000000000000;
  *(v278 + 88) = 10;
  v280 = sub_26B470F10(&unk_287BF6648);
  v484 = 4;
  v483 = 4;
  v281.value._object = 0x800000026B552E40;
  v281.value._countAndFlagsBits = 0xD000000000000025;
  Action.init(_:mac:)(v281, 0);
  v479 = v481;
  v480 = v482;
  v282 = sub_26B4D43F4();
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v443 = sub_26B4D4408();
  *(&v443 + 1) = sub_26B4D4414();
  *&v401 = v277;
  *(&v401 + 1) = v278;
  *(&v359 + 1) = MEMORY[0x277D84FA0];
  *&v359 = v458;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552E10, &unk_287BF7350, &unk_287BF65C0, v282, 0, 0, v485, v478._rawValue + 6472, v276 & 1, v81 & 1, v359, v401, v443, v280, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v459 = sub_26B470D98(&unk_287BF66F8);
  v283 = sub_26B470D98(&unk_287BF6720);
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_26B5450C0;
  v285 = *v477;
  *(v284 + 32) = *v477;
  *(v284 + 40) = 1;
  *(v284 + 48) = v285;
  *(v284 + 56) = 3;
  *(v284 + 64) = v285;
  *(v284 + 72) = 8;
  *(v284 + 80) = 0x403A000000000000;
  *(v284 + 88) = 10;
  v286 = sub_26B470F10(&unk_287BF6748);
  v484 = 4;
  v483 = 4;
  v287.value._object = 0x800000026B552EA0;
  v287.value._countAndFlagsBits = 0xD000000000000026;
  Action.init(_:mac:)(v287, 0);
  v479 = v481;
  v480 = v482;
  v288 = sub_26B4D43F4();
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v444 = sub_26B4D4408();
  *(&v444 + 1) = sub_26B4D4414();
  *&v402 = v283;
  *(&v402 + 1) = v284;
  *(&v360 + 1) = MEMORY[0x277D84FA0];
  *&v360 = v459;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552E70, &unk_287BF7380, &unk_287BF66C0, v288, 0, 0, v485, v478._rawValue + 6656, v276 & 1, v81 & 1, v360, v402, v444, v286, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v289 = sub_26B470D98(&unk_287BF67F8);
  v290 = sub_26B470D98(&unk_287BF6820);
  v291 = swift_allocObject();
  *(v291 + 16) = xmmword_26B5450C0;
  v292 = *v477;
  *(v291 + 32) = *v477;
  *(v291 + 40) = 1;
  *(v291 + 48) = v292;
  *(v291 + 56) = 3;
  *(v291 + 64) = v292;
  *(v291 + 72) = 8;
  *(v291 + 80) = 0x403A000000000000;
  *(v291 + 88) = 10;
  v293 = sub_26B470F10(&unk_287BF6848);
  v484 = 4;
  v483 = 4;
  v294.value._object = 0x800000026B552F00;
  v294.value._countAndFlagsBits = 0xD000000000000024;
  Action.init(_:mac:)(v294, 0);
  v479 = v481;
  v480 = v482;
  v295 = sub_26B4D43F4();
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v445 = sub_26B4D4408();
  *(&v445 + 1) = sub_26B4D4414();
  *&v403 = v290;
  *(&v403 + 1) = v291;
  *&v361 = v289;
  *(&v361 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552ED0, &unk_287BF73B0, &unk_287BF67C0, v295, 0, 0, v485, v478._rawValue + 6840, v276 & 1, v81 & 1, v361, v403, v445, v293, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v474 = sub_26B470D98(&unk_287BF68F8);
  v296 = sub_26B470D98(&unk_287BF6920);
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_26B5450C0;
  v298 = *v477;
  *(v297 + 32) = *v477;
  *(v297 + 40) = 1;
  *(v297 + 48) = v298;
  *(v297 + 56) = 3;
  *(v297 + 64) = v298;
  *(v297 + 72) = 8;
  *(v297 + 80) = 0x403A000000000000;
  *(v297 + 88) = 10;
  v299 = sub_26B470F10(&unk_287BF6948);
  v484 = 4;
  v483 = 4;
  v300.value._object = 0x800000026B552F60;
  v300.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v300, 0);
  v479 = v481;
  v480 = v482;
  v301 = sub_26B4D43F4();
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v446 = sub_26B4D4408();
  *(&v446 + 1) = sub_26B4D4414();
  *&v404 = v296;
  *(&v404 + 1) = v297;
  *(&v362 + 1) = MEMORY[0x277D84FA0];
  *&v362 = v474;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B552F30, &unk_287BF73E0, &unk_287BF68C0, v301, 0, 0, v485, v478._rawValue + 7024, v276 & 1, v81 & 1, v362, v404, v446, v299, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v476 = sub_26B470D98(&unk_287BF69F8);
  v302 = sub_26B470D98(&unk_287BF6A20);
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_26B5450C0;
  v304 = *v477;
  *(v303 + 32) = *v477;
  *(v303 + 40) = 1;
  *(v303 + 48) = v304;
  *(v303 + 56) = 3;
  *(v303 + 64) = v304;
  *(v303 + 72) = 8;
  *(v303 + 80) = 0x403A000000000000;
  *(v303 + 88) = 10;
  v305 = sub_26B470F10(&unk_287BF6A48);
  v484 = 4;
  v483 = 4;
  v306.value._countAndFlagsBits = 0xD00000000000001FLL;
  v306.value._object = 0x800000026B552FC0;
  Action.init(_:mac:)(v306, 0);
  v479 = v481;
  v480 = v482;
  v307 = sub_26B4D43F4();
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v447 = sub_26B4D4408();
  *(&v447 + 1) = sub_26B4D4414();
  *&v405 = v302;
  *(&v405 + 1) = v303;
  *(&v363 + 1) = MEMORY[0x277D84FA0];
  *&v363 = v476;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B552F90, &unk_287BF7410, &unk_287BF69C0, v307, 0, 0, v485, v478._rawValue + 7208, v276 & 1, v81 & 1, v363, v405, v447, v305, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v308 = sub_26B470D98(&unk_287BF6B20);
  v309 = sub_26B470D98(&unk_287BF6B48);
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_26B5450C0;
  v311 = *v477;
  *(v310 + 32) = *v477;
  *(v310 + 40) = 1;
  *(v310 + 48) = v311;
  *(v310 + 56) = 3;
  *(v310 + 64) = v311;
  *(v310 + 72) = 8;
  *(v310 + 80) = 0x403A000000000000;
  *(v310 + 88) = 10;
  v312 = sub_26B470F10(&unk_287BF6B70);
  v484 = 4;
  v483 = 4;
  v313.value._countAndFlagsBits = 0x68507463656C6573;
  v313.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v313, 0);
  v479 = v481;
  v480 = v482;
  LOBYTE(v276) = sub_26B4CE5C8();
  LOBYTE(v81) = sub_26B4D4400();
  *&v448 = sub_26B4D4408();
  *(&v448 + 1) = sub_26B4D4414();
  *&v406 = v309;
  *(&v406 + 1) = v310;
  v314 = MEMORY[0x277D84FA0];
  *&v364 = v308;
  *(&v364 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552FE0, &unk_287BF7440, &unk_287BF6AB0, &unk_287BF6AE8, 0, 0, v485, v478._rawValue + 7392, v276 & 1, v81 & 1, v364, v406, v448, v312, &v484, &v483, 0, 0, &v479);
  v485[0] = 1;
  v315 = sub_26B470D98(&unk_287BF6C48);
  v316 = sub_26B470D98(&unk_287BF6C70);
  v317 = swift_allocObject();
  *(v317 + 16) = xmmword_26B5450C0;
  v318 = *v477;
  *(v317 + 32) = *v477;
  *(v317 + 40) = 1;
  *(v317 + 48) = v318;
  *(v317 + 56) = 3;
  *(v317 + 64) = v318;
  *(v317 + 72) = 8;
  *(v317 + 80) = 0x403A000000000000;
  *(v317 + 88) = 10;
  v319 = sub_26B470F10(&unk_287BF6C98);
  v484 = 4;
  v483 = 4;
  v320.value._countAndFlagsBits = 0x68507463656C6573;
  v320.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v320, 0);
  v479 = v481;
  v480 = v482;
  LOBYTE(v288) = sub_26B4CE5C8();
  LOBYTE(v290) = sub_26B4D4400();
  *&v449 = sub_26B4D4408();
  *(&v449 + 1) = sub_26B4D4414();
  *&v407 = v316;
  *(&v407 + 1) = v317;
  *&v365 = v315;
  *(&v365 + 1) = v314;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B553000, &unk_287BF7470, &unk_287BF6BD8, &unk_287BF6C10, 0, 0, v485, v478._rawValue + 7576, v288 & 1, v290 & 1, v365, v407, v449, v319, &v484, &v483, 0, 0, &v479);
  LOBYTE(v288) = sub_26B4CE5C8();
  v321 = sub_26B4D4400() & 1;
  v322._countAndFlagsBits = 0x746E656D65766F4DLL;
  v322._object = 0xE800000000000000;
  v323._countAndFlagsBits = v470;
  v323._object = v469;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406C78, v322, v323, v288 & 1, v321, v478);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B475644()
{
  if (qword_2804003C8 != -1)
  {
    swift_once();
  }

  return &stru_280406C78;
}

void *sub_26B4866E0()
{
  if (qword_2804003D0 != -1)
  {
    swift_once();
  }

  return &unk_280406CA8;
}

void sub_26B486730()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v155 = v11;
  v156 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5451D0;
  v163[0] = 0;
  v13 = sub_26B470D98(&unk_287BF7540);
  v14 = sub_26B470D98(&unk_287BF7568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B5450C0;
  v16 = sub_26B4C6A78();
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = 1;
  *(v15 + 48) = v17;
  *(v15 + 56) = 3;
  *(v15 + 64) = v17;
  *(v15 + 72) = 8;
  *(v15 + 80) = 0x403A000000000000;
  *(v15 + 88) = 10;
  v18 = sub_26B470F10(&unk_287BF7590);
  v162 = 4;
  v161 = 4;
  v19.value._object = 0x800000026B558780;
  v19.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v19, 0);
  v157 = v159;
  v158 = v160;
  v20 = sub_26B4CE5C8();
  v21 = sub_26B4D4400();
  *&v142 = sub_26B4D4408();
  *(&v142 + 1) = sub_26B4D4414();
  *&v129 = v14;
  *(&v129 + 1) = v15;
  *&v116 = v13;
  *(&v116 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B558760, &unk_287BF83E0, &unk_287BF74D0, &unk_287BF7508, 0, 0, v163, v12 + 32, v20 & 1, v21 & 1, v116, v129, v142, v18, &v162, &v161, 0, &unk_287BF75B8, &v157);
  v163[0] = 0;
  v22 = sub_26B470D98(&unk_287BF76A8);
  v23 = sub_26B470D98(&unk_287BF76D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B5450C0;
  v25 = *v16;
  *(v24 + 32) = *v16;
  *(v24 + 40) = 1;
  *(v24 + 48) = v25;
  *(v24 + 56) = 3;
  *(v24 + 64) = v25;
  *(v24 + 72) = 8;
  *(v24 + 80) = 0x403A000000000000;
  *(v24 + 88) = 10;
  v26 = sub_26B471088(&unk_287BF76F8);
  v27 = sub_26B470F10(&unk_287BF7720);
  v28 = sub_26B470F10(&unk_287BF7748);
  v162 = 4;
  v161 = 4;
  v29.value._countAndFlagsBits = 0x6D45747265736E69;
  v29.value._object = 0xEC0000003A696A6FLL;
  Action.init(_:mac:)(v29, 0);
  v157 = v159;
  v158 = v160;
  v30 = sub_26B4CE5C8();
  v31 = sub_26B4D4400();
  *&v143 = v26;
  *(&v143 + 1) = v27;
  *&v130 = v23;
  *(&v130 + 1) = v24;
  *&v117 = v22;
  *(&v117 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5587A0, &unk_287BF8410, &unk_287BF7638, &unk_287BF7670, 0, 0, v163, v12 + 216, v30 & 1, v31 & 1, v117, v130, v143, v28, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v32 = sub_26B470D98(&unk_287BF7820);
  v33 = sub_26B470D98(&unk_287BF7848);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26B5450C0;
  v35 = *v16;
  *(v34 + 32) = *v16;
  *(v34 + 40) = 1;
  *(v34 + 48) = v35;
  *(v34 + 56) = 3;
  *(v34 + 64) = v35;
  *(v34 + 72) = 8;
  *(v34 + 80) = 0x403A000000000000;
  *(v34 + 88) = 10;
  v36 = sub_26B470F10(&unk_287BF7870);
  v162 = 4;
  v161 = 4;
  v37.value._object = 0x800000026B558780;
  v37.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v37, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v28) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v144 = sub_26B4D4408();
  *(&v144 + 1) = sub_26B4D4414();
  *&v131 = v33;
  *(&v131 + 1) = v34;
  *&v118 = v32;
  *(&v118 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B5587C0, &unk_287BF8440, &unk_287BF77B0, &unk_287BF77E8, 0, 0, v163, v12 + 400, v28 & 1, v26 & 1, v118, v131, v144, v36, &v162, &v161, 0, &unk_287BF7898, &v157);
  v163[0] = 1;
  v38 = sub_26B470D98(&unk_287BF7988);
  v39 = sub_26B470D98(&unk_287BF79B0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B5450C0;
  v41 = *v16;
  *(v40 + 32) = *v16;
  *(v40 + 40) = 1;
  *(v40 + 48) = v41;
  *(v40 + 56) = 3;
  *(v40 + 64) = v41;
  *(v40 + 72) = 8;
  *(v40 + 80) = 0x403A000000000000;
  *(v40 + 88) = 10;
  v42 = sub_26B470F10(&unk_287BF79D8);
  v162 = 4;
  v161 = 4;
  v43.value._countAndFlagsBits = 0x6144747265736E69;
  v43.value._object = 0xEB000000003A6574;
  Action.init(_:mac:)(v43, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v28) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v145 = sub_26B4D4408();
  *(&v145 + 1) = sub_26B4D4414();
  *&v132 = v39;
  *(&v132 + 1) = v40;
  *&v119 = v38;
  *(&v119 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x736E492E74786554, 0xEF65746144747265, &unk_287BF8470, &unk_287BF7918, &unk_287BF7950, 0, 0, v163, v12 + 584, v28 & 1, v26 & 1, v119, v132, v145, v42, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v44 = sub_26B470D98(&unk_287BF7AB0);
  v45 = sub_26B470D98(&unk_287BF7AD8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B5450C0;
  v47 = *v16;
  *(v46 + 32) = *v16;
  *(v46 + 40) = 1;
  *(v46 + 48) = v47;
  *(v46 + 56) = 3;
  *(v46 + 64) = v47;
  *(v46 + 72) = 8;
  *(v46 + 80) = 0x403A000000000000;
  *(v46 + 88) = 10;
  v162 = 4;
  v161 = 4;
  v48.value._object = 0x800000026B558810;
  v48.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v48, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v42) = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  v49 = sub_26B4D4408();
  v50 = sub_26B4D4414();
  v51 = sub_26B4D4414();
  *&v146 = v49;
  *(&v146 + 1) = v50;
  *&v133 = v45;
  *(&v133 + 1) = v46;
  *&v120 = v44;
  *(&v120 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B5587E0, &unk_287BF84A0, &unk_287BF7A40, &unk_287BF7A78, 0, 0, v163, v12 + 768, v42 & 1, v28 & 1, v120, v133, v146, v51, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v52 = sub_26B470D98(&unk_287BF7BA0);
  v53 = sub_26B470D98(&unk_287BF7BC8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B5450C0;
  v55 = *v16;
  *(v54 + 32) = *v16;
  *(v54 + 40) = 1;
  *(v54 + 48) = v55;
  *(v54 + 56) = 3;
  *(v54 + 64) = v55;
  *(v54 + 72) = 8;
  *(v54 + 80) = 0x403A000000000000;
  *(v54 + 88) = 10;
  v56 = sub_26B470F10(&unk_287BF7BF0);
  v162 = 4;
  v161 = 4;
  v57.value._object = 0x800000026B558850;
  v58.value._countAndFlagsBits = 0xD000000000000014;
  v58.value._object = 0x800000026B558870;
  v57.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v57, v58);
  v157 = v159;
  v158 = v160;
  LOBYTE(v28) = sub_26B4CE5C8();
  LOBYTE(v49) = sub_26B4D4400();
  *&v147 = sub_26B4D4408();
  *(&v147 + 1) = sub_26B4D4414();
  *&v134 = v53;
  *(&v134 + 1) = v54;
  *&v121 = v52;
  *(&v121 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B558830, &unk_287BF84D0, &unk_287BF7B30, &unk_287BF7B68, 0, 0, v163, v12 + 952, v28 & 1, v49 & 1, v121, v134, v147, v56, &v162, &v161, 0, 0, &v157);
  v163[0] = 1;
  v59 = sub_26B470D98(&unk_287BF7CF0);
  v60 = sub_26B470D98(&unk_287BF7D18);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_26B5450D0;
  v62 = *v16;
  *(v61 + 32) = *v16;
  *(v61 + 40) = 1;
  *(v61 + 48) = v62;
  *(v61 + 56) = 3;
  *(v61 + 64) = v62;
  *(v61 + 72) = 8;
  v63 = sub_26B471088(&unk_287BF7D40);
  v64 = sub_26B470F10(&unk_287BF7D68);
  v162 = 4;
  v161 = 4;
  v65.value._countAndFlagsBits = 0xD000000000000019;
  v65.value._object = 0x800000026B5588B0;
  Action.init(_:mac:)(v65, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v28) = sub_26B4CE5C8();
  LOBYTE(v50) = sub_26B4D4400();
  *&v148 = v63;
  *(&v148 + 1) = sub_26B4D4414();
  *&v135 = v60;
  *(&v135 + 1) = v61;
  *&v122 = v59;
  *(&v122 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B558890, &unk_287BF8500, &unk_287BF7C68, &unk_287BF7CA0, 0, 0, v163, v12 + 1136, v28 & 1, v50 & 1, v122, v135, v148, v64, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v66 = sub_26B470D98(&unk_287BF7E30);
  v67 = sub_26B470D98(&unk_287BF7E58);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26B5450C0;
  v69 = *v16;
  *(v68 + 32) = *v16;
  *(v68 + 40) = 1;
  *(v68 + 48) = v69;
  *(v68 + 56) = 3;
  *(v68 + 64) = v69;
  *(v68 + 72) = 8;
  *(v68 + 80) = 0x403A000000000000;
  *(v68 + 88) = 10;
  v162 = 4;
  v161 = 4;
  v70.value._countAndFlagsBits = 0xD000000000000012;
  v70.value._object = 0x800000026B5588F0;
  Action.init(_:mac:)(v70, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v64) = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  v71 = sub_26B4D4408();
  v72 = sub_26B4D4414();
  v73 = sub_26B4D4414();
  *&v149 = v71;
  *(&v149 + 1) = v72;
  *&v136 = v67;
  *(&v136 + 1) = v68;
  *&v123 = v66;
  *(&v123 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5588D0, &unk_287BF8530, &unk_287BF7DC0, &unk_287BF7DF8, 0, 0, v163, v12 + 1320, v64 & 1, v28 & 1, v123, v136, v149, v73, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v74 = sub_26B470D98(&unk_287BF7F20);
  v75 = sub_26B470D98(&unk_287BF7F48);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_26B5450C0;
  v77 = *v16;
  *(v76 + 32) = *v16;
  *(v76 + 40) = 1;
  *(v76 + 48) = v77;
  *(v76 + 56) = 3;
  *(v76 + 64) = v77;
  *(v76 + 72) = 8;
  *(v76 + 80) = 0x403A000000000000;
  *(v76 + 88) = 10;
  v162 = 4;
  v161 = 4;
  v78.value._object = 0x800000026B558930;
  v78.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v78, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v64) = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  v79 = sub_26B4D4408();
  v80 = sub_26B4D4414();
  v81 = sub_26B4D4414();
  *&v150 = v79;
  *(&v150 + 1) = v80;
  *&v137 = v75;
  *(&v137 + 1) = v76;
  *&v124 = v74;
  *(&v124 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B558910, &unk_287BF8560, &unk_287BF7EB0, &unk_287BF7EE8, 0, 0, v163, v12 + 1504, v64 & 1, v28 & 1, v124, v137, v150, v81, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v82 = sub_26B470D98(&unk_287BF8010);
  v83 = sub_26B470D98(&unk_287BF8038);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B5450C0;
  v85 = *v16;
  *(v84 + 32) = *v16;
  *(v84 + 40) = 1;
  *(v84 + 48) = v85;
  *(v84 + 56) = 3;
  *(v84 + 64) = v85;
  *(v84 + 72) = 8;
  *(v84 + 80) = 0x403A000000000000;
  *(v84 + 88) = 10;
  v86 = sub_26B470F10(&unk_287BF8060);
  v87 = sub_26B470F10(&unk_287BF8088);
  v162 = 4;
  v161 = 4;
  v88.value._countAndFlagsBits = 0xD000000000000011;
  v88.value._object = 0x800000026B558970;
  Action.init(_:mac:)(v88, 0);
  v157 = v159;
  v158 = v160;
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v80) = sub_26B4D4400();
  *&v151 = sub_26B4D4408();
  *(&v151 + 1) = v86;
  *&v138 = v83;
  *(&v138 + 1) = v84;
  *&v125 = v82;
  *(&v125 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B558950, &unk_287BF8590, &unk_287BF7FA0, &unk_287BF7FD8, 0, 0, v163, v12 + 1688, v79 & 1, v80 & 1, v125, v138, v151, v87, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v89 = sub_26B470D98(&unk_287BF80E0);
  v90 = sub_26B470D98(&unk_287BF8108);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_26B545100;
  *(v91 + 32) = *v16;
  *(v91 + 40) = 1;
  v92 = sub_26B471088(&unk_287BF8130);
  v93 = sub_26B470F10(&unk_287BF8158);
  v162 = 4;
  v161 = 4;
  v94.value._countAndFlagsBits = 0xD000000000000013;
  v94.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v94, 0);
  v157 = v159;
  v158 = v160;
  v95 = sub_26B4D43F4();
  LOBYTE(v84) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  v96 = sub_26B4D4414();
  *&v152 = v92;
  *(&v152 + 1) = v93;
  *&v139 = v90;
  *(&v139 + 1) = v91;
  v97 = MEMORY[0x277D84FA0];
  *&v126 = v89;
  *(&v126 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x4B2E6D6574737953, 0xEF65636170537965, &unk_287BF85C0, MEMORY[0x277D84F90], v95, 0, 0, v163, v12 + 1872, v84 & 1, v79 & 1, v126, v139, v152, v96, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v98 = sub_26B470D98(&unk_287BF81B0);
  v99 = sub_26B470D98(&unk_287BF81D8);
  v100 = sub_26B471088(&unk_287BF8260);
  v101 = sub_26B470F10(&unk_287BF8288);
  v162 = 4;
  v161 = 4;
  v102.value._countAndFlagsBits = 0xD000000000000013;
  v102.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v102, 0);
  v157 = v159;
  v158 = v160;
  v103 = sub_26B4D43F4();
  LOBYTE(v93) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  v104 = sub_26B4D4414();
  *&v153 = v100;
  *(&v153 + 1) = v101;
  *&v140 = v99;
  *(&v140 + 1) = &unk_287BF8200;
  *&v127 = v98;
  *(&v127 + 1) = v97;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEF72614265636170, &unk_287BF85F0, MEMORY[0x277D84F90], v103, 0, 0, v163, v12 + 2056, v93 & 1, v79 & 1, v127, v140, v153, v104, &v162, &v161, 0, 0, &v157);
  v163[0] = 0;
  v105 = sub_26B470D98(&unk_287BF82E0);
  v106 = sub_26B470D98(&unk_287BF8308);
  v107 = sub_26B471088(&unk_287BF8390);
  v108 = sub_26B470F10(&unk_287BF83B8);
  v162 = 4;
  v161 = 4;
  v109.value._countAndFlagsBits = 0xD000000000000013;
  v109.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v109, 0);
  v157 = v159;
  v158 = v160;
  v110 = sub_26B4D43F4();
  LOBYTE(v100) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  v111 = sub_26B4D4414();
  *&v154 = v107;
  *(&v154 + 1) = v108;
  *&v141 = v106;
  *(&v141 + 1) = &unk_287BF8330;
  *&v128 = v105;
  *(&v128 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B5589B0, &unk_287BF8620, MEMORY[0x277D84F90], v110, 0, 0, v163, v12 + 2240, v100 & 1, v79 & 1, v128, v141, v154, v111, &v162, &v161, 0, 0, &v157);
  LOBYTE(v107) = sub_26B4CE5C8();
  v112 = sub_26B4D4400();
  v113._object = 0xED00006E6F697461;
  v114 = v112 & 1;
  v113._countAndFlagsBits = 0x7463694474786554;
  v115._object = v155;
  v115._countAndFlagsBits = v156;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406CD8, v113, v115, v107 & 1, v114, v12);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B487B84()
{
  if (qword_2804003D8 != -1)
  {
    swift_once();
  }

  return &stru_280406CD8;
}

void sub_26B487BD4()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v109 = v11;
  v110 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545250;
  v119[0] = 0;
  v108 = sub_26B470D98(&unk_287BF8708);
  v13 = sub_26B470D98(&unk_287BF8730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B5450C0;
  v112 = sub_26B4C6A78();
  v15 = *v112;
  *(v14 + 32) = *v112;
  *(v14 + 40) = 1;
  *(v14 + 48) = v15;
  *(v14 + 56) = 3;
  *(v14 + 64) = v15;
  *(v14 + 72) = 8;
  *(v14 + 80) = 0x403A000000000000;
  *(v14 + 88) = 10;
  v16 = sub_26B470F10(&unk_287BF8758);
  v118 = 4;
  v117 = 4;
  v17.value._countAndFlagsBits = 0xD000000000000014;
  v17.value._object = 0x800000026B559550;
  Action.init(_:mac:)(v17, 0);
  v113 = v115;
  v114 = v116;
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  *&v98 = sub_26B4D4408();
  *(&v98 + 1) = sub_26B4D4414();
  *&v90 = v13;
  *(&v90 + 1) = v14;
  *(&v82 + 1) = MEMORY[0x277D84FA0];
  *&v82 = v108;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B559520, &unk_287BF9098, &unk_287BF8680, &unk_287BF86D0, 0, 0, v119, v12 + 32, v18 & 1, v19 & 1, v82, v90, v98, v16, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v20 = sub_26B470D98(&unk_287BF8820);
  v21 = sub_26B470D98(&unk_287BF8848);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B5450D0;
  v23 = *v112;
  *(v22 + 32) = *v112;
  *(v22 + 40) = 3;
  *(v22 + 48) = v23;
  *(v22 + 56) = 8;
  *(v22 + 64) = 0x403A000000000000;
  *(v22 + 72) = 10;
  v118 = 4;
  v117 = 4;
  v24.value._countAndFlagsBits = 0x6172447472617473;
  v24.value._object = 0xE900000000000067;
  Action.init(_:mac:)(v24, 0);
  v113 = v115;
  v114 = v116;
  v25 = sub_26B4CE5C8();
  v26 = sub_26B4D4400();
  v27 = sub_26B4D4408();
  v28 = sub_26B4D4414();
  v29 = sub_26B4D4414();
  *&v99 = v27;
  *(&v99 + 1) = v28;
  *&v91 = v21;
  *(&v91 + 1) = v22;
  v111._rawValue = v12;
  *&v83 = v20;
  *(&v83 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B559570, &unk_287BF90C8, &unk_287BF87B0, &unk_287BF87E8, 0, 0, v119, v12 + 216, v25 & 1, v26 & 1, v83, v91, v99, v29, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v106 = sub_26B470D98(&unk_287BF8910);
  v30 = sub_26B470D98(&unk_287BF8938);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26B5450C0;
  v32 = *v112;
  *(v31 + 32) = *v112;
  *(v31 + 40) = 1;
  *(v31 + 48) = v32;
  *(v31 + 56) = 3;
  *(v31 + 64) = v32;
  *(v31 + 72) = 8;
  *(v31 + 80) = 0x403A000000000000;
  *(v31 + 88) = 10;
  v33 = sub_26B470F10(&unk_287BF8960);
  v118 = 4;
  v117 = 4;
  v34.value._object = 0x800000026B5595B0;
  v35.value._countAndFlagsBits = 0x6172447472617473;
  v35.value._object = 0xE900000000000067;
  v34.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v35, v34);
  v113 = v115;
  v114 = v116;
  v36 = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  *&v100 = sub_26B4D4408();
  *(&v100 + 1) = sub_26B4D4414();
  *&v92 = v30;
  *(&v92 + 1) = v31;
  *(&v84 + 1) = MEMORY[0x277D84FA0];
  *&v84 = v106;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B559590, &unk_287BF90F8, &unk_287BF88A0, &unk_287BF88D8, 0, 0, v119, v12 + 400, v36 & 1, v28 & 1, v84, v92, v100, v33, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v107 = sub_26B470D98(&unk_287BF8A10);
  v37 = sub_26B470D98(&unk_287BF8A38);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450D0;
  v39 = *v112;
  *(v38 + 32) = *v112;
  *(v38 + 40) = 3;
  *(v38 + 48) = v39;
  *(v38 + 56) = 8;
  *(v38 + 64) = 0x403A000000000000;
  *(v38 + 72) = 10;
  v40 = sub_26B470F10(&unk_287BF8A60);
  v118 = 4;
  v117 = 4;
  v41.value._countAndFlagsBits = 0x67617244646E65;
  v41.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v41, 0);
  v113 = v115;
  v114 = v116;
  v42 = sub_26B4D43F4();
  v43 = sub_26B4CE5C8();
  LOBYTE(v28) = sub_26B4D4400();
  *&v101 = sub_26B4D4408();
  *(&v101 + 1) = sub_26B4D4414();
  *&v93 = v37;
  *(&v93 + 1) = v38;
  *(&v85 + 1) = MEMORY[0x277D84FA0];
  *&v85 = v107;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5595D0, &unk_287BF9128, &unk_287BF89D8, v42, 0, 0, v119, v12 + 584, v43 & 1, v28 & 1, v85, v93, v101, v40, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v44 = sub_26B470D98(&unk_287BF8BD8);
  v45 = sub_26B470D98(&unk_287BF8C00);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B5450C0;
  v47 = *v112;
  *(v46 + 32) = *v112;
  *(v46 + 40) = 1;
  *(v46 + 48) = v47;
  *(v46 + 56) = 3;
  *(v46 + 64) = v47;
  *(v46 + 72) = 8;
  *(v46 + 80) = 0x403A000000000000;
  *(v46 + 88) = 10;
  v48 = sub_26B470F10(&unk_287BF8C28);
  v118 = 4;
  v117 = 4;
  v49.value._countAndFlagsBits = 0x4167617244646E65;
  v49.value._object = 0xEE006C6562614C74;
  v50.value._countAndFlagsBits = 0x67617244646E65;
  v50.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v50, v49);
  v113 = v115;
  v114 = v116;
  v51 = sub_26B4CE5C8();
  LOBYTE(v12) = sub_26B4D4400();
  *&v102 = sub_26B4D4408();
  *(&v102 + 1) = sub_26B4D4414();
  *&v94 = v45;
  *(&v94 + 1) = v46;
  *&v86 = v44;
  *(&v86 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B5595F0, &unk_287BF9158, &unk_287BF8B38, &unk_287BF8B88, 0, 0, v119, v111._rawValue + 768, v51 & 1, v12 & 1, v86, v94, v102, v48, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v52 = sub_26B470D98(&unk_287BF8D78);
  v53 = sub_26B470D98(&unk_287BF8DA0);
  v54 = sub_26B470D98(&unk_287BF8DC8);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B5450D0;
  v56 = *v112;
  *(v55 + 32) = *v112;
  *(v55 + 40) = 3;
  *(v55 + 48) = v56;
  *(v55 + 56) = 8;
  *(v55 + 64) = 0x403A000000000000;
  *(v55 + 72) = 10;
  v118 = 4;
  v117 = 4;
  v57.value._object = 0x800000026B559630;
  v57.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v57, 0);
  v113 = v115;
  v114 = v116;
  LOBYTE(v48) = sub_26B4CE5C8();
  v58 = sub_26B4D4400();
  v59 = sub_26B4D4408();
  v60 = sub_26B4D4414();
  v61 = sub_26B4D4414();
  *&v103 = v59;
  *(&v103 + 1) = v60;
  *&v95 = v54;
  *(&v95 + 1) = v55;
  *&v87 = v52;
  *(&v87 + 1) = v53;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B559610, &unk_287BF9198, &unk_287BF8CF0, &unk_287BF8D40, 0, 0, v119, v111._rawValue + 952, v48 & 1, v58 & 1, v87, v95, v103, v61, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v62 = sub_26B470D98(&unk_287BF8F20);
  v63 = sub_26B470D98(&unk_287BF8F48);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26B5450C0;
  v65 = *v112;
  *(v64 + 32) = *v112;
  *(v64 + 40) = 1;
  *(v64 + 48) = v65;
  *(v64 + 56) = 3;
  *(v64 + 64) = v65;
  *(v64 + 72) = 8;
  *(v64 + 80) = 0x403A000000000000;
  *(v64 + 88) = 10;
  v66 = sub_26B470F10(&unk_287BF8F70);
  v118 = 4;
  v117 = 4;
  v67.value._object = 0x800000026B559630;
  v68.value._countAndFlagsBits = 0xD000000000000030;
  v68.value._object = 0x800000026B559670;
  v67.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v67, v68);
  v113 = v115;
  v114 = v116;
  v69 = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v104 = sub_26B4D4408();
  *(&v104 + 1) = sub_26B4D4414();
  *&v96 = v63;
  *(&v96 + 1) = v64;
  *&v88 = v62;
  *(&v88 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B559650, &unk_287BF91D8, &unk_287BF8E80, &unk_287BF8ED0, 0, 0, v119, v111._rawValue + 1136, v69 & 1, v59 & 1, v88, v96, v104, v66, &v118, &v117, 0, 0, &v113);
  v119[0] = 0;
  v70 = sub_26B470D98(&unk_287BF9020);
  v71 = sub_26B470D98(&unk_287BF9048);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26B5450D0;
  v73 = *v112;
  *(v72 + 32) = *v112;
  *(v72 + 40) = 3;
  *(v72 + 48) = v73;
  *(v72 + 56) = 8;
  *(v72 + 64) = 0x403A000000000000;
  *(v72 + 72) = 10;
  v74 = sub_26B470F10(&unk_287BF9070);
  v118 = 4;
  v117 = 4;
  v75.value._countAndFlagsBits = 0x65476C65636E6163;
  v75.value._object = 0xED00006572757473;
  Action.init(_:mac:)(v75, 0);
  v113 = v115;
  v114 = v116;
  v76 = sub_26B4D43F4();
  v77 = sub_26B4CE5C8();
  LOBYTE(v64) = sub_26B4D4400();
  *&v105 = sub_26B4D4408();
  *(&v105 + 1) = sub_26B4D4414();
  *&v97 = v71;
  *(&v97 + 1) = v72;
  *&v89 = v70;
  *(&v89 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5596B0, &unk_287BF9218, &unk_287BF8FE8, v76, 0, 0, v119, v111._rawValue + 1320, v77 & 1, v64 & 1, v89, v97, v105, v74, &v118, &v117, 0, 0, &v113);
  LOBYTE(v74) = sub_26B4CE5C8();
  v78 = sub_26B4D4400();
  v79._countAndFlagsBits = v110;
  v80._object = 0x800000026B5594C0;
  v81 = v78 & 1;
  v80._countAndFlagsBits = 0xD000000000000010;
  v79._object = v109;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D08, v80, v79, v74 & 1, v81, v111);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B488994()
{
  if (qword_2804003E0 != -1)
  {
    swift_once();
  }

  return &stru_280406D08;
}

void sub_26B4889E4()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v152 = v11;
  v153 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545260;
  v160[0] = 1;
  v13 = sub_26B470D98(&unk_287BF92E8);
  v14 = sub_26B470D98(&unk_287BF9310);
  v15 = sub_26B470D98(&unk_287BF9338);
  v16 = sub_26B471088(&unk_287BF9390);
  v17 = sub_26B470F10(&unk_287BF93B8);
  v18 = sub_26B470F10(&unk_287BF93E0);
  v159 = 4;
  v158 = 4;
  v19.value._countAndFlagsBits = 0x6977537472617473;
  v19.value._object = 0xEE0065646F4D7466;
  Action.init(_:mac:)(v19, 0);
  v154 = v156;
  v155 = v157;
  v20 = sub_26B4CE5C8();
  v21 = sub_26B4D4400();
  *&v140 = v16;
  *(&v140 + 1) = v17;
  *&v128 = v15;
  *(&v128 + 1) = &unk_287BF9360;
  *&v116 = v13;
  *(&v116 + 1) = v14;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55A250, &unk_287BFA778, &unk_287BF9278, &unk_287BF92B0, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 32, v20 & 1, v21 & 1, v116, v128, v140, v18, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v22 = sub_26B470D98(&unk_287BF94A8);
  v23 = sub_26B470D98(&unk_287BF94D0);
  v24 = sub_26B470D98(&unk_287BF94F8);
  v25 = sub_26B471088(&unk_287BF9550);
  v26 = sub_26B470F10(&unk_287BF9578);
  v27 = sub_26B470F10(&unk_287BF95A0);
  v159 = 4;
  v158 = 4;
  v28.value._countAndFlagsBits = 0xD000000000000018;
  v28.value._object = 0x800000026B55A2B0;
  Action.init(_:mac:)(v28, 0);
  v154 = v156;
  v155 = v157;
  v29 = sub_26B4CE5C8();
  v30 = sub_26B4D4400();
  *&v141 = v25;
  *(&v141 + 1) = v26;
  *&v129 = v24;
  *(&v129 + 1) = &unk_287BF9520;
  *&v117 = v22;
  *(&v117 + 1) = v23;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55A290, &unk_287BFA7A8, &unk_287BF9438, &unk_287BF9470, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 216, v29 & 1, v30 & 1, v117, v129, v141, v27, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v31 = sub_26B470D98(&unk_287BF9668);
  v32 = sub_26B470D98(&unk_287BF9690);
  v33 = sub_26B470D98(&unk_287BF96B8);
  v34 = sub_26B471088(&unk_287BF9710);
  v35 = sub_26B470F10(&unk_287BF9738);
  v36 = sub_26B470F10(&unk_287BF9760);
  v159 = 4;
  v158 = 4;
  v37.value._countAndFlagsBits = 0xD000000000000013;
  v37.value._object = 0x800000026B55A2F0;
  Action.init(_:mac:)(v37, 0);
  v154 = v156;
  v155 = v157;
  v38 = sub_26B4CE5C8();
  v39 = sub_26B4D4400();
  *&v142 = v34;
  *(&v142 + 1) = v35;
  *&v130 = v33;
  *(&v130 + 1) = &unk_287BF96E0;
  *&v118 = v31;
  *(&v118 + 1) = v32;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55A2D0, &unk_287BFA7D8, &unk_287BF95F8, &unk_287BF9630, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 400, v38 & 1, v39 & 1, v118, v130, v142, v36, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v40 = sub_26B470D98(&unk_287BF9828);
  v41 = sub_26B470D98(&unk_287BF9850);
  v42 = sub_26B470D98(&unk_287BF9878);
  v43 = sub_26B471088(&unk_287BF98D0);
  v44 = sub_26B470F10(&unk_287BF98F8);
  v45 = sub_26B470F10(&unk_287BF9920);
  v159 = 4;
  v158 = 4;
  v46.value._countAndFlagsBits = 0xD000000000000011;
  v46.value._object = 0x800000026B55A330;
  Action.init(_:mac:)(v46, 0);
  v154 = v156;
  v155 = v157;
  v47 = sub_26B4CE5C8();
  v48 = sub_26B4D4400();
  *&v143 = v43;
  *(&v143 + 1) = v44;
  *&v131 = v42;
  *(&v131 + 1) = &unk_287BF98A0;
  *&v119 = v40;
  *(&v119 + 1) = v41;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55A310, &unk_287BFA808, &unk_287BF97B8, &unk_287BF97F0, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 584, v47 & 1, v48 & 1, v119, v131, v143, v45, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v49 = sub_26B470D98(&unk_287BF99E8);
  v50 = sub_26B470D98(&unk_287BF9A10);
  v51 = sub_26B470D98(&unk_287BF9A38);
  v52 = sub_26B471088(&unk_287BF9A90);
  v53 = sub_26B470F10(&unk_287BF9AB8);
  v54 = sub_26B470F10(&unk_287BF9AE0);
  v159 = 4;
  v158 = 4;
  v55.value._countAndFlagsBits = 0xD000000000000010;
  v55.value._object = 0x800000026B55A370;
  Action.init(_:mac:)(v55, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v22) = sub_26B4CE5C8();
  v56 = sub_26B4D4400();
  *&v144 = v52;
  *(&v144 + 1) = v53;
  *&v132 = v51;
  *(&v132 + 1) = &unk_287BF9A60;
  *&v120 = v49;
  *(&v120 + 1) = v50;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55A350, &unk_287BFA838, &unk_287BF9978, &unk_287BF99B0, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 768, v22 & 1, v56 & 1, v120, v132, v144, v54, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v57 = sub_26B470D98(&unk_287BF9BA8);
  v58 = sub_26B470D98(&unk_287BF9BD0);
  v59 = sub_26B470D98(&unk_287BF9BF8);
  v60 = sub_26B471088(&unk_287BF9C50);
  v61 = sub_26B470F10(&unk_287BF9C78);
  v62 = sub_26B470F10(&unk_287BF9CA0);
  v159 = 4;
  v158 = 4;
  v63.value._object = 0x800000026B55A3B0;
  v63.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v63, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v22) = sub_26B4CE5C8();
  v64 = sub_26B4D4400();
  *&v145 = v60;
  *(&v145 + 1) = v61;
  *&v133 = v59;
  *(&v133 + 1) = &unk_287BF9C20;
  *&v121 = v57;
  *(&v121 + 1) = v58;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B55A390, &unk_287BFA868, &unk_287BF9B38, &unk_287BF9B70, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 952, v22 & 1, v64 & 1, v121, v133, v145, v62, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v65 = sub_26B470D98(&unk_287BF9D78);
  v66 = sub_26B470D98(&unk_287BF9DA0);
  v67 = sub_26B470D98(&unk_287BF9DC8);
  v68 = sub_26B471088(&unk_287BF9E20);
  v69 = sub_26B470F10(&unk_287BF9E48);
  v70 = sub_26B470F10(&unk_287BF9E70);
  v159 = 4;
  v158 = 4;
  v71.value._countAndFlagsBits = 0x6C46747265736E69;
  v71.value._object = 0xEF3A657361437461;
  Action.init(_:mac:)(v71, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v57) = sub_26B4CE5C8();
  v72 = sub_26B4D4400();
  *&v146 = v68;
  *(&v146 + 1) = v69;
  *&v134 = v67;
  *(&v134 + 1) = &unk_287BF9DF0;
  *&v122 = v65;
  *(&v122 + 1) = v66;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55A3D0, &unk_287BFA898, &unk_287BF9D08, &unk_287BF9D40, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 1136, v57 & 1, v72 & 1, v122, v134, v146, v70, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v73 = sub_26B470D98(&unk_287BF9F38);
  v74 = sub_26B470D98(&unk_287BF9F60);
  v75 = sub_26B470D98(&unk_287BF9F88);
  v76 = sub_26B471088(&unk_287BF9FE0);
  v77 = sub_26B470F10(&unk_287BFA008);
  v78 = sub_26B470F10(&unk_287BFA030);
  v159 = 4;
  v158 = 4;
  v79.value._countAndFlagsBits = 0xD000000000000016;
  v79.value._object = 0x800000026B55A410;
  Action.init(_:mac:)(v79, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v57) = sub_26B4CE5C8();
  v80 = sub_26B4D4400();
  *&v147 = v76;
  *(&v147 + 1) = v77;
  *&v135 = v75;
  *(&v135 + 1) = &unk_287BF9FB0;
  *&v123 = v73;
  *(&v123 + 1) = v74;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55A3F0, &unk_287BFA8C8, &unk_287BF9EC8, &unk_287BF9F00, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 1320, v57 & 1, v80 & 1, v123, v135, v147, v78, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v81 = sub_26B470D98(&unk_287BFA108);
  v82 = sub_26B470D98(&unk_287BFA130);
  v83 = sub_26B470D98(&unk_287BFA158);
  v84 = sub_26B471088(&unk_287BFA1B0);
  v85 = sub_26B470F10(&unk_287BFA1D8);
  v86 = sub_26B470F10(&unk_287BFA200);
  v159 = 4;
  v158 = 4;
  v87.value._object = 0x800000026B55A450;
  v87.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v87, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v40) = sub_26B4CE5C8();
  v88 = sub_26B4D4400();
  *&v148 = v84;
  *(&v148 + 1) = v85;
  *&v136 = v83;
  *(&v136 + 1) = &unk_287BFA180;
  *&v124 = v81;
  *(&v124 + 1) = v82;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55A430, &unk_287BFA8F8, &unk_287BFA098, &unk_287BFA0D0, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 1504, v40 & 1, v88 & 1, v124, v136, v148, v86, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v89 = sub_26B470D98(&unk_287BFA2C8);
  v90 = sub_26B470D98(&unk_287BFA2F0);
  v91 = sub_26B470D98(&unk_287BFA318);
  v92 = sub_26B471088(&unk_287BFA370);
  v93 = sub_26B470F10(&unk_287BFA398);
  v94 = sub_26B470F10(&unk_287BFA3C0);
  v159 = 4;
  v158 = 4;
  v95.value._countAndFlagsBits = 0xD000000000000017;
  v95.value._object = 0x800000026B55A490;
  Action.init(_:mac:)(v95, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v57) = sub_26B4CE5C8();
  v96 = sub_26B4D4400();
  *&v149 = v92;
  *(&v149 + 1) = v93;
  *&v137 = v91;
  *(&v137 + 1) = &unk_287BFA340;
  *&v125 = v89;
  *(&v125 + 1) = v90;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55A470, &unk_287BFA928, &unk_287BFA258, &unk_287BFA290, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 1688, v57 & 1, v96 & 1, v125, v137, v149, v94, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v97 = sub_26B470D98(&unk_287BFA498);
  v98 = sub_26B470D98(&unk_287BFA4C0);
  v99 = sub_26B470D98(&unk_287BFA4E8);
  v100 = sub_26B471088(&unk_287BFA540);
  v101 = sub_26B470F10(&unk_287BFA568);
  v102 = sub_26B470F10(&unk_287BFA590);
  v159 = 4;
  v158 = 4;
  v103.value._countAndFlagsBits = 0x6144747265736E69;
  v103.value._object = 0xEF3A657361436873;
  Action.init(_:mac:)(v103, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v57) = sub_26B4CE5C8();
  v104 = sub_26B4D4400();
  *&v150 = v100;
  *(&v150 + 1) = v101;
  *&v138 = v99;
  *(&v138 + 1) = &unk_287BFA510;
  *&v126 = v97;
  *(&v126 + 1) = v98;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55A4B0, &unk_287BFA958, &unk_287BFA428, &unk_287BFA460, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 1872, v57 & 1, v104 & 1, v126, v138, v150, v102, &v159, &v158, 0, 0, &v154);
  v160[0] = 1;
  v105 = sub_26B470D98(&unk_287BFA658);
  v106 = sub_26B470D98(&unk_287BFA680);
  v107 = sub_26B470D98(&unk_287BFA6A8);
  v108 = sub_26B471088(&unk_287BFA700);
  v109 = sub_26B470F10(&unk_287BFA728);
  v110 = sub_26B470F10(&unk_287BFA750);
  v159 = 4;
  v158 = 4;
  v111.value._countAndFlagsBits = 0xD000000000000016;
  v111.value._object = 0x800000026B55A4F0;
  Action.init(_:mac:)(v111, 0);
  v154 = v156;
  v155 = v157;
  LOBYTE(v102) = sub_26B4CE5C8();
  v112 = sub_26B4D4400();
  *&v151 = v108;
  *(&v151 + 1) = v109;
  *&v139 = v107;
  *(&v139 + 1) = &unk_287BFA6D0;
  *&v127 = v105;
  *(&v127 + 1) = v106;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55A4D0, &unk_287BFA988, &unk_287BFA5E8, &unk_287BFA620, 0xD000000000000014, 0x800000026B55A270, v160, v12 + 2056, v102 & 1, v112 & 1, v127, v139, v151, v110, &v159, &v158, 0, 0, &v154);
  v113 = sub_26B4CE5C8() & 1;
  v114._countAndFlagsBits = 0x6D6D6172676F7250;
  v114._object = 0xEB00000000676E69;
  v115._object = v152;
  v115._countAndFlagsBits = v153;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D38, v114, v115, v113, 1, v12);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B489B08()
{
  if (qword_2804003E8 != -1)
  {
    swift_once();
  }

  return &stru_280406D38;
}

void sub_26B489B58()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v10 = sub_26B542AB4();
  v473 = v11;
  v474 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545270;
  v476._rawValue = v12;
  v483[0] = 0;
  v13 = sub_26B470D98(&unk_287BFAA58);
  v14 = sub_26B470D98(&unk_287BFAA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B5450C0;
  v16 = sub_26B4C6A78();
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = 1;
  *(v15 + 48) = v17;
  *(v15 + 56) = 3;
  *(v15 + 64) = v17;
  *(v15 + 72) = 8;
  *(v15 + 80) = 0x403A000000000000;
  *(v15 + 88) = 10;
  v18 = sub_26B470F10(&unk_287BFAAA8);
  v482 = 4;
  v481 = 4;
  v19.value._countAndFlagsBits = 0xD00000000000001CLL;
  v19.value._object = 0x800000026B55C580;
  Action.init(_:mac:)(v19, 0);
  v477 = v479;
  v478 = v480;
  v20 = sub_26B4CE5C8();
  v21 = sub_26B4D4400();
  *&v417 = sub_26B4D4408();
  *(&v417 + 1) = sub_26B4D4414();
  *&v372 = v14;
  *(&v372 + 1) = v15;
  *&v327 = v13;
  *(&v327 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55C560, &unk_287BFD478, &unk_287BFA9E8, &unk_287BFAA20, 0, 0, v483, v12 + 32, v20 & 1, v21 & 1, v327, v372, v417, v18, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v22 = sub_26B470D98(&unk_287BFAB80);
  v23 = sub_26B470D98(&unk_287BFABA8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B5450C0;
  v25 = *v16;
  v475 = v16;
  *(v24 + 32) = *v16;
  *(v24 + 40) = 1;
  *(v24 + 48) = v25;
  *(v24 + 56) = 3;
  *(v24 + 64) = v25;
  *(v24 + 72) = 8;
  *(v24 + 80) = 0x403A000000000000;
  *(v24 + 88) = 10;
  v482 = 4;
  v481 = 4;
  v26.value._countAndFlagsBits = 0x6C417463656C6573;
  v27.value._countAndFlagsBits = 0x65536D6574737973;
  v27.value._object = 0xEF6C6C417463656CLL;
  v26.value._object = 0xEA00000000003A6CLL;
  Action.init(_:mac:)(v26, v27);
  v477 = v479;
  v478 = v480;
  LOBYTE(v18) = sub_26B4CE5C8();
  v28 = sub_26B4D4400();
  v29 = sub_26B4D4408();
  v30 = sub_26B4D4414();
  v31 = sub_26B4D4414();
  *&v418 = v29;
  *(&v418 + 1) = v30;
  *&v373 = v23;
  *(&v373 + 1) = v24;
  *&v328 = v22;
  *(&v328 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55C5A0, &unk_287BFD4A8, &unk_287BFAB10, &unk_287BFAB48, 0, 0, v483, v12 + 216, v18 & 1, v28 & 1, v328, v373, v418, v31, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v32 = sub_26B470D98(&unk_287BFAC70);
  v33 = sub_26B470D98(&unk_287BFAC98);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26B5450C0;
  v35 = *v16;
  *(v34 + 32) = *v16;
  *(v34 + 40) = 1;
  *(v34 + 48) = v35;
  *(v34 + 56) = 3;
  *(v34 + 64) = v35;
  *(v34 + 72) = 8;
  *(v34 + 80) = 0x403A000000000000;
  *(v34 + 88) = 10;
  v36 = sub_26B470F10(&unk_287BFACC0);
  v482 = 4;
  v481 = 4;
  v37.value._countAndFlagsBits = 0x68507463656C6573;
  v37.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v37, 0);
  v477 = v479;
  v478 = v480;
  v38 = sub_26B4CE5C8();
  LOBYTE(v22) = sub_26B4D4400();
  *&v419 = sub_26B4D4408();
  *(&v419 + 1) = sub_26B4D4414();
  *&v374 = v33;
  *(&v374 + 1) = v34;
  *&v329 = v32;
  *(&v329 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55C5C0, &unk_287BFD4D8, &unk_287BFAC00, &unk_287BFAC38, 0, 0, v483, v12 + 400, v38 & 1, v22 & 1, v329, v374, v419, v36, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v472 = sub_26B470D98(&unk_287BFAD60);
  v39 = sub_26B470D98(&unk_287BFAD88);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B5450C0;
  v41 = v16;
  v42 = *v16;
  *(v40 + 32) = *v16;
  *(v40 + 40) = 1;
  *(v40 + 48) = v42;
  *(v40 + 56) = 3;
  *(v40 + 64) = v42;
  *(v40 + 72) = 8;
  *(v40 + 80) = 0x403A000000000000;
  *(v40 + 88) = 10;
  v43 = sub_26B470F10(&unk_287BFADB0);
  v482 = 4;
  v481 = 4;
  v44.value._countAndFlagsBits = 0xD00000000000001ALL;
  v44.value._object = 0x800000026B55C600;
  Action.init(_:mac:)(v44, 0);
  v477 = v479;
  v478 = v480;
  v45 = sub_26B4D43F4();
  LOBYTE(v22) = sub_26B4CE5C8();
  LOBYTE(v23) = sub_26B4D4400();
  *&v420 = sub_26B4D4408();
  *(&v420 + 1) = sub_26B4D4414();
  *&v375 = v39;
  *(&v375 + 1) = v40;
  *(&v330 + 1) = MEMORY[0x277D84FA0];
  *&v330 = v472;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B55C5E0, &unk_287BFD508, &unk_287BFAD28, v45, 0, 0, v483, v12 + 584, v22 & 1, v23 & 1, v330, v375, v420, v43, &v482, &v481, 0, 0, &v477);
  v483[0] = 3;
  v46 = sub_26B470D98(&unk_287BFAE78);
  v47 = sub_26B470D98(&unk_287BFAEA0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_26B5450C0;
  v49 = *v16;
  *(v48 + 32) = *v16;
  *(v48 + 40) = 1;
  *(v48 + 48) = v49;
  *(v48 + 56) = 3;
  *(v48 + 64) = v49;
  *(v48 + 72) = 8;
  *(v48 + 80) = 0x403A000000000000;
  *(v48 + 88) = 10;
  v50 = sub_26B471088(&unk_287BFAEC8);
  v51 = sub_26B470F10(&unk_287BFAEF0);
  v52 = sub_26B470F10(&unk_287BFAF18);
  v482 = 4;
  v481 = 4;
  v53.value._countAndFlagsBits = 0x68507463656C6573;
  v53.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v53, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v22) = sub_26B4CE5C8();
  v54 = sub_26B4D4400();
  *&v421 = v50;
  *(&v421 + 1) = v51;
  *&v376 = v47;
  *(&v376 + 1) = v48;
  *&v331 = v46;
  *(&v331 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55C620, &unk_287BFD538, &unk_287BFAE08, &unk_287BFAE40, 0, 0, v483, v476._rawValue + 768, v22 & 1, v54 & 1, v331, v376, v421, v52, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v55 = sub_26B470D98(&unk_287BFAFE0);
  v56 = sub_26B470D98(&unk_287BFB008);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B5450C0;
  v58 = *v16;
  *(v57 + 32) = *v16;
  *(v57 + 40) = 1;
  *(v57 + 48) = v58;
  *(v57 + 56) = 3;
  *(v57 + 64) = v58;
  *(v57 + 72) = 8;
  *(v57 + 80) = 0x403A000000000000;
  *(v57 + 88) = 10;
  v59 = sub_26B470F10(&unk_287BFB030);
  v482 = 4;
  v481 = 4;
  v60.value._countAndFlagsBits = 0x72507463656C6573;
  v60.value._object = 0xEF3A73756F697665;
  Action.init(_:mac:)(v60, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v52) = sub_26B4CE5C8();
  LOBYTE(v46) = sub_26B4D4400();
  *&v422 = sub_26B4D4408();
  *(&v422 + 1) = sub_26B4D4414();
  *&v377 = v56;
  *(&v377 + 1) = v57;
  *&v332 = v55;
  *(&v332 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C640, &unk_287BFD568, &unk_287BFAF70, &unk_287BFAFA8, 0, 0, v483, v476._rawValue + 952, v52 & 1, v46 & 1, v332, v377, v422, v59, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v61 = sub_26B470D98(&unk_287BFB0F8);
  v62 = sub_26B470D98(&unk_287BFB120);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_26B5450C0;
  v64 = *v16;
  *(v63 + 32) = *v16;
  *(v63 + 40) = 1;
  *(v63 + 48) = v64;
  *(v63 + 56) = 3;
  *(v63 + 64) = v64;
  *(v63 + 72) = 8;
  *(v63 + 80) = 0x403A000000000000;
  *(v63 + 88) = 10;
  v65 = sub_26B470F10(&unk_287BFB148);
  v482 = 4;
  v481 = 4;
  v66.value._countAndFlagsBits = 0x654E7463656C6573;
  v66.value._object = 0xEB000000003A7478;
  Action.init(_:mac:)(v66, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v52) = sub_26B4CE5C8();
  LOBYTE(v47) = sub_26B4D4400();
  *&v423 = sub_26B4D4408();
  *(&v423 + 1) = sub_26B4D4414();
  *&v378 = v62;
  *(&v378 + 1) = v63;
  *&v333 = v61;
  *(&v333 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x6C65532E74786554, 0xEF7478654E746365, &unk_287BFD598, &unk_287BFB088, &unk_287BFB0C0, 0, 0, v483, v476._rawValue + 1136, v52 & 1, v47 & 1, v333, v378, v423, v65, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v67 = sub_26B470D98(&unk_287BFB210);
  v68 = sub_26B470D98(&unk_287BFB238);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B5450C0;
  v70 = *v41;
  *(v69 + 32) = *v41;
  *(v69 + 40) = 1;
  *(v69 + 48) = v70;
  *(v69 + 56) = 3;
  *(v69 + 64) = v70;
  *(v69 + 72) = 8;
  *(v69 + 80) = 0x403A000000000000;
  *(v69 + 88) = 10;
  v71 = sub_26B470F10(&unk_287BFB260);
  v482 = 4;
  v481 = 4;
  v72.value._countAndFlagsBits = 0xD000000000000017;
  v72.value._object = 0x800000026B55C680;
  Action.init(_:mac:)(v72, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v52) = sub_26B4CE5C8();
  LOBYTE(v47) = sub_26B4D4400();
  *&v424 = sub_26B4D4408();
  *(&v424 + 1) = sub_26B4D4414();
  *&v379 = v68;
  *(&v379 + 1) = v69;
  *&v334 = v67;
  *(&v334 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C660, &unk_287BFD5C8, &unk_287BFB1A0, &unk_287BFB1D8, 0, 0, v483, v476._rawValue + 1320, v52 & 1, v47 & 1, v334, v379, v424, v71, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v471 = sub_26B470D98(&unk_287BFB2F0);
  v73 = sub_26B470D98(&unk_287BFB318);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_26B5450C0;
  v75 = *v41;
  *(v74 + 32) = *v41;
  *(v74 + 40) = 1;
  *(v74 + 48) = v75;
  *(v74 + 56) = 3;
  *(v74 + 64) = v75;
  *(v74 + 72) = 8;
  *(v74 + 80) = 0x403A000000000000;
  *(v74 + 88) = 10;
  v76 = sub_26B470F10(&unk_287BFB340);
  v482 = 4;
  v481 = 4;
  v77.value._countAndFlagsBits = 0xD000000000000018;
  v77.value._object = 0x800000026B55C6C0;
  Action.init(_:mac:)(v77, 0);
  v477 = v479;
  v478 = v480;
  v78 = sub_26B4D43F4();
  LOBYTE(v47) = sub_26B4CE5C8();
  LOBYTE(v48) = sub_26B4D4400();
  *&v425 = sub_26B4D4408();
  *(&v425 + 1) = sub_26B4D4414();
  *&v380 = v73;
  *(&v380 + 1) = v74;
  *(&v335 + 1) = MEMORY[0x277D84FA0];
  *&v335 = v471;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55C6A0, &unk_287BFD5F8, &unk_287BFB2B8, v78, 0, 0, v483, v476._rawValue + 1504, v47 & 1, v48 & 1, v335, v380, v425, v76, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v469 = sub_26B470D98(&unk_287BFB3D0);
  v79 = sub_26B470D98(&unk_287BFB3F8);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_26B5450C0;
  v81 = *v475;
  *(v80 + 32) = *v475;
  *(v80 + 40) = 1;
  *(v80 + 48) = v81;
  *(v80 + 56) = 3;
  *(v80 + 64) = v81;
  *(v80 + 72) = 8;
  *(v80 + 80) = 0x403A000000000000;
  *(v80 + 88) = 10;
  v82 = sub_26B470F10(&unk_287BFB420);
  v482 = 4;
  v481 = 4;
  v83.value._countAndFlagsBits = 0xD000000000000014;
  v83.value._object = 0x800000026B55C700;
  Action.init(_:mac:)(v83, 0);
  v477 = v479;
  v478 = v480;
  v84 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v47) = sub_26B4D4400();
  *&v426 = sub_26B4D4408();
  *(&v426 + 1) = sub_26B4D4414();
  *&v381 = v79;
  *(&v381 + 1) = v80;
  *(&v336 + 1) = MEMORY[0x277D84FA0];
  *&v336 = v469;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55C6E0, &unk_287BFD628, &unk_287BFB398, v84, 0, 0, v483, v476._rawValue + 1688, v55 & 1, v47 & 1, v336, v381, v426, v82, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v470 = sub_26B470D98(&unk_287BFB4B0);
  v85 = sub_26B470D98(&unk_287BFB4D8);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26B5450C0;
  v87 = *v475;
  *(v86 + 32) = *v475;
  *(v86 + 40) = 1;
  *(v86 + 48) = v87;
  *(v86 + 56) = 3;
  *(v86 + 64) = v87;
  *(v86 + 72) = 8;
  *(v86 + 80) = 0x403A000000000000;
  *(v86 + 88) = 10;
  v88 = sub_26B470F10(&unk_287BFB500);
  v482 = 4;
  v481 = 4;
  v89.value._countAndFlagsBits = 0xD000000000000012;
  v89.value._object = 0x800000026B55C740;
  Action.init(_:mac:)(v89, 0);
  v477 = v479;
  v478 = v480;
  v90 = sub_26B4D43F4();
  LOBYTE(v84) = sub_26B4CE5C8();
  LOBYTE(v55) = sub_26B4D4400();
  *&v427 = sub_26B4D4408();
  *(&v427 + 1) = sub_26B4D4414();
  *&v382 = v85;
  *(&v382 + 1) = v86;
  *(&v337 + 1) = MEMORY[0x277D84FA0];
  *&v337 = v470;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55C720, &unk_287BFD658, &unk_287BFB478, v90, 0, 0, v483, v476._rawValue + 1872, v84 & 1, v55 & 1, v337, v382, v427, v88, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v466 = sub_26B470D98(&unk_287BFB590);
  v91 = sub_26B470D98(&unk_287BFB5B8);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_26B5450C0;
  v93 = *v475;
  *(v92 + 32) = *v475;
  *(v92 + 40) = 1;
  *(v92 + 48) = v93;
  *(v92 + 56) = 3;
  *(v92 + 64) = v93;
  *(v92 + 72) = 8;
  *(v92 + 80) = 0x403A000000000000;
  *(v92 + 88) = 10;
  v94 = sub_26B470F10(&unk_287BFB5E0);
  v482 = 4;
  v481 = 4;
  v95.value._object = 0x800000026B55C780;
  v95.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v95, 0);
  v477 = v479;
  v478 = v480;
  v96 = sub_26B4D43F4();
  LOBYTE(v84) = sub_26B4CE5C8();
  LOBYTE(v55) = sub_26B4D4400();
  *&v428 = sub_26B4D4408();
  *(&v428 + 1) = sub_26B4D4414();
  *&v383 = v91;
  *(&v383 + 1) = v92;
  *(&v338 + 1) = MEMORY[0x277D84FA0];
  *&v338 = v466;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C760, &unk_287BFD688, &unk_287BFB558, v96, 0, 0, v483, v476._rawValue + 2056, v84 & 1, v55 & 1, v338, v383, v428, v94, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v467 = sub_26B470D98(&unk_287BFB670);
  v97 = sub_26B470D98(&unk_287BFB698);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_26B5450C0;
  v99 = *v475;
  *(v98 + 32) = *v475;
  *(v98 + 40) = 1;
  *(v98 + 48) = v99;
  *(v98 + 56) = 3;
  *(v98 + 64) = v99;
  *(v98 + 72) = 8;
  *(v98 + 80) = 0x403A000000000000;
  *(v98 + 88) = 10;
  v100 = sub_26B470F10(&unk_287BFB6C0);
  v482 = 4;
  v481 = 4;
  v101.value._object = 0xEF3A64726F577478;
  v101.value._countAndFlagsBits = 0x654E7463656C6573;
  Action.init(_:mac:)(v101, 0);
  v477 = v479;
  v478 = v480;
  v102 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v429 = sub_26B4D4408();
  *(&v429 + 1) = sub_26B4D4414();
  *&v384 = v97;
  *(&v384 + 1) = v98;
  *(&v339 + 1) = MEMORY[0x277D84FA0];
  *&v339 = v467;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C7A0, &unk_287BFD6B8, &unk_287BFB638, v102, 0, 0, v483, v476._rawValue + 2240, v55 & 1, v79 & 1, v339, v384, v429, v100, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v468 = sub_26B470D98(&unk_287BFB750);
  v103 = sub_26B470D98(&unk_287BFB778);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_26B5450C0;
  v105 = *v475;
  *(v104 + 32) = *v475;
  *(v104 + 40) = 1;
  *(v104 + 48) = v105;
  *(v104 + 56) = 3;
  *(v104 + 64) = v105;
  *(v104 + 72) = 8;
  *(v104 + 80) = 0x403A000000000000;
  *(v104 + 88) = 10;
  v106 = sub_26B470F10(&unk_287BFB7A0);
  v482 = 4;
  v481 = 4;
  v107.value._countAndFlagsBits = 0xD000000000000016;
  v107.value._object = 0x800000026B55C7E0;
  Action.init(_:mac:)(v107, 0);
  v477 = v479;
  v478 = v480;
  v108 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v430 = sub_26B4D4408();
  *(&v430 + 1) = sub_26B4D4414();
  *&v385 = v103;
  *(&v385 + 1) = v104;
  *(&v340 + 1) = MEMORY[0x277D84FA0];
  *&v340 = v468;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55C7C0, &unk_287BFD6E8, &unk_287BFB718, v108, 0, 0, v483, v476._rawValue + 2424, v55 & 1, v61 & 1, v340, v385, v430, v106, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v465 = sub_26B470D98(&unk_287BFB830);
  v109 = sub_26B470D98(&unk_287BFB858);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_26B5450C0;
  v111 = *v475;
  *(v110 + 32) = *v475;
  *(v110 + 40) = 1;
  *(v110 + 48) = v111;
  *(v110 + 56) = 3;
  *(v110 + 64) = v111;
  *(v110 + 72) = 8;
  *(v110 + 80) = 0x403A000000000000;
  *(v110 + 88) = 10;
  v112 = sub_26B470F10(&unk_287BFB880);
  v482 = 4;
  v481 = 4;
  v113.value._countAndFlagsBits = 0xD000000000000017;
  v113.value._object = 0x800000026B55C820;
  Action.init(_:mac:)(v113, 0);
  v477 = v479;
  v478 = v480;
  v114 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v431 = sub_26B4D4408();
  *(&v431 + 1) = sub_26B4D4414();
  *&v386 = v109;
  *(&v386 + 1) = v110;
  *(&v341 + 1) = MEMORY[0x277D84FA0];
  *&v341 = v465;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C800, &unk_287BFD718, &unk_287BFB7F8, v114, 0, 0, v483, v476._rawValue + 2608, v55 & 1, v61 & 1, v341, v386, v431, v112, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v463 = sub_26B470D98(&unk_287BFB910);
  v115 = sub_26B470D98(&unk_287BFB938);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_26B5450C0;
  v117 = *v475;
  *(v116 + 32) = *v475;
  *(v116 + 40) = 1;
  *(v116 + 48) = v117;
  *(v116 + 56) = 3;
  *(v116 + 64) = v117;
  *(v116 + 72) = 8;
  *(v116 + 80) = 0x403A000000000000;
  *(v116 + 88) = 10;
  v118 = sub_26B470F10(&unk_287BFB960);
  v482 = 4;
  v481 = 4;
  v119.value._object = 0x800000026B55C860;
  v119.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v119, 0);
  v477 = v479;
  v478 = v480;
  v120 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v432 = sub_26B4D4408();
  *(&v432 + 1) = sub_26B4D4414();
  *&v387 = v115;
  *(&v387 + 1) = v116;
  *(&v342 + 1) = MEMORY[0x277D84FA0];
  *&v342 = v463;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C840, &unk_287BFD748, &unk_287BFB8D8, v120, 0, 0, v483, v476._rawValue + 2792, v55 & 1, v61 & 1, v342, v387, v432, v118, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v464 = sub_26B470D98(&unk_287BFB9F0);
  v121 = sub_26B470D98(&unk_287BFBA18);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B5450C0;
  v123 = *v475;
  *(v122 + 32) = *v475;
  *(v122 + 40) = 1;
  *(v122 + 48) = v123;
  *(v122 + 56) = 3;
  *(v122 + 64) = v123;
  *(v122 + 72) = 8;
  *(v122 + 80) = 0x403A000000000000;
  *(v122 + 88) = 10;
  v124 = sub_26B470F10(&unk_287BFBA40);
  v482 = 4;
  v481 = 4;
  v125.value._countAndFlagsBits = 0xD000000000000017;
  v125.value._object = 0x800000026B55C8A0;
  Action.init(_:mac:)(v125, 0);
  v477 = v479;
  v478 = v480;
  v126 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v433 = sub_26B4D4408();
  *(&v433 + 1) = sub_26B4D4414();
  *&v388 = v121;
  *(&v388 + 1) = v122;
  *(&v343 + 1) = MEMORY[0x277D84FA0];
  *&v343 = v464;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C880, &unk_287BFD778, &unk_287BFB9B8, v126, 0, 0, v483, v476._rawValue + 2976, v55 & 1, v61 & 1, v343, v388, v433, v124, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v127 = sub_26B470D98(&unk_287BFBAD0);
  v128 = sub_26B470D98(&unk_287BFBAF8);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_26B5450C0;
  v130 = *v475;
  *(v129 + 32) = *v475;
  *(v129 + 40) = 1;
  *(v129 + 48) = v130;
  *(v129 + 56) = 3;
  *(v129 + 64) = v130;
  *(v129 + 72) = 8;
  *(v129 + 80) = 0x403A000000000000;
  *(v129 + 88) = 10;
  v131 = sub_26B470F10(&unk_287BFBB20);
  v482 = 4;
  v481 = 4;
  v132.value._countAndFlagsBits = 0xD000000000000018;
  v132.value._object = 0x800000026B55C8E0;
  Action.init(_:mac:)(v132, 0);
  v477 = v479;
  v478 = v480;
  v133 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v434 = sub_26B4D4408();
  *(&v434 + 1) = sub_26B4D4414();
  *&v389 = v128;
  *(&v389 + 1) = v129;
  *&v344 = v127;
  *(&v344 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55C8C0, &unk_287BFD7A8, &unk_287BFBA98, v133, 0, 0, v483, v476._rawValue + 3160, v55 & 1, v61 & 1, v344, v389, v434, v131, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v134 = sub_26B470D98(&unk_287BFBBB0);
  v135 = sub_26B470D98(&unk_287BFBBD8);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B5450C0;
  v137 = *v475;
  *(v136 + 32) = *v475;
  *(v136 + 40) = 1;
  *(v136 + 48) = v137;
  *(v136 + 56) = 3;
  *(v136 + 64) = v137;
  *(v136 + 72) = 8;
  *(v136 + 80) = 0x403A000000000000;
  *(v136 + 88) = 10;
  v138 = sub_26B470F10(&unk_287BFBC00);
  v482 = 4;
  v481 = 4;
  v139.value._countAndFlagsBits = 0xD000000000000014;
  v139.value._object = 0x800000026B55C920;
  Action.init(_:mac:)(v139, 0);
  v477 = v479;
  v478 = v480;
  v140 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v435 = sub_26B4D4408();
  *(&v435 + 1) = sub_26B4D4414();
  *&v390 = v135;
  *(&v390 + 1) = v136;
  *&v345 = v134;
  *(&v345 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55C900, &unk_287BFD7D8, &unk_287BFBB78, v140, 0, 0, v483, v476._rawValue + 3344, v55 & 1, v61 & 1, v345, v390, v435, v138, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v141 = sub_26B470D98(&unk_287BFBC90);
  v142 = sub_26B470D98(&unk_287BFBCB8);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_26B5450C0;
  v144 = *v475;
  *(v143 + 32) = *v475;
  *(v143 + 40) = 1;
  *(v143 + 48) = v144;
  *(v143 + 56) = 3;
  *(v143 + 64) = v144;
  *(v143 + 72) = 8;
  *(v143 + 80) = 0x403A000000000000;
  *(v143 + 88) = 10;
  v145 = sub_26B470F10(&unk_287BFBCE0);
  v482 = 4;
  v481 = 4;
  v146.value._object = 0x800000026B55C960;
  v146.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v146, 0);
  v477 = v479;
  v478 = v480;
  v147 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v436 = sub_26B4D4408();
  *(&v436 + 1) = sub_26B4D4414();
  *&v391 = v142;
  *(&v391 + 1) = v143;
  *&v346 = v141;
  *(&v346 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55C940, &unk_287BFD808, &unk_287BFBC58, v147, 0, 0, v483, v476._rawValue + 3528, v55 & 1, v61 & 1, v346, v391, v436, v145, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v462 = sub_26B470D98(&unk_287BFBD70);
  v148 = sub_26B470D98(&unk_287BFBD98);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_26B5450C0;
  v150 = *v475;
  *(v149 + 32) = *v475;
  *(v149 + 40) = 1;
  *(v149 + 48) = v150;
  *(v149 + 56) = 3;
  *(v149 + 64) = v150;
  *(v149 + 72) = 8;
  *(v149 + 80) = 0x403A000000000000;
  *(v149 + 88) = 10;
  v151 = sub_26B470F10(&unk_287BFBDC0);
  v482 = 4;
  v481 = 4;
  v152.value._object = 0x800000026B55C9A0;
  v152.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v152, 0);
  v477 = v479;
  v478 = v480;
  v153 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v437 = sub_26B4D4408();
  *(&v437 + 1) = sub_26B4D4414();
  *&v392 = v148;
  *(&v392 + 1) = v149;
  *(&v347 + 1) = MEMORY[0x277D84FA0];
  *&v347 = v462;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C980, &unk_287BFD838, &unk_287BFBD38, v153, 0, 0, v483, v476._rawValue + 3712, v55 & 1, v61 & 1, v347, v392, v437, v151, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v154 = sub_26B470D98(&unk_287BFBE50);
  v155 = sub_26B470D98(&unk_287BFBE78);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_26B5450C0;
  v157 = *v475;
  *(v156 + 32) = *v475;
  *(v156 + 40) = 1;
  *(v156 + 48) = v157;
  *(v156 + 56) = 3;
  *(v156 + 64) = v157;
  *(v156 + 72) = 8;
  *(v156 + 80) = 0x403A000000000000;
  *(v156 + 88) = 10;
  v158 = sub_26B470F10(&unk_287BFBEA0);
  v482 = 4;
  v481 = 4;
  v159.value._object = 0xEF3A656E694C7478;
  v159.value._countAndFlagsBits = 0x654E7463656C6573;
  Action.init(_:mac:)(v159, 0);
  v477 = v479;
  v478 = v480;
  v160 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v438 = sub_26B4D4408();
  *(&v438 + 1) = sub_26B4D4414();
  *&v393 = v155;
  *(&v393 + 1) = v156;
  *&v348 = v154;
  *(&v348 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C9C0, &unk_287BFD868, &unk_287BFBE18, v160, 0, 0, v483, v476._rawValue + 3896, v55 & 1, v61 & 1, v348, v393, v438, v158, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v161 = sub_26B470D98(&unk_287BFBF30);
  v162 = sub_26B470D98(&unk_287BFBF58);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26B5450C0;
  v164 = *v475;
  *(v163 + 32) = *v475;
  *(v163 + 40) = 1;
  *(v163 + 48) = v164;
  *(v163 + 56) = 3;
  *(v163 + 64) = v164;
  *(v163 + 72) = 8;
  *(v163 + 80) = 0x403A000000000000;
  *(v163 + 88) = 10;
  v165 = sub_26B470F10(&unk_287BFBF80);
  v482 = 4;
  v481 = 4;
  v166.value._countAndFlagsBits = 0xD000000000000018;
  v166.value._object = 0x800000026B55C6C0;
  Action.init(_:mac:)(v166, 0);
  v477 = v479;
  v478 = v480;
  v167 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v439 = sub_26B4D4408();
  *(&v439 + 1) = sub_26B4D4414();
  *&v394 = v162;
  *(&v394 + 1) = v163;
  *&v349 = v161;
  *(&v349 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B55C9E0, &unk_287BFD898, &unk_287BFBEF8, v167, 0, 0, v483, v476._rawValue + 4080, v55 & 1, v61 & 1, v349, v394, v439, v165, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v168 = sub_26B470D98(&unk_287BFC010);
  v169 = sub_26B470D98(&unk_287BFC038);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_26B5450C0;
  v171 = *v475;
  *(v170 + 32) = *v475;
  *(v170 + 40) = 1;
  *(v170 + 48) = v171;
  *(v170 + 56) = 3;
  *(v170 + 64) = v171;
  *(v170 + 72) = 8;
  *(v170 + 80) = 0x403A000000000000;
  *(v170 + 88) = 10;
  v172 = sub_26B470F10(&unk_287BFC060);
  v482 = 4;
  v481 = 4;
  v173.value._countAndFlagsBits = 0xD000000000000014;
  v173.value._object = 0x800000026B55C700;
  Action.init(_:mac:)(v173, 0);
  v477 = v479;
  v478 = v480;
  v174 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v440 = sub_26B4D4408();
  *(&v440 + 1) = sub_26B4D4414();
  *&v395 = v169;
  *(&v395 + 1) = v170;
  *&v350 = v168;
  *(&v350 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B55CA20, &unk_287BFD8C8, &unk_287BFBFD8, v174, 0, 0, v483, v476._rawValue + 4264, v55 & 1, v61 & 1, v350, v395, v440, v172, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v175 = sub_26B470D98(&unk_287BFC0F0);
  v176 = sub_26B470D98(&unk_287BFC118);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_26B5450C0;
  v178 = *v475;
  *(v177 + 32) = *v475;
  *(v177 + 40) = 1;
  *(v177 + 48) = v178;
  *(v177 + 56) = 3;
  *(v177 + 64) = v178;
  *(v177 + 72) = 8;
  *(v177 + 80) = 0x403A000000000000;
  *(v177 + 88) = 10;
  v179 = sub_26B470F10(&unk_287BFC140);
  v482 = 4;
  v481 = 4;
  v180.value._object = 0x800000026B55C780;
  v180.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v180, 0);
  v477 = v479;
  v478 = v480;
  v181 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v441 = sub_26B4D4408();
  *(&v441 + 1) = sub_26B4D4414();
  *&v396 = v176;
  *(&v396 + 1) = v177;
  *&v351 = v175;
  *(&v351 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CA50, &unk_287BFD8F8, &unk_287BFC0B8, v181, 0, 0, v483, v476._rawValue + 4448, v55 & 1, v61 & 1, v351, v396, v441, v179, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v182 = sub_26B470D98(&unk_287BFC1D0);
  v183 = sub_26B470D98(&unk_287BFC1F8);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B5450C0;
  v185 = *v475;
  *(v184 + 32) = *v475;
  *(v184 + 40) = 1;
  *(v184 + 48) = v185;
  *(v184 + 56) = 3;
  *(v184 + 64) = v185;
  *(v184 + 72) = 8;
  *(v184 + 80) = 0x403A000000000000;
  *(v184 + 88) = 10;
  v186 = sub_26B470F10(&unk_287BFC220);
  v482 = 4;
  v481 = 4;
  v187.value._countAndFlagsBits = 0x654E7463656C6573;
  v187.value._object = 0xEF3A64726F577478;
  Action.init(_:mac:)(v187, 0);
  v477 = v479;
  v478 = v480;
  v188 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v61) = sub_26B4D4400();
  *&v442 = sub_26B4D4408();
  *(&v442 + 1) = sub_26B4D4414();
  *&v397 = v183;
  *(&v397 + 1) = v184;
  *&v352 = v182;
  *(&v352 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55CA80, &unk_287BFD928, &unk_287BFC198, v188, 0, 0, v483, v476._rawValue + 4632, v55 & 1, v61 & 1, v352, v397, v442, v186, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v189 = sub_26B470D98(&unk_287BFC2B0);
  v190 = sub_26B470D98(&unk_287BFC2D8);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_26B5450C0;
  v192 = *v475;
  *(v191 + 32) = *v475;
  *(v191 + 40) = 1;
  *(v191 + 48) = v192;
  *(v191 + 56) = 3;
  *(v191 + 64) = v192;
  *(v191 + 72) = 8;
  *(v191 + 80) = 0x403A000000000000;
  *(v191 + 88) = 10;
  v193 = sub_26B470F10(&unk_287BFC300);
  v482 = 4;
  v481 = 4;
  v194.value._countAndFlagsBits = 0xD000000000000017;
  v194.value._object = 0x800000026B55C820;
  Action.init(_:mac:)(v194, 0);
  v477 = v479;
  v478 = v480;
  v195 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v443 = sub_26B4D4408();
  *(&v443 + 1) = sub_26B4D4414();
  *&v398 = v190;
  *(&v398 + 1) = v191;
  *&v353 = v189;
  *(&v353 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B55CAB0, &unk_287BFD958, &unk_287BFC278, v195, 0, 0, v483, v476._rawValue + 4816, v55 & 1, v79 & 1, v353, v398, v443, v193, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v196 = sub_26B470D98(&unk_287BFC390);
  v197 = sub_26B470D98(&unk_287BFC3B8);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B5450C0;
  v199 = *v475;
  *(v198 + 32) = *v475;
  *(v198 + 40) = 1;
  *(v198 + 48) = v199;
  *(v198 + 56) = 3;
  *(v198 + 64) = v199;
  *(v198 + 72) = 8;
  *(v198 + 80) = 0x403A000000000000;
  *(v198 + 88) = 10;
  v200 = sub_26B470F10(&unk_287BFC3E0);
  v482 = 4;
  v481 = 4;
  v201.value._object = 0x800000026B55C860;
  v201.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v201, 0);
  v477 = v479;
  v478 = v480;
  v202 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v444 = sub_26B4D4408();
  *(&v444 + 1) = sub_26B4D4414();
  *&v399 = v197;
  *(&v399 + 1) = v198;
  *&v354 = v196;
  *(&v354 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CAE0, &unk_287BFD988, &unk_287BFC358, v202, 0, 0, v483, v476._rawValue + 5000, v55 & 1, v79 & 1, v354, v399, v444, v200, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v203 = sub_26B470D98(&unk_287BFC470);
  v204 = sub_26B470D98(&unk_287BFC498);
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_26B5450C0;
  v206 = *v475;
  *(v205 + 32) = *v475;
  *(v205 + 40) = 1;
  *(v205 + 48) = v206;
  *(v205 + 56) = 3;
  *(v205 + 64) = v206;
  *(v205 + 72) = 8;
  *(v205 + 80) = 0x403A000000000000;
  *(v205 + 88) = 10;
  v207 = sub_26B470F10(&unk_287BFC4C0);
  v482 = 4;
  v481 = 4;
  v208.value._countAndFlagsBits = 0xD000000000000018;
  v208.value._object = 0x800000026B55C8E0;
  Action.init(_:mac:)(v208, 0);
  v477 = v479;
  v478 = v480;
  v209 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v445 = sub_26B4D4408();
  *(&v445 + 1) = sub_26B4D4414();
  *&v400 = v204;
  *(&v400 + 1) = v205;
  *&v355 = v203;
  *(&v355 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B55CB10, &unk_287BFD9B8, &unk_287BFC438, v209, 0, 0, v483, v476._rawValue + 5184, v55 & 1, v79 & 1, v355, v400, v445, v207, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v210 = sub_26B470D98(&unk_287BFC550);
  v211 = sub_26B470D98(&unk_287BFC578);
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_26B5450C0;
  v213 = *v475;
  *(v212 + 32) = *v475;
  *(v212 + 40) = 1;
  *(v212 + 48) = v213;
  *(v212 + 56) = 3;
  *(v212 + 64) = v213;
  *(v212 + 72) = 8;
  *(v212 + 80) = 0x403A000000000000;
  *(v212 + 88) = 10;
  v214 = sub_26B470F10(&unk_287BFC5A0);
  v482 = 4;
  v481 = 4;
  v215.value._countAndFlagsBits = 0xD000000000000014;
  v215.value._object = 0x800000026B55C920;
  Action.init(_:mac:)(v215, 0);
  v477 = v479;
  v478 = v480;
  v216 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v446 = sub_26B4D4408();
  *(&v446 + 1) = sub_26B4D4414();
  *&v401 = v211;
  *(&v401 + 1) = v212;
  *&v356 = v210;
  *(&v356 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B55CB50, &unk_287BFD9E8, &unk_287BFC518, v216, 0, 0, v483, v476._rawValue + 5368, v55 & 1, v79 & 1, v356, v401, v446, v214, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v217 = sub_26B470D98(&unk_287BFC630);
  v218 = sub_26B470D98(&unk_287BFC658);
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_26B5450C0;
  v220 = *v475;
  *(v219 + 32) = *v475;
  *(v219 + 40) = 1;
  *(v219 + 48) = v220;
  *(v219 + 56) = 3;
  *(v219 + 64) = v220;
  *(v219 + 72) = 8;
  *(v219 + 80) = 0x403A000000000000;
  *(v219 + 88) = 10;
  v221 = sub_26B470F10(&unk_287BFC680);
  v482 = 4;
  v481 = 4;
  v222.value._object = 0x800000026B55C9A0;
  v222.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v222, 0);
  v477 = v479;
  v478 = v480;
  v223 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v447 = sub_26B4D4408();
  *(&v447 + 1) = sub_26B4D4414();
  *&v402 = v218;
  *(&v402 + 1) = v219;
  *&v357 = v217;
  *(&v357 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CB80, &unk_287BFDA18, &unk_287BFC5F8, v223, 0, 0, v483, v476._rawValue + 5552, v55 & 1, v79 & 1, v357, v402, v447, v221, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v224 = sub_26B470D98(&unk_287BFC710);
  v225 = sub_26B470D98(&unk_287BFC738);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_26B5450C0;
  v227 = *v475;
  *(v226 + 32) = *v475;
  *(v226 + 40) = 1;
  *(v226 + 48) = v227;
  *(v226 + 56) = 3;
  *(v226 + 64) = v227;
  *(v226 + 72) = 8;
  *(v226 + 80) = 0x403A000000000000;
  *(v226 + 88) = 10;
  v228 = sub_26B470F10(&unk_287BFC760);
  v482 = 4;
  v481 = 4;
  v229.value._countAndFlagsBits = 0x654E7463656C6573;
  v229.value._object = 0xEF3A656E694C7478;
  Action.init(_:mac:)(v229, 0);
  v477 = v479;
  v478 = v480;
  v230 = sub_26B4D43F4();
  LOBYTE(v55) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v448 = sub_26B4D4408();
  *(&v448 + 1) = sub_26B4D4414();
  *&v403 = v225;
  *(&v403 + 1) = v226;
  *&v358 = v224;
  *(&v358 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55CBB0, &unk_287BFDA48, &unk_287BFC6D8, v230, 0, 0, v483, v476._rawValue + 5736, v55 & 1, v79 & 1, v358, v403, v448, v228, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v231 = sub_26B470D98(&unk_287BFC800);
  v232 = sub_26B470D98(&unk_287BFC828);
  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_26B5450D0;
  v234 = *v475;
  *(v233 + 32) = *v475;
  *(v233 + 40) = 3;
  *(v233 + 48) = v234;
  *(v233 + 56) = 8;
  *(v233 + 64) = 0x403A000000000000;
  *(v233 + 72) = 10;
  v235 = sub_26B470F10(&unk_287BFC850);
  v482 = 4;
  v481 = 4;
  v236.value._countAndFlagsBits = 0xD00000000000001BLL;
  v236.value._object = 0x800000026B55CC00;
  Action.init(_:mac:)(v236, 0);
  v477 = v479;
  v478 = v480;
  v237 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v449 = sub_26B4D4408();
  *(&v449 + 1) = sub_26B4D4414();
  *&v404 = v232;
  *(&v404 + 1) = v233;
  *&v359 = v231;
  *(&v359 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55CBE0, &unk_287BFDA78, &unk_287BFC7C8, v237, 0, 0, v483, v476._rawValue + 5920, v79 & 1, v225 & 1, v359, v404, v449, v235, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v238 = sub_26B470D98(&unk_287BFC8F0);
  v239 = sub_26B470D98(&unk_287BFC918);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_26B5450D0;
  v241 = *v475;
  *(v240 + 32) = *v475;
  *(v240 + 40) = 3;
  *(v240 + 48) = v241;
  *(v240 + 56) = 8;
  *(v240 + 64) = 0x403A000000000000;
  *(v240 + 72) = 10;
  v242 = sub_26B470F10(&unk_287BFC940);
  v482 = 4;
  v481 = 4;
  v243.value._countAndFlagsBits = 0xD000000000000015;
  v243.value._object = 0x800000026B55CC40;
  Action.init(_:mac:)(v243, 0);
  v477 = v479;
  v478 = v480;
  v244 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v450 = sub_26B4D4408();
  *(&v450 + 1) = sub_26B4D4414();
  *&v405 = v239;
  *(&v405 + 1) = v240;
  *&v360 = v238;
  *(&v360 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55CC20, &unk_287BFDAA8, &unk_287BFC8B8, v244, 0, 0, v483, v476._rawValue + 6104, v79 & 1, v225 & 1, v360, v405, v450, v242, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v245 = sub_26B470D98(&unk_287BFC9E0);
  v246 = sub_26B470D98(&unk_287BFCA08);
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_26B5450C0;
  v248 = *v475;
  *(v247 + 32) = *v475;
  *(v247 + 40) = 1;
  *(v247 + 48) = v248;
  *(v247 + 56) = 3;
  *(v247 + 64) = v248;
  *(v247 + 72) = 8;
  *(v247 + 80) = 0x403A000000000000;
  *(v247 + 88) = 10;
  v249 = sub_26B470F10(&unk_287BFCA30);
  v482 = 4;
  v481 = 4;
  v250.value._countAndFlagsBits = 0xD000000000000034;
  v250.value._object = 0x800000026B55CCA0;
  Action.init(_:mac:)(v250, 0);
  v477 = v479;
  v478 = v480;
  v251 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v451 = sub_26B4D4408();
  *(&v451 + 1) = sub_26B4D4414();
  *&v406 = v246;
  *(&v406 + 1) = v247;
  *&v361 = v245;
  *(&v361 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CC60, &unk_287BFDAD8, &unk_287BFC9A8, v251, 0, 0, v483, v476._rawValue + 6288, v79 & 1, v225 & 1, v361, v406, v451, v249, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v252 = sub_26B470D98(&unk_287BFCAF0);
  v253 = sub_26B470D98(&unk_287BFCB18);
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_26B5450C0;
  v255 = *v475;
  *(v254 + 32) = *v475;
  *(v254 + 40) = 1;
  *(v254 + 48) = v255;
  *(v254 + 56) = 3;
  *(v254 + 64) = v255;
  *(v254 + 72) = 8;
  *(v254 + 80) = 0x403A000000000000;
  *(v254 + 88) = 10;
  v256 = sub_26B470F10(&unk_287BFCB40);
  v482 = 4;
  v481 = 4;
  v257.value._countAndFlagsBits = 0xD000000000000035;
  v257.value._object = 0x800000026B55CD20;
  Action.init(_:mac:)(v257, 0);
  v477 = v479;
  v478 = v480;
  v258 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v452 = sub_26B4D4408();
  *(&v452 + 1) = sub_26B4D4414();
  *&v407 = v253;
  *(&v407 + 1) = v254;
  *&v362 = v252;
  *(&v362 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000039, 0x800000026B55CCE0, &unk_287BFDB08, &unk_287BFCAB8, v258, 0, 0, v483, v476._rawValue + 6472, v79 & 1, v225 & 1, v362, v407, v452, v256, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v259 = sub_26B470D98(&unk_287BFCBE0);
  v260 = sub_26B470D98(&unk_287BFCC08);
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_26B5450C0;
  v262 = *v475;
  *(v261 + 32) = *v475;
  *(v261 + 40) = 1;
  *(v261 + 48) = v262;
  *(v261 + 56) = 3;
  *(v261 + 64) = v262;
  *(v261 + 72) = 8;
  *(v261 + 80) = 0x403A000000000000;
  *(v261 + 88) = 10;
  v263 = sub_26B470F10(&unk_287BFCC30);
  v482 = 4;
  v481 = 4;
  v264.value._countAndFlagsBits = 0xD00000000000002FLL;
  v264.value._object = 0x800000026B55CDA0;
  Action.init(_:mac:)(v264, 0);
  v477 = v479;
  v478 = v480;
  v265 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v453 = sub_26B4D4408();
  *(&v453 + 1) = sub_26B4D4414();
  *&v408 = v260;
  *(&v408 + 1) = v261;
  *&v363 = v259;
  *(&v363 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000033, 0x800000026B55CD60, &unk_287BFDB38, &unk_287BFCBA8, v265, 0, 0, v483, v476._rawValue + 6656, v79 & 1, v225 & 1, v363, v408, v453, v263, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v266 = sub_26B470D98(&unk_287BFCCF0);
  v267 = sub_26B470D98(&unk_287BFCD18);
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_26B5450C0;
  v269 = *v475;
  *(v268 + 32) = *v475;
  *(v268 + 40) = 1;
  *(v268 + 48) = v269;
  *(v268 + 56) = 3;
  *(v268 + 64) = v269;
  *(v268 + 72) = 8;
  *(v268 + 80) = 0x403A000000000000;
  *(v268 + 88) = 10;
  v270 = sub_26B470F10(&unk_287BFCD40);
  v482 = 4;
  v481 = 4;
  v271.value._countAndFlagsBits = 0xD000000000000030;
  v271.value._object = 0x800000026B55CE10;
  Action.init(_:mac:)(v271, 0);
  v477 = v479;
  v478 = v480;
  v272 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v454 = sub_26B4D4408();
  *(&v454 + 1) = sub_26B4D4414();
  *&v409 = v267;
  *(&v409 + 1) = v268;
  *&v364 = v266;
  *(&v364 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000034, 0x800000026B55CDD0, &unk_287BFDB68, &unk_287BFCCB8, v272, 0, 0, v483, v476._rawValue + 6840, v79 & 1, v225 & 1, v364, v409, v454, v270, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v273 = sub_26B470D98(&unk_287BFCDE0);
  v274 = sub_26B470D98(&unk_287BFCE08);
  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_26B5450C0;
  v276 = *v475;
  *(v275 + 32) = *v475;
  *(v275 + 40) = 1;
  *(v275 + 48) = v276;
  *(v275 + 56) = 3;
  *(v275 + 64) = v276;
  *(v275 + 72) = 8;
  *(v275 + 80) = 0x403A000000000000;
  *(v275 + 88) = 10;
  v277 = sub_26B470F10(&unk_287BFCE30);
  v482 = 4;
  v481 = 4;
  v278.value._countAndFlagsBits = 0xD000000000000033;
  v278.value._object = 0x800000026B55CE90;
  Action.init(_:mac:)(v278, 0);
  v477 = v479;
  v478 = v480;
  v279 = sub_26B4D43F4();
  LOBYTE(v272) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v455 = sub_26B4D4408();
  *(&v455 + 1) = sub_26B4D4414();
  *&v410 = v274;
  *(&v410 + 1) = v275;
  *&v365 = v273;
  *(&v365 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000037, 0x800000026B55CE50, &unk_287BFDB98, &unk_287BFCDA8, v279, 0, 0, v483, v476._rawValue + 7024, v272 & 1, v225 & 1, v365, v410, v455, v277, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v280 = sub_26B470D98(&unk_287BFCEF0);
  v281 = sub_26B470D98(&unk_287BFCF18);
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_26B5450C0;
  v283 = *v475;
  *(v282 + 32) = *v475;
  *(v282 + 40) = 1;
  *(v282 + 48) = v283;
  *(v282 + 56) = 3;
  *(v282 + 64) = v283;
  *(v282 + 72) = 8;
  *(v282 + 80) = 0x403A000000000000;
  *(v282 + 88) = 10;
  v284 = sub_26B470F10(&unk_287BFCF40);
  v482 = 4;
  v481 = 4;
  v285.value._countAndFlagsBits = 0xD000000000000034;
  v285.value._object = 0x800000026B55CF10;
  Action.init(_:mac:)(v285, 0);
  v477 = v479;
  v478 = v480;
  v286 = sub_26B4D43F4();
  LOBYTE(v275) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v456 = sub_26B4D4408();
  *(&v456 + 1) = sub_26B4D4414();
  *&v411 = v281;
  *(&v411 + 1) = v282;
  *&v366 = v280;
  *(&v366 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CED0, &unk_287BFDBC8, &unk_287BFCEB8, v286, 0, 0, v483, v476._rawValue + 7208, v275 & 1, v225 & 1, v366, v411, v456, v284, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v287 = sub_26B470D98(&unk_287BFCFE0);
  v288 = sub_26B470D98(&unk_287BFD008);
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_26B5450C0;
  v290 = *v475;
  *(v289 + 32) = *v475;
  *(v289 + 40) = 1;
  *(v289 + 48) = v290;
  *(v289 + 56) = 3;
  *(v289 + 64) = v290;
  *(v289 + 72) = 8;
  *(v289 + 80) = 0x403A000000000000;
  *(v289 + 88) = 10;
  v291 = sub_26B470F10(&unk_287BFD030);
  v482 = 4;
  v481 = 4;
  v292.value._countAndFlagsBits = 0xD000000000000034;
  v292.value._object = 0x800000026B55CF90;
  Action.init(_:mac:)(v292, 0);
  v477 = v479;
  v478 = v480;
  v293 = sub_26B4D43F4();
  LOBYTE(v275) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v457 = sub_26B4D4408();
  *(&v457 + 1) = sub_26B4D4414();
  *&v412 = v288;
  *(&v412 + 1) = v289;
  *&v367 = v287;
  *(&v367 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CF50, &unk_287BFDBF8, &unk_287BFCFA8, v293, 0, 0, v483, v476._rawValue + 7392, v275 & 1, v225 & 1, v367, v412, v457, v291, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v294 = sub_26B470D98(&unk_287BFD0F0);
  v295 = sub_26B470D98(&unk_287BFD118);
  v296 = swift_allocObject();
  *(v296 + 16) = xmmword_26B5450C0;
  v297 = *v475;
  *(v296 + 32) = *v475;
  *(v296 + 40) = 1;
  *(v296 + 48) = v297;
  *(v296 + 56) = 3;
  *(v296 + 64) = v297;
  *(v296 + 72) = 8;
  *(v296 + 80) = 0x403A000000000000;
  *(v296 + 88) = 10;
  v298 = sub_26B470F10(&unk_287BFD140);
  v482 = 4;
  v481 = 4;
  v299.value._countAndFlagsBits = 0xD000000000000035;
  v299.value._object = 0x800000026B55D010;
  Action.init(_:mac:)(v299, 0);
  v477 = v479;
  v478 = v480;
  v300 = sub_26B4D43F4();
  LOBYTE(v275) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v458 = sub_26B4D4408();
  *(&v458 + 1) = sub_26B4D4414();
  *&v413 = v295;
  *(&v413 + 1) = v296;
  *&v368 = v294;
  *(&v368 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000039, 0x800000026B55CFD0, &unk_287BFDC28, &unk_287BFD0B8, v300, 0, 0, v483, v476._rawValue + 7576, v275 & 1, v225 & 1, v368, v413, v458, v298, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v301 = sub_26B470D98(&unk_287BFD1E0);
  v302 = sub_26B470D98(&unk_287BFD208);
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_26B5450C0;
  v304 = *v475;
  *(v303 + 32) = *v475;
  *(v303 + 40) = 1;
  *(v303 + 48) = v304;
  *(v303 + 56) = 3;
  *(v303 + 64) = v304;
  *(v303 + 72) = 8;
  *(v303 + 80) = 0x403A000000000000;
  *(v303 + 88) = 10;
  v305 = sub_26B470F10(&unk_287BFD230);
  v482 = 4;
  v481 = 4;
  v306.value._countAndFlagsBits = 0xD00000000000002FLL;
  v306.value._object = 0x800000026B55D090;
  Action.init(_:mac:)(v306, 0);
  v477 = v479;
  v478 = v480;
  v307 = sub_26B4D43F4();
  LOBYTE(v275) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v459 = sub_26B4D4408();
  *(&v459 + 1) = sub_26B4D4414();
  *&v414 = v302;
  *(&v414 + 1) = v303;
  *&v369 = v301;
  *(&v369 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000033, 0x800000026B55D050, &unk_287BFDC58, &unk_287BFD1A8, v307, 0, 0, v483, v476._rawValue + 7760, v275 & 1, v225 & 1, v369, v414, v459, v305, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v308 = sub_26B470D98(&unk_287BFD2F0);
  v309 = sub_26B470D98(&unk_287BFD318);
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_26B5450C0;
  v311 = *v475;
  *(v310 + 32) = *v475;
  *(v310 + 40) = 1;
  *(v310 + 48) = v311;
  *(v310 + 56) = 3;
  *(v310 + 64) = v311;
  *(v310 + 72) = 8;
  *(v310 + 80) = 0x403A000000000000;
  *(v310 + 88) = 10;
  v312 = sub_26B470F10(&unk_287BFD340);
  v482 = 4;
  v481 = 4;
  v313.value._countAndFlagsBits = 0xD000000000000030;
  v313.value._object = 0x800000026B55D100;
  Action.init(_:mac:)(v313, 0);
  v477 = v479;
  v478 = v480;
  v314 = sub_26B4D43F4();
  LOBYTE(v275) = sub_26B4CE5C8();
  LOBYTE(v225) = sub_26B4D4400();
  *&v460 = sub_26B4D4408();
  *(&v460 + 1) = sub_26B4D4414();
  *&v415 = v309;
  *(&v415 + 1) = v310;
  *&v370 = v308;
  *(&v370 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000034, 0x800000026B55D0C0, &unk_287BFDC88, &unk_287BFD2B8, v314, 0, 0, v483, v476._rawValue + 7944, v275 & 1, v225 & 1, v370, v415, v460, v312, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v315 = sub_26B470D98(&unk_287BFD400);
  v316 = sub_26B470D98(&unk_287BFD428);
  v317 = swift_allocObject();
  *(v317 + 16) = xmmword_26B5450C0;
  v318 = *v475;
  *(v317 + 32) = *v475;
  *(v317 + 40) = 1;
  *(v317 + 48) = v318;
  *(v317 + 56) = 3;
  *(v317 + 64) = v318;
  *(v317 + 72) = 8;
  *(v317 + 80) = 0x403A000000000000;
  *(v317 + 88) = 10;
  v319 = sub_26B470F10(&unk_287BFD450);
  v482 = 4;
  v481 = 4;
  v320.value._countAndFlagsBits = 0x7463656C65736E75;
  v321.value._countAndFlagsBits = 0xD000000000000015;
  v321.value._object = 0x800000026B552810;
  v320.value._object = 0xE90000000000003ALL;
  Action.init(_:mac:)(v321, v320);
  v477 = v479;
  v478 = v480;
  v322 = sub_26B4D43F4();
  LOBYTE(v67) = sub_26B4CE5C8();
  LOBYTE(v275) = sub_26B4D4400();
  *&v461 = sub_26B4D4408();
  *(&v461 + 1) = sub_26B4D4414();
  *&v416 = v316;
  *(&v416 + 1) = v317;
  *&v371 = v315;
  *(&v371 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x736E552E74786554, 0xED00007463656C65, &unk_287BFDCB8, &unk_287BFD3C8, v322, 0, 0, v483, v476._rawValue + 8128, v67 & 1, v275 & 1, v371, v416, v461, v319, &v482, &v481, 0, 0, &v477);
  LOBYTE(v322) = sub_26B4CE5C8();
  v323 = sub_26B4D4400();
  v324._object = 0xE90000000000006ELL;
  v325 = v323 & 1;
  v324._countAndFlagsBits = 0x6F697463656C6553;
  v326._object = v473;
  v326._countAndFlagsBits = v474;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D68, v324, v326, v322 & 1, v325, v476);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B48E25C()
{
  if (qword_2804003F0 != -1)
  {
    swift_once();
  }

  return &stru_280406D68;
}

void sub_26B48E2AC()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v244 = sub_26B542AB4();
  v243 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B545280;
  v257[0] = 0;
  v12 = sub_26B470D98(&unk_287BFDD78);
  v13 = sub_26B470D98(&unk_287BFDDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B5450C0;
  *(v14 + 32) = 0x403A000000000000;
  *(v14 + 40) = 1;
  v15 = sub_26B4C6A78();
  v16 = *v15;
  v248 = v15;
  *(v14 + 48) = *v15;
  *(v14 + 56) = 3;
  *(v14 + 64) = v16;
  *(v14 + 72) = 8;
  *(v14 + 80) = 0x403A000000000000;
  *(v14 + 88) = 10;
  v17 = sub_26B471088(&unk_287BFDDC8);
  v256 = 4;
  v255 = 4;
  v18.value._countAndFlagsBits = 0x6573616572636564;
  v18.value._object = 0xEE00656D756C6F56;
  v19.value._countAndFlagsBits = 0xD000000000000014;
  v19.value._object = 0x800000026B55D8A0;
  Action.init(_:mac:)(v18, v19);
  v251 = v253;
  v252 = v254;
  v20 = sub_26B4D43F4();
  v21 = sub_26B4CE5C8();
  v22 = sub_26B4D4400();
  v23 = sub_26B4D4414();
  v24 = sub_26B4D4414();
  *&v222 = v17;
  *(&v222 + 1) = v23;
  *&v203 = v13;
  *(&v203 + 1) = v14;
  v249._rawValue = v11;
  *&v184 = v12;
  *(&v184 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55D880, &unk_287BFEDF8, &unk_287BFDD28, v20, 0, 0, v257, v11 + 32, v21 & 1, v22 & 1, v184, v203, v222, v24, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v247 = sub_26B470D98(&unk_287BFDE80);
  v25 = sub_26B470D98(&unk_287BFDEA8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26B5450C0;
  *(v26 + 32) = 0x403A000000000000;
  *(v26 + 40) = 1;
  v27 = *v15;
  *(v26 + 48) = *v15;
  *(v26 + 56) = 3;
  *(v26 + 64) = v27;
  *(v26 + 72) = 8;
  *(v26 + 80) = 0x403A000000000000;
  *(v26 + 88) = 10;
  v28 = sub_26B471088(&unk_287BFDED0);
  v256 = 4;
  v255 = 4;
  v29.value._countAndFlagsBits = 0x6573616572636E69;
  v30.value._countAndFlagsBits = 0xD000000000000014;
  v30.value._object = 0x800000026B55D8E0;
  v29.value._object = 0xEE00656D756C6F56;
  Action.init(_:mac:)(v29, v30);
  v251 = v253;
  v252 = v254;
  v31 = sub_26B4D43F4();
  v32 = sub_26B4CE5C8();
  v33 = sub_26B4D4400();
  v34 = sub_26B4D4414();
  v35 = sub_26B4D4414();
  *&v223 = v28;
  *(&v223 + 1) = v34;
  *&v204 = v25;
  *(&v204 + 1) = v26;
  *(&v185 + 1) = MEMORY[0x277D84FA0];
  *&v185 = v247;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55D8C0, &unk_287BFEE28, &unk_287BFDE30, v31, 0, 0, v257, v11 + 216, v32 & 1, v33 & 1, v185, v204, v223, v35, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v36 = sub_26B470D98(&unk_287BFDFB8);
  v37 = sub_26B470D98(&unk_287BFDFE0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450D0;
  *(v38 + 32) = 0x403A000000000000;
  *(v38 + 40) = 1;
  *(v38 + 48) = *v248;
  *(v38 + 56) = 3;
  *(v38 + 64) = 0x403A000000000000;
  *(v38 + 72) = 10;
  v39 = sub_26B471088(&unk_287BFE008);
  v256 = 4;
  v255 = 4;
  v40.value._countAndFlagsBits = 0xD000000000000010;
  v41.value._countAndFlagsBits = 0xD000000000000015;
  v41.value._object = 0x800000026B55D900;
  v40.value._object = 0x800000026B55D920;
  Action.init(_:mac:)(v41, v40);
  v251 = v253;
  v252 = v254;
  v42 = sub_26B4D43F4();
  v43 = sub_26B4CE5C8();
  v44 = sub_26B4D4400();
  v45 = sub_26B4D4414();
  v46 = sub_26B4D4414();
  *&v224 = v39;
  *(&v224 + 1) = v45;
  *&v205 = v37;
  *(&v205 + 1) = v38;
  *&v186 = v36;
  *(&v186 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x4D2E6D6574737953, 0xEB00000000657475, &unk_287BFEE58, &unk_287BFDF68, v42, 0, 0, v257, v249._rawValue + 400, v43 & 1, v44 & 1, v186, v205, v224, v46, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v250 = sub_26B470D98(&unk_287BFE0F0);
  v47 = sub_26B470D98(&unk_287BFE118);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_26B5450D0;
  *(v48 + 32) = 0x403A000000000000;
  *(v48 + 40) = 1;
  *(v48 + 48) = *v248;
  *(v48 + 56) = 3;
  *(v48 + 64) = 0x403A000000000000;
  *(v48 + 72) = 10;
  v49 = sub_26B471088(&unk_287BFE140);
  v256 = 4;
  v255 = 4;
  v50.value._countAndFlagsBits = 0xD000000000000014;
  v50.value._object = 0x800000026B55D940;
  v51.value._object = 0x800000026B55D960;
  v51.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v50, v51);
  v251 = v253;
  v252 = v254;
  v52 = sub_26B4D43F4();
  v53 = sub_26B4CE5C8();
  v54 = sub_26B4D4400();
  v55 = sub_26B4D4414();
  v56 = sub_26B4D4414();
  *&v225 = v49;
  *(&v225 + 1) = v55;
  *&v206 = v47;
  *(&v206 + 1) = v48;
  *(&v187 + 1) = MEMORY[0x277D84FA0];
  *&v187 = v250;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x552E6D6574737953, 0xED00006574756D6ELL, &unk_287BFEE98, &unk_287BFE0A0, v52, 0, 0, v257, v249._rawValue + 584, v53 & 1, v54 & 1, v187, v206, v225, v56, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v57 = sub_26B470D98(&unk_287BFE1D0);
  v58 = sub_26B470D98(&unk_287BFE1F8);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26B545100;
  *(v59 + 32) = *v248;
  *(v59 + 40) = 3;
  v256 = 4;
  v255 = 4;
  v60.value._countAndFlagsBits = 0xD000000000000011;
  v60.value._object = 0x800000026B55D9A0;
  Action.init(_:mac:)(v60, 0);
  v251 = v253;
  v252 = v254;
  v61 = sub_26B4D43F4();
  v62 = sub_26B4CE5C8();
  v63 = sub_26B4D4400();
  v64 = sub_26B4D4408();
  v65 = sub_26B4D4414();
  v66 = sub_26B4D4414();
  *&v226 = v64;
  *(&v226 + 1) = v65;
  *&v207 = v58;
  *(&v207 + 1) = v59;
  *&v188 = v57;
  *(&v188 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55D980, &unk_287BFEED8, &unk_287BFE198, v61, 0, 0, v257, v249._rawValue + 768, v62 & 1, v63 & 1, v188, v207, v226, v66, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v67 = sub_26B470D98(&unk_287BFE288);
  v68 = sub_26B470D98(&unk_287BFE2B0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B545100;
  *(v69 + 32) = *v248;
  *(v69 + 40) = 3;
  v256 = 4;
  v255 = 4;
  v70.value._object = 0x800000026B55D9E0;
  v70.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v70, 0);
  v251 = v253;
  v252 = v254;
  v71 = sub_26B4D43F4();
  v72 = sub_26B4CE5C8();
  v73 = sub_26B4D4400();
  v74 = sub_26B4D4408();
  v75 = sub_26B4D4414();
  v76 = sub_26B4D4414();
  *&v227 = v74;
  *(&v227 + 1) = v75;
  *&v208 = v68;
  *(&v208 + 1) = v69;
  *&v189 = v67;
  *(&v189 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55D9C0, &unk_287BFEF08, &unk_287BFE250, v71, 0, 0, v257, v249._rawValue + 952, v72 & 1, v73 & 1, v189, v208, v227, v76, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v77 = sub_26B470D98(&unk_287BFE340);
  v78 = sub_26B470D98(&unk_287BFE368);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_26B545120;
  v80 = *v248;
  *(v79 + 32) = *v248;
  *(v79 + 40) = 3;
  *(v79 + 48) = v80;
  *(v79 + 56) = 8;
  v81 = sub_26B470F10(&unk_287BFE390);
  v256 = 4;
  v255 = 4;
  v82.value._countAndFlagsBits = 0xD000000000000017;
  v82.value._object = 0x800000026B55DA20;
  Action.init(_:mac:)(v82, 0);
  v251 = v253;
  v252 = v254;
  v83 = sub_26B4D43F4();
  v84 = sub_26B4CE5C8();
  v85 = sub_26B4D4400();
  *&v228 = sub_26B4D4408();
  *(&v228 + 1) = sub_26B4D4414();
  *&v209 = v78;
  *(&v209 + 1) = v79;
  *&v190 = v77;
  *(&v190 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55DA00, &unk_287BFEF38, &unk_287BFE308, v83, 0, 0, v257, v249._rawValue + 1136, v84 & 1, v85 & 1, v190, v209, v228, v81, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v86 = sub_26B470D98(&unk_287BFE430);
  v87 = sub_26B470D98(&unk_287BFE458);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_26B545120;
  v89 = *v248;
  *(v88 + 32) = *v248;
  *(v88 + 40) = 3;
  *(v88 + 48) = v89;
  *(v88 + 56) = 8;
  v90 = sub_26B470F10(&unk_287BFE480);
  v256 = 4;
  v255 = 4;
  v91.value._countAndFlagsBits = 0xD00000000000001CLL;
  v91.value._object = 0x800000026B55DA60;
  Action.init(_:mac:)(v91, 0);
  v251 = v253;
  v252 = v254;
  v92 = sub_26B4D43F4();
  v93 = sub_26B4CE5C8();
  LOBYTE(v74) = sub_26B4D4400();
  *&v229 = sub_26B4D4408();
  *(&v229 + 1) = sub_26B4D4414();
  *&v210 = v87;
  *(&v210 + 1) = v88;
  *&v191 = v86;
  *(&v191 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55DA40, &unk_287BFEF68, &unk_287BFE3F8, v92, 0, 0, v257, v249._rawValue + 1320, v93 & 1, v74 & 1, v191, v210, v229, v90, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v94 = sub_26B470D98(&unk_287BFE510);
  v95 = sub_26B470D98(&unk_287BFE538);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_26B545120;
  v97 = *v248;
  *(v96 + 32) = *v248;
  *(v96 + 40) = 3;
  *(v96 + 48) = v97;
  *(v96 + 56) = 8;
  v98 = sub_26B470F10(&unk_287BFE560);
  v256 = 4;
  v255 = 4;
  v99.value._countAndFlagsBits = 0xD000000000000022;
  v99.value._object = 0x800000026B55DAB0;
  Action.init(_:mac:)(v99, 0);
  v251 = v253;
  v252 = v254;
  v100 = sub_26B4D43F4();
  v101 = sub_26B4CE5C8();
  LOBYTE(v74) = sub_26B4D4400();
  *&v230 = sub_26B4D4408();
  *(&v230 + 1) = sub_26B4D4414();
  *&v211 = v95;
  *(&v211 + 1) = v96;
  *&v192 = v94;
  *(&v192 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55DA80, &unk_287BFEF98, &unk_287BFE4D8, v100, 0, 0, v257, v249._rawValue + 1504, v101 & 1, v74 & 1, v192, v211, v230, v98, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v102 = sub_26B470D98(&unk_287BFE600);
  v103 = sub_26B470D98(&unk_287BFE628);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_26B545120;
  v105 = *v248;
  *(v104 + 32) = *v248;
  *(v104 + 40) = 3;
  *(v104 + 48) = v105;
  *(v104 + 56) = 8;
  v106 = sub_26B470F10(&unk_287BFE650);
  v256 = 4;
  v255 = 4;
  v107.value._countAndFlagsBits = 0xD00000000000001BLL;
  v107.value._object = 0x800000026B55DB00;
  Action.init(_:mac:)(v107, 0);
  v251 = v253;
  v252 = v254;
  v108 = sub_26B4D43F4();
  v109 = sub_26B4CE5C8();
  LOBYTE(v74) = sub_26B4D4400();
  *&v231 = sub_26B4D4408();
  *(&v231 + 1) = sub_26B4D4414();
  *&v212 = v103;
  *(&v212 + 1) = v104;
  *&v193 = v102;
  *(&v193 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55DAE0, &unk_287BFEFC8, &unk_287BFE5C8, v108, 0, 0, v257, v249._rawValue + 1688, v109 & 1, v74 & 1, v193, v212, v231, v106, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v241 = sub_26B470D98(&unk_287BFE6E0);
  v110 = sub_26B470D98(&unk_287BFE708);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_26B545120;
  *(v111 + 32) = *v248;
  *(v111 + 40) = 3;
  *(v111 + 48) = 0x403A000000000000;
  *(v111 + 56) = 6;
  v256 = 4;
  v255 = 4;
  v112.value._countAndFlagsBits = 0x657263536B636F6CLL;
  v112.value._object = 0xEA00000000006E65;
  Action.init(_:mac:)(v112, 0);
  v251 = v253;
  v252 = v254;
  v113 = sub_26B4D43F4();
  LOBYTE(v108) = sub_26B4CE5C8();
  v114 = sub_26B4D4400();
  v115 = sub_26B4D4408();
  v116 = sub_26B4D4414();
  v117 = sub_26B4D4414();
  *&v232 = v115;
  *(&v232 + 1) = v116;
  *&v213 = v110;
  *(&v213 + 1) = v111;
  *(&v194 + 1) = MEMORY[0x277D84FA0];
  *&v194 = v241;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55DB20, &unk_287BFEFF8, &unk_287BFE6A8, v113, 0, 0, v257, v249._rawValue + 1872, v108 & 1, v114 & 1, v194, v213, v232, v117, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v242 = sub_26B470D98(&unk_287BFE798);
  v118 = sub_26B470D98(&unk_287BFE7C0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_26B5450C0;
  v120 = *v248;
  *(v119 + 32) = *v248;
  *(v119 + 40) = 1;
  *(v119 + 48) = v120;
  *(v119 + 56) = 3;
  *(v119 + 64) = v120;
  *(v119 + 72) = 8;
  *(v119 + 80) = 0x403A000000000000;
  *(v119 + 88) = 10;
  v256 = 4;
  v255 = 4;
  v121.value._countAndFlagsBits = 0x7055676E6168;
  v121.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v121, 0);
  v251 = v253;
  v252 = v254;
  v122 = sub_26B4D43F4();
  LOBYTE(v113) = sub_26B4CE5C8();
  LOBYTE(v108) = sub_26B4D4400();
  v123 = sub_26B4D4408();
  v124 = sub_26B4D4414();
  v125 = sub_26B4D4414();
  *&v233 = v123;
  *(&v233 + 1) = v124;
  *&v214 = v118;
  *(&v214 + 1) = v119;
  *(&v195 + 1) = MEMORY[0x277D84FA0];
  *&v195 = v242;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x482E6D6574737953, 0xED00007055676E61, &unk_287BFF028, &unk_287BFE760, v122, 0, 0, v257, v249._rawValue + 2056, v113 & 1, v108 & 1, v195, v214, v233, v125, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v126 = sub_26B470D98(&unk_287BFE850);
  v127 = sub_26B470D98(&unk_287BFE878);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_26B545120;
  v129 = *v248;
  *(v128 + 32) = *v248;
  *(v128 + 40) = 3;
  *(v128 + 48) = v129;
  *(v128 + 56) = 8;
  v130 = sub_26B470F10(&unk_287BFE8A0);
  v131 = sub_26B470F10(&unk_287BFE8C8);
  v256 = 4;
  v255 = 4;
  v132.value._countAndFlagsBits = 0x6574617669746361;
  v132.value._object = 0xEB00000000534F53;
  Action.init(_:mac:)(v132, 0);
  v251 = v253;
  v252 = v254;
  v133 = sub_26B4D43F4();
  LOBYTE(v124) = sub_26B4CE5C8();
  *&v234 = sub_26B4D4408();
  *(&v234 + 1) = v130;
  *&v215 = v127;
  *(&v215 + 1) = v128;
  *&v196 = v126;
  *(&v196 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEA0000000000534FLL, &unk_287BFF058, &unk_287BFE818, v133, 0, 0, v257, v249._rawValue + 2240, v124 & 1, 1, v196, v215, v234, v131, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v134 = sub_26B470D98(&unk_287BFE968);
  v135 = sub_26B470D98(&unk_287BFE990);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B545120;
  v137 = *v248;
  *(v136 + 32) = *v248;
  *(v136 + 40) = 3;
  *(v136 + 48) = v137;
  *(v136 + 56) = 8;
  v138 = sub_26B470F10(&unk_287BFE9B8);
  v139 = sub_26B470F10(&unk_287BFE9E0);
  v256 = 4;
  v255 = 4;
  v140.value._object = 0x800000026B55DB60;
  v140.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v140, 0);
  v251 = v253;
  v252 = v254;
  v141 = sub_26B4D43F4();
  LOBYTE(v124) = sub_26B4CE5C8();
  LOBYTE(v12) = sub_26B4D4400();
  *&v235 = sub_26B4D4408();
  *(&v235 + 1) = v138;
  *&v216 = v135;
  *(&v216 + 1) = v136;
  *&v197 = v134;
  *(&v197 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DB40, &unk_287BFF088, &unk_287BFE930, v141, 0, 0, v257, v249._rawValue + 2424, v124 & 1, v12 & 1, v197, v216, v235, v139, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v142 = sub_26B470D98(&unk_287BFEA70);
  v143 = sub_26B470D98(&unk_287BFEA98);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_26B545100;
  *(v144 + 32) = *v248;
  *(v144 + 40) = 3;
  v256 = 4;
  v255 = 4;
  v145.value._countAndFlagsBits = 0x656B616873;
  v145.value._object = 0xE500000000000000;
  Action.init(_:mac:)(v145, 0);
  v251 = v253;
  v252 = v254;
  v146 = sub_26B4D43F4();
  LOBYTE(v139) = sub_26B4CE5C8();
  LOBYTE(v141) = sub_26B4D4400();
  v147 = sub_26B4D4408();
  v148 = sub_26B4D4414();
  v149 = sub_26B4D4414();
  *&v236 = v147;
  *(&v236 + 1) = v148;
  *&v217 = v143;
  *(&v217 + 1) = v144;
  *&v198 = v142;
  *(&v198 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEC000000656B6168, &unk_287BFF0B8, &unk_287BFEA38, v146, 0, 0, v257, v249._rawValue + 2608, v139 & 1, v141 & 1, v198, v217, v236, v149, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v245 = sub_26B470D98(&unk_287BFEB48);
  v150 = sub_26B470D98(&unk_287BFEB70);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_26B545100;
  *(v151 + 32) = *v248;
  *(v151 + 40) = 3;
  v256 = 4;
  v255 = 4;
  v152.value._countAndFlagsBits = 0x6C43656C70697274;
  v152.value._object = 0xEB000000006B6369;
  Action.init(_:mac:)(v152, 0);
  v251 = v253;
  v252 = v254;
  v153 = sub_26B4D43F4();
  LOBYTE(v139) = sub_26B4CE5C8();
  LOBYTE(v141) = sub_26B4D4400();
  v154 = sub_26B4D4408();
  v155 = sub_26B4D4414();
  v156 = sub_26B4D4414();
  *&v237 = v154;
  *(&v237 + 1) = v155;
  *&v218 = v150;
  *(&v218 + 1) = v151;
  *(&v199 + 1) = MEMORY[0x277D84FA0];
  *&v199 = v245;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DB80, &unk_287BFF0E8, &unk_287BFEB10, v153, 0, 0, v257, v249._rawValue + 2792, v139 & 1, v141 & 1, v199, v218, v237, v156, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v157 = sub_26B470D98(&unk_287BFEC00);
  v158 = sub_26B470D98(&unk_287BFEC28);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_26B545120;
  v160 = *v248;
  *(v159 + 32) = *v248;
  *(v159 + 40) = 3;
  *(v159 + 48) = v160;
  *(v159 + 56) = 8;
  v161 = sub_26B470F10(&unk_287BFEC50);
  v256 = 4;
  v255 = 4;
  v162.value._countAndFlagsBits = 0x65726353656B6174;
  v162.value._object = 0xEE00746F68736E65;
  Action.init(_:mac:)(v162, 0);
  v251 = v253;
  v252 = v254;
  v163 = sub_26B4D43F4();
  LOBYTE(v141) = sub_26B4CE5C8();
  LOBYTE(v154) = sub_26B4D4400();
  *&v238 = sub_26B4D4408();
  *(&v238 + 1) = sub_26B4D4414();
  *&v219 = v158;
  *(&v219 + 1) = v159;
  *&v200 = v157;
  *(&v200 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55DBA0, &unk_287BFF118, &unk_287BFEBC8, v163, 0, 0, v257, v249._rawValue + 2976, v141 & 1, v154 & 1, v200, v219, v238, v161, &v256, &v255, 0, 0, &v251);
  v257[0] = 1;
  v246 = sub_26B470D98(&unk_287BFECF0);
  v164 = sub_26B470D98(&unk_287BFED18);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_26B5450D0;
  v166 = *v248;
  *(v165 + 32) = *v248;
  *(v165 + 40) = 3;
  *(v165 + 48) = v166;
  *(v165 + 56) = 8;
  *(v165 + 64) = 0x403A000000000000;
  *(v165 + 72) = 10;
  v256 = 4;
  v255 = 4;
  v167.value._countAndFlagsBits = 0xD000000000000013;
  v167.value._object = 0x800000026B55DBE0;
  Action.init(_:mac:)(v167, 0);
  v251 = v253;
  v252 = v254;
  v168 = sub_26B4D43F4();
  LOBYTE(v161) = sub_26B4CE5C8();
  LOBYTE(v141) = sub_26B4D4400();
  v169 = sub_26B4D4408();
  v170 = sub_26B4D4414();
  v171 = sub_26B4D4414();
  *&v239 = v169;
  *(&v239 + 1) = v170;
  *&v220 = v164;
  *(&v220 + 1) = v165;
  *(&v201 + 1) = MEMORY[0x277D84FA0];
  *&v201 = v246;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DBC0, &unk_287BFF148, &unk_287BFECB8, v168, 0, 0, v257, v249._rawValue + 3160, v161 & 1, v141 & 1, v201, v220, v239, v171, &v256, &v255, 0, 0, &v251);
  v257[0] = 0;
  v172 = sub_26B470D98(&unk_287BFEDA8);
  v173 = sub_26B470D98(&unk_287BFEDD0);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B5450D0;
  v175 = *v248;
  *(v174 + 32) = *v248;
  *(v174 + 40) = 3;
  *(v174 + 48) = v175;
  *(v174 + 56) = 8;
  *(v174 + 64) = 0x403A000000000000;
  *(v174 + 72) = 10;
  v256 = 4;
  v255 = 4;
  v176.value._countAndFlagsBits = 0x746F6F626572;
  v176.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v176, 0);
  v251 = v253;
  v252 = v254;
  v177 = sub_26B4D43F4();
  LOBYTE(v168) = sub_26B4CE5C8();
  LOBYTE(v141) = sub_26B4D4400();
  v178 = sub_26B4D4408();
  v179 = sub_26B4D4414();
  v180 = sub_26B4D4414();
  *&v240 = v178;
  *(&v240 + 1) = v179;
  *&v221 = v173;
  *(&v221 + 1) = v174;
  *&v202 = v172;
  *(&v202 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x522E6D6574737953, 0xED0000746F6F6265, &unk_287BFF178, &unk_287BFED70, v177, 0, 0, v257, v249._rawValue + 3344, v168 & 1, v141 & 1, v202, v221, v240, v180, &v256, &v255, 0, 0, &v251);
  LOBYTE(v174) = sub_26B4CE5C8();
  v181 = sub_26B4D4400() & 1;
  v182._countAndFlagsBits = 0x6572617764726148;
  v182._object = 0xE800000000000000;
  v183._countAndFlagsBits = v244;
  v183._object = v243;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D98, v182, v183, v174 & 1, v181, v249);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B490014()
{
  if (qword_2804003F8 != -1)
  {
    swift_once();
  }

  return &stru_280406D98;
}

void sub_26B490064()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v1289 = sub_26B542AB4();
  v1288 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v1423 = swift_allocObject();
  *(v1423 + 16) = xmmword_26B545290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC98, &qword_26B545230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B545100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545120;
  *(v12 + 32) = 0xD000000000000016;
  *(v12 + 40) = 0x800000026B55DC10;
  *(v12 + 48) = 0xD000000000000016;
  *(v12 + 56) = 0x800000026B55DC30;
  *(v11 + 32) = v12;
  *(v11 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B545100;
  *(v13 + 32) = 0xD000000000000017;
  *(v13 + 40) = 0x800000026B55DC50;
  *(v13 + 48) = 0;
  v1430[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B545140;
  *(v14 + 32) = 84017408;
  *(v14 + 36) = 8;
  v1405 = sub_26B470D98(v14);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1396 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1396 = MEMORY[0x277D84FA0];
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B545100;
  *(v15 + 32) = 3;
  v16 = sub_26B470D98(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B5450C0;
  v18 = sub_26B4C6A78();
  *(v17 + 32) = *v18;
  *(v17 + 40) = 1;
  *(v17 + 48) = *v18;
  *(v17 + 56) = 3;
  v1420 = v18;
  *(v17 + 64) = *v18;
  *(v17 + 72) = 8;
  *(v17 + 80) = 0x403A000000000000;
  *(v17 + 88) = 10;
  v1429 = 4;
  v1428 = 4;
  v19.value._countAndFlagsBits = 0xD000000000000018;
  v19.value._object = 0x800000026B55DCA0;
  Action.init(_:mac:)(v19, 0);
  v1424 = v1426;
  v1425 = v1427;
  v20 = sub_26B4D43F4();
  v21 = sub_26B4CE5C8();
  v22 = sub_26B4D4408();
  v23 = sub_26B4D4414();
  v24 = sub_26B4D4414();
  *&v1188 = v22;
  *(&v1188 + 1) = v23;
  *&v1111 = v16;
  *(&v1111 + 1) = v17;
  *(&v1034 + 1) = v1396;
  *&v1034 = v1405;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55DC70, v11, v13, v20, 0, 0, v1430, v1423 + 32, v21 & 1, 1, v1034, v1111, v1188, v24, &v1429, &v1428, 0, 0, &v1424);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26B545100;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26B5450C0;
  *(v26 + 32) = 0xD00000000000001DLL;
  *(v26 + 40) = 0x800000026B55DCC0;
  *(v26 + 48) = 0xD00000000000001DLL;
  *(v26 + 56) = 0x800000026B55DCE0;
  *(v26 + 64) = 0xD000000000000017;
  *(v26 + 72) = 0x800000026B55DD00;
  *(v26 + 80) = 0xD000000000000017;
  *(v26 + 88) = 0x800000026B55DD20;
  *(v25 + 32) = v26;
  *(v25 + 40) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26B545100;
  *(v27 + 32) = 0xD00000000000001ELL;
  *(v27 + 40) = 0x800000026B55DD40;
  *(v27 + 48) = 0;
  v1430[0] = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26B545120;
  *(v28 + 32) = 513;
  v1406 = sub_26B470D98(v28);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1373 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1373 = MEMORY[0x277D84FA0];
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26B5450C0;
  *(v29 + 32) = 134546176;
  v30 = sub_26B470D98(v29);

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26B545100;
  *(v31 + 32) = *v1420;
  *(v31 + 40) = 3;
  v1429 = 4;
  v1428 = 4;
  v32.value._countAndFlagsBits = 0xD000000000000014;
  v32.value._object = 0x800000026B55DD90;
  Action.init(_:mac:)(v32, 0);
  v1424 = v1426;
  v1425 = v1427;
  v33 = sub_26B4D43F4();
  v34 = sub_26B4CE5C8();
  v35 = sub_26B4D4400();
  v36 = sub_26B4D4408();
  v37 = sub_26B4D4414();
  v38 = sub_26B4D4414();
  *&v1189 = v36;
  *(&v1189 + 1) = v37;
  *&v1112 = v30;
  *(&v1112 + 1) = v31;
  *(&v1035 + 1) = v1373;
  *&v1035 = v1406;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55DD60, v25, v27, v33, 0, 0, v1430, v1423 + 216, v34 & 1, v35 & 1, v1035, v1112, v1189, v38, &v1429, &v1428, 0, 0, &v1424);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26B545100;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B5450C0;
  *(v40 + 32) = 0xD00000000000001ELL;
  *(v40 + 40) = 0x800000026B55DDB0;
  *(v40 + 48) = 0xD00000000000001ELL;
  *(v40 + 56) = 0x800000026B55DDD0;
  *(v40 + 64) = 0xD000000000000018;
  *(v40 + 72) = 0x800000026B55DDF0;
  *(v40 + 80) = 0xD000000000000018;
  *(v40 + 88) = 0x800000026B55DE10;
  *(v39 + 32) = v40;
  *(v39 + 40) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26B545100;
  *(v41 + 32) = 0xD00000000000001FLL;
  *(v41 + 40) = 0x800000026B55DE30;
  *(v41 + 48) = 0;
  v1430[0] = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26B545120;
  *(v42 + 32) = 513;
  v1407 = sub_26B470D98(v42);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1374 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1374 = MEMORY[0x277D84FA0];
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26B5450C0;
  *(v43 + 32) = 134546176;
  v44 = sub_26B470D98(v43);

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26B545100;
  *(v45 + 32) = *v1420;
  *(v45 + 40) = 3;
  v1429 = 4;
  v1428 = 4;
  v46.value._countAndFlagsBits = 0xD000000000000015;
  v46.value._object = 0x800000026B55DE80;
  Action.init(_:mac:)(v46, 0);
  v1424 = v1426;
  v1425 = v1427;
  v47 = sub_26B4D43F4();
  v48 = sub_26B4CE5C8();
  v49 = sub_26B4D4400();
  v50 = sub_26B4D4408();
  v51 = sub_26B4D4414();
  v52 = sub_26B4D4414();
  *&v1190 = v50;
  *(&v1190 + 1) = v51;
  *&v1113 = v44;
  *(&v1113 + 1) = v45;
  *(&v1036 + 1) = v1374;
  *&v1036 = v1407;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55DE50, v39, v41, v47, 0, 0, v1430, v1423 + 400, v48 & 1, v49 & 1, v1036, v1113, v1190, v52, &v1429, &v1428, 0, 0, &v1424);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26B545100;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B5450C0;
  *(v54 + 32) = 0xD000000000000022;
  *(v54 + 40) = 0x800000026B55DEA0;
  *(v54 + 48) = 0xD000000000000022;
  *(v54 + 56) = 0x800000026B55DED0;
  *(v54 + 64) = 0xD00000000000001CLL;
  *(v54 + 72) = 0x800000026B55DF00;
  *(v54 + 80) = 0xD00000000000001CLL;
  *(v54 + 88) = 0x800000026B55DF20;
  *(v53 + 32) = v54;
  *(v53 + 40) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B545100;
  *(v55 + 32) = 0xD000000000000023;
  *(v55 + 40) = 0x800000026B55DF40;
  *(v55 + 48) = 0;
  v1430[0] = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B545120;
  *(v56 + 32) = 513;
  v1408 = sub_26B470D98(v56);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1375 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1375 = MEMORY[0x277D84FA0];
  }

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B5450C0;
  *(v57 + 32) = 134546176;
  v58 = sub_26B470D98(v57);

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26B545100;
  *(v59 + 32) = *v1420;
  *(v59 + 40) = 3;
  v1429 = 4;
  v1428 = 4;
  v60.value._object = 0x800000026B55DFA0;
  v60.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v60, 0);
  v1424 = v1426;
  v1425 = v1427;
  v61 = sub_26B4D43F4();
  v62 = sub_26B4CE5C8();
  v63 = sub_26B4D4400();
  v64 = sub_26B4D4408();
  v65 = sub_26B4D4414();
  v66 = sub_26B4D4414();
  *&v1191 = v64;
  *(&v1191 + 1) = v65;
  *&v1114 = v58;
  *(&v1114 + 1) = v59;
  *(&v1037 + 1) = v1375;
  *&v1037 = v1408;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55DF70, v53, v55, v61, 0, 0, v1430, v1423 + 584, v62 & 1, v63 & 1, v1037, v1114, v1191, v66, &v1429, &v1428, 0, 0, &v1424);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545100;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26B5450C0;
  *(v68 + 32) = 0xD000000000000023;
  *(v68 + 40) = 0x800000026B55DFC0;
  *(v68 + 48) = 0xD000000000000023;
  *(v68 + 56) = 0x800000026B55DFF0;
  *(v68 + 64) = 0xD00000000000001DLL;
  *(v68 + 72) = 0x800000026B55E020;
  *(v68 + 80) = 0xD00000000000001DLL;
  *(v68 + 88) = 0x800000026B55E040;
  *(v67 + 32) = v68;
  *(v67 + 40) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B545100;
  *(v69 + 32) = 0xD000000000000024;
  *(v69 + 40) = 0x800000026B55E060;
  *(v69 + 48) = 0;
  v1430[0] = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26B545120;
  *(v70 + 32) = 513;
  v1409 = sub_26B470D98(v70);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1376 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1376 = MEMORY[0x277D84FA0];
  }

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26B5450C0;
  *(v71 + 32) = 134546176;
  v72 = sub_26B470D98(v71);

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_26B545100;
  *(v73 + 32) = *v1420;
  *(v73 + 40) = 3;
  v1429 = 4;
  v1428 = 4;
  v74.value._countAndFlagsBits = 0xD000000000000019;
  v74.value._object = 0x800000026B55E0C0;
  Action.init(_:mac:)(v74, 0);
  v1424 = v1426;
  v1425 = v1427;
  v75 = sub_26B4D43F4();
  v76 = sub_26B4CE5C8();
  v77 = sub_26B4D4400();
  v78 = sub_26B4D4408();
  v79 = sub_26B4D4414();
  v80 = sub_26B4D4414();
  *&v1192 = v78;
  *(&v1192 + 1) = v79;
  *&v1115 = v72;
  *(&v1115 + 1) = v73;
  *(&v1038 + 1) = v1376;
  *&v1038 = v1409;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E090, v67, v69, v75, 0, 0, v1430, v1423 + 768, v76 & 1, v77 & 1, v1038, v1115, v1192, v80, &v1429, &v1428, 0, 0, &v1424);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_26B545100;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_26B545120;
  *(v82 + 32) = 0xD000000000000016;
  *(v82 + 40) = 0x800000026B55E0E0;
  *(v82 + 48) = 0xD000000000000016;
  *(v82 + 56) = 0x800000026B55E100;
  *(v81 + 32) = v82;
  *(v81 + 40) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26B545100;
  *(v83 + 32) = 0xD000000000000017;
  *(v83 + 40) = 0x800000026B55E120;
  *(v83 + 48) = 0;
  v1430[0] = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B5450C0;
  *(v84 + 32) = 134545921;
  v1410 = sub_26B470D98(v84);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1345 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1345 = MEMORY[0x277D84FA0];
  }

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26B545120;
  *(v85 + 32) = 768;
  v86 = sub_26B470D98(v85);

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_26B5450D0;
  *(v87 + 32) = *v1420;
  *(v87 + 40) = 3;
  *(v87 + 48) = *v1420;
  *(v87 + 56) = 8;
  *(v87 + 64) = 0x403A000000000000;
  *(v87 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v88.value._object = 0x800000026B55E170;
  v88.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v88, 0);
  v1424 = v1426;
  v1425 = v1427;
  v89 = sub_26B4D43F4();
  v90 = sub_26B4CE5C8();
  v91 = sub_26B4D4400();
  v92 = sub_26B4D4408();
  v93 = sub_26B4D4414();
  v94 = sub_26B4D4414();
  *&v1193 = v92;
  *(&v1193 + 1) = v93;
  *&v1116 = v86;
  *(&v1116 + 1) = v87;
  *(&v1039 + 1) = v1345;
  *&v1039 = v1410;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55E140, v81, v83, v89, 0, 0, v1430, v1423 + 952, v90 & 1, v91 & 1, v1039, v1116, v1193, v94, &v1429, &v1428, 0, 0, &v1424);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B545100;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_26B545120;
  *(v96 + 32) = 0xD000000000000017;
  *(v96 + 40) = 0x800000026B55E190;
  *(v96 + 48) = 0xD000000000000017;
  *(v96 + 56) = 0x800000026B55E1B0;
  *(v95 + 32) = v96;
  *(v95 + 40) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B545100;
  *(v97 + 32) = 0xD000000000000018;
  *(v97 + 40) = 0x800000026B55E1D0;
  *(v97 + 48) = 0;
  v1430[0] = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_26B5450C0;
  *(v98 + 32) = 134545921;
  v1411 = sub_26B470D98(v98);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1346 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1346 = MEMORY[0x277D84FA0];
  }

  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_26B545120;
  *(v99 + 32) = 768;
  v100 = sub_26B470D98(v99);

  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_26B5450D0;
  *(v101 + 32) = *v1420;
  *(v101 + 40) = 3;
  *(v101 + 48) = *v1420;
  *(v101 + 56) = 8;
  *(v101 + 64) = 0x403A000000000000;
  *(v101 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v102.value._object = 0x800000026B55E220;
  v102.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v102, 0);
  v1424 = v1426;
  v1425 = v1427;
  v103 = sub_26B4D43F4();
  v104 = sub_26B4CE5C8();
  v105 = sub_26B4D4408();
  v106 = sub_26B4D4414();
  v107 = sub_26B4D4414();
  *&v1194 = v105;
  *(&v1194 + 1) = v106;
  *&v1117 = v100;
  *(&v1117 + 1) = v101;
  *(&v1040 + 1) = v1346;
  *&v1040 = v1411;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55E1F0, v95, v97, v103, 0, 0, v1430, v1423 + 1136, v104 & 1, 1, v1040, v1117, v1194, v107, &v1429, &v1428, 0, 0, &v1424);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26B545100;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B545120;
  *(v109 + 32) = 0xD00000000000001ELL;
  *(v109 + 40) = 0x800000026B55E240;
  *(v109 + 48) = 0xD00000000000001DLL;
  *(v109 + 56) = 0x800000026B55E260;
  *(v108 + 32) = v109;
  *(v108 + 40) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_26B545100;
  *(v110 + 32) = 0xD00000000000001ELL;
  *(v110 + 40) = 0x800000026B55E280;
  *(v110 + 48) = 0;
  v1430[0] = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_26B5450C0;
  *(v111 + 32) = 134545921;
  v1412 = sub_26B470D98(v111);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1347 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1347 = MEMORY[0x277D84FA0];
  }

  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_26B545120;
  *(v112 + 32) = 768;
  v113 = sub_26B470D98(v112);

  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_26B5450D0;
  *(v114 + 32) = *v1420;
  *(v114 + 40) = 3;
  *(v114 + 48) = *v1420;
  *(v114 + 56) = 8;
  *(v114 + 64) = 0x403A000000000000;
  *(v114 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v115.value._object = 0x800000026B55E2D0;
  v115.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v115, 0);
  v1424 = v1426;
  v1425 = v1427;
  v116 = sub_26B4D43F4();
  v117 = sub_26B4CE5C8();
  v118 = sub_26B4D4400();
  v119 = sub_26B4D4408();
  v120 = sub_26B4D4414();
  v121 = sub_26B4D4414();
  *&v1195 = v119;
  *(&v1195 + 1) = v120;
  *&v1118 = v113;
  *(&v1118 + 1) = v114;
  *(&v1041 + 1) = v1347;
  *&v1041 = v1412;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E2A0, v108, v110, v116, 0, 0, v1430, v1423 + 1320, v117 & 1, v118 & 1, v1041, v1118, v1195, v121, &v1429, &v1428, 0, 0, &v1424);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B545100;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26B545120;
  *(v123 + 32) = 0xD00000000000001FLL;
  *(v123 + 40) = 0x800000026B55E2F0;
  *(v123 + 48) = 0xD00000000000001ELL;
  *(v123 + 56) = 0x800000026B55E310;
  *(v122 + 32) = v123;
  *(v122 + 40) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_26B545100;
  *(v124 + 32) = 0xD00000000000001FLL;
  *(v124 + 40) = 0x800000026B55E330;
  *(v124 + 48) = 0;
  v1430[0] = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_26B5450C0;
  *(v125 + 32) = 134545921;
  v1413 = sub_26B470D98(v125);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1348 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1348 = MEMORY[0x277D84FA0];
  }

  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_26B545120;
  *(v126 + 32) = 768;
  v127 = sub_26B470D98(v126);

  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_26B5450D0;
  *(v128 + 32) = *v1420;
  *(v128 + 40) = 3;
  *(v128 + 48) = *v1420;
  *(v128 + 56) = 8;
  *(v128 + 64) = 0x403A000000000000;
  *(v128 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v129.value._countAndFlagsBits = 0xD00000000000001ALL;
  v129.value._object = 0x800000026B55E380;
  Action.init(_:mac:)(v129, 0);
  v1424 = v1426;
  v1425 = v1427;
  v130 = sub_26B4D43F4();
  v131 = sub_26B4CE5C8();
  v132 = sub_26B4D4400();
  v133 = sub_26B4D4408();
  v134 = sub_26B4D4414();
  v135 = sub_26B4D4414();
  *&v1196 = v133;
  *(&v1196 + 1) = v134;
  *&v1119 = v127;
  *(&v1119 + 1) = v128;
  *(&v1042 + 1) = v1348;
  *&v1042 = v1413;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B55E350, v122, v124, v130, 0, 0, v1430, v1423 + 1504, v131 & 1, v132 & 1, v1042, v1119, v1196, v135, &v1429, &v1428, 0, 0, &v1424);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B545100;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B545120;
  *(v137 + 32) = 0xD00000000000001CLL;
  *(v137 + 40) = 0x800000026B55E3A0;
  *(v137 + 48) = 0xD00000000000001BLL;
  *(v137 + 56) = 0x800000026B55E3C0;
  *(v136 + 32) = v137;
  *(v136 + 40) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_26B545100;
  *(v138 + 32) = 0xD00000000000001CLL;
  *(v138 + 40) = 0x800000026B55E3E0;
  *(v138 + 48) = 0;
  v1430[0] = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_26B5450C0;
  *(v139 + 32) = 134545921;
  v1414 = sub_26B470D98(v139);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1349 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1349 = MEMORY[0x277D84FA0];
  }

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_26B545120;
  *(v140 + 32) = 768;
  v141 = sub_26B470D98(v140);

  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_26B5450D0;
  *(v142 + 32) = *v1420;
  *(v142 + 40) = 3;
  *(v142 + 48) = *v1420;
  *(v142 + 56) = 8;
  *(v142 + 64) = 0x403A000000000000;
  *(v142 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v143.value._object = 0x800000026B55E430;
  v143.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v143, 0);
  v1424 = v1426;
  v1425 = v1427;
  v144 = sub_26B4D43F4();
  v145 = sub_26B4CE5C8();
  v146 = sub_26B4D4400();
  v147 = sub_26B4D4408();
  v148 = sub_26B4D4414();
  v149 = sub_26B4D4414();
  *&v1197 = v147;
  *(&v1197 + 1) = v148;
  *&v1120 = v141;
  *(&v1120 + 1) = v142;
  *(&v1043 + 1) = v1349;
  *&v1043 = v1414;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B55E400, v136, v138, v144, 0, 0, v1430, v1423 + 1688, v145 & 1, v146 & 1, v1043, v1120, v1197, v149, &v1429, &v1428, 0, 0, &v1424);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B545100;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_26B545120;
  *(v151 + 32) = 0xD00000000000001DLL;
  *(v151 + 40) = 0x800000026B55E450;
  *(v151 + 48) = 0xD00000000000001CLL;
  *(v151 + 56) = 0x800000026B55E470;
  *(v150 + 32) = v151;
  *(v150 + 40) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26B545100;
  *(v152 + 32) = 0xD00000000000001DLL;
  *(v152 + 40) = 0x800000026B55E490;
  *(v152 + 48) = 0;
  v1430[0] = 0;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_26B5450C0;
  *(v153 + 32) = 134545921;
  v1415 = sub_26B470D98(v153);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1350 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1350 = MEMORY[0x277D84FA0];
  }

  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_26B545120;
  *(v154 + 32) = 768;
  v155 = sub_26B470D98(v154);

  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_26B5450D0;
  *(v156 + 32) = *v1420;
  *(v156 + 40) = 3;
  *(v156 + 48) = *v1420;
  *(v156 + 56) = 8;
  *(v156 + 64) = 0x403A000000000000;
  *(v156 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v157.value._object = 0x800000026B55E4E0;
  v157.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v157, 0);
  v1424 = v1426;
  v1425 = v1427;
  v158 = sub_26B4D43F4();
  v159 = sub_26B4CE5C8();
  v160 = sub_26B4D4400();
  v161 = sub_26B4D4408();
  v162 = sub_26B4D4414();
  v163 = sub_26B4D4414();
  *&v1198 = v161;
  *(&v1198 + 1) = v162;
  *&v1121 = v155;
  *(&v1121 + 1) = v156;
  *(&v1044 + 1) = v1350;
  *&v1044 = v1415;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55E4B0, v150, v152, v158, 0, 0, v1430, v1423 + 1872, v159 & 1, v160 & 1, v1044, v1121, v1198, v163, &v1429, &v1428, 0, 0, &v1424);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_26B545100;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_26B545120;
  *(v165 + 32) = 0xD000000000000015;
  *(v165 + 40) = 0x800000026B55E500;
  *(v165 + 48) = 0xD000000000000015;
  *(v165 + 56) = 0x800000026B55E520;
  *(v164 + 32) = v165;
  *(v164 + 40) = 0;
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B545100;
  *(v166 + 32) = 0xD000000000000016;
  *(v166 + 40) = 0x800000026B55E540;
  *(v166 + 48) = 0;
  v1430[0] = 3;
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_26B5450C0;
  *(v167 + 32) = 134545921;
  v1416 = sub_26B470D98(v167);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1344 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1344 = MEMORY[0x277D84FA0];
  }

  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B545120;
  *(v168 + 32) = 768;
  v169 = sub_26B470D98(v168);

  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_26B5450D0;
  *(v170 + 32) = *v1420;
  *(v170 + 40) = 3;
  *(v170 + 48) = *v1420;
  *(v170 + 56) = 8;
  *(v170 + 64) = 0x403A000000000000;
  *(v170 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v171.value._countAndFlagsBits = 0xD000000000000012;
  v171.value._object = 0x800000026B55E590;
  Action.init(_:mac:)(v171, 0);
  v1424 = v1426;
  v1425 = v1427;
  v172 = sub_26B4D43F4();
  v173 = sub_26B4CE5C8();
  v174 = sub_26B4D4400();
  v175 = sub_26B4D4408();
  v176 = sub_26B4D4414();
  v177 = sub_26B4D4414();
  *&v1199 = v175;
  *(&v1199 + 1) = v176;
  *&v1122 = v169;
  *(&v1122 + 1) = v170;
  *(&v1045 + 1) = v1344;
  *&v1045 = v1416;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E560, v164, v166, v172, 0, 0, v1430, v1423 + 2056, v173 & 1, v174 & 1, v1045, v1122, v1199, v177, &v1429, &v1428, 0, 0, &v1424);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_26B545100;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_26B545120;
  *(v179 + 32) = 0xD000000000000016;
  *(v179 + 40) = 0x800000026B55E5B0;
  *(v179 + 48) = 0xD000000000000016;
  *(v179 + 56) = 0x800000026B55E5D0;
  *(v178 + 32) = v179;
  *(v178 + 40) = 0;
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_26B545100;
  *(v180 + 32) = 0xD000000000000017;
  *(v180 + 40) = 0x800000026B55E5F0;
  *(v180 + 48) = 0;
  v1430[0] = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_26B5450C0;
  *(v181 + 32) = 134545921;
  v1417 = sub_26B470D98(v181);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1343 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1343 = MEMORY[0x277D84FA0];
  }

  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_26B545120;
  *(v182 + 32) = 768;
  v183 = sub_26B470D98(v182);

  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B5450D0;
  *(v184 + 32) = *v1420;
  *(v184 + 40) = 3;
  *(v184 + 48) = *v1420;
  *(v184 + 56) = 8;
  *(v184 + 64) = 0x403A000000000000;
  *(v184 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v185.value._countAndFlagsBits = 0xD000000000000013;
  v185.value._object = 0x800000026B55E640;
  Action.init(_:mac:)(v185, 0);
  v1424 = v1426;
  v1425 = v1427;
  v186 = sub_26B4D43F4();
  v187 = sub_26B4CE5C8();
  v188 = sub_26B4D4400();
  v189 = sub_26B4D4408();
  v190 = sub_26B4D4414();
  v191 = sub_26B4D4414();
  *&v1200 = v189;
  *(&v1200 + 1) = v190;
  *&v1123 = v183;
  *(&v1123 + 1) = v184;
  *(&v1046 + 1) = v1343;
  *&v1046 = v1417;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55E610, v178, v180, v186, 0, 0, v1430, v1423 + 2240, v187 & 1, v188 & 1, v1046, v1123, v1200, v191, &v1429, &v1428, 0, 0, &v1424);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_26B545100;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_26B545120;
  *(v193 + 32) = 0xD000000000000014;
  *(v193 + 40) = 0x800000026B55E660;
  *(v193 + 48) = 0xD000000000000014;
  *(v193 + 56) = 0x800000026B55E680;
  *(v192 + 32) = v193;
  *(v192 + 40) = 0;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_26B545100;
  *(v194 + 32) = 0xD000000000000015;
  *(v194 + 40) = 0x800000026B55E6A0;
  *(v194 + 48) = 0;
  v1430[0] = 0;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_26B545120;
  *(v195 + 32) = 513;
  v1299 = sub_26B470D98(v195);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1290 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1290 = MEMORY[0x277D84FA0];
  }

  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_26B5450C0;
  *(v196 + 32) = 134546176;
  v197 = sub_26B470D98(v196);

  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B545100;
  *(v198 + 32) = 0x403A000000000000;
  *(v198 + 40) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB0, &qword_26B545238);
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_26B545100;
  *(v199 + 32) = 33;
  v200 = sub_26B470F10(v199);

  v1429 = 4;
  v1428 = 4;
  v201.value._countAndFlagsBits = 0xD000000000000011;
  v201.value._object = 0x800000026B55E6E0;
  Action.init(_:mac:)(v201, 0);
  v1424 = v1426;
  v1425 = v1427;
  v202 = sub_26B4D43F4();
  v203 = sub_26B4CE5C8();
  v204 = sub_26B4D4400();
  *&v1201 = sub_26B4D4408();
  *(&v1201 + 1) = sub_26B4D4414();
  *&v1124 = v197;
  *(&v1124 + 1) = v198;
  *(&v1047 + 1) = v1290;
  *&v1047 = v1299;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55E6C0, v192, v194, v202, 0, 0, v1430, v1423 + 2424, v203 & 1, v204 & 1, v1047, v1124, v1201, v200, &v1429, &v1428, 0, 0, &v1424);
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_26B545100;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_26B545120;
  *(v206 + 32) = 0xD000000000000015;
  *(v206 + 40) = 0x800000026B55E700;
  *(v206 + 48) = 0xD000000000000015;
  *(v206 + 56) = 0x800000026B55E720;
  *(v205 + 32) = v206;
  *(v205 + 40) = 0;
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_26B545100;
  *(v207 + 32) = 0xD000000000000016;
  *(v207 + 40) = 0x800000026B55E740;
  *(v207 + 48) = 0;
  v1430[0] = 0;
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_26B545120;
  *(v208 + 32) = 513;
  v1300 = sub_26B470D98(v208);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1291 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1291 = MEMORY[0x277D84FA0];
  }

  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_26B5450C0;
  *(v209 + 32) = 134546176;
  v210 = sub_26B470D98(v209);

  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_26B545100;
  *(v211 + 32) = 0x403A000000000000;
  *(v211 + 40) = 3;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_26B545100;
  *(v212 + 32) = 33;
  v213 = sub_26B470F10(v212);

  v1429 = 4;
  v1428 = 4;
  v214.value._object = 0x800000026B55E790;
  v214.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v214, 0);
  v1424 = v1426;
  v1425 = v1427;
  v215 = sub_26B4D43F4();
  v216 = sub_26B4CE5C8();
  *&v1202 = sub_26B4D4408();
  *(&v1202 + 1) = sub_26B4D4414();
  *&v1125 = v210;
  *(&v1125 + 1) = v211;
  *(&v1048 + 1) = v1291;
  *&v1048 = v1300;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E760, v205, v207, v215, 0, 0, v1430, v1423 + 2608, v216 & 1, 1, v1048, v1125, v1202, v213, &v1429, &v1428, 0, 0, &v1424);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B545100;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_26B545120;
  *(v218 + 32) = 0xD00000000000001CLL;
  *(v218 + 40) = 0x800000026B55E7B0;
  *(v218 + 48) = 0xD00000000000001CLL;
  *(v218 + 56) = 0x800000026B55E7D0;
  *(v217 + 32) = v218;
  *(v217 + 40) = 0;
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_26B545100;
  *(v219 + 32) = 0xD00000000000001DLL;
  *(v219 + 40) = 0x800000026B55E7F0;
  *(v219 + 48) = 0;
  v1430[0] = 0;
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_26B5450C0;
  *(v220 + 32) = 134545921;
  v1301 = sub_26B470D98(v220);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1292 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1292 = MEMORY[0x277D84FA0];
  }

  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_26B545120;
  *(v221 + 32) = 768;
  v222 = sub_26B470D98(v221);

  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_26B5450D0;
  *(v223 + 32) = *v1420;
  *(v223 + 40) = 3;
  *(v223 + 48) = *v1420;
  *(v223 + 56) = 8;
  *(v223 + 64) = 0x403A000000000000;
  *(v223 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v224.value._object = 0x800000026B55E840;
  v224.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v224, 0);
  v1424 = v1426;
  v1425 = v1427;
  v225 = sub_26B4D43F4();
  v226 = sub_26B4CE5C8();
  v227 = sub_26B4D4400();
  v228 = sub_26B4D4408();
  v229 = sub_26B4D4414();
  v230 = sub_26B4D4414();
  *&v1203 = v228;
  *(&v1203 + 1) = v229;
  *&v1126 = v222;
  *(&v1126 + 1) = v223;
  *(&v1049 + 1) = v1292;
  *&v1049 = v1301;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55E810, v217, v219, v225, 0, 0, v1430, v1423 + 2792, v226 & 1, v227 & 1, v1049, v1126, v1203, v230, &v1429, &v1428, 0, 0, &v1424);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_26B545100;
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_26B545120;
  *(v232 + 32) = 0xD00000000000001DLL;
  *(v232 + 40) = 0x800000026B55E860;
  *(v232 + 48) = 0xD00000000000001DLL;
  *(v232 + 56) = 0x800000026B55E880;
  *(v231 + 32) = v232;
  *(v231 + 40) = 0;
  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_26B545100;
  *(v233 + 32) = 0xD00000000000001ELL;
  *(v233 + 40) = 0x800000026B55E8A0;
  *(v233 + 48) = 0;
  v1430[0] = 0;
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_26B5450C0;
  *(v234 + 32) = 134545921;
  v1302 = sub_26B470D98(v234);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1293 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1293 = MEMORY[0x277D84FA0];
  }

  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_26B545120;
  *(v235 + 32) = 768;
  v236 = sub_26B470D98(v235);

  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_26B5450D0;
  *(v237 + 32) = *v1420;
  *(v237 + 40) = 3;
  *(v237 + 48) = *v1420;
  *(v237 + 56) = 8;
  *(v237 + 64) = 0x403A000000000000;
  *(v237 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v238.value._object = 0x800000026B55E8F0;
  v238.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v238, 0);
  v1424 = v1426;
  v1425 = v1427;
  v239 = sub_26B4D43F4();
  v240 = sub_26B4CE5C8();
  v241 = sub_26B4D4408();
  v242 = sub_26B4D4414();
  v243 = sub_26B4D4414();
  *&v1204 = v241;
  *(&v1204 + 1) = v242;
  *&v1127 = v236;
  *(&v1127 + 1) = v237;
  *(&v1050 + 1) = v1293;
  *&v1050 = v1302;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E8C0, v231, v233, v239, 0, 0, v1430, v1423 + 2976, v240 & 1, 1, v1050, v1127, v1204, v243, &v1429, &v1428, 0, 0, &v1424);
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_26B545100;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_26B545120;
  *(v245 + 32) = 0xD000000000000015;
  *(v245 + 40) = 0x800000026B55E910;
  *(v245 + 48) = 0xD000000000000015;
  *(v245 + 56) = 0x800000026B55E930;
  *(v244 + 32) = v245;
  *(v244 + 40) = 0;
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_26B545100;
  *(v246 + 32) = 0xD000000000000016;
  *(v246 + 40) = 0x800000026B55E950;
  *(v246 + 48) = 0;
  v1430[0] = 0;
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_26B545120;
  *(v247 + 32) = 513;
  v1303 = sub_26B470D98(v247);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1294 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1294 = MEMORY[0x277D84FA0];
  }

  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_26B5450C0;
  *(v248 + 32) = 134546176;
  v249 = sub_26B470D98(v248);

  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_26B545100;
  *(v250 + 32) = 0x403A000000000000;
  *(v250 + 40) = 3;
  v251 = swift_allocObject();
  *(v251 + 16) = xmmword_26B545100;
  *(v251 + 32) = 34;
  v252 = sub_26B470F10(v251);

  v1429 = 4;
  v1428 = 4;
  v253.value._object = 0x800000026B55E9A0;
  v253.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v253, 0);
  v1424 = v1426;
  v1425 = v1427;
  v254 = sub_26B4D43F4();
  v255 = sub_26B4CE5C8();
  v256 = sub_26B4D4400();
  *&v1205 = sub_26B4D4408();
  *(&v1205 + 1) = sub_26B4D4414();
  *&v1128 = v249;
  *(&v1128 + 1) = v250;
  *(&v1051 + 1) = v1294;
  *&v1051 = v1303;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E970, v244, v246, v254, 0, 0, v1430, v1423 + 3160, v255 & 1, v256 & 1, v1051, v1128, v1205, v252, &v1429, &v1428, 0, 0, &v1424);
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_26B545100;
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_26B545120;
  *(v258 + 32) = 0xD000000000000016;
  *(v258 + 40) = 0x800000026B55E9C0;
  *(v258 + 48) = 0xD000000000000016;
  *(v258 + 56) = 0x800000026B55E9E0;
  *(v257 + 32) = v258;
  *(v257 + 40) = 0;
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_26B545100;
  *(v259 + 32) = 0xD000000000000017;
  *(v259 + 40) = 0x800000026B55EA00;
  *(v259 + 48) = 0;
  v1430[0] = 0;
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_26B545120;
  *(v260 + 32) = 513;
  v1304 = sub_26B470D98(v260);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1295 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1295 = MEMORY[0x277D84FA0];
  }

  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_26B5450C0;
  *(v261 + 32) = 134546176;
  v262 = sub_26B470D98(v261);

  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_26B545100;
  *(v263 + 32) = 0x403A000000000000;
  *(v263 + 40) = 3;
  v264 = swift_allocObject();
  *(v264 + 16) = xmmword_26B545100;
  *(v264 + 32) = 34;
  v265 = sub_26B470F10(v264);

  v1429 = 4;
  v1428 = 4;
  v266.value._object = 0x800000026B55EA50;
  v266.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v266, 0);
  v1424 = v1426;
  v1425 = v1427;
  v267 = sub_26B4D43F4();
  v268 = sub_26B4CE5C8();
  *&v1206 = sub_26B4D4408();
  *(&v1206 + 1) = sub_26B4D4414();
  *&v1129 = v262;
  *(&v1129 + 1) = v263;
  *(&v1052 + 1) = v1295;
  *&v1052 = v1304;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55EA20, v257, v259, v267, 0, 0, v1430, v1423 + 3344, v268 & 1, 1, v1052, v1129, v1206, v265, &v1429, &v1428, 0, 0, &v1424);
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_26B545100;
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_26B545120;
  *(v270 + 32) = 0xD00000000000001ALL;
  *(v270 + 40) = 0x800000026B55EA70;
  *(v270 + 48) = 0xD00000000000001ALL;
  *(v270 + 56) = 0x800000026B55EA90;
  *(v269 + 32) = v270;
  *(v269 + 40) = 0;
  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_26B545100;
  *(v271 + 32) = 0xD00000000000001BLL;
  *(v271 + 40) = 0x800000026B55EAB0;
  *(v271 + 48) = 0;
  v1430[0] = 0;
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_26B5450C0;
  *(v272 + 32) = 134545921;
  v1397 = sub_26B470D98(v272);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1305 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1305 = MEMORY[0x277D84FA0];
  }

  v273 = swift_allocObject();
  *(v273 + 16) = xmmword_26B545120;
  *(v273 + 32) = 768;
  v274 = sub_26B470D98(v273);

  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_26B5450D0;
  *(v275 + 32) = *v1420;
  *(v275 + 40) = 3;
  *(v275 + 48) = *v1420;
  *(v275 + 56) = 8;
  *(v275 + 64) = 0x403A000000000000;
  *(v275 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v276.value._object = 0x800000026B55EB00;
  v276.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v276, 0);
  v1424 = v1426;
  v1425 = v1427;
  v277 = sub_26B4D43F4();
  v278 = sub_26B4CE5C8();
  v279 = sub_26B4D4400();
  v280 = sub_26B4D4408();
  v281 = sub_26B4D4414();
  v282 = sub_26B4D4414();
  *&v1207 = v280;
  *(&v1207 + 1) = v281;
  *&v1130 = v274;
  *(&v1130 + 1) = v275;
  *(&v1053 + 1) = v1305;
  *&v1053 = v1397;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B55EAD0, v269, v271, v277, 0, 0, v1430, v1423 + 3528, v278 & 1, v279 & 1, v1053, v1130, v1207, v282, &v1429, &v1428, 0, 0, &v1424);
  v283 = swift_allocObject();
  *(v283 + 16) = xmmword_26B545100;
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_26B545120;
  *(v284 + 32) = 0xD00000000000001BLL;
  *(v284 + 40) = 0x800000026B55EB20;
  *(v284 + 48) = 0xD00000000000001BLL;
  *(v284 + 56) = 0x800000026B55EB40;
  *(v283 + 32) = v284;
  *(v283 + 40) = 0;
  v285 = swift_allocObject();
  *(v285 + 16) = xmmword_26B545100;
  *(v285 + 32) = 0xD00000000000001CLL;
  *(v285 + 40) = 0x800000026B55EB60;
  *(v285 + 48) = 0;
  v1430[0] = 0;
  v286 = swift_allocObject();
  *(v286 + 16) = xmmword_26B5450C0;
  *(v286 + 32) = 134545921;
  v1398 = sub_26B470D98(v286);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1336 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1336 = MEMORY[0x277D84FA0];
  }

  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_26B545120;
  *(v287 + 32) = 768;
  v288 = sub_26B470D98(v287);

  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_26B5450D0;
  *(v289 + 32) = *v1420;
  *(v289 + 40) = 3;
  *(v289 + 48) = *v1420;
  *(v289 + 56) = 8;
  *(v289 + 64) = 0x403A000000000000;
  *(v289 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v290.value._object = 0x800000026B55EBB0;
  v290.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v290, 0);
  v1424 = v1426;
  v1425 = v1427;
  v291 = sub_26B4D43F4();
  v292 = sub_26B4CE5C8();
  v293 = sub_26B4D4400();
  v294 = sub_26B4D4408();
  v295 = sub_26B4D4414();
  v296 = sub_26B4D4414();
  *&v1208 = v294;
  *(&v1208 + 1) = v295;
  *&v1131 = v288;
  *(&v1131 + 1) = v289;
  *(&v1054 + 1) = v1336;
  *&v1054 = v1398;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B55EB80, v283, v285, v291, 0, 0, v1430, v1423 + 3712, v292 & 1, v293 & 1, v1054, v1131, v1208, v296, &v1429, &v1428, 0, 0, &v1424);
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_26B545100;
  v298 = swift_allocObject();
  *(v298 + 16) = xmmword_26B545120;
  *(v298 + 32) = 0xD000000000000016;
  *(v298 + 40) = 0x800000026B55EBD0;
  *(v298 + 48) = 0xD000000000000016;
  *(v298 + 56) = 0x800000026B55EBF0;
  *(v297 + 32) = v298;
  *(v297 + 40) = 0;
  v299 = swift_allocObject();
  *(v299 + 16) = xmmword_26B545100;
  *(v299 + 32) = 0xD000000000000017;
  *(v299 + 40) = 0x800000026B55EC10;
  *(v299 + 48) = 0;
  v1430[0] = 0;
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_26B5450C0;
  *(v300 + 32) = 134545921;
  v1399 = sub_26B470D98(v300);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1337 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1337 = MEMORY[0x277D84FA0];
  }

  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_26B545120;
  *(v301 + 32) = 768;
  v302 = sub_26B470D98(v301);

  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_26B5450D0;
  *(v303 + 32) = *v1420;
  *(v303 + 40) = 3;
  *(v303 + 48) = *v1420;
  *(v303 + 56) = 8;
  *(v303 + 64) = 0x403A000000000000;
  *(v303 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v304.value._object = 0x800000026B55EC60;
  v304.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v304, 0);
  v1424 = v1426;
  v1425 = v1427;
  v305 = sub_26B4D43F4();
  v306 = sub_26B4CE5C8();
  v307 = sub_26B4D4400();
  v308 = sub_26B4D4408();
  v309 = sub_26B4D4414();
  v310 = sub_26B4D4414();
  *&v1209 = v308;
  *(&v1209 + 1) = v309;
  *&v1132 = v302;
  *(&v1132 + 1) = v303;
  *(&v1055 + 1) = v1337;
  *&v1055 = v1399;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55EC30, v297, v299, v305, 0, 0, v1430, v1423 + 3896, v306 & 1, v307 & 1, v1055, v1132, v1209, v310, &v1429, &v1428, 0, 0, &v1424);
  v311 = swift_allocObject();
  *(v311 + 16) = xmmword_26B545100;
  v312 = swift_allocObject();
  *(v312 + 16) = xmmword_26B545120;
  *(v312 + 32) = 0xD000000000000017;
  *(v312 + 40) = 0x800000026B55EC80;
  *(v312 + 48) = 0xD000000000000017;
  *(v312 + 56) = 0x800000026B55ECA0;
  *(v311 + 32) = v312;
  *(v311 + 40) = 0;
  v313 = swift_allocObject();
  *(v313 + 16) = xmmword_26B545100;
  *(v313 + 32) = 0xD000000000000018;
  *(v313 + 40) = 0x800000026B55ECC0;
  *(v313 + 48) = 0;
  v1430[0] = 0;
  v314 = swift_allocObject();
  *(v314 + 16) = xmmword_26B5450C0;
  *(v314 + 32) = 134545921;
  v1400 = sub_26B470D98(v314);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1338 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1338 = MEMORY[0x277D84FA0];
  }

  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_26B545120;
  *(v315 + 32) = 768;
  v316 = sub_26B470D98(v315);

  v317 = swift_allocObject();
  *(v317 + 16) = xmmword_26B5450D0;
  *(v317 + 32) = *v1420;
  *(v317 + 40) = 3;
  *(v317 + 48) = *v1420;
  *(v317 + 56) = 8;
  *(v317 + 64) = 0x403A000000000000;
  *(v317 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v318.value._object = 0x800000026B55ED10;
  v318.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v318, 0);
  v1424 = v1426;
  v1425 = v1427;
  v319 = sub_26B4D43F4();
  v320 = sub_26B4CE5C8();
  v321 = sub_26B4D4408();
  v322 = sub_26B4D4414();
  v323 = sub_26B4D4414();
  *&v1210 = v321;
  *(&v1210 + 1) = v322;
  *&v1133 = v316;
  *(&v1133 + 1) = v317;
  *(&v1056 + 1) = v1338;
  *&v1056 = v1400;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55ECE0, v311, v313, v319, 0, 0, v1430, v1423 + 4080, v320 & 1, 1, v1056, v1133, v1210, v323, &v1429, &v1428, 0, 0, &v1424);
  v324 = swift_allocObject();
  *(v324 + 16) = xmmword_26B545100;
  v325 = swift_allocObject();
  *(v325 + 16) = xmmword_26B545120;
  *(v325 + 32) = 0xD000000000000011;
  *(v325 + 40) = 0x800000026B55ED30;
  *(v325 + 48) = 0xD000000000000011;
  *(v325 + 56) = 0x800000026B55ED50;
  *(v324 + 32) = v325;
  *(v324 + 40) = 0;
  v326 = swift_allocObject();
  *(v326 + 16) = xmmword_26B545100;
  *(v326 + 32) = 0xD000000000000012;
  *(v326 + 40) = 0x800000026B55ED70;
  *(v326 + 48) = 0;
  v1430[0] = 0;
  v327 = swift_allocObject();
  *(v327 + 16) = xmmword_26B5450C0;
  *(v327 + 32) = 134545921;
  v1401 = sub_26B470D98(v327);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1339 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1339 = MEMORY[0x277D84FA0];
  }

  v328 = swift_allocObject();
  *(v328 + 16) = xmmword_26B545120;
  *(v328 + 32) = 768;
  v329 = sub_26B470D98(v328);

  v330 = swift_allocObject();
  *(v330 + 16) = xmmword_26B5450D0;
  *(v330 + 32) = *v1420;
  *(v330 + 40) = 3;
  *(v330 + 48) = *v1420;
  *(v330 + 56) = 8;
  *(v330 + 64) = 0x403A000000000000;
  *(v330 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v331.value._countAndFlagsBits = 0x6F56656C62616E65;
  v331.value._object = 0xEF7265764F656369;
  Action.init(_:mac:)(v331, 0);
  v1424 = v1426;
  v1425 = v1427;
  v332 = sub_26B4D43F4();
  v333 = sub_26B4CE5C8();
  v334 = sub_26B4D4400();
  v335 = sub_26B4D4408();
  v336 = sub_26B4D4414();
  v337 = sub_26B4D4414();
  *&v1211 = v335;
  *(&v1211 + 1) = v336;
  *&v1134 = v329;
  *(&v1134 + 1) = v330;
  *(&v1057 + 1) = v1339;
  *&v1057 = v1401;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55ED90, v324, v326, v332, 0, 0, v1430, v1423 + 4264, v333 & 1, v334 & 1, v1057, v1134, v1211, v337, &v1429, &v1428, 0, 0, &v1424);
  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_26B545100;
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_26B545120;
  *(v339 + 32) = 0xD000000000000012;
  *(v339 + 40) = 0x800000026B55EDB0;
  *(v339 + 48) = 0xD000000000000012;
  *(v339 + 56) = 0x800000026B55EDD0;
  *(v338 + 32) = v339;
  *(v338 + 40) = 0;
  v340 = swift_allocObject();
  *(v340 + 16) = xmmword_26B545100;
  *(v340 + 32) = 0xD000000000000013;
  *(v340 + 40) = 0x800000026B55EDF0;
  *(v340 + 48) = 0;
  v1430[0] = 0;
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_26B5450C0;
  *(v341 + 32) = 134545921;
  v1402 = sub_26B470D98(v341);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1306 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1306 = MEMORY[0x277D84FA0];
  }

  v342 = swift_allocObject();
  *(v342 + 16) = xmmword_26B545120;
  *(v342 + 32) = 768;
  v343 = sub_26B470D98(v342);

  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_26B5450D0;
  *(v344 + 32) = *v1420;
  *(v344 + 40) = 3;
  *(v344 + 48) = *v1420;
  *(v344 + 56) = 8;
  *(v344 + 64) = 0x403A000000000000;
  *(v344 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v345.value._countAndFlagsBits = 0xD000000000000010;
  v345.value._object = 0x800000026B55EE30;
  Action.init(_:mac:)(v345, 0);
  v1424 = v1426;
  v1425 = v1427;
  v346 = sub_26B4D43F4();
  v347 = sub_26B4CE5C8();
  v348 = sub_26B4D4408();
  v349 = sub_26B4D4414();
  v350 = sub_26B4D4414();
  *&v1212 = v348;
  *(&v1212 + 1) = v349;
  *&v1135 = v343;
  *(&v1135 + 1) = v344;
  *(&v1058 + 1) = v1306;
  *&v1058 = v1402;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B55EE10, v338, v340, v346, 0, 0, v1430, v1423 + 4448, v347 & 1, 1, v1058, v1135, v1212, v350, &v1429, &v1428, 0, 0, &v1424);
  v351 = swift_allocObject();
  *(v351 + 16) = xmmword_26B545100;
  v352 = swift_allocObject();
  *(v352 + 16) = xmmword_26B545120;
  strcpy((v352 + 32), "Turn on Zoom");
  *(v352 + 45) = 0;
  *(v352 + 46) = -5120;
  strcpy((v352 + 48), "Turn Zoom on");
  *(v352 + 61) = 0;
  *(v352 + 62) = -5120;
  *(v351 + 32) = v352;
  *(v351 + 40) = 0;
  v353 = swift_allocObject();
  *(v353 + 16) = xmmword_26B545100;
  *(v353 + 32) = 0xD00000000000001BLL;
  *(v353 + 40) = 0x800000026B55EE50;
  *(v353 + 48) = 0;
  v1430[0] = 0;
  v354 = swift_allocObject();
  *(v354 + 16) = xmmword_26B5450C0;
  *(v354 + 32) = 134545921;
  v1403 = sub_26B470D98(v354);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1307 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1307 = MEMORY[0x277D84FA0];
  }

  v355 = swift_allocObject();
  *(v355 + 16) = xmmword_26B545120;
  *(v355 + 32) = 768;
  v356 = sub_26B470D98(v355);

  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_26B5450D0;
  *(v357 + 32) = *v1420;
  *(v357 + 40) = 3;
  *(v357 + 48) = *v1420;
  *(v357 + 56) = 8;
  *(v357 + 64) = 0x403A000000000000;
  *(v357 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v358.value._countAndFlagsBits = 0x6F5A656C62616E65;
  v358.value._object = 0xEA00000000006D6FLL;
  Action.init(_:mac:)(v358, 0);
  v1424 = v1426;
  v1425 = v1427;
  v359 = sub_26B4D43F4();
  v360 = sub_26B4CE5C8();
  v361 = sub_26B4D4400();
  v362 = sub_26B4D4408();
  v363 = sub_26B4D4414();
  v364 = sub_26B4D4414();
  *&v1213 = v362;
  *(&v1213 + 1) = v363;
  *&v1136 = v356;
  *(&v1136 + 1) = v357;
  *(&v1059 + 1) = v1307;
  *&v1059 = v1403;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55EE70, v351, v353, v359, 0, 0, v1430, v1423 + 4632, v360 & 1, v361 & 1, v1059, v1136, v1213, v364, &v1429, &v1428, 0, 0, &v1424);
  v365 = swift_allocObject();
  *(v365 + 16) = xmmword_26B545100;
  v366 = swift_allocObject();
  *(v366 + 16) = xmmword_26B545120;
  strcpy((v366 + 32), "Turn off Zoom");
  *(v366 + 46) = -4864;
  strcpy((v366 + 48), "Turn Zoom off");
  *(v366 + 62) = -4864;
  *(v365 + 32) = v366;
  *(v365 + 40) = 0;
  v367 = swift_allocObject();
  *(v367 + 16) = xmmword_26B545100;
  *(v367 + 32) = 0xD00000000000001CLL;
  *(v367 + 40) = 0x800000026B55EE90;
  *(v367 + 48) = 0;
  v1430[0] = 0;
  v368 = swift_allocObject();
  *(v368 + 16) = xmmword_26B5450C0;
  *(v368 + 32) = 134545921;
  v1404 = sub_26B470D98(v368);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1308 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1308 = MEMORY[0x277D84FA0];
  }

  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_26B545120;
  *(v369 + 32) = 768;
  v370 = sub_26B470D98(v369);

  v371 = swift_allocObject();
  *(v371 + 16) = xmmword_26B5450D0;
  *(v371 + 32) = *v1420;
  *(v371 + 40) = 3;
  *(v371 + 48) = *v1420;
  *(v371 + 56) = 8;
  *(v371 + 64) = 0x403A000000000000;
  *(v371 + 72) = 10;
  v1429 = 4;
  v1428 = 4;
  v372.value._countAndFlagsBits = 0x5A656C6261736964;
  v372.value._object = 0xEB000000006D6F6FLL;
  Action.init(_:mac:)(v372, 0);
  v1424 = v1426;
  v1425 = v1427;
  v373 = sub_26B4D43F4();
  v374 = sub_26B4CE5C8();
  v375 = sub_26B4D4400();
  v376 = sub_26B4D4408();
  v377 = sub_26B4D4414();
  v378 = sub_26B4D4414();
  *&v1214 = v376;
  *(&v1214 + 1) = v377;
  *&v1137 = v370;
  *(&v1137 + 1) = v371;
  *(&v1060 + 1) = v1308;
  *&v1060 = v1404;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55EEB0, v365, v367, v373, 0, 0, v1430, v1423 + 4816, v374 & 1, v375 & 1, v1060, v1137, v1214, v378, &v1429, &v1428, 0, 0, &v1424);
  v379 = swift_allocObject();
  *(v379 + 16) = xmmword_26B545100;
  v380 = swift_allocObject();
  *(v380 + 16) = xmmword_26B545120;
  *(v380 + 32) = 0xD000000000000012;
  *(v380 + 40) = 0x800000026B55EED0;
  *(v380 + 48) = 0x65764F6563696F56;
  *(v380 + 56) = 0xEF73736572702072;
  *(v379 + 32) = v380;
  *(v379 + 40) = 0;
  v381 = swift_allocObject();
  *(v381 + 16) = xmmword_26B545100;
  *(v381 + 32) = 0xD000000000000040;
  *(v381 + 40) = 0x800000026B55EEF0;
  *(v381 + 48) = 0;
  v382 = swift_allocObject();
  *(v382 + 16) = xmmword_26B545100;
  *(v382 + 32) = 0xD00000000000002DLL;
  *(v382 + 40) = 0x800000026B55EF40;
  *(v382 + 48) = 0;
  v1430[0] = 0;
  v383 = swift_allocObject();
  *(v383 + 16) = xmmword_26B545140;
  *(v383 + 32) = 84017408;
  *(v383 + 36) = 8;
  v1309 = sub_26B470D98(v383);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1296 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1296 = MEMORY[0x277D84FA0];
  }

  v384 = swift_allocObject();
  *(v384 + 16) = xmmword_26B545100;
  *(v384 + 32) = 3;
  v385 = sub_26B470D98(v384);

  v386 = swift_allocObject();
  *(v386 + 16) = xmmword_26B5450C0;
  *(v386 + 32) = *v1420;
  *(v386 + 40) = 1;
  *(v386 + 48) = *v1420;
  *(v386 + 56) = 3;
  *(v386 + 64) = *v1420;
  *(v386 + 72) = 8;
  *(v386 + 80) = 0x403A000000000000;
  *(v386 + 88) = 10;
  v387 = swift_allocObject();
  *(v387 + 16) = xmmword_26B545100;
  *(v387 + 32) = 28;
  v388 = sub_26B470F10(v387);

  v1429 = 4;
  v1428 = 4;
  v389.value._countAndFlagsBits = 0x6176697463416F76;
  v389.value._object = 0xEA00000000006574;
  Action.init(_:mac:)(v389, 0);
  v1424 = v1426;
  v1425 = v1427;
  v390 = sub_26B4CE5C8();
  v391 = sub_26B4D4400();
  *&v1215 = sub_26B4D4408();
  *(&v1215 + 1) = sub_26B4D4414();
  *&v1138 = v385;
  *(&v1138 + 1) = v386;
  *(&v1061 + 1) = v1296;
  *&v1061 = v1309;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55EF70, v379, v381, v382, 0, 0, v1430, v1423 + 5000, v390 & 1, v391 & 1, v1061, v1138, v1215, v388, &v1429, &v1428, 0, 0, &v1424);
  v392 = swift_allocObject();
  *(v392 + 16) = xmmword_26B545100;
  v393 = swift_allocObject();
  *(v393 + 16) = xmmword_26B545100;
  *(v393 + 32) = 0xD000000000000013;
  *(v393 + 40) = 0x800000026B55EF90;
  *(v392 + 32) = v393;
  *(v392 + 40) = 0;
  v394 = swift_allocObject();
  *(v394 + 16) = xmmword_26B545100;
  *(v394 + 32) = 0xD00000000000002ALL;
  *(v394 + 40) = 0x800000026B55EFB0;
  *(v394 + 48) = 0;
  v395 = swift_allocObject();
  *(v395 + 16) = xmmword_26B545100;
  *(v395 + 32) = 0xD00000000000002DLL;
  *(v395 + 40) = 0x800000026B55EF40;
  *(v395 + 48) = 0;
  v1430[0] = 0;
  v396 = swift_allocObject();
  *(v396 + 16) = xmmword_26B5450C0;
  *(v396 + 32) = 134545921;
  v1310 = sub_26B470D98(v396);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1297 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1297 = MEMORY[0x277D84FA0];
  }

  v397 = swift_allocObject();
  *(v397 + 16) = xmmword_26B545120;
  *(v397 + 32) = 768;
  v398 = sub_26B470D98(v397);

  v399 = swift_allocObject();
  *(v399 + 16) = xmmword_26B5450D0;
  *(v399 + 32) = *v1420;
  *(v399 + 40) = 3;
  *(v399 + 48) = *v1420;
  *(v399 + 56) = 8;
  *(v399 + 64) = 0x403A000000000000;
  *(v399 + 72) = 10;
  v400 = swift_allocObject();
  *(v400 + 16) = xmmword_26B545100;
  *(v400 + 32) = 28;
  v401 = sub_26B470F10(v400);

  v1429 = 4;
  v1428 = 4;
  v402.value._countAndFlagsBits = 0x54636967614D6F76;
  v402.value._object = 0xEA00000000007061;
  Action.init(_:mac:)(v402, 0);
  v1424 = v1426;
  v1425 = v1427;
  v403 = sub_26B4CE5C8();
  v404 = sub_26B4D4400();
  *&v1216 = sub_26B4D4408();
  *(&v1216 + 1) = sub_26B4D4414();
  *&v1139 = v398;
  *(&v1139 + 1) = v399;
  *(&v1062 + 1) = v1297;
  *&v1062 = v1310;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55EFE0, v392, v394, v395, 0, 0, v1430, v1423 + 5184, v403 & 1, v404 & 1, v1062, v1139, v1216, v401, &v1429, &v1428, 0, 0, &v1424);
  v405 = swift_allocObject();
  *(v405 + 16) = xmmword_26B545100;
  v406 = swift_allocObject();
  *(v406 + 16) = xmmword_26B545100;
  *(v406 + 32) = 0xD000000000000029;
  *(v406 + 40) = 0x800000026B55F000;
  *(v405 + 32) = v406;
  *(v405 + 40) = 0;
  v407 = swift_allocObject();
  *(v407 + 16) = xmmword_26B545100;
  *(v407 + 32) = 0xD00000000000002DLL;
  *(v407 + 40) = 0x800000026B55F030;
  *(v407 + 48) = 0;
  v408 = swift_allocObject();
  *(v408 + 16) = xmmword_26B545100;
  *(v408 + 32) = 0xD000000000000061;
  *(v408 + 40) = 0x800000026B55F060;
  *(v408 + 48) = 0;
  v1430[0] = 0;
  v409 = swift_allocObject();
  *(v409 + 16) = xmmword_26B5450C0;
  *(v409 + 32) = 134545921;
  v1311 = sub_26B470D98(v409);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1298 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1298 = MEMORY[0x277D84FA0];
  }

  v410 = swift_allocObject();
  *(v410 + 16) = xmmword_26B545120;
  *(v410 + 32) = 768;
  v411 = sub_26B470D98(v410);

  v412 = swift_allocObject();
  *(v412 + 16) = xmmword_26B5450D0;
  *(v412 + 32) = *v1420;
  *(v412 + 40) = 3;
  *(v412 + 48) = *v1420;
  *(v412 + 56) = 8;
  *(v412 + 64) = 0x403A000000000000;
  *(v412 + 72) = 10;
  v413 = swift_allocObject();
  *(v413 + 16) = xmmword_26B545120;
  *(v413 + 32) = 7187;
  v414 = sub_26B470F10(v413);

  v1429 = 4;
  v1428 = 4;
  v415.value._countAndFlagsBits = 0x7463656C65536F76;
  v415.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v415, 0);
  v1424 = v1426;
  v1425 = v1427;
  v416 = sub_26B4CE5C8();
  v417 = sub_26B4D4400();
  *&v1217 = sub_26B4D4408();
  *(&v1217 + 1) = sub_26B4D4414();
  *&v1140 = v411;
  *(&v1140 + 1) = v412;
  *(&v1063 + 1) = v1298;
  *&v1063 = v1311;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55F0D0, v405, v407, v408, 0, 0, v1430, v1423 + 5368, v416 & 1, v417 & 1, v1063, v1140, v1217, v414, &v1429, &v1428, 0, 0, &v1424);
  v418 = swift_allocObject();
  *(v418 + 16) = xmmword_26B545100;
  v419 = swift_allocObject();
  *(v419 + 16) = xmmword_26B545100;
  *(v419 + 32) = 0xD000000000000012;
  *(v419 + 40) = 0x800000026B55F0F0;
  *(v418 + 32) = v419;
  *(v418 + 40) = 0;
  v420 = swift_allocObject();
  *(v420 + 16) = xmmword_26B545100;
  *(v420 + 32) = 0xD00000000000002BLL;
  *(v420 + 40) = 0x800000026B55F110;
  *(v420 + 48) = 0;
  v421 = swift_allocObject();
  *(v421 + 16) = xmmword_26B545100;
  *(v421 + 32) = 0xD00000000000002DLL;
  *(v421 + 40) = 0x800000026B55EF40;
  *(v421 + 48) = 0;
  v1430[0] = 0;
  v422 = swift_allocObject();
  *(v422 + 16) = xmmword_26B545140;
  *(v422 + 32) = 84017408;
  *(v422 + 36) = 8;
  v1312 = sub_26B470D98(v422);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1279 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1279 = MEMORY[0x277D84FA0];
  }

  v423 = swift_allocObject();
  *(v423 + 16) = xmmword_26B545100;
  *(v423 + 32) = 3;
  v424 = sub_26B470D98(v423);

  v425 = swift_allocObject();
  *(v425 + 16) = xmmword_26B5450C0;
  *(v425 + 32) = *v1420;
  *(v425 + 40) = 1;
  *(v425 + 48) = *v1420;
  *(v425 + 56) = 3;
  *(v425 + 64) = *v1420;
  *(v425 + 72) = 8;
  *(v425 + 80) = 0x403A000000000000;
  *(v425 + 88) = 10;
  v426 = swift_allocObject();
  *(v426 + 16) = xmmword_26B545100;
  *(v426 + 32) = 28;
  v427 = sub_26B470F10(v426);

  v1429 = 4;
  v1428 = 4;
  v428.value._countAndFlagsBits = 0x6C41646165526F76;
  v428.value._object = 0xE90000000000006CLL;
  Action.init(_:mac:)(v428, 0);
  v1424 = v1426;
  v1425 = v1427;
  v429 = sub_26B4CE5C8();
  v430 = sub_26B4D4400();
  *&v1218 = sub_26B4D4408();
  *(&v1218 + 1) = sub_26B4D4414();
  *&v1141 = v424;
  *(&v1141 + 1) = v425;
  *(&v1064 + 1) = v1279;
  *&v1064 = v1312;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55F140, v418, v420, v421, 0, 0, v1430, v1423 + 5552, v429 & 1, v430 & 1, v1064, v1141, v1218, v427, &v1429, &v1428, 0, 0, &v1424);
  v431 = swift_allocObject();
  *(v431 + 16) = xmmword_26B545100;
  v432 = swift_allocObject();
  *(v432 + 16) = xmmword_26B545100;
  *(v432 + 32) = 0xD000000000000027;
  *(v432 + 40) = 0x800000026B55F160;
  *(v431 + 32) = v432;
  *(v431 + 40) = 0;
  v433 = swift_allocObject();
  *(v433 + 16) = xmmword_26B545100;
  *(v433 + 32) = 0xD000000000000038;
  *(v433 + 40) = 0x800000026B55F190;
  *(v433 + 48) = 0;
  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_26B545100;
  *(v434 + 32) = 0xD00000000000002DLL;
  *(v434 + 40) = 0x800000026B55EF40;
  *(v434 + 48) = 0;
  v1430[0] = 0;
  v435 = swift_allocObject();
  *(v435 + 16) = xmmword_26B5450C0;
  *(v435 + 32) = 134545921;
  v1313 = sub_26B470D98(v435);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1280 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1280 = MEMORY[0x277D84FA0];
  }

  v436 = swift_allocObject();
  *(v436 + 16) = xmmword_26B545120;
  *(v436 + 32) = 768;
  v437 = sub_26B470D98(v436);

  v438 = swift_allocObject();
  *(v438 + 16) = xmmword_26B5450D0;
  *(v438 + 32) = *v1420;
  *(v438 + 40) = 3;
  *(v438 + 48) = *v1420;
  *(v438 + 56) = 8;
  *(v438 + 64) = 0x403A000000000000;
  *(v438 + 72) = 10;
  v439 = swift_allocObject();
  *(v439 + 16) = xmmword_26B545100;
  *(v439 + 32) = 28;
  v440 = sub_26B470F10(v439);

  v1429 = 4;
  v1428 = 4;
  v441.value._countAndFlagsBits = 0x7463656C65536F76;
  v441.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v441, 0);
  v1424 = v1426;
  v1425 = v1427;
  v442 = sub_26B4CE5C8();
  v443 = sub_26B4D4400();
  *&v1219 = sub_26B4D4408();
  *(&v1219 + 1) = sub_26B4D4414();
  *&v1142 = v437;
  *(&v1142 + 1) = v438;
  *(&v1065 + 1) = v1280;
  *&v1065 = v1313;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B55F1D0, v431, v433, v434, 0, 0, v1430, v1423 + 5736, v442 & 1, v443 & 1, v1065, v1142, v1219, v440, &v1429, &v1428, 0, 0, &v1424);
  v444 = swift_allocObject();
  *(v444 + 16) = xmmword_26B545100;
  v445 = swift_allocObject();
  *(v445 + 16) = xmmword_26B545100;
  *(v445 + 32) = 0xD000000000000021;
  *(v445 + 40) = 0x800000026B55F1F0;
  *(v444 + 32) = v445;
  *(v444 + 40) = 0;
  v446 = swift_allocObject();
  *(v446 + 16) = xmmword_26B545100;
  *(v446 + 32) = 0xD00000000000002CLL;
  *(v446 + 40) = 0x800000026B55F220;
  *(v446 + 48) = 0;
  v447 = swift_allocObject();
  *(v447 + 16) = xmmword_26B545100;
  *(v447 + 32) = 0xD00000000000002DLL;
  *(v447 + 40) = 0x800000026B55EF40;
  *(v447 + 48) = 0;
  v1430[0] = 0;
  v448 = swift_allocObject();
  *(v448 + 16) = xmmword_26B545140;
  *(v448 + 32) = 84017408;
  *(v448 + 36) = 8;
  v1281 = sub_26B470D98(v448);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1274 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1274 = MEMORY[0x277D84FA0];
  }

  v449 = swift_allocObject();
  *(v449 + 16) = xmmword_26B545100;
  *(v449 + 32) = 3;
  v450 = sub_26B470D98(v449);

  v451 = swift_allocObject();
  *(v451 + 16) = xmmword_26B5450C0;
  *(v451 + 32) = *v1420;
  *(v451 + 40) = 1;
  *(v451 + 48) = *v1420;
  *(v451 + 56) = 3;
  *(v451 + 64) = *v1420;
  *(v451 + 72) = 8;
  *(v451 + 80) = 0x403A000000000000;
  *(v451 + 88) = 10;
  v452 = swift_allocObject();
  *(v452 + 16) = xmmword_26B545100;
  *(v452 + 32) = 28;
  v453 = sub_26B470F10(v452);

  v1429 = 4;
  v1428 = 4;
  v454.value._object = 0x800000026B55F270;
  v454.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v454, 0);
  v1424 = v1426;
  v1425 = v1427;
  v455 = sub_26B4CE5C8();
  v456 = sub_26B4D4400();
  *&v1220 = sub_26B4D4408();
  *(&v1220 + 1) = sub_26B4D4414();
  *&v1143 = v450;
  *(&v1143 + 1) = v451;
  *(&v1066 + 1) = v1274;
  *&v1066 = v1281;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F250, v444, v446, v447, 0, 0, v1430, v1423 + 5920, v455 & 1, v456 & 1, v1066, v1143, v1220, v453, &v1429, &v1428, 0, 0, &v1424);
  v457 = swift_allocObject();
  *(v457 + 16) = xmmword_26B545100;
  v458 = swift_allocObject();
  *(v458 + 16) = xmmword_26B545100;
  *(v458 + 32) = 0xD000000000000020;
  *(v458 + 40) = 0x800000026B55F290;
  *(v457 + 32) = v458;
  *(v457 + 40) = 0;
  v459 = swift_allocObject();
  *(v459 + 16) = xmmword_26B545100;
  *(v459 + 32) = 0xD00000000000002BLL;
  *(v459 + 40) = 0x800000026B55F2C0;
  *(v459 + 48) = 0;
  v460 = swift_allocObject();
  *(v460 + 16) = xmmword_26B545100;
  *(v460 + 32) = 0xD00000000000002DLL;
  *(v460 + 40) = 0x800000026B55EF40;
  *(v460 + 48) = 0;
  v1430[0] = 0;
  v461 = swift_allocObject();
  *(v461 + 16) = xmmword_26B545140;
  *(v461 + 32) = 84017408;
  *(v461 + 36) = 8;
  v1282 = sub_26B470D98(v461);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1275 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1275 = MEMORY[0x277D84FA0];
  }

  v462 = swift_allocObject();
  *(v462 + 16) = xmmword_26B545100;
  *(v462 + 32) = 3;
  v463 = sub_26B470D98(v462);

  v464 = swift_allocObject();
  *(v464 + 16) = xmmword_26B5450C0;
  *(v464 + 32) = *v1420;
  *(v464 + 40) = 1;
  *(v464 + 48) = *v1420;
  *(v464 + 56) = 3;
  *(v464 + 64) = *v1420;
  *(v464 + 72) = 8;
  *(v464 + 80) = 0x403A000000000000;
  *(v464 + 88) = 10;
  v465 = swift_allocObject();
  *(v465 + 16) = xmmword_26B545100;
  *(v465 + 32) = 28;
  v466 = sub_26B470F10(v465);

  v1429 = 4;
  v1428 = 4;
  v467.value._object = 0x800000026B55F310;
  v467.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v467, 0);
  v1424 = v1426;
  v1425 = v1427;
  v468 = sub_26B4CE5C8();
  v469 = sub_26B4D4400();
  *&v1221 = sub_26B4D4408();
  *(&v1221 + 1) = sub_26B4D4414();
  *&v1144 = v463;
  *(&v1144 + 1) = v464;
  *(&v1067 + 1) = v1275;
  *&v1067 = v1282;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55F2F0, v457, v459, v460, 0, 0, v1430, v1423 + 6104, v468 & 1, v469 & 1, v1067, v1144, v1221, v466, &v1429, &v1428, 0, 0, &v1424);
  v470 = swift_allocObject();
  *(v470 + 16) = xmmword_26B545100;
  v471 = swift_allocObject();
  *(v471 + 16) = xmmword_26B545100;
  *(v471 + 32) = 0xD00000000000001FLL;
  *(v471 + 40) = 0x800000026B55F330;
  *(v470 + 32) = v471;
  *(v470 + 40) = 0;
  v472 = swift_allocObject();
  *(v472 + 16) = xmmword_26B545100;
  *(v472 + 32) = 0xD000000000000014;
  *(v472 + 40) = 0x800000026B55F350;
  *(v472 + 48) = 0;
  v473 = swift_allocObject();
  *(v473 + 16) = xmmword_26B545100;
  *(v473 + 32) = 0xD00000000000002DLL;
  *(v473 + 40) = 0x800000026B55EF40;
  *(v473 + 48) = 0;
  v1430[0] = 0;
  v474 = swift_allocObject();
  *(v474 + 16) = xmmword_26B545100;
  *(v474 + 32) = 2;
  v1283 = sub_26B470D98(v474);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1267 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1267 = MEMORY[0x277D84FA0];
  }

  v475 = swift_allocObject();
  *(v475 + 16) = xmmword_26B545140;
  *(v475 + 32) = 84082944;
  *(v475 + 36) = 8;
  v476 = sub_26B470D98(v475);

  v477 = swift_allocObject();
  *(v477 + 16) = xmmword_26B545100;
  *(v477 + 32) = *v1420;
  *(v477 + 40) = 3;
  v478 = swift_allocObject();
  *(v478 + 16) = xmmword_26B545100;
  *(v478 + 32) = 28;
  v479 = sub_26B470F10(v478);

  v1429 = 4;
  v1428 = 4;
  v480.value._object = 0xEF7070417478654ELL;
  v480.value._countAndFlagsBits = 0x7463656C65536F76;
  Action.init(_:mac:)(v480, 0);
  v1424 = v1426;
  v1425 = v1427;
  v481 = sub_26B4CE5C8();
  v482 = sub_26B4D4400();
  *&v1222 = sub_26B4D4408();
  *(&v1222 + 1) = sub_26B4D4414();
  *&v1145 = v476;
  *(&v1145 + 1) = v477;
  *(&v1068 + 1) = v1267;
  *&v1068 = v1283;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55F370, v470, v472, v473, 0, 0, v1430, v1423 + 6288, v481 & 1, v482 & 1, v1068, v1145, v1222, v479, &v1429, &v1428, 0, 0, &v1424);
  v483 = swift_allocObject();
  *(v483 + 16) = xmmword_26B545100;
  v484 = swift_allocObject();
  *(v484 + 16) = xmmword_26B545100;
  *(v484 + 32) = 0xD00000000000001ALL;
  *(v484 + 40) = 0x800000026B55F390;
  *(v483 + 32) = v484;
  *(v483 + 40) = 0;
  v485 = swift_allocObject();
  *(v485 + 16) = xmmword_26B545100;
  *(v485 + 32) = 0xD00000000000002BLL;
  *(v485 + 40) = 0x800000026B55F3B0;
  *(v485 + 48) = 0;
  v486 = swift_allocObject();
  *(v486 + 16) = xmmword_26B545100;
  *(v486 + 32) = 0xD00000000000002DLL;
  *(v486 + 40) = 0x800000026B55EF40;
  *(v486 + 48) = 0;
  v1430[0] = 0;
  v487 = swift_allocObject();
  *(v487 + 16) = xmmword_26B545140;
  *(v487 + 32) = 84017408;
  *(v487 + 36) = 8;
  v1284 = sub_26B470D98(v487);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1268 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1268 = MEMORY[0x277D84FA0];
  }

  v488 = swift_allocObject();
  *(v488 + 16) = xmmword_26B545100;
  *(v488 + 32) = 3;
  v489 = sub_26B470D98(v488);

  v490 = swift_allocObject();
  *(v490 + 16) = xmmword_26B5450C0;
  *(v490 + 32) = *v1420;
  *(v490 + 40) = 1;
  *(v490 + 48) = *v1420;
  *(v490 + 56) = 3;
  *(v490 + 64) = *v1420;
  *(v490 + 72) = 8;
  *(v490 + 80) = 0x403A000000000000;
  *(v490 + 88) = 10;
  v491 = swift_allocObject();
  *(v491 + 16) = xmmword_26B545100;
  *(v491 + 32) = 28;
  v492 = sub_26B470F10(v491);

  v1429 = 4;
  v1428 = 4;
  v493.value._object = 0x800000026B55F400;
  v493.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v493, 0);
  v1424 = v1426;
  v1425 = v1427;
  v494 = sub_26B4CE5C8();
  v495 = sub_26B4D4400();
  *&v1223 = sub_26B4D4408();
  *(&v1223 + 1) = sub_26B4D4414();
  *&v1146 = v489;
  *(&v1146 + 1) = v490;
  *(&v1069 + 1) = v1268;
  *&v1069 = v1284;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55F3E0, v483, v485, v486, 0, 0, v1430, v1423 + 6472, v494 & 1, v495 & 1, v1069, v1146, v1223, v492, &v1429, &v1428, 0, 0, &v1424);
  v496 = swift_allocObject();
  *(v496 + 16) = xmmword_26B545100;
  v497 = swift_allocObject();
  *(v497 + 16) = xmmword_26B545100;
  *(v497 + 32) = 0xD00000000000001BLL;
  *(v497 + 40) = 0x800000026B55F420;
  *(v496 + 32) = v497;
  *(v496 + 40) = 0;
  v498 = swift_allocObject();
  *(v498 + 16) = xmmword_26B545100;
  *(v498 + 32) = 0xD000000000000074;
  *(v498 + 40) = 0x800000026B55F440;
  *(v498 + 48) = 0;
  v499 = swift_allocObject();
  *(v499 + 16) = xmmword_26B545100;
  *(v499 + 32) = 0xD00000000000002DLL;
  *(v499 + 40) = 0x800000026B55EF40;
  *(v499 + 48) = 0;
  v1430[0] = 0;
  v500 = swift_allocObject();
  *(v500 + 16) = xmmword_26B5450C0;
  *(v500 + 32) = 134545921;
  v1285 = sub_26B470D98(v500);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1269 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1269 = MEMORY[0x277D84FA0];
  }

  v501 = swift_allocObject();
  *(v501 + 16) = xmmword_26B545120;
  *(v501 + 32) = 768;
  v502 = sub_26B470D98(v501);

  v503 = swift_allocObject();
  *(v503 + 16) = xmmword_26B5450D0;
  *(v503 + 32) = *v1420;
  *(v503 + 40) = 3;
  *(v503 + 48) = *v1420;
  *(v503 + 56) = 8;
  *(v503 + 64) = 0x403A000000000000;
  *(v503 + 72) = 10;
  v504 = swift_allocObject();
  *(v504 + 16) = xmmword_26B545100;
  *(v504 + 32) = 28;
  v505 = sub_26B470F10(v504);

  v1429 = 4;
  v1428 = 4;
  v506.value._object = 0x800000026B55F4E0;
  v506.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v506, 0);
  v1424 = v1426;
  v1425 = v1427;
  v507 = sub_26B4CE5C8();
  v508 = sub_26B4D4400();
  *&v1224 = sub_26B4D4408();
  *(&v1224 + 1) = sub_26B4D4414();
  *&v1147 = v502;
  *(&v1147 + 1) = v503;
  *(&v1070 + 1) = v1269;
  *&v1070 = v1285;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F4C0, v496, v498, v499, 0, 0, v1430, v1423 + 6656, v507 & 1, v508 & 1, v1070, v1147, v1224, v505, &v1429, &v1428, 0, 0, &v1424);
  v509 = swift_allocObject();
  *(v509 + 16) = xmmword_26B545100;
  v510 = swift_allocObject();
  *(v510 + 16) = xmmword_26B545100;
  *(v510 + 32) = 0xD000000000000022;
  *(v510 + 40) = 0x800000026B55F500;
  *(v509 + 32) = v510;
  *(v509 + 40) = 0;
  v511 = swift_allocObject();
  *(v511 + 16) = xmmword_26B545100;
  *(v511 + 32) = 0xD000000000000066;
  *(v511 + 40) = 0x800000026B55F530;
  *(v511 + 48) = 0;
  v512 = swift_allocObject();
  *(v512 + 16) = xmmword_26B545100;
  *(v512 + 32) = 0xD00000000000002DLL;
  *(v512 + 40) = 0x800000026B55EF40;
  *(v512 + 48) = 0;
  v1430[0] = 0;
  v513 = swift_allocObject();
  *(v513 + 16) = xmmword_26B5450C0;
  *(v513 + 32) = 134545921;
  v1270 = sub_26B470D98(v513);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1265 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1265 = MEMORY[0x277D84FA0];
  }

  v514 = swift_allocObject();
  *(v514 + 16) = xmmword_26B545120;
  *(v514 + 32) = 768;
  v515 = sub_26B470D98(v514);

  v516 = swift_allocObject();
  *(v516 + 16) = xmmword_26B5450D0;
  *(v516 + 32) = *v1420;
  *(v516 + 40) = 3;
  *(v516 + 48) = *v1420;
  *(v516 + 56) = 8;
  *(v516 + 64) = 0x403A000000000000;
  *(v516 + 72) = 10;
  v517 = swift_allocObject();
  *(v517 + 16) = xmmword_26B545100;
  *(v517 + 32) = 28;
  v518 = sub_26B470F10(v517);

  v1429 = 4;
  v1428 = 4;
  v519.value._object = 0x800000026B55F5C0;
  v519.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v519, 0);
  v1424 = v1426;
  v1425 = v1427;
  v520 = sub_26B4CE5C8();
  v521 = sub_26B4D4400();
  *&v1225 = sub_26B4D4408();
  *(&v1225 + 1) = sub_26B4D4414();
  *&v1148 = v515;
  *(&v1148 + 1) = v516;
  *(&v1071 + 1) = v1265;
  *&v1071 = v1270;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55F5A0, v509, v511, v512, 0, 0, v1430, v1423 + 6840, v520 & 1, v521 & 1, v1071, v1148, v1225, v518, &v1429, &v1428, 0, 0, &v1424);
  v522 = swift_allocObject();
  *(v522 + 16) = xmmword_26B545100;
  v523 = swift_allocObject();
  *(v523 + 16) = xmmword_26B545100;
  *(v523 + 32) = 0xD000000000000023;
  *(v523 + 40) = 0x800000026B55F5E0;
  *(v522 + 32) = v523;
  *(v522 + 40) = 0;
  v524 = swift_allocObject();
  *(v524 + 16) = xmmword_26B545100;
  *(v524 + 32) = 0xD000000000000014;
  *(v524 + 40) = 0x800000026B55F610;
  *(v524 + 48) = 0;
  v525 = swift_allocObject();
  *(v525 + 16) = xmmword_26B545100;
  *(v525 + 32) = 0xD00000000000002DLL;
  *(v525 + 40) = 0x800000026B55EF40;
  *(v525 + 48) = 0;
  v1430[0] = 0;
  v526 = swift_allocObject();
  *(v526 + 16) = xmmword_26B545100;
  *(v526 + 32) = 2;
  v1271 = sub_26B470D98(v526);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1266 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1266 = MEMORY[0x277D84FA0];
  }

  v527 = swift_allocObject();
  *(v527 + 16) = xmmword_26B545140;
  *(v527 + 32) = 84082944;
  *(v527 + 36) = 8;
  v528 = sub_26B470D98(v527);

  v529 = swift_allocObject();
  *(v529 + 16) = xmmword_26B545100;
  *(v529 + 32) = *v1420;
  *(v529 + 40) = 3;
  v530 = swift_allocObject();
  *(v530 + 16) = xmmword_26B545100;
  *(v530 + 32) = 28;
  v531 = sub_26B470F10(v530);

  v1429 = 4;
  v1428 = 4;
  v532.value._object = 0x800000026B55F650;
  v532.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v532, 0);
  v1424 = v1426;
  v1425 = v1427;
  v533 = sub_26B4CE5C8();
  v534 = sub_26B4D4400();
  *&v1226 = sub_26B4D4408();
  *(&v1226 + 1) = sub_26B4D4414();
  *&v1149 = v528;
  *(&v1149 + 1) = v529;
  *(&v1072 + 1) = v1266;
  *&v1072 = v1271;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55F630, v522, v524, v525, 0, 0, v1430, v1423 + 7024, v533 & 1, v534 & 1, v1072, v1149, v1226, v531, &v1429, &v1428, 0, 0, &v1424);
  v535 = swift_allocObject();
  *(v535 + 16) = xmmword_26B545100;
  v536 = swift_allocObject();
  *(v536 + 16) = xmmword_26B545100;
  *(v536 + 32) = 0xD00000000000001ELL;
  *(v536 + 40) = 0x800000026B55F670;
  *(v535 + 32) = v536;
  *(v535 + 40) = 0;
  v537 = swift_allocObject();
  *(v537 + 16) = xmmword_26B545100;
  *(v537 + 32) = 0xD00000000000002FLL;
  *(v537 + 40) = 0x800000026B55F690;
  *(v537 + 48) = 0;
  v538 = swift_allocObject();
  *(v538 + 16) = xmmword_26B545100;
  *(v538 + 32) = 0xD00000000000002DLL;
  *(v538 + 40) = 0x800000026B55EF40;
  *(v538 + 48) = 0;
  v1430[0] = 0;
  v539 = swift_allocObject();
  *(v539 + 16) = xmmword_26B545140;
  *(v539 + 32) = 84017408;
  *(v539 + 36) = 8;
  v1276 = sub_26B470D98(v539);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1272 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1272 = MEMORY[0x277D84FA0];
  }

  v540 = swift_allocObject();
  *(v540 + 16) = xmmword_26B545100;
  *(v540 + 32) = 3;
  v541 = sub_26B470D98(v540);

  v542 = swift_allocObject();
  *(v542 + 16) = xmmword_26B5450C0;
  *(v542 + 32) = *v1420;
  *(v542 + 40) = 1;
  *(v542 + 48) = *v1420;
  *(v542 + 56) = 3;
  *(v542 + 64) = *v1420;
  *(v542 + 72) = 8;
  *(v542 + 80) = 0x403A000000000000;
  *(v542 + 88) = 10;
  v543 = swift_allocObject();
  *(v543 + 16) = xmmword_26B545100;
  *(v543 + 32) = 28;
  v544 = sub_26B470F10(v543);

  v1429 = 4;
  v1428 = 4;
  v545.value._object = 0x800000026B55F6E0;
  v545.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v545, 0);
  v1424 = v1426;
  v1425 = v1427;
  v546 = sub_26B4CE5C8();
  v547 = sub_26B4D4400();
  *&v1227 = sub_26B4D4408();
  *(&v1227 + 1) = sub_26B4D4414();
  *&v1150 = v541;
  *(&v1150 + 1) = v542;
  *(&v1073 + 1) = v1272;
  *&v1073 = v1276;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55F6C0, v535, v537, v538, 0, 0, v1430, v1423 + 7208, v546 & 1, v547 & 1, v1073, v1150, v1227, v544, &v1429, &v1428, 0, 0, &v1424);
  v548 = swift_allocObject();
  *(v548 + 16) = xmmword_26B545100;
  v549 = swift_allocObject();
  *(v549 + 16) = xmmword_26B545100;
  *(v549 + 32) = 0xD00000000000001FLL;
  *(v549 + 40) = 0x800000026B55F700;
  *(v548 + 32) = v549;
  *(v548 + 40) = 0;
  v550 = swift_allocObject();
  *(v550 + 16) = xmmword_26B545100;
  *(v550 + 32) = 0xD000000000000075;
  *(v550 + 40) = 0x800000026B55F720;
  *(v550 + 48) = 0;
  v551 = swift_allocObject();
  *(v551 + 16) = xmmword_26B545100;
  *(v551 + 32) = 0xD00000000000002DLL;
  *(v551 + 40) = 0x800000026B55EF40;
  *(v551 + 48) = 0;
  v1430[0] = 0;
  v552 = swift_allocObject();
  *(v552 + 16) = xmmword_26B5450C0;
  *(v552 + 32) = 134545921;
  v1277 = sub_26B470D98(v552);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1273 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1273 = MEMORY[0x277D84FA0];
  }

  v553 = swift_allocObject();
  *(v553 + 16) = xmmword_26B545120;
  *(v553 + 32) = 768;
  v554 = sub_26B470D98(v553);

  v555 = swift_allocObject();
  *(v555 + 16) = xmmword_26B5450D0;
  *(v555 + 32) = *v1420;
  *(v555 + 40) = 3;
  *(v555 + 48) = *v1420;
  *(v555 + 56) = 8;
  *(v555 + 64) = 0x403A000000000000;
  *(v555 + 72) = 10;
  v556 = swift_allocObject();
  *(v556 + 16) = xmmword_26B545100;
  *(v556 + 32) = 28;
  v557 = sub_26B470F10(v556);

  v1429 = 4;
  v1428 = 4;
  v558.value._object = 0x800000026B55F7C0;
  v558.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v558, 0);
  v1424 = v1426;
  v1425 = v1427;
  v559 = sub_26B4CE5C8();
  v560 = sub_26B4D4400();
  *&v1228 = sub_26B4D4408();
  *(&v1228 + 1) = sub_26B4D4414();
  *&v1151 = v554;
  *(&v1151 + 1) = v555;
  *(&v1074 + 1) = v1273;
  *&v1074 = v1277;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55F7A0, v548, v550, v551, 0, 0, v1430, v1423 + 7392, v559 & 1, v560 & 1, v1074, v1151, v1228, v557, &v1429, &v1428, 0, 0, &v1424);
  v561 = swift_allocObject();
  *(v561 + 16) = xmmword_26B545100;
  v562 = swift_allocObject();
  *(v562 + 16) = xmmword_26B545100;
  *(v562 + 32) = 0xD000000000000026;
  *(v562 + 40) = 0x800000026B55F7E0;
  *(v561 + 32) = v562;
  *(v561 + 40) = 0;
  v563 = swift_allocObject();
  *(v563 + 16) = xmmword_26B545100;
  *(v563 + 32) = 0xD000000000000066;
  *(v563 + 40) = 0x800000026B55F530;
  *(v563 + 48) = 0;
  v564 = swift_allocObject();
  *(v564 + 16) = xmmword_26B545100;
  *(v564 + 32) = 0xD00000000000002DLL;
  *(v564 + 40) = 0x800000026B55EF40;
  *(v564 + 48) = 0;
  v1430[0] = 0;
  v565 = swift_allocObject();
  *(v565 + 16) = xmmword_26B5450C0;
  *(v565 + 32) = 134545921;
  v1326 = sub_26B470D98(v565);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1286 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1286 = MEMORY[0x277D84FA0];
  }

  v566 = swift_allocObject();
  *(v566 + 16) = xmmword_26B545120;
  *(v566 + 32) = 768;
  v1278 = sub_26B470D98(v566);

  v567 = swift_allocObject();
  *(v567 + 16) = xmmword_26B5450D0;
  *(v567 + 32) = *v1420;
  *(v567 + 40) = 3;
  *(v567 + 48) = *v1420;
  *(v567 + 56) = 8;
  *(v567 + 64) = 0x403A000000000000;
  *(v567 + 72) = 10;
  v568 = swift_allocObject();
  *(v568 + 16) = xmmword_26B545100;
  *(v568 + 32) = 28;
  v569 = sub_26B470F10(v568);

  v1429 = 4;
  v1428 = 4;
  v570.value._object = 0x800000026B55F840;
  v570.value._countAndFlagsBits = 0xD00000000000001BLL;
  Action.init(_:mac:)(v570, 0);
  v1424 = v1426;
  v1425 = v1427;
  v571 = sub_26B4CE5C8();
  v572 = sub_26B4D4400();
  *&v1229 = sub_26B4D4408();
  *(&v1229 + 1) = sub_26B4D4414();
  *(&v1152 + 1) = v567;
  *&v1152 = v1278;
  *(&v1075 + 1) = v1286;
  *&v1075 = v1326;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55F810, v561, v563, v564, 0, 0, v1430, v1423 + 7576, v571 & 1, v572 & 1, v1075, v1152, v1229, v569, &v1429, &v1428, 0, 0, &v1424);
  v573 = swift_allocObject();
  *(v573 + 16) = xmmword_26B545100;
  v574 = swift_allocObject();
  *(v574 + 16) = xmmword_26B545100;
  *(v574 + 32) = 0xD00000000000001BLL;
  *(v574 + 40) = 0x800000026B55F860;
  *(v573 + 32) = v574;
  *(v573 + 40) = 0;
  v575 = swift_allocObject();
  *(v575 + 16) = xmmword_26B545100;
  *(v575 + 32) = 0xD00000000000002CLL;
  *(v575 + 40) = 0x800000026B55F880;
  *(v575 + 48) = 0;
  v576 = swift_allocObject();
  *(v576 + 16) = xmmword_26B545100;
  *(v576 + 32) = 0xD00000000000002DLL;
  *(v576 + 40) = 0x800000026B55EF40;
  *(v576 + 48) = 0;
  v1430[0] = 0;
  v577 = swift_allocObject();
  *(v577 + 16) = xmmword_26B5450C0;
  *(v577 + 32) = 134545921;
  v1327 = sub_26B470D98(v577);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1315 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1315 = MEMORY[0x277D84FA0];
  }

  v578 = swift_allocObject();
  *(v578 + 16) = xmmword_26B545120;
  *(v578 + 32) = 768;
  v579 = sub_26B470D98(v578);

  v580 = swift_allocObject();
  *(v580 + 16) = xmmword_26B5450D0;
  *(v580 + 32) = *v1420;
  *(v580 + 40) = 3;
  *(v580 + 48) = *v1420;
  *(v580 + 56) = 8;
  *(v580 + 64) = 0x403A000000000000;
  *(v580 + 72) = 10;
  v581 = swift_allocObject();
  *(v581 + 16) = xmmword_26B545100;
  *(v581 + 32) = 28;
  v582 = sub_26B470F10(v581);

  v1429 = 4;
  v1428 = 4;
  v583.value._object = 0x800000026B55F8D0;
  v583.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v583, 0);
  v1424 = v1426;
  v1425 = v1427;
  v584 = sub_26B4CE5C8();
  v585 = sub_26B4D4400();
  *&v1230 = sub_26B4D4408();
  *(&v1230 + 1) = sub_26B4D4414();
  *&v1153 = v579;
  *(&v1153 + 1) = v580;
  *(&v1076 + 1) = v1315;
  *&v1076 = v1327;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F8B0, v573, v575, v576, 0, 0, v1430, v1423 + 7760, v584 & 1, v585 & 1, v1076, v1153, v1230, v582, &v1429, &v1428, 0, 0, &v1424);
  v586 = swift_allocObject();
  *(v586 + 16) = xmmword_26B545100;
  v587 = swift_allocObject();
  *(v587 + 16) = xmmword_26B545100;
  *(v587 + 32) = 0xD00000000000001DLL;
  *(v587 + 40) = 0x800000026B55F8F0;
  *(v586 + 32) = v587;
  *(v586 + 40) = 0;
  v588 = swift_allocObject();
  *(v588 + 16) = xmmword_26B545100;
  *(v588 + 32) = 0xD000000000000016;
  *(v588 + 40) = 0x800000026B55F910;
  *(v588 + 48) = 0;
  v589 = swift_allocObject();
  *(v589 + 16) = xmmword_26B545100;
  *(v589 + 32) = 0xD00000000000002DLL;
  *(v589 + 40) = 0x800000026B55EF40;
  *(v589 + 48) = 0;
  v1430[0] = 0;
  v590 = swift_allocObject();
  *(v590 + 16) = xmmword_26B545140;
  *(v590 + 32) = 84017408;
  *(v590 + 36) = 8;
  v1328 = sub_26B470D98(v590);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1316 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1316 = MEMORY[0x277D84FA0];
  }

  v591 = swift_allocObject();
  *(v591 + 16) = xmmword_26B545100;
  *(v591 + 32) = 3;
  v592 = sub_26B470D98(v591);

  v593 = swift_allocObject();
  *(v593 + 16) = xmmword_26B5450C0;
  *(v593 + 32) = *v1420;
  *(v593 + 40) = 1;
  *(v593 + 48) = *v1420;
  *(v593 + 56) = 3;
  *(v593 + 64) = *v1420;
  *(v593 + 72) = 8;
  *(v593 + 80) = 0x403A000000000000;
  *(v593 + 88) = 10;
  v594 = swift_allocObject();
  *(v594 + 16) = xmmword_26B545100;
  *(v594 + 32) = 28;
  v595 = sub_26B470F10(v594);

  v1429 = 4;
  v1428 = 4;
  v596.value._object = 0x800000026B55F950;
  v597.value._object = 0x800000026B55F970;
  v596.value._countAndFlagsBits = 0xD000000000000011;
  v597.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v596, v597);
  v1424 = v1426;
  v1425 = v1427;
  v598 = sub_26B4CE5C8();
  v599 = sub_26B4D4400();
  *&v1231 = sub_26B4D4408();
  *(&v1231 + 1) = sub_26B4D4414();
  *&v1154 = v592;
  *(&v1154 + 1) = v593;
  *(&v1077 + 1) = v1316;
  *&v1077 = v1328;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F930, v586, v588, v589, 0, 0, v1430, v1423 + 7944, v598 & 1, v599 & 1, v1077, v1154, v1231, v595, &v1429, &v1428, 0, 0, &v1424);
  v600 = swift_allocObject();
  *(v600 + 16) = xmmword_26B545100;
  v601 = swift_allocObject();
  *(v601 + 16) = xmmword_26B545100;
  *(v601 + 32) = 0xD000000000000017;
  *(v601 + 40) = 0x800000026B55F990;
  *(v600 + 32) = v601;
  *(v600 + 40) = 0;
  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_26B545100;
  *(v602 + 32) = 0xD000000000000025;
  *(v602 + 40) = 0x800000026B55F9B0;
  *(v602 + 48) = 0;
  v603 = swift_allocObject();
  *(v603 + 16) = xmmword_26B545100;
  *(v603 + 32) = 0xD00000000000002DLL;
  *(v603 + 40) = 0x800000026B55EF40;
  *(v603 + 48) = 0;
  v1430[0] = 0;
  v604 = swift_allocObject();
  *(v604 + 16) = xmmword_26B545140;
  *(v604 + 32) = 84017408;
  *(v604 + 36) = 8;
  v1317 = sub_26B470D98(v604);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1287 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1287 = MEMORY[0x277D84FA0];
  }

  v605 = swift_allocObject();
  *(v605 + 16) = xmmword_26B545100;
  *(v605 + 32) = 3;
  v606 = sub_26B470D98(v605);

  v607 = swift_allocObject();
  *(v607 + 16) = xmmword_26B5450C0;
  *(v607 + 32) = *v1420;
  *(v607 + 40) = 1;
  *(v607 + 48) = *v1420;
  *(v607 + 56) = 3;
  *(v607 + 64) = *v1420;
  *(v607 + 72) = 8;
  *(v607 + 80) = 0x403A000000000000;
  *(v607 + 88) = 10;
  v608 = swift_allocObject();
  *(v608 + 16) = xmmword_26B545100;
  *(v608 + 32) = 28;
  v609 = sub_26B470F10(v608);

  v1429 = 4;
  v1428 = 4;
  v610.value._countAndFlagsBits = 0x536B616570536F76;
  v610.value._object = 0xEE007972616D6D75;
  v611.value._object = 0x800000026B55FA00;
  v611.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v610, v611);
  v1424 = v1426;
  v1425 = v1427;
  v612 = sub_26B4CE5C8();
  v613 = sub_26B4D4400();
  *&v1232 = sub_26B4D4408();
  *(&v1232 + 1) = sub_26B4D4414();
  *&v1155 = v606;
  *(&v1155 + 1) = v607;
  *(&v1078 + 1) = v1287;
  *&v1078 = v1317;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55F9E0, v600, v602, v603, 0, 0, v1430, v1423 + 8128, v612 & 1, v613 & 1, v1078, v1155, v1232, v609, &v1429, &v1428, 0, 0, &v1424);
  v614 = swift_allocObject();
  *(v614 + 16) = xmmword_26B545100;
  v615 = swift_allocObject();
  *(v615 + 16) = xmmword_26B545100;
  *(v615 + 32) = 0xD000000000000017;
  *(v615 + 40) = 0x800000026B55FA20;
  *(v614 + 32) = v615;
  *(v614 + 40) = 0;
  v616 = swift_allocObject();
  *(v616 + 16) = xmmword_26B545100;
  *(v616 + 32) = 0xD00000000000001DLL;
  *(v616 + 40) = 0x800000026B55FA40;
  *(v616 + 48) = 0;
  v617 = swift_allocObject();
  *(v617 + 16) = xmmword_26B545100;
  *(v617 + 32) = 0xD00000000000002DLL;
  *(v617 + 40) = 0x800000026B55EF40;
  *(v617 + 48) = 0;
  v1430[0] = 0;
  v618 = swift_allocObject();
  *(v618 + 16) = xmmword_26B545140;
  *(v618 + 32) = 84017408;
  *(v618 + 36) = 8;
  v1340 = sub_26B470D98(v618);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1318 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1318 = MEMORY[0x277D84FA0];
  }

  v619 = swift_allocObject();
  *(v619 + 16) = xmmword_26B545100;
  *(v619 + 32) = 3;
  v620 = sub_26B470D98(v619);

  v621 = swift_allocObject();
  *(v621 + 16) = xmmword_26B5450C0;
  *(v621 + 32) = *v1420;
  *(v621 + 40) = 1;
  *(v621 + 48) = *v1420;
  *(v621 + 56) = 3;
  *(v621 + 64) = *v1420;
  *(v621 + 72) = 8;
  *(v621 + 80) = 0x403A000000000000;
  *(v621 + 88) = 10;
  v622 = swift_allocObject();
  *(v622 + 16) = xmmword_26B545100;
  *(v622 + 32) = 28;
  v623 = sub_26B470F10(v622);

  v1429 = 4;
  v1428 = 4;
  v624.value._countAndFlagsBits = 0x7053706F74536F76;
  v624.value._object = 0xEE00676E696B6165;
  v625.value._countAndFlagsBits = 0x6C65636E61436F76;
  v625.value._object = 0xEE00686365657053;
  Action.init(_:mac:)(v624, v625);
  v1424 = v1426;
  v1425 = v1427;
  v626 = sub_26B4CE5C8();
  v627 = sub_26B4D4400();
  *&v1233 = sub_26B4D4408();
  *(&v1233 + 1) = sub_26B4D4414();
  *&v1156 = v620;
  *(&v1156 + 1) = v621;
  *(&v1079 + 1) = v1318;
  *&v1079 = v1340;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55FA60, v614, v616, v617, 0, 0, v1430, v1423 + 8312, v626 & 1, v627 & 1, v1079, v1156, v1233, v623, &v1429, &v1428, 0, 0, &v1424);
  v628 = swift_allocObject();
  *(v628 + 16) = xmmword_26B545100;
  v629 = swift_allocObject();
  *(v629 + 16) = xmmword_26B545100;
  *(v629 + 32) = 0xD000000000000021;
  *(v629 + 40) = 0x800000026B55FA80;
  *(v628 + 32) = v629;
  *(v628 + 40) = 0;
  v630 = swift_allocObject();
  *(v630 + 16) = xmmword_26B545100;
  *(v630 + 32) = 0xD000000000000022;
  *(v630 + 40) = 0x800000026B55FAB0;
  *(v630 + 48) = 0;
  v631 = swift_allocObject();
  *(v631 + 16) = xmmword_26B545100;
  *(v631 + 32) = 0xD00000000000002DLL;
  *(v631 + 40) = 0x800000026B55EF40;
  *(v631 + 48) = 0;
  v1430[0] = 0;
  v632 = swift_allocObject();
  *(v632 + 16) = xmmword_26B5450C0;
  *(v632 + 32) = 134545921;
  v1341 = sub_26B470D98(v632);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1329 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1329 = MEMORY[0x277D84FA0];
  }

  v633 = swift_allocObject();
  *(v633 + 16) = xmmword_26B545120;
  *(v633 + 32) = 768;
  v634 = sub_26B470D98(v633);

  v635 = swift_allocObject();
  *(v635 + 16) = xmmword_26B5450D0;
  *(v635 + 32) = *v1420;
  *(v635 + 40) = 3;
  *(v635 + 48) = *v1420;
  *(v635 + 56) = 8;
  *(v635 + 64) = 0x403A000000000000;
  *(v635 + 72) = 10;
  v636 = swift_allocObject();
  *(v636 + 16) = xmmword_26B545100;
  *(v636 + 32) = 28;
  v637 = sub_26B470F10(v636);

  v1429 = 4;
  v1428 = 4;
  v638.value._object = 0x800000026B55FB00;
  v638.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v638, 0);
  v1424 = v1426;
  v1425 = v1427;
  v639 = sub_26B4CE5C8();
  v640 = sub_26B4D4400();
  *&v1234 = sub_26B4D4408();
  *(&v1234 + 1) = sub_26B4D4414();
  *&v1157 = v634;
  *(&v1157 + 1) = v635;
  *(&v1080 + 1) = v1329;
  *&v1080 = v1341;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55FAE0, v628, v630, v631, 0, 0, v1430, v1423 + 8496, v639 & 1, v640 & 1, v1080, v1157, v1234, v637, &v1429, &v1428, 0, 0, &v1424);
  v641 = swift_allocObject();
  *(v641 + 16) = xmmword_26B545100;
  v642 = swift_allocObject();
  *(v642 + 16) = xmmword_26B545100;
  *(v642 + 32) = 0xD00000000000001BLL;
  *(v642 + 40) = 0x800000026B55FB20;
  *(v641 + 32) = v642;
  *(v641 + 40) = 0;
  v643 = swift_allocObject();
  *(v643 + 16) = xmmword_26B545100;
  *(v643 + 32) = 0xD000000000000033;
  *(v643 + 40) = 0x800000026B55FB40;
  *(v643 + 48) = 0;
  v644 = swift_allocObject();
  *(v644 + 16) = xmmword_26B545100;
  *(v644 + 32) = 0xD000000000000028;
  *(v644 + 40) = 0x800000026B55FB80;
  *(v644 + 48) = 0;
  v1430[0] = 0;
  v645 = swift_allocObject();
  *(v645 + 16) = xmmword_26B5450C0;
  *(v645 + 32) = 134545921;
  v1319 = sub_26B470D98(v645);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1314 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1314 = MEMORY[0x277D84FA0];
  }

  v646 = swift_allocObject();
  *(v646 + 16) = xmmword_26B545120;
  *(v646 + 32) = 768;
  v647 = sub_26B470D98(v646);

  v648 = swift_allocObject();
  *(v648 + 16) = xmmword_26B5450D0;
  *(v648 + 32) = *v1420;
  *(v648 + 40) = 3;
  *(v648 + 48) = *v1420;
  *(v648 + 56) = 8;
  *(v648 + 64) = 0x403A000000000000;
  *(v648 + 72) = 10;
  v649 = swift_allocObject();
  *(v649 + 16) = xmmword_26B545100;
  *(v649 + 32) = 29;
  v650 = sub_26B470F10(v649);

  v1429 = 4;
  v1428 = 4;
  v651.value._object = 0x800000026B55FBD0;
  v651.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v651, 0);
  v1424 = v1426;
  v1425 = v1427;
  v652 = sub_26B4CE5C8();
  v653 = sub_26B4D4400();
  *&v1235 = sub_26B4D4408();
  *(&v1235 + 1) = sub_26B4D4414();
  *&v1158 = v647;
  *(&v1158 + 1) = v648;
  *(&v1081 + 1) = v1314;
  *&v1081 = v1319;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FBB0, v641, v643, v644, 0, 0, v1430, v1423 + 8680, v652 & 1, v653 & 1, v1081, v1158, v1235, v650, &v1429, &v1428, 0, 0, &v1424);
  v654 = swift_allocObject();
  *(v654 + 16) = xmmword_26B545100;
  v655 = swift_allocObject();
  *(v655 + 16) = xmmword_26B545100;
  *(v655 + 32) = 0xD00000000000001BLL;
  *(v655 + 40) = 0x800000026B55FBF0;
  *(v654 + 32) = v655;
  *(v654 + 40) = 0;
  v656 = swift_allocObject();
  *(v656 + 16) = xmmword_26B545100;
  *(v656 + 32) = 0xD000000000000033;
  *(v656 + 40) = 0x800000026B55FC10;
  *(v656 + 48) = 0;
  v657 = swift_allocObject();
  *(v657 + 16) = xmmword_26B545100;
  *(v657 + 32) = 0xD000000000000028;
  *(v657 + 40) = 0x800000026B55FB80;
  *(v657 + 48) = 0;
  v1430[0] = 0;
  v658 = swift_allocObject();
  *(v658 + 16) = xmmword_26B5450C0;
  *(v658 + 32) = 134545921;
  v1330 = sub_26B470D98(v658);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1320 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1320 = MEMORY[0x277D84FA0];
  }

  v659 = swift_allocObject();
  *(v659 + 16) = xmmword_26B545120;
  *(v659 + 32) = 768;
  v660 = sub_26B470D98(v659);

  v661 = swift_allocObject();
  *(v661 + 16) = xmmword_26B5450D0;
  *(v661 + 32) = *v1420;
  *(v661 + 40) = 3;
  *(v661 + 48) = *v1420;
  *(v661 + 56) = 8;
  *(v661 + 64) = 0x403A000000000000;
  *(v661 + 72) = 10;
  v662 = swift_allocObject();
  *(v662 + 16) = xmmword_26B545100;
  *(v662 + 32) = 29;
  v663 = sub_26B470F10(v662);

  v1429 = 4;
  v1428 = 4;
  v664.value._object = 0x800000026B55FC70;
  v664.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v664, 0);
  v1424 = v1426;
  v1425 = v1427;
  v665 = sub_26B4CE5C8();
  v666 = sub_26B4D4400();
  *&v1236 = sub_26B4D4408();
  *(&v1236 + 1) = sub_26B4D4414();
  *&v1159 = v660;
  *(&v1159 + 1) = v661;
  *(&v1082 + 1) = v1320;
  *&v1082 = v1330;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FC50, v654, v656, v657, 0, 0, v1430, v1423 + 8864, v665 & 1, v666 & 1, v1082, v1159, v1236, v663, &v1429, &v1428, 0, 0, &v1424);
  v667 = swift_allocObject();
  *(v667 + 16) = xmmword_26B545100;
  v668 = swift_allocObject();
  *(v668 + 16) = xmmword_26B545100;
  *(v668 + 32) = 0xD00000000000001BLL;
  *(v668 + 40) = 0x800000026B55FC90;
  *(v667 + 32) = v668;
  *(v667 + 40) = 0;
  v669 = swift_allocObject();
  *(v669 + 16) = xmmword_26B545100;
  *(v669 + 32) = 0xD00000000000002CLL;
  *(v669 + 40) = 0x800000026B55FCB0;
  *(v669 + 48) = 0;
  v670 = swift_allocObject();
  *(v670 + 16) = xmmword_26B545100;
  *(v670 + 32) = 0xD000000000000028;
  *(v670 + 40) = 0x800000026B55FB80;
  *(v670 + 48) = 0;
  v1430[0] = 1;
  v671 = swift_allocObject();
  *(v671 + 16) = xmmword_26B5450C0;
  *(v671 + 32) = 134545921;
  v1331 = sub_26B470D98(v671);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1321 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1321 = MEMORY[0x277D84FA0];
  }

  v672 = swift_allocObject();
  *(v672 + 16) = xmmword_26B545120;
  *(v672 + 32) = 768;
  v673 = sub_26B470D98(v672);

  v674 = swift_allocObject();
  *(v674 + 16) = xmmword_26B5450D0;
  *(v674 + 32) = *v1420;
  *(v674 + 40) = 3;
  *(v674 + 48) = *v1420;
  *(v674 + 56) = 8;
  *(v674 + 64) = 0x403A000000000000;
  *(v674 + 72) = 10;
  v675 = swift_allocObject();
  *(v675 + 16) = xmmword_26B545100;
  *(v675 + 32) = 29;
  v676 = sub_26B470F10(v675);

  v1429 = 4;
  v1428 = 4;
  v677.value._object = 0x800000026B55FD00;
  v677.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v677, 0);
  v1424 = v1426;
  v1425 = v1427;
  v678 = sub_26B4CE5C8();
  v679 = sub_26B4D4400();
  *&v1237 = sub_26B4D4408();
  *(&v1237 + 1) = sub_26B4D4414();
  *&v1160 = v673;
  *(&v1160 + 1) = v674;
  *(&v1083 + 1) = v1321;
  *&v1083 = v1331;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FCE0, v667, v669, v670, 0, 0, v1430, v1423 + 9048, v678 & 1, v679 & 1, v1083, v1160, v1237, v676, &v1429, &v1428, 0, 0, &v1424);
  v680 = swift_allocObject();
  *(v680 + 16) = xmmword_26B545100;
  v681 = swift_allocObject();
  *(v681 + 16) = xmmword_26B545100;
  *(v681 + 32) = 0xD00000000000001BLL;
  *(v681 + 40) = 0x800000026B55FD20;
  *(v680 + 32) = v681;
  *(v680 + 40) = 0;
  v682 = swift_allocObject();
  *(v682 + 16) = xmmword_26B545100;
  *(v682 + 32) = 0xD00000000000002BLL;
  *(v682 + 40) = 0x800000026B55FD40;
  *(v682 + 48) = 0;
  v683 = swift_allocObject();
  *(v683 + 16) = xmmword_26B545100;
  *(v683 + 32) = 0xD000000000000028;
  *(v683 + 40) = 0x800000026B55FB80;
  *(v683 + 48) = 0;
  v1430[0] = 1;
  v684 = swift_allocObject();
  *(v684 + 16) = xmmword_26B5450C0;
  *(v684 + 32) = 134545921;
  v1332 = sub_26B470D98(v684);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1322 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1322 = MEMORY[0x277D84FA0];
  }

  v685 = swift_allocObject();
  *(v685 + 16) = xmmword_26B545120;
  *(v685 + 32) = 768;
  v686 = sub_26B470D98(v685);

  v687 = swift_allocObject();
  *(v687 + 16) = xmmword_26B5450D0;
  *(v687 + 32) = *v1420;
  *(v687 + 40) = 3;
  *(v687 + 48) = *v1420;
  *(v687 + 56) = 8;
  *(v687 + 64) = 0x403A000000000000;
  *(v687 + 72) = 10;
  v688 = swift_allocObject();
  *(v688 + 16) = xmmword_26B545100;
  *(v688 + 32) = 29;
  v689 = sub_26B470F10(v688);

  v1429 = 4;
  v1428 = 4;
  v690.value._object = 0x800000026B55FD90;
  v690.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v690, 0);
  v1424 = v1426;
  v1425 = v1427;
  v691 = sub_26B4CE5C8();
  v692 = sub_26B4D4400();
  *&v1238 = sub_26B4D4408();
  *(&v1238 + 1) = sub_26B4D4414();
  *&v1161 = v686;
  *(&v1161 + 1) = v687;
  *(&v1084 + 1) = v1322;
  *&v1084 = v1332;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FD70, v680, v682, v683, 0, 0, v1430, v1423 + 9232, v691 & 1, v692 & 1, v1084, v1161, v1238, v689, &v1429, &v1428, 0, 0, &v1424);
  v693 = swift_allocObject();
  *(v693 + 16) = xmmword_26B545100;
  v694 = swift_allocObject();
  *(v694 + 16) = xmmword_26B545100;
  *(v694 + 32) = 0x776F64206D6F6F5ALL;
  *(v694 + 40) = 0xE90000000000006ELL;
  *(v693 + 32) = v694;
  *(v693 + 40) = 0;
  v695 = swift_allocObject();
  *(v695 + 16) = xmmword_26B545100;
  *(v695 + 32) = 0xD000000000000013;
  *(v695 + 40) = 0x800000026B55FDB0;
  *(v695 + 48) = 0;
  v696 = swift_allocObject();
  *(v696 + 16) = xmmword_26B545100;
  *(v696 + 32) = 0xD000000000000028;
  *(v696 + 40) = 0x800000026B55FB80;
  *(v696 + 48) = 0;
  v1430[0] = 0;
  v697 = swift_allocObject();
  *(v697 + 16) = xmmword_26B5450C0;
  *(v697 + 32) = 134545921;
  v1333 = sub_26B470D98(v697);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1323 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1323 = MEMORY[0x277D84FA0];
  }

  v698 = swift_allocObject();
  *(v698 + 16) = xmmword_26B545120;
  *(v698 + 32) = 768;
  v699 = sub_26B470D98(v698);

  v700 = swift_allocObject();
  *(v700 + 16) = xmmword_26B5450D0;
  *(v700 + 32) = *v1420;
  *(v700 + 40) = 3;
  *(v700 + 48) = *v1420;
  *(v700 + 56) = 8;
  *(v700 + 64) = 0x403A000000000000;
  *(v700 + 72) = 10;
  v701 = swift_allocObject();
  *(v701 + 16) = xmmword_26B545100;
  *(v701 + 32) = 29;
  v702 = sub_26B470F10(v701);

  v1429 = 4;
  v1428 = 4;
  v703.value._countAndFlagsBits = 0x446D6F6F5A6E6170;
  v703.value._object = 0xEB000000006E776FLL;
  Action.init(_:mac:)(v703, 0);
  v1424 = v1426;
  v1425 = v1427;
  v704 = sub_26B4CE5C8();
  v705 = sub_26B4D4400();
  *&v1239 = sub_26B4D4408();
  *(&v1239 + 1) = sub_26B4D4414();
  *&v1162 = v699;
  *(&v1162 + 1) = v700;
  *(&v1085 + 1) = v1323;
  *&v1085 = v1333;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FDD0, v693, v695, v696, 0, 0, v1430, v1423 + 9416, v704 & 1, v705 & 1, v1085, v1162, v1239, v702, &v1429, &v1428, 0, 0, &v1424);
  v706 = swift_allocObject();
  *(v706 + 16) = xmmword_26B545100;
  v707 = swift_allocObject();
  *(v707 + 16) = xmmword_26B545100;
  *(v707 + 32) = 0x7075206D6F6F5ALL;
  *(v707 + 40) = 0xE700000000000000;
  *(v706 + 32) = v707;
  *(v706 + 40) = 0;
  v708 = swift_allocObject();
  *(v708 + 16) = xmmword_26B545100;
  *(v708 + 32) = 0xD000000000000011;
  *(v708 + 40) = 0x800000026B55FDF0;
  *(v708 + 48) = 0;
  v709 = swift_allocObject();
  *(v709 + 16) = xmmword_26B545100;
  *(v709 + 32) = 0xD000000000000028;
  *(v709 + 40) = 0x800000026B55FB80;
  *(v709 + 48) = 0;
  v1430[0] = 0;
  v710 = swift_allocObject();
  *(v710 + 16) = xmmword_26B5450C0;
  *(v710 + 32) = 134545921;
  v1334 = sub_26B470D98(v710);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1324 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1324 = MEMORY[0x277D84FA0];
  }

  v711 = swift_allocObject();
  *(v711 + 16) = xmmword_26B545120;
  *(v711 + 32) = 768;
  v712 = sub_26B470D98(v711);

  v713 = swift_allocObject();
  *(v713 + 16) = xmmword_26B5450D0;
  *(v713 + 32) = *v1420;
  *(v713 + 40) = 3;
  *(v713 + 48) = *v1420;
  *(v713 + 56) = 8;
  *(v713 + 64) = 0x403A000000000000;
  *(v713 + 72) = 10;
  v714 = swift_allocObject();
  *(v714 + 16) = xmmword_26B545100;
  *(v714 + 32) = 29;
  v715 = sub_26B470F10(v714);

  v1429 = 4;
  v1428 = 4;
  v716.value._countAndFlagsBits = 0x556D6F6F5A6E6170;
  v716.value._object = 0xE900000000000070;
  Action.init(_:mac:)(v716, 0);
  v1424 = v1426;
  v1425 = v1427;
  v717 = sub_26B4CE5C8();
  v718 = sub_26B4D4400();
  *&v1240 = sub_26B4D4408();
  *(&v1240 + 1) = sub_26B4D4414();
  *&v1163 = v712;
  *(&v1163 + 1) = v713;
  *(&v1086 + 1) = v1324;
  *&v1086 = v1334;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000010, 0x800000026B55FE10, v706, v708, v709, 0, 0, v1430, v1423 + 9600, v717 & 1, v718 & 1, v1086, v1163, v1240, v715, &v1429, &v1428, 0, 0, &v1424);
  v719 = swift_allocObject();
  *(v719 + 16) = xmmword_26B545100;
  v720 = swift_allocObject();
  *(v720 + 16) = xmmword_26B545100;
  *(v720 + 32) = 0x66656C206D6F6F5ALL;
  *(v720 + 40) = 0xE900000000000074;
  *(v719 + 32) = v720;
  *(v719 + 40) = 0;
  v721 = swift_allocObject();
  *(v721 + 16) = xmmword_26B545100;
  *(v721 + 32) = 0xD000000000000013;
  *(v721 + 40) = 0x800000026B55FE30;
  *(v721 + 48) = 0;
  v722 = swift_allocObject();
  *(v722 + 16) = xmmword_26B545100;
  *(v722 + 32) = 0xD000000000000028;
  *(v722 + 40) = 0x800000026B55FB80;
  *(v722 + 48) = 0;
  v1430[0] = 0;
  v723 = swift_allocObject();
  *(v723 + 16) = xmmword_26B5450C0;
  *(v723 + 32) = 134545921;
  v1335 = sub_26B470D98(v723);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1325 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1325 = MEMORY[0x277D84FA0];
  }

  v724 = swift_allocObject();
  *(v724 + 16) = xmmword_26B545120;
  *(v724 + 32) = 768;
  v725 = sub_26B470D98(v724);

  v726 = swift_allocObject();
  *(v726 + 16) = xmmword_26B5450D0;
  *(v726 + 32) = *v1420;
  *(v726 + 40) = 3;
  *(v726 + 48) = *v1420;
  *(v726 + 56) = 8;
  *(v726 + 64) = 0x403A000000000000;
  *(v726 + 72) = 10;
  v727 = swift_allocObject();
  *(v727 + 16) = xmmword_26B545100;
  *(v727 + 32) = 29;
  v728 = sub_26B470F10(v727);

  v1429 = 4;
  v1428 = 4;
  v729.value._countAndFlagsBits = 0x4C6D6F6F5A6E6170;
  v729.value._object = 0xEB00000000746665;
  Action.init(_:mac:)(v729, 0);
  v1424 = v1426;
  v1425 = v1427;
  v730 = sub_26B4CE5C8();
  v731 = sub_26B4D4400();
  *&v1241 = sub_26B4D4408();
  *(&v1241 + 1) = sub_26B4D4414();
  *&v1164 = v725;
  *(&v1164 + 1) = v726;
  *(&v1087 + 1) = v1325;
  *&v1087 = v1335;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FE50, v719, v721, v722, 0, 0, v1430, v1423 + 9784, v730 & 1, v731 & 1, v1087, v1164, v1241, v728, &v1429, &v1428, 0, 0, &v1424);
  v732 = swift_allocObject();
  *(v732 + 16) = xmmword_26B545100;
  v733 = swift_allocObject();
  *(v733 + 16) = xmmword_26B545100;
  *(v733 + 32) = 0x676972206D6F6F5ALL;
  *(v733 + 40) = 0xEA00000000007468;
  *(v732 + 32) = v733;
  *(v732 + 40) = 0;
  v734 = swift_allocObject();
  *(v734 + 16) = xmmword_26B545100;
  *(v734 + 32) = 0xD000000000000014;
  *(v734 + 40) = 0x800000026B55FE70;
  *(v734 + 48) = 0;
  v735 = swift_allocObject();
  *(v735 + 16) = xmmword_26B545100;
  *(v735 + 32) = 0xD000000000000028;
  *(v735 + 40) = 0x800000026B55FB80;
  *(v735 + 48) = 0;
  v1430[0] = 0;
  v736 = swift_allocObject();
  *(v736 + 16) = xmmword_26B5450C0;
  *(v736 + 32) = 134545921;
  v1418 = sub_26B470D98(v736);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1351 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1351 = MEMORY[0x277D84FA0];
  }

  v737 = swift_allocObject();
  *(v737 + 16) = xmmword_26B545120;
  *(v737 + 32) = 768;
  v738 = sub_26B470D98(v737);

  v739 = swift_allocObject();
  *(v739 + 16) = xmmword_26B5450D0;
  *(v739 + 32) = *v1420;
  *(v739 + 40) = 3;
  *(v739 + 48) = *v1420;
  *(v739 + 56) = 8;
  *(v739 + 64) = 0x403A000000000000;
  *(v739 + 72) = 10;
  v740 = swift_allocObject();
  *(v740 + 16) = xmmword_26B545100;
  *(v740 + 32) = 29;
  v741 = sub_26B470F10(v740);

  v1429 = 4;
  v1428 = 4;
  v742.value._countAndFlagsBits = 0x526D6F6F5A6E6170;
  v742.value._object = 0xEC00000074686769;
  Action.init(_:mac:)(v742, 0);
  v1424 = v1426;
  v1425 = v1427;
  v743 = sub_26B4CE5C8();
  v744 = sub_26B4D4400();
  *&v1242 = sub_26B4D4408();
  *(&v1242 + 1) = sub_26B4D4414();
  *&v1165 = v738;
  *(&v1165 + 1) = v739;
  *(&v1088 + 1) = v1351;
  *&v1088 = v1418;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55FE90, v732, v734, v735, 0, 0, v1430, v1423 + 9968, v743 & 1, v744 & 1, v1088, v1165, v1242, v741, &v1429, &v1428, 0, 0, &v1424);
  v745 = swift_allocObject();
  *(v745 + 16) = xmmword_26B545100;
  v746 = swift_allocObject();
  *(v746 + 16) = xmmword_26B545100;
  *(v746 + 32) = 0xD000000000000012;
  *(v746 + 40) = 0x800000026B55FEB0;
  *(v745 + 32) = v746;
  *(v745 + 40) = 0;
  v747 = swift_allocObject();
  *(v747 + 16) = xmmword_26B545100;
  *(v747 + 32) = 0xD00000000000002ALL;
  *(v747 + 40) = 0x800000026B55FED0;
  *(v747 + 48) = 0;
  v748 = swift_allocObject();
  *(v748 + 16) = xmmword_26B545100;
  *(v748 + 32) = 0xD00000000000003DLL;
  *(v748 + 40) = 0x800000026B55FF00;
  *(v748 + 48) = 0;
  v1430[0] = 0;
  v749 = swift_allocObject();
  *(v749 + 16) = xmmword_26B5450D0;
  *(v749 + 32) = 513;
  *(v749 + 34) = 8;
  v1419 = sub_26B470D98(v749);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1352 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1352 = MEMORY[0x277D84FA0];
  }

  v750 = swift_allocObject();
  *(v750 + 16) = xmmword_26B5450D0;
  *(v750 + 32) = 768;
  *(v750 + 34) = 5;
  v751 = sub_26B470D98(v750);

  v752 = swift_allocObject();
  *(v752 + 16) = xmmword_26B545120;
  *(v752 + 32) = *v1420;
  *(v752 + 40) = 3;
  *(v752 + 48) = 0x403A000000000000;
  *(v752 + 56) = 10;
  v753 = swift_allocObject();
  *(v753 + 16) = xmmword_26B545100;
  *(v753 + 32) = 23;
  v754 = sub_26B470F10(v753);

  v1429 = 4;
  v1428 = 4;
  v755.value._object = 0x800000026B55FF60;
  v755.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v755, 0);
  v1424 = v1426;
  v1425 = v1427;
  v756 = sub_26B4CE5C8();
  v757 = sub_26B4D4400();
  *&v1243 = sub_26B4D4408();
  *(&v1243 + 1) = sub_26B4D4414();
  *&v1166 = v751;
  *(&v1166 + 1) = v752;
  *(&v1089 + 1) = v1352;
  *&v1089 = v1419;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FF40, v745, v747, v748, 0, 0, v1430, v1423 + 10152, v756 & 1, v757 & 1, v1089, v1166, v1243, v754, &v1429, &v1428, 0, 0, &v1424);
  v758 = swift_allocObject();
  *(v758 + 16) = xmmword_26B545100;
  v759 = swift_allocObject();
  *(v759 + 16) = xmmword_26B545120;
  *(v759 + 32) = 0xD000000000000012;
  *(v759 + 40) = 0x800000026B55FF80;
  *(v759 + 48) = 0xD000000000000012;
  *(v759 + 56) = 0x800000026B55FFA0;
  *(v758 + 32) = v759;
  *(v758 + 40) = 0;
  v760 = swift_allocObject();
  *(v760 + 16) = xmmword_26B545100;
  *(v760 + 32) = 0xD00000000000001FLL;
  *(v760 + 40) = 0x800000026B55FFC0;
  *(v760 + 48) = 0;
  v761 = swift_allocObject();
  *(v761 + 16) = xmmword_26B545100;
  *(v761 + 32) = 0xD00000000000002DLL;
  *(v761 + 40) = 0x800000026B55EF40;
  *(v761 + 48) = 0;
  v1430[0] = 0;
  v762 = swift_allocObject();
  *(v762 + 16) = xmmword_26B545100;
  *(v762 + 32) = 0;
  v1353 = sub_26B470D98(v762);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1342 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1342 = MEMORY[0x277D84FA0];
  }

  v763 = swift_allocObject();
  *(v763 + 16) = xmmword_26B545140;
  *(v763 + 32) = 84083201;
  *(v763 + 36) = 8;
  v764 = sub_26B470D98(v763);

  v765 = swift_allocObject();
  *(v765 + 16) = xmmword_26B545100;
  *(v765 + 32) = *v1420;
  *(v765 + 40) = 1;
  v766 = swift_allocObject();
  *(v766 + 16) = xmmword_26B545100;
  *(v766 + 32) = 28;
  v767 = sub_26B470F10(v766);

  v1429 = 4;
  v1428 = 4;
  v768.value._object = 0xEC0000006E497463;
  v768.value._countAndFlagsBits = 0x617265746E496F76;
  Action.init(_:mac:)(v768, 0);
  v1424 = v1426;
  v1425 = v1427;
  v769 = sub_26B4CE5C8();
  v770 = sub_26B4D4400();
  *&v1244 = sub_26B4D4408();
  *(&v1244 + 1) = sub_26B4D4414();
  *&v1167 = v764;
  *(&v1167 + 1) = v765;
  *(&v1090 + 1) = v1342;
  *&v1090 = v1353;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FFE0, v758, v760, v761, 0, 0, v1430, v1423 + 10336, v769 & 1, v770 & 1, v1090, v1167, v1244, v767, &v1429, &v1428, 0, 0, &v1424);
  v771 = swift_allocObject();
  *(v771 + 16) = xmmword_26B545100;
  v772 = swift_allocObject();
  *(v772 + 16) = xmmword_26B5450D0;
  *(v772 + 32) = 0xD00000000000001ALL;
  *(v772 + 40) = 0x800000026B560000;
  *(v772 + 48) = 0xD000000000000017;
  *(v772 + 56) = 0x800000026B560020;
  *(v772 + 64) = 0xD000000000000013;
  *(v772 + 72) = 0x800000026B560040;
  *(v771 + 32) = v772;
  *(v771 + 40) = 0;
  v773 = swift_allocObject();
  *(v773 + 16) = xmmword_26B545100;
  *(v773 + 32) = 0xD00000000000001ELL;
  *(v773 + 40) = 0x800000026B560060;
  *(v773 + 48) = 0;
  v774 = swift_allocObject();
  *(v774 + 16) = xmmword_26B545100;
  *(v774 + 32) = 0xD00000000000002DLL;
  *(v774 + 40) = 0x800000026B55EF40;
  *(v774 + 48) = 0;
  v1430[0] = 0;
  v775 = swift_allocObject();
  *(v775 + 16) = xmmword_26B545100;
  *(v775 + 32) = 0;
  v1377 = sub_26B470D98(v775);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1354 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1354 = MEMORY[0x277D84FA0];
  }

  v776 = swift_allocObject();
  *(v776 + 16) = xmmword_26B545140;
  *(v776 + 32) = 84083201;
  *(v776 + 36) = 8;
  v777 = sub_26B470D98(v776);

  v778 = swift_allocObject();
  *(v778 + 16) = xmmword_26B545100;
  *(v778 + 32) = *v1420;
  *(v778 + 40) = 1;
  v779 = swift_allocObject();
  *(v779 + 16) = xmmword_26B545100;
  *(v779 + 32) = 28;
  v780 = sub_26B470F10(v779);

  v1429 = 4;
  v1428 = 4;
  v781.value._object = 0xED000074754F7463;
  v781.value._countAndFlagsBits = 0x617265746E496F76;
  Action.init(_:mac:)(v781, 0);
  v1424 = v1426;
  v1425 = v1427;
  v782 = sub_26B4CE5C8();
  v783 = sub_26B4D4400();
  *&v1245 = sub_26B4D4408();
  *(&v1245 + 1) = sub_26B4D4414();
  *&v1168 = v777;
  *(&v1168 + 1) = v778;
  *(&v1091 + 1) = v1354;
  *&v1091 = v1377;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B560080, v771, v773, v774, 0, 0, v1430, v1423 + 10520, v782 & 1, v783 & 1, v1091, v1168, v1245, v780, &v1429, &v1428, 0, 0, &v1424);
  v784 = swift_allocObject();
  *(v784 + 16) = xmmword_26B545100;
  v785 = swift_allocObject();
  *(v785 + 16) = xmmword_26B545100;
  *(v785 + 32) = 0xD000000000000011;
  *(v785 + 40) = 0x800000026B5600A0;
  *(v784 + 32) = v785;
  *(v784 + 40) = 0;
  v786 = swift_allocObject();
  *(v786 + 16) = xmmword_26B545100;
  *(v786 + 32) = 0xD000000000000016;
  *(v786 + 40) = 0x800000026B5600C0;
  *(v786 + 48) = 0;
  v787 = swift_allocObject();
  *(v787 + 16) = xmmword_26B545100;
  *(v787 + 32) = 0xD00000000000002DLL;
  *(v787 + 40) = 0x800000026B55EF40;
  *(v787 + 48) = 0;
  v1430[0] = 0;
  v788 = swift_allocObject();
  *(v788 + 16) = xmmword_26B545100;
  *(v788 + 32) = 0;
  v1378 = sub_26B470D98(v788);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1355 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1355 = MEMORY[0x277D84FA0];
  }

  v789 = swift_allocObject();
  *(v789 + 16) = xmmword_26B545140;
  *(v789 + 32) = 84083201;
  *(v789 + 36) = 8;
  v790 = sub_26B470D98(v789);

  v791 = swift_allocObject();
  *(v791 + 16) = xmmword_26B545100;
  *(v791 + 32) = *v1420;
  *(v791 + 40) = 1;
  v792 = swift_allocObject();
  *(v792 + 16) = xmmword_26B545100;
  *(v792 + 32) = 28;
  v793 = sub_26B470F10(v792);

  v1429 = 4;
  v1428 = 4;
  v794.value._object = 0x800000026B560100;
  v794.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v794, 0);
  v1424 = v1426;
  v1425 = v1427;
  v795 = sub_26B4CE5C8();
  v796 = sub_26B4D4400();
  *&v1246 = sub_26B4D4408();
  *(&v1246 + 1) = sub_26B4D4414();
  *&v1169 = v790;
  *(&v1169 + 1) = v791;
  *(&v1092 + 1) = v1355;
  *&v1092 = v1378;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5600E0, v784, v786, v787, 0, 0, v1430, v1423 + 10704, v795 & 1, v796 & 1, v1092, v1169, v1246, v793, &v1429, &v1428, 0, 0, &v1424);
  v797 = swift_allocObject();
  *(v797 + 16) = xmmword_26B545100;
  v798 = swift_allocObject();
  *(v798 + 16) = xmmword_26B545100;
  *(v798 + 32) = 0xD000000000000016;
  *(v798 + 40) = 0x800000026B560120;
  *(v797 + 32) = v798;
  *(v797 + 40) = 0;
  v799 = swift_allocObject();
  *(v799 + 16) = xmmword_26B545100;
  *(v799 + 32) = 0xD00000000000001DLL;
  *(v799 + 40) = 0x800000026B560140;
  *(v799 + 48) = 0;
  v800 = swift_allocObject();
  *(v800 + 16) = xmmword_26B545100;
  *(v800 + 32) = 0xD00000000000002DLL;
  *(v800 + 40) = 0x800000026B55EF40;
  *(v800 + 48) = 0;
  v1430[0] = 0;
  v801 = swift_allocObject();
  *(v801 + 16) = xmmword_26B545100;
  *(v801 + 32) = 0;
  v1379 = sub_26B470D98(v801);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1356 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1356 = MEMORY[0x277D84FA0];
  }

  v802 = swift_allocObject();
  *(v802 + 16) = xmmword_26B545140;
  *(v802 + 32) = 84083201;
  *(v802 + 36) = 8;
  v803 = sub_26B470D98(v802);

  v804 = swift_allocObject();
  *(v804 + 16) = xmmword_26B545100;
  *(v804 + 32) = *v1420;
  *(v804 + 40) = 1;
  v805 = swift_allocObject();
  *(v805 + 16) = xmmword_26B545100;
  *(v805 + 32) = 28;
  v806 = sub_26B470F10(v805);

  v1429 = 4;
  v1428 = 4;
  v807.value._object = 0x800000026B560180;
  v807.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v807, 0);
  v1424 = v1426;
  v1425 = v1427;
  v808 = sub_26B4CE5C8();
  v809 = sub_26B4D4400();
  *&v1247 = sub_26B4D4408();
  *(&v1247 + 1) = sub_26B4D4414();
  *&v1170 = v803;
  *(&v1170 + 1) = v804;
  *(&v1093 + 1) = v1356;
  *&v1093 = v1379;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560160, v797, v799, v800, 0, 0, v1430, v1423 + 10888, v808 & 1, v809 & 1, v1093, v1170, v1247, v806, &v1429, &v1428, 0, 0, &v1424);
  v810 = swift_allocObject();
  *(v810 + 16) = xmmword_26B545100;
  v811 = swift_allocObject();
  *(v811 + 16) = xmmword_26B545100;
  *(v811 + 32) = 0xD000000000000012;
  *(v811 + 40) = 0x800000026B5601A0;
  *(v810 + 32) = v811;
  *(v810 + 40) = 0;
  v812 = swift_allocObject();
  *(v812 + 16) = xmmword_26B545100;
  *(v812 + 32) = 0xD000000000000017;
  *(v812 + 40) = 0x800000026B5601C0;
  *(v812 + 48) = 0;
  v813 = swift_allocObject();
  *(v813 + 16) = xmmword_26B545100;
  *(v813 + 32) = 0xD00000000000002DLL;
  *(v813 + 40) = 0x800000026B55EF40;
  *(v813 + 48) = 0;
  v1430[0] = 0;
  v814 = swift_allocObject();
  *(v814 + 16) = xmmword_26B545100;
  *(v814 + 32) = 0;
  v1380 = sub_26B470D98(v814);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1357 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1357 = MEMORY[0x277D84FA0];
  }

  v815 = swift_allocObject();
  *(v815 + 16) = xmmword_26B545140;
  *(v815 + 32) = 84083201;
  *(v815 + 36) = 8;
  v816 = sub_26B470D98(v815);

  v817 = swift_allocObject();
  *(v817 + 16) = xmmword_26B545100;
  *(v817 + 32) = *v1420;
  *(v817 + 40) = 1;
  v818 = swift_allocObject();
  *(v818 + 16) = xmmword_26B545100;
  *(v818 + 32) = 28;
  v819 = sub_26B470F10(v818);

  v1429 = 4;
  v1428 = 4;
  v820.value._object = 0x800000026B560200;
  v820.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v820, 0);
  v1424 = v1426;
  v1425 = v1427;
  v821 = sub_26B4CE5C8();
  v822 = sub_26B4D4400();
  *&v1248 = sub_26B4D4408();
  *(&v1248 + 1) = sub_26B4D4414();
  *&v1171 = v816;
  *(&v1171 + 1) = v817;
  *(&v1094 + 1) = v1357;
  *&v1094 = v1380;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5601E0, v810, v812, v813, 0, 0, v1430, v1423 + 11072, v821 & 1, v822 & 1, v1094, v1171, v1248, v819, &v1429, &v1428, 0, 0, &v1424);
  v823 = swift_allocObject();
  *(v823 + 16) = xmmword_26B545100;
  v824 = swift_allocObject();
  *(v824 + 16) = xmmword_26B545100;
  *(v824 + 32) = 0xD000000000000019;
  *(v824 + 40) = 0x800000026B560220;
  *(v823 + 32) = v824;
  *(v823 + 40) = 0;
  v825 = swift_allocObject();
  *(v825 + 16) = xmmword_26B545100;
  *(v825 + 32) = 0xD00000000000002ELL;
  *(v825 + 40) = 0x800000026B560240;
  *(v825 + 48) = 0;
  v826 = swift_allocObject();
  *(v826 + 16) = xmmword_26B545100;
  *(v826 + 32) = 0xD00000000000002DLL;
  *(v826 + 40) = 0x800000026B55EF40;
  *(v826 + 48) = 0;
  v1430[0] = 0;
  v827 = swift_allocObject();
  *(v827 + 16) = xmmword_26B545100;
  *(v827 + 32) = 0;
  v1381 = sub_26B470D98(v827);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1358 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1358 = MEMORY[0x277D84FA0];
  }

  v828 = swift_allocObject();
  *(v828 + 16) = xmmword_26B545140;
  *(v828 + 32) = 84083201;
  *(v828 + 36) = 8;
  v829 = sub_26B470D98(v828);

  v830 = swift_allocObject();
  *(v830 + 16) = xmmword_26B545100;
  *(v830 + 32) = *v1420;
  *(v830 + 40) = 1;
  v831 = swift_allocObject();
  *(v831 + 16) = xmmword_26B545100;
  *(v831 + 32) = 28;
  v832 = sub_26B470F10(v831);

  v1429 = 4;
  v1428 = 4;
  v833.value._object = 0x800000026B560290;
  v833.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v833, 0);
  v1424 = v1426;
  v1425 = v1427;
  v834 = sub_26B4CE5C8();
  v835 = sub_26B4D4400();
  *&v1249 = sub_26B4D4408();
  *(&v1249 + 1) = sub_26B4D4414();
  *&v1172 = v829;
  *(&v1172 + 1) = v830;
  *(&v1095 + 1) = v1358;
  *&v1095 = v1381;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560270, v823, v825, v826, 0, 0, v1430, v1423 + 11256, v834 & 1, v835 & 1, v1095, v1172, v1249, v832, &v1429, &v1428, 0, 0, &v1424);
  v836 = swift_allocObject();
  *(v836 + 16) = xmmword_26B545100;
  v837 = swift_allocObject();
  *(v837 + 16) = xmmword_26B545100;
  *(v837 + 32) = 0xD00000000000001BLL;
  *(v837 + 40) = 0x800000026B5602B0;
  *(v836 + 32) = v837;
  *(v836 + 40) = 0;
  v838 = swift_allocObject();
  *(v838 + 16) = xmmword_26B545100;
  *(v838 + 32) = 0xD00000000000001CLL;
  *(v838 + 40) = 0x800000026B5602D0;
  *(v838 + 48) = 0;
  v839 = swift_allocObject();
  *(v839 + 16) = xmmword_26B545100;
  *(v839 + 32) = 0xD00000000000002DLL;
  *(v839 + 40) = 0x800000026B55EF40;
  *(v839 + 48) = 0;
  v1430[0] = 0;
  v840 = swift_allocObject();
  *(v840 + 16) = xmmword_26B545100;
  *(v840 + 32) = 0;
  v1382 = sub_26B470D98(v840);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1359 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1359 = MEMORY[0x277D84FA0];
  }

  v841 = swift_allocObject();
  *(v841 + 16) = xmmword_26B545140;
  *(v841 + 32) = 84083201;
  *(v841 + 36) = 8;
  v842 = sub_26B470D98(v841);

  v843 = swift_allocObject();
  *(v843 + 16) = xmmword_26B545100;
  *(v843 + 32) = *v1420;
  *(v843 + 40) = 1;
  v844 = swift_allocObject();
  *(v844 + 16) = xmmword_26B545100;
  *(v844 + 32) = 28;
  v845 = sub_26B470F10(v844);

  v1429 = 4;
  v1428 = 4;
  v846.value._object = 0x800000026B560310;
  v846.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v846, 0);
  v1424 = v1426;
  v1425 = v1427;
  v847 = sub_26B4CE5C8();
  v848 = sub_26B4D4400();
  *&v1250 = sub_26B4D4408();
  *(&v1250 + 1) = sub_26B4D4414();
  *&v1173 = v842;
  *(&v1173 + 1) = v843;
  *(&v1096 + 1) = v1359;
  *&v1096 = v1382;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B5602F0, v836, v838, v839, 0, 0, v1430, v1423 + 11440, v847 & 1, v848 & 1, v1096, v1173, v1250, v845, &v1429, &v1428, 0, 0, &v1424);
  v849 = swift_allocObject();
  *(v849 + 16) = xmmword_26B545100;
  v850 = swift_allocObject();
  *(v850 + 16) = xmmword_26B545100;
  *(v850 + 32) = 0x65764F6563696F56;
  *(v850 + 40) = 0xEF726F746F722072;
  *(v849 + 32) = v850;
  *(v849 + 40) = 0;
  v851 = swift_allocObject();
  *(v851 + 16) = xmmword_26B545100;
  *(v851 + 32) = 0xD000000000000019;
  *(v851 + 40) = 0x800000026B560330;
  *(v851 + 48) = 0;
  v852 = swift_allocObject();
  *(v852 + 16) = xmmword_26B545100;
  *(v852 + 32) = 0xD00000000000002DLL;
  *(v852 + 40) = 0x800000026B55EF40;
  *(v852 + 48) = 0;
  v1430[0] = 0;
  v853 = swift_allocObject();
  *(v853 + 16) = xmmword_26B545100;
  *(v853 + 32) = 0;
  v1383 = sub_26B470D98(v853);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1360 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1360 = MEMORY[0x277D84FA0];
  }

  v854 = swift_allocObject();
  *(v854 + 16) = xmmword_26B545140;
  *(v854 + 32) = 84083201;
  *(v854 + 36) = 8;
  v855 = sub_26B470D98(v854);

  v856 = swift_allocObject();
  *(v856 + 16) = xmmword_26B545100;
  *(v856 + 32) = *v1420;
  *(v856 + 40) = 1;
  v857 = swift_allocObject();
  *(v857 + 16) = xmmword_26B545100;
  *(v857 + 32) = 28;
  v858 = sub_26B470F10(v857);

  v1429 = 4;
  v1428 = 4;
  v859.value._countAndFlagsBits = 0x6F526E65704F6F76;
  v859.value._object = 0xEB00000000726F74;
  Action.init(_:mac:)(v859, 0);
  v1424 = v1426;
  v1425 = v1427;
  v860 = sub_26B4CE5C8();
  v861 = sub_26B4D4400();
  *&v1251 = sub_26B4D4408();
  *(&v1251 + 1) = sub_26B4D4414();
  *&v1174 = v855;
  *(&v1174 + 1) = v856;
  *(&v1097 + 1) = v1360;
  *&v1097 = v1383;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B560350, v849, v851, v852, 0, 0, v1430, v1423 + 11624, v860 & 1, v861 & 1, v1097, v1174, v1251, v858, &v1429, &v1428, 0, 0, &v1424);
  v862 = swift_allocObject();
  *(v862 + 16) = xmmword_26B545100;
  v863 = swift_allocObject();
  *(v863 + 16) = xmmword_26B545100;
  *(v863 + 32) = 0xD000000000000016;
  *(v863 + 40) = 0x800000026B560370;
  *(v862 + 32) = v863;
  *(v862 + 40) = 0;
  v864 = swift_allocObject();
  *(v864 + 16) = xmmword_26B545100;
  *(v864 + 32) = 0xD000000000000016;
  *(v864 + 40) = 0x800000026B560390;
  *(v864 + 48) = 0;
  v865 = swift_allocObject();
  *(v865 + 16) = xmmword_26B545100;
  *(v865 + 32) = 0xD00000000000002DLL;
  *(v865 + 40) = 0x800000026B55EF40;
  *(v865 + 48) = 0;
  v1430[0] = 0;
  v866 = swift_allocObject();
  *(v866 + 16) = xmmword_26B545100;
  *(v866 + 32) = 0;
  v1384 = sub_26B470D98(v866);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1361 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1361 = MEMORY[0x277D84FA0];
  }

  v867 = swift_allocObject();
  *(v867 + 16) = xmmword_26B545140;
  *(v867 + 32) = 84083201;
  *(v867 + 36) = 8;
  v868 = sub_26B470D98(v867);

  v869 = swift_allocObject();
  *(v869 + 16) = xmmword_26B545100;
  *(v869 + 32) = *v1420;
  *(v869 + 40) = 1;
  v870 = swift_allocObject();
  *(v870 + 16) = xmmword_26B545100;
  *(v870 + 32) = 28;
  v871 = sub_26B470F10(v870);

  v1429 = 4;
  v1428 = 4;
  v872.value._object = 0x800000026B5603D0;
  v872.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v872, 0);
  v1424 = v1426;
  v1425 = v1427;
  v873 = sub_26B4CE5C8();
  v874 = sub_26B4D4400();
  *&v1252 = sub_26B4D4408();
  *(&v1252 + 1) = sub_26B4D4414();
  *&v1175 = v868;
  *(&v1175 + 1) = v869;
  *(&v1098 + 1) = v1361;
  *&v1098 = v1384;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5603B0, v862, v864, v865, 0, 0, v1430, v1423 + 11808, v873 & 1, v874 & 1, v1098, v1175, v1252, v871, &v1429, &v1428, 0, 0, &v1424);
  v875 = swift_allocObject();
  *(v875 + 16) = xmmword_26B545100;
  v876 = swift_allocObject();
  *(v876 + 16) = xmmword_26B545100;
  *(v876 + 32) = 0xD00000000000001ALL;
  *(v876 + 40) = 0x800000026B5603F0;
  *(v875 + 32) = v876;
  *(v875 + 40) = 0;
  v877 = swift_allocObject();
  *(v877 + 16) = xmmword_26B545100;
  *(v877 + 32) = 0xD00000000000001ALL;
  *(v877 + 40) = 0x800000026B560410;
  *(v877 + 48) = 0;
  v878 = swift_allocObject();
  *(v878 + 16) = xmmword_26B545100;
  *(v878 + 32) = 0xD00000000000002DLL;
  *(v878 + 40) = 0x800000026B55EF40;
  *(v878 + 48) = 0;
  v1430[0] = 0;
  v879 = swift_allocObject();
  *(v879 + 16) = xmmword_26B545100;
  *(v879 + 32) = 0;
  v1385 = sub_26B470D98(v879);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1362 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1362 = MEMORY[0x277D84FA0];
  }

  v880 = swift_allocObject();
  *(v880 + 16) = xmmword_26B545140;
  *(v880 + 32) = 84083201;
  *(v880 + 36) = 8;
  v881 = sub_26B470D98(v880);

  v882 = swift_allocObject();
  *(v882 + 16) = xmmword_26B545100;
  *(v882 + 32) = *v1420;
  *(v882 + 40) = 1;
  v883 = swift_allocObject();
  *(v883 + 16) = xmmword_26B545100;
  *(v883 + 32) = 28;
  v884 = sub_26B470F10(v883);

  v1429 = 4;
  v1428 = 4;
  v885.value._object = 0x800000026B560450;
  v885.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v885, 0);
  v1424 = v1426;
  v1425 = v1427;
  v886 = sub_26B4CE5C8();
  v887 = sub_26B4D4400();
  *&v1253 = sub_26B4D4408();
  *(&v1253 + 1) = sub_26B4D4414();
  *&v1176 = v881;
  *(&v1176 + 1) = v882;
  *(&v1099 + 1) = v1362;
  *&v1099 = v1385;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B560430, v875, v877, v878, 0, 0, v1430, v1423 + 11992, v886 & 1, v887 & 1, v1099, v1176, v1253, v884, &v1429, &v1428, 0, 0, &v1424);
  v888 = swift_allocObject();
  *(v888 + 16) = xmmword_26B545100;
  v889 = swift_allocObject();
  *(v889 + 16) = xmmword_26B545100;
  *(v889 + 32) = 0xD000000000000013;
  *(v889 + 40) = 0x800000026B560470;
  *(v888 + 32) = v889;
  *(v888 + 40) = 0;
  v890 = swift_allocObject();
  *(v890 + 16) = xmmword_26B545100;
  *(v890 + 32) = 0xD000000000000013;
  *(v890 + 40) = 0x800000026B560490;
  *(v890 + 48) = 0;
  v891 = swift_allocObject();
  *(v891 + 16) = xmmword_26B545100;
  *(v891 + 32) = 0xD00000000000002DLL;
  *(v891 + 40) = 0x800000026B55EF40;
  *(v891 + 48) = 0;
  v1430[0] = 0;
  v892 = swift_allocObject();
  *(v892 + 16) = xmmword_26B545100;
  *(v892 + 32) = 0;
  v1386 = sub_26B470D98(v892);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1363 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1363 = MEMORY[0x277D84FA0];
  }

  v893 = swift_allocObject();
  *(v893 + 16) = xmmword_26B545140;
  *(v893 + 32) = 84083201;
  *(v893 + 36) = 8;
  v894 = sub_26B470D98(v893);

  v895 = swift_allocObject();
  *(v895 + 16) = xmmword_26B545100;
  *(v895 + 32) = *v1420;
  *(v895 + 40) = 1;
  v896 = swift_allocObject();
  *(v896 + 16) = xmmword_26B545100;
  *(v896 + 32) = 28;
  v897 = sub_26B470F10(v896);

  v1429 = 4;
  v1428 = 4;
  v898.value._object = 0x800000026B5604D0;
  v898.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v898, 0);
  v1424 = v1426;
  v1425 = v1427;
  v899 = sub_26B4CE5C8();
  v900 = sub_26B4D4400();
  *&v1254 = sub_26B4D4408();
  *(&v1254 + 1) = sub_26B4D4414();
  *&v1177 = v894;
  *(&v1177 + 1) = v895;
  *(&v1100 + 1) = v1363;
  *&v1100 = v1386;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5604B0, v888, v890, v891, 0, 0, v1430, v1423 + 12176, v899 & 1, v900 & 1, v1100, v1177, v1254, v897, &v1429, &v1428, 0, 0, &v1424);
  v901 = swift_allocObject();
  *(v901 + 16) = xmmword_26B545100;
  v902 = swift_allocObject();
  *(v902 + 16) = xmmword_26B545100;
  *(v902 + 32) = 0xD000000000000017;
  *(v902 + 40) = 0x800000026B5604F0;
  *(v901 + 32) = v902;
  *(v901 + 40) = 0;
  v903 = swift_allocObject();
  *(v903 + 16) = xmmword_26B545100;
  *(v903 + 32) = 0xD000000000000017;
  *(v903 + 40) = 0x800000026B560510;
  *(v903 + 48) = 0;
  v904 = swift_allocObject();
  *(v904 + 16) = xmmword_26B545100;
  *(v904 + 32) = 0xD00000000000002DLL;
  *(v904 + 40) = 0x800000026B55EF40;
  *(v904 + 48) = 0;
  v1430[0] = 0;
  v905 = swift_allocObject();
  *(v905 + 16) = xmmword_26B545100;
  *(v905 + 32) = 0;
  v1387 = sub_26B470D98(v905);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1364 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1364 = MEMORY[0x277D84FA0];
  }

  v906 = swift_allocObject();
  *(v906 + 16) = xmmword_26B545140;
  *(v906 + 32) = 84083201;
  *(v906 + 36) = 8;
  v907 = sub_26B470D98(v906);

  v908 = swift_allocObject();
  *(v908 + 16) = xmmword_26B545100;
  *(v908 + 32) = *v1420;
  *(v908 + 40) = 1;
  v909 = swift_allocObject();
  *(v909 + 16) = xmmword_26B545100;
  *(v909 + 32) = 28;
  v910 = sub_26B470F10(v909);

  v1429 = 4;
  v1428 = 4;
  v911.value._object = 0x800000026B560550;
  v911.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v911, 0);
  v1424 = v1426;
  v1425 = v1427;
  v912 = sub_26B4CE5C8();
  v913 = sub_26B4D4400();
  *&v1255 = sub_26B4D4408();
  *(&v1255 + 1) = sub_26B4D4414();
  *&v1178 = v907;
  *(&v1178 + 1) = v908;
  *(&v1101 + 1) = v1364;
  *&v1101 = v1387;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560530, v901, v903, v904, 0, 0, v1430, v1423 + 12360, v912 & 1, v913 & 1, v1101, v1178, v1255, v910, &v1429, &v1428, 0, 0, &v1424);
  v914 = swift_allocObject();
  *(v914 + 16) = xmmword_26B545100;
  v915 = swift_allocObject();
  *(v915 + 16) = xmmword_26B545100;
  *(v915 + 32) = 0xD000000000000015;
  *(v915 + 40) = 0x800000026B560570;
  *(v914 + 32) = v915;
  *(v914 + 40) = 0;
  v916 = swift_allocObject();
  *(v916 + 16) = xmmword_26B545100;
  *(v916 + 32) = 0xD000000000000020;
  *(v916 + 40) = 0x800000026B560590;
  *(v916 + 48) = 0;
  v917 = swift_allocObject();
  *(v917 + 16) = xmmword_26B545100;
  *(v917 + 32) = 0xD00000000000002DLL;
  *(v917 + 40) = 0x800000026B55EF40;
  *(v917 + 48) = 0;
  v1430[0] = 0;
  v918 = swift_allocObject();
  *(v918 + 16) = xmmword_26B545100;
  *(v918 + 32) = 0;
  v1388 = sub_26B470D98(v918);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1365 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1365 = MEMORY[0x277D84FA0];
  }

  v919 = swift_allocObject();
  *(v919 + 16) = xmmword_26B545140;
  *(v919 + 32) = 84083201;
  *(v919 + 36) = 8;
  v920 = sub_26B470D98(v919);

  v921 = swift_allocObject();
  *(v921 + 16) = xmmword_26B545100;
  *(v921 + 32) = *v1420;
  *(v921 + 40) = 1;
  v922 = swift_allocObject();
  *(v922 + 16) = xmmword_26B545100;
  *(v922 + 32) = 28;
  v923 = sub_26B470F10(v922);

  v1429 = 4;
  v1428 = 4;
  v924.value._object = 0x800000026B5605E0;
  v924.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v924, 0);
  v1424 = v1426;
  v1425 = v1427;
  v925 = sub_26B4CE5C8();
  v926 = sub_26B4D4400();
  *&v1256 = sub_26B4D4408();
  *(&v1256 + 1) = sub_26B4D4414();
  *&v1179 = v920;
  *(&v1179 + 1) = v921;
  *(&v1102 + 1) = v1365;
  *&v1102 = v1388;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5605C0, v914, v916, v917, 0, 0, v1430, v1423 + 12544, v925 & 1, v926 & 1, v1102, v1179, v1256, v923, &v1429, &v1428, 0, 0, &v1424);
  v927 = swift_allocObject();
  *(v927 + 16) = xmmword_26B545100;
  v928 = swift_allocObject();
  *(v928 + 16) = xmmword_26B545100;
  *(v928 + 32) = 0xD00000000000001ELL;
  *(v928 + 40) = 0x800000026B560600;
  *(v927 + 32) = v928;
  *(v927 + 40) = 0;
  v929 = swift_allocObject();
  *(v929 + 16) = xmmword_26B545100;
  *(v929 + 32) = 0xD000000000000030;
  *(v929 + 40) = 0x800000026B560620;
  *(v929 + 48) = 0;
  v930 = swift_allocObject();
  *(v930 + 16) = xmmword_26B545100;
  *(v930 + 32) = 0xD00000000000002DLL;
  *(v930 + 40) = 0x800000026B55EF40;
  *(v930 + 48) = 0;
  v1430[0] = 0;
  v931 = swift_allocObject();
  *(v931 + 16) = xmmword_26B545100;
  *(v931 + 32) = 0;
  v1389 = sub_26B470D98(v931);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1366 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1366 = MEMORY[0x277D84FA0];
  }

  v932 = swift_allocObject();
  *(v932 + 16) = xmmword_26B545140;
  *(v932 + 32) = 84083201;
  *(v932 + 36) = 8;
  v933 = sub_26B470D98(v932);

  v934 = swift_allocObject();
  *(v934 + 16) = xmmword_26B545100;
  *(v934 + 32) = *v1420;
  *(v934 + 40) = 1;
  v935 = swift_allocObject();
  *(v935 + 16) = xmmword_26B545100;
  *(v935 + 32) = 28;
  v936 = sub_26B470F10(v935);

  v1429 = 4;
  v1428 = 4;
  v937.value._object = 0x800000026B560680;
  v937.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v937, 0);
  v1424 = v1426;
  v1425 = v1427;
  v938 = sub_26B4CE5C8();
  v939 = sub_26B4D4400();
  *&v1257 = sub_26B4D4408();
  *(&v1257 + 1) = sub_26B4D4414();
  *&v1180 = v933;
  *(&v1180 + 1) = v934;
  *(&v1103 + 1) = v1366;
  *&v1103 = v1389;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560660, v927, v929, v930, 0, 0, v1430, v1423 + 12728, v938 & 1, v939 & 1, v1103, v1180, v1257, v936, &v1429, &v1428, 0, 0, &v1424);
  v940 = swift_allocObject();
  *(v940 + 16) = xmmword_26B545100;
  v941 = swift_allocObject();
  *(v941 + 16) = xmmword_26B545100;
  *(v941 + 32) = 0xD00000000000001DLL;
  *(v941 + 40) = 0x800000026B5606A0;
  *(v940 + 32) = v941;
  *(v940 + 40) = 0;
  v942 = swift_allocObject();
  *(v942 + 16) = xmmword_26B545100;
  *(v942 + 32) = 0xD00000000000002CLL;
  *(v942 + 40) = 0x800000026B5606C0;
  *(v942 + 48) = 0;
  v943 = swift_allocObject();
  *(v943 + 16) = xmmword_26B545100;
  *(v943 + 32) = 0xD00000000000002DLL;
  *(v943 + 40) = 0x800000026B55EF40;
  *(v943 + 48) = 0;
  v1430[0] = 0;
  v944 = swift_allocObject();
  *(v944 + 16) = xmmword_26B545100;
  *(v944 + 32) = 0;
  v1390 = sub_26B470D98(v944);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1367 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1367 = MEMORY[0x277D84FA0];
  }

  v945 = swift_allocObject();
  *(v945 + 16) = xmmword_26B545140;
  *(v945 + 32) = 84083201;
  *(v945 + 36) = 8;
  v946 = sub_26B470D98(v945);

  v947 = swift_allocObject();
  *(v947 + 16) = xmmword_26B545100;
  *(v947 + 32) = *v1420;
  *(v947 + 40) = 1;
  v948 = swift_allocObject();
  *(v948 + 16) = xmmword_26B545100;
  *(v948 + 32) = 28;
  v949 = sub_26B470F10(v948);

  v1429 = 4;
  v1428 = 4;
  v950.value._object = 0x800000026B560710;
  v950.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v950, 0);
  v1424 = v1426;
  v1425 = v1427;
  v951 = sub_26B4CE5C8();
  v952 = sub_26B4D4400();
  *&v1258 = sub_26B4D4408();
  *(&v1258 + 1) = sub_26B4D4414();
  *&v1181 = v946;
  *(&v1181 + 1) = v947;
  *(&v1104 + 1) = v1367;
  *&v1104 = v1390;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5606F0, v940, v942, v943, 0, 0, v1430, v1423 + 12912, v951 & 1, v952 & 1, v1104, v1181, v1258, v949, &v1429, &v1428, 0, 0, &v1424);
  v953 = swift_allocObject();
  *(v953 + 16) = xmmword_26B545100;
  v954 = swift_allocObject();
  *(v954 + 16) = xmmword_26B545100;
  *(v954 + 32) = 0xD00000000000001BLL;
  *(v954 + 40) = 0x800000026B560730;
  *(v953 + 32) = v954;
  *(v953 + 40) = 0;
  v955 = swift_allocObject();
  *(v955 + 16) = xmmword_26B545100;
  *(v955 + 32) = 0xD000000000000019;
  *(v955 + 40) = 0x800000026B560750;
  *(v955 + 48) = 0;
  v956 = swift_allocObject();
  *(v956 + 16) = xmmword_26B545100;
  *(v956 + 32) = 0xD00000000000002DLL;
  *(v956 + 40) = 0x800000026B55EF40;
  *(v956 + 48) = 0;
  v1430[0] = 0;
  v957 = swift_allocObject();
  *(v957 + 16) = xmmword_26B545100;
  *(v957 + 32) = 0;
  v1391 = sub_26B470D98(v957);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1368 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1368 = MEMORY[0x277D84FA0];
  }

  v958 = swift_allocObject();
  *(v958 + 16) = xmmword_26B545140;
  *(v958 + 32) = 84083201;
  *(v958 + 36) = 8;
  v959 = sub_26B470D98(v958);

  v960 = swift_allocObject();
  *(v960 + 16) = xmmword_26B545100;
  *(v960 + 32) = *v1420;
  *(v960 + 40) = 1;
  v961 = swift_allocObject();
  *(v961 + 16) = xmmword_26B545100;
  *(v961 + 32) = 28;
  v962 = sub_26B470F10(v961);

  v1429 = 4;
  v1428 = 4;
  v963.value._object = 0x800000026B560790;
  v963.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v963, 0);
  v1424 = v1426;
  v1425 = v1427;
  v964 = sub_26B4CE5C8();
  v965 = sub_26B4D4400();
  *&v1259 = sub_26B4D4408();
  *(&v1259 + 1) = sub_26B4D4414();
  *&v1182 = v959;
  *(&v1182 + 1) = v960;
  *(&v1105 + 1) = v1368;
  *&v1105 = v1391;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560770, v953, v955, v956, 0, 0, v1430, v1423 + 13096, v964 & 1, v965 & 1, v1105, v1182, v1259, v962, &v1429, &v1428, 0, 0, &v1424);
  v966 = swift_allocObject();
  *(v966 + 16) = xmmword_26B545100;
  v967 = swift_allocObject();
  *(v967 + 16) = xmmword_26B545100;
  strcpy((v967 + 32), "VoiceOver help");
  *(v967 + 47) = -18;
  *(v966 + 32) = v967;
  *(v966 + 40) = 0;
  v968 = swift_allocObject();
  *(v968 + 16) = xmmword_26B545100;
  *(v968 + 32) = 0xD000000000000027;
  *(v968 + 40) = 0x800000026B5607B0;
  *(v968 + 48) = 0;
  v969 = swift_allocObject();
  *(v969 + 16) = xmmword_26B545100;
  *(v969 + 32) = 0xD00000000000002DLL;
  *(v969 + 40) = 0x800000026B55EF40;
  *(v969 + 48) = 0;
  v1430[0] = 0;
  v970 = swift_allocObject();
  *(v970 + 16) = xmmword_26B545100;
  *(v970 + 32) = 0;
  v1392 = sub_26B470D98(v970);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1369 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1369 = MEMORY[0x277D84FA0];
  }

  v971 = swift_allocObject();
  *(v971 + 16) = xmmword_26B545140;
  *(v971 + 32) = 84083201;
  *(v971 + 36) = 8;
  v972 = sub_26B470D98(v971);

  v973 = swift_allocObject();
  *(v973 + 16) = xmmword_26B545100;
  *(v973 + 32) = *v1420;
  *(v973 + 40) = 1;
  v974 = swift_allocObject();
  *(v974 + 16) = xmmword_26B545100;
  *(v974 + 32) = 28;
  v975 = sub_26B470F10(v974);

  v1429 = 4;
  v1428 = 4;
  v976.value._countAndFlagsBits = 0x706C65486F76;
  v976.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v976, 0);
  v1424 = v1426;
  v1425 = v1427;
  v977 = sub_26B4CE5C8();
  v978 = sub_26B4D4400();
  *&v1260 = sub_26B4D4408();
  *(&v1260 + 1) = sub_26B4D4414();
  *&v1183 = v972;
  *(&v1183 + 1) = v973;
  *(&v1106 + 1) = v1369;
  *&v1106 = v1392;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B5607E0, v966, v968, v969, 0, 0, v1430, v1423 + 13280, v977 & 1, v978 & 1, v1106, v1183, v1260, v975, &v1429, &v1428, 0, 0, &v1424);
  v979 = swift_allocObject();
  *(v979 + 16) = xmmword_26B545100;
  v980 = swift_allocObject();
  *(v980 + 16) = xmmword_26B545100;
  *(v980 + 32) = 0xD000000000000013;
  *(v980 + 40) = 0x800000026B560800;
  *(v979 + 32) = v980;
  *(v979 + 40) = 0;
  v981 = swift_allocObject();
  *(v981 + 16) = xmmword_26B545100;
  *(v981 + 32) = 0xD000000000000025;
  *(v981 + 40) = 0x800000026B55F9B0;
  *(v981 + 48) = 0;
  v982 = swift_allocObject();
  *(v982 + 16) = xmmword_26B545100;
  *(v982 + 32) = 0xD00000000000002DLL;
  *(v982 + 40) = 0x800000026B55EF40;
  *(v982 + 48) = 0;
  v1430[0] = 0;
  v983 = swift_allocObject();
  *(v983 + 16) = xmmword_26B545100;
  *(v983 + 32) = 0;
  v1393 = sub_26B470D98(v983);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1370 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1370 = MEMORY[0x277D84FA0];
  }

  v984 = swift_allocObject();
  *(v984 + 16) = xmmword_26B545140;
  *(v984 + 32) = 84083201;
  *(v984 + 36) = 8;
  v985 = sub_26B470D98(v984);

  v986 = swift_allocObject();
  *(v986 + 16) = xmmword_26B545100;
  *(v986 + 32) = *v1420;
  *(v986 + 40) = 1;
  v987 = swift_allocObject();
  *(v987 + 16) = xmmword_26B545100;
  *(v987 + 32) = 28;
  v988 = sub_26B470F10(v987);

  v1429 = 4;
  v1428 = 4;
  v989.value._countAndFlagsBits = 0x7553706C65486F76;
  v989.value._object = 0xED00007972616D6DLL;
  Action.init(_:mac:)(v989, 0);
  v1424 = v1426;
  v1425 = v1427;
  v990 = sub_26B4CE5C8();
  v991 = sub_26B4D4400();
  *&v1261 = sub_26B4D4408();
  *(&v1261 + 1) = sub_26B4D4414();
  *&v1184 = v985;
  *(&v1184 + 1) = v986;
  *(&v1107 + 1) = v1370;
  *&v1107 = v1393;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560820, v979, v981, v982, 0, 0, v1430, v1423 + 13464, v990 & 1, v991 & 1, v1107, v1184, v1261, v988, &v1429, &v1428, 0, 0, &v1424);
  v992 = swift_allocObject();
  *(v992 + 16) = xmmword_26B545100;
  v993 = swift_allocObject();
  *(v993 + 16) = xmmword_26B545120;
  strcpy((v993 + 32), "VoiceOver hint");
  *(v993 + 47) = -18;
  *(v993 + 48) = 0xD000000000000018;
  *(v993 + 56) = 0x800000026B560840;
  *(v992 + 32) = v993;
  *(v992 + 40) = 0;
  v994 = swift_allocObject();
  *(v994 + 16) = xmmword_26B545100;
  *(v994 + 32) = 0xD00000000000002DLL;
  *(v994 + 40) = 0x800000026B560860;
  *(v994 + 48) = 0;
  v995 = swift_allocObject();
  *(v995 + 16) = xmmword_26B545100;
  *(v995 + 32) = 0xD00000000000002DLL;
  *(v995 + 40) = 0x800000026B55EF40;
  *(v995 + 48) = 0;
  v1430[0] = 0;
  v996 = swift_allocObject();
  *(v996 + 16) = xmmword_26B545100;
  *(v996 + 32) = 0;
  v1394 = sub_26B470D98(v996);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1371 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1371 = MEMORY[0x277D84FA0];
  }

  v997 = swift_allocObject();
  *(v997 + 16) = xmmword_26B545140;
  *(v997 + 32) = 84083201;
  *(v997 + 36) = 8;
  v998 = sub_26B470D98(v997);

  v999 = swift_allocObject();
  *(v999 + 16) = xmmword_26B545100;
  *(v999 + 32) = *v1420;
  *(v999 + 40) = 1;
  v1000 = swift_allocObject();
  *(v1000 + 16) = xmmword_26B545100;
  *(v1000 + 32) = 28;
  v1001 = sub_26B470F10(v1000);

  v1429 = 4;
  v1428 = 4;
  v1002.value._object = 0x800000026B5608B0;
  v1002.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v1002, 0);
  v1424 = v1426;
  v1425 = v1427;
  v1003 = sub_26B4CE5C8();
  v1004 = sub_26B4D4400();
  *&v1262 = sub_26B4D4408();
  *(&v1262 + 1) = sub_26B4D4414();
  *&v1185 = v998;
  *(&v1185 + 1) = v999;
  *(&v1108 + 1) = v1371;
  *&v1108 = v1394;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B560890, v992, v994, v995, 0, 0, v1430, v1423 + 13648, v1003 & 1, v1004 & 1, v1108, v1185, v1262, v1001, &v1429, &v1428, 0, 0, &v1424);
  v1005 = swift_allocObject();
  *(v1005 + 16) = xmmword_26B545100;
  v1006 = swift_allocObject();
  *(v1006 + 16) = xmmword_26B545100;
  *(v1006 + 32) = 0xD000000000000018;
  *(v1006 + 40) = 0x800000026B5608D0;
  *(v1005 + 32) = v1006;
  *(v1005 + 40) = 0;
  v1007 = swift_allocObject();
  *(v1007 + 16) = xmmword_26B545100;
  *(v1007 + 32) = 0xD00000000000001BLL;
  *(v1007 + 40) = 0x800000026B5608F0;
  *(v1007 + 48) = 0;
  v1008 = swift_allocObject();
  *(v1008 + 16) = xmmword_26B545100;
  *(v1008 + 32) = 0x10000000000000CELL;
  *(v1008 + 40) = 0x800000026B560910;
  *(v1008 + 48) = 0;
  v1430[0] = 0;
  v1009 = swift_allocObject();
  *(v1009 + 16) = xmmword_26B545100;
  *(v1009 + 32) = 0;
  v1395 = sub_26B470D98(v1009);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1372 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1372 = MEMORY[0x277D84FA0];
  }

  v1010 = swift_allocObject();
  *(v1010 + 16) = xmmword_26B545140;
  *(v1010 + 32) = 84083201;
  *(v1010 + 36) = 8;
  v1011 = sub_26B470D98(v1010);

  v1012 = swift_allocObject();
  *(v1012 + 16) = xmmword_26B545100;
  *(v1012 + 32) = *v1420;
  *(v1012 + 40) = 1;
  v1013 = swift_allocObject();
  *(v1013 + 16) = xmmword_26B545100;
  *(v1013 + 32) = 28;
  v1014 = sub_26B470F10(v1013);

  v1429 = 4;
  v1428 = 4;
  v1015.value._object = 0x800000026B560A00;
  v1015.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v1015, 0);
  v1424 = v1426;
  v1425 = v1427;
  v1016 = sub_26B4CE5C8();
  v1017 = sub_26B4D4400();
  *&v1263 = sub_26B4D4408();
  *(&v1263 + 1) = sub_26B4D4414();
  *&v1186 = v1011;
  *(&v1186 + 1) = v1012;
  *(&v1109 + 1) = v1372;
  *&v1109 = v1395;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B5609E0, v1005, v1007, v1008, 0, 0, v1430, v1423 + 13832, v1016 & 1, v1017 & 1, v1109, v1186, v1263, v1014, &v1429, &v1428, 0, 0, &v1424);
  v1018 = swift_allocObject();
  *(v1018 + 16) = xmmword_26B545100;
  v1019 = swift_allocObject();
  *(v1019 + 16) = xmmword_26B545120;
  *(v1019 + 32) = 0xD000000000000014;
  *(v1019 + 40) = 0x800000026B560A20;
  *(v1019 + 48) = 0xD000000000000015;
  *(v1019 + 56) = 0x800000026B560A40;
  *(v1018 + 32) = v1019;
  *(v1018 + 40) = 0;
  v1020 = swift_allocObject();
  *(v1020 + 16) = xmmword_26B545100;
  *(v1020 + 32) = 0xD000000000000025;
  *(v1020 + 40) = 0x800000026B55F9B0;
  *(v1020 + 48) = 0;
  v1021 = swift_allocObject();
  *(v1021 + 16) = xmmword_26B545100;
  *(v1021 + 32) = 0xD00000000000002DLL;
  *(v1021 + 40) = 0x800000026B55EF40;
  *(v1021 + 48) = 0;
  v1430[0] = 0;
  v1022 = swift_allocObject();
  *(v1022 + 16) = xmmword_26B545100;
  *(v1022 + 32) = 0;
  v1422 = sub_26B470D98(v1022);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1421 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1421 = MEMORY[0x277D84FA0];
  }

  v1023 = swift_allocObject();
  *(v1023 + 16) = xmmword_26B545140;
  *(v1023 + 32) = 84083201;
  *(v1023 + 36) = 8;
  v1024 = sub_26B470D98(v1023);

  v1025 = swift_allocObject();
  *(v1025 + 16) = xmmword_26B545100;
  *(v1025 + 32) = *v1420;
  *(v1025 + 40) = 1;
  v1026 = swift_allocObject();
  *(v1026 + 16) = xmmword_26B545100;
  *(v1026 + 32) = 28;
  v1027 = sub_26B470F10(v1026);

  v1429 = 4;
  v1428 = 4;
  v1028.value._countAndFlagsBits = 0x746E6569724F6F76;
  v1028.value._object = 0xED00006E6F697461;
  Action.init(_:mac:)(v1028, 0);
  v1424 = v1426;
  v1425 = v1427;
  v1029 = sub_26B4CE5C8();
  v1030 = sub_26B4D4400();
  *&v1264 = sub_26B4D4408();
  *(&v1264 + 1) = sub_26B4D4414();
  *&v1187 = v1024;
  *(&v1187 + 1) = v1025;
  *(&v1110 + 1) = v1421;
  *&v1110 = v1422;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560A60, v1018, v1020, v1021, 0, 0, v1430, v1423 + 14016, v1029 & 1, v1030 & 1, v1110, v1187, v1264, v1027, &v1429, &v1428, 0, 0, &v1424);
  LOBYTE(v1024) = sub_26B4CE5C8();
  v1031 = sub_26B4D4400() & 1;
  v1032._countAndFlagsBits = 0x6269737365636341;
  v1032._object = 0xED00007974696C69;
  v1033._countAndFlagsBits = v1289;
  v1033._object = v1288;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406DC8, v1032, v1033, v1024 & 1, v1031, v1423);
}