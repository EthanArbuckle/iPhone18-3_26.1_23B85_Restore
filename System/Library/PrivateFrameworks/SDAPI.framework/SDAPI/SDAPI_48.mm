void sub_2628141A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TCompounderParamManager::~TCompounderParamManager(void **this)
{
  TCompounderParamManager::~TCompounderParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_2875251D0;
  TParam::~TParam(this + 186);
  v2 = 0;
  this[155] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v2 + 185]) < 0)
    {
      operator delete(this[v2 + 183]);
    }

    v2 -= 3;
  }

  while (v2 != -6);
  TParam::~TParam(this + 155);
  v3 = 0;
  this[124] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v3 + 154]) < 0)
    {
      operator delete(this[v3 + 152]);
    }

    v3 -= 3;
  }

  while (v3 != -6);
  TParam::~TParam(this + 124);
  v4 = 0;
  this[93] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v4 + 123]) < 0)
    {
      operator delete(this[v4 + 121]);
    }

    v4 -= 3;
  }

  while (v4 != -6);
  TParam::~TParam(this + 93);
  v5 = 0;
  this[62] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v5 + 92]) < 0)
    {
      operator delete(this[v5 + 90]);
    }

    v5 -= 3;
  }

  while (v5 != -6);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

uint64_t TMbrEntry::TMbrEntry(uint64_t a1, char **a2, double a3)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = a3;
  *(a1 + 8) = 0xC12E848000000000;
  if ((a1 + 32) != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 32), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 16) = vdupq_n_s64(0xC12E848000000000);
  return a1;
}

void sub_262814278(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCRFModel::TCRFModel(uint64_t a1, int a2, int a3, double a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 44) = a2;
  MEMORY[0x26672AF30]();
  *(a1 + 32) = 0;
  return a1;
}

void sub_2628142D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_262814680(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

uint64_t std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::find<std::vector<int>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::vector<int> const>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::vector<int> const>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::vector<int> const>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = v4 - *a2;
  if ((v6 - *a3) >> 2 >= v7 >> 2)
  {
    v8 = v7 >> 2;
  }

  else
  {
    v8 = (v6 - *a3) >> 2;
  }

  if (v8)
  {
    v9 = 4 * v8;
    v10 = &v3[v8];
    while (*v3 == *v5)
    {
      ++v3;
      ++v5;
      v9 -= 4;
      if (!v9)
      {
        v3 = v10;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  return *v3 < *v5;
}

uint64_t std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__find_equal<std::vector<int>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__find_equal<std::vector<int>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::vector<int> const>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::vector<int> const>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_262814B00(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<int> const,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<int> const,double>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::pair<TWord const*,unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::vector<std::pair<TWord const*,unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *std::vector<TCompoundPath>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TCompoundPath>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_262814E34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TCompoundPath>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TCompoundPath>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TCompoundPath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_262814F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::pair<TWord const*,unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<TWord const*,unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_262815080(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<TWord const*,unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::find<std::wstring>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_262815338(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>();
  }

  return result;
}

void sub_262815488(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void EnvMgr::EnvMgr(EnvMgr *this, int a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = this + 56;
  *(this + 72) = 0u;
  v4 = this + 72;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 116) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 18) = StringIdCollSearchCmpFromStringId;
  *(this + 19) = this;
  *(this + 20) = 0;
  *(this + 88) = 1;
  *(this + 90) = 131070;
  *this = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 0);
  v5 = *(this + 16);
  if (v5 == *(this + 17))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v3, 1, 1);
    v5 = *(this + 16);
  }

  v6 = (*(this + 7) + 16 * v5);
  *v6 = 0;
  v6[1] = 0;
  ++*(this + 16);
  v7 = *(this + 21);
  if (!v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 0);
    v7 = *(this + 21);
  }

  v8 = *(this + 20);
  if (v8 == v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 1);
    v8 = *(this + 20);
  }

  v9 = (*(this + 9) + 16 * v8);
  *v9 = 0;
  v9[1] = 0;
  ++*(this + 20);
  *(this + 64) = 1;
  *(this + 65) = a2;
  *(this + 264) = 1;
}

void sub_2628157F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v19);
  DgnArray<DgnArray<PositionClu>>::releaseAll(v16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v14);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v13);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  _Unwind_Resume(a1);
}

void EnvMgr::~EnvMgr(EnvMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(this + 88);
  DgnArray<DgnArray<PositionClu>>::releaseAll(this + 72);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 56);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t EnvMgr::findStringIdIndex(EnvMgr *this, EnvMgr *a2)
{
  v9[0] = a2;
  v9[1] = this;
  v9[2] = 0;
  v10 = -2;
  v11 = 0;
  if (*(this + 88) == 1 && *(this + 45) == -2)
  {
    v2 = this + 96;
  }

  else
  {
    v2 = *(*(this + 14) + 524272);
  }

  v3 = *(v2 + 2);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    v6 = ((v4 + v5) / 2);
    v7 = StringIdCollSearchCmp((*v2 + 2 * v6), v9);
    if (!v7)
    {
      break;
    }

    if (v7 < 0)
    {
      v5 = v6 + 1;
    }

    else
    {
      v4 = v6 - 1;
    }

    if (v5 > v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t EnvMgr::findStringId(EnvMgr *this, EnvMgr *a2)
{
  StringIdIndex = EnvMgr::findStringIdIndex(this, a2);
  if (StringIdIndex == -1)
  {
    return 0xFFFFLL;
  }

  if (*(this + 88) == 1 && *(this + 45) == -2)
  {
    v4 = (this + 96);
  }

  else
  {
    v4 = *(*(this + 14) + 524272);
  }

  return *(*v4 + 2 * StringIdIndex);
}

uint64_t EnvMgr::addString(EnvMgr *this, const char *a2)
{
  v4 = *(this + 56);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *(*(this + 27) + 2 * v5);
    *(this + 56) = v5;
    *(*(this + 25) + 4 * v6) = 1;
    *(*(this + 23) + 2 * v6) = *(this + 44);
  }

  else
  {
    v6 = *(this + 116);
    *(this + 116) = v6 + 1;
    v7 = *(this + 52);
    if (v7 == *(this + 53))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 200, 1, 1);
      v7 = *(this + 52);
    }

    *(*(this + 25) + 4 * v7) = 1;
    ++*(this + 52);
    v8 = *(this + 44);
    v9 = *(this + 48);
    if (v9 == *(this + 49))
    {
      DgnPrimArray<short>::reallocElts(this + 184, 1, 1);
      v9 = *(this + 48);
    }

    *(*(this + 23) + 2 * v9) = v8;
    *(this + 48) = v9 + 1;
  }

  LOBYTE(v10) = *a2;
  if (*a2)
  {
    v11 = *(this + 44);
    v12 = 1;
    do
    {
      if (v11 == *(this + 45))
      {
        DgnPrimArray<char>::reallocElts(this + 168, 1, 1);
        v11 = *(this + 44);
      }

      *(*(this + 21) + v11) = v10;
      v11 = *(this + 44) + 1;
      *(this + 44) = v11;
      v10 = a2[v12++];
    }

    while (v10);
  }

  else
  {
    v11 = *(this + 44);
  }

  if (v11 == *(this + 45))
  {
    DgnPrimArray<char>::reallocElts(this + 168, 1, 1);
    v11 = *(this + 44);
  }

  *(*(this + 21) + v11) = 0;
  v13 = *(this + 44) + 1;
  *(this + 44) = v13;
  if (v13 > 0xFFFE)
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    if (*(this + 48))
    {
      v14 = 0;
      do
      {
        if (*(*(this + 25) + 4 * v14))
        {
          v15 = v30;
          v16 = v28;
          v17 = v30;
          if (v28 == HIDWORD(v28))
          {
            DgnPrimArray<short>::reallocElts(&v27, 1, 1);
            v16 = v28;
            v17 = v30;
          }

          *(v27 + 2 * v16) = v15;
          LODWORD(v28) = v16 + 1;
          v18 = (*(this + 21) + *(*(this + 23) + 2 * v14));
          LOBYTE(v19) = *v18;
          if (*v18)
          {
            v20 = 1;
            do
            {
              if (v17 == HIDWORD(v30))
              {
                DgnPrimArray<char>::reallocElts(&v29, 1, 1);
                v17 = v30;
              }

              *(v29 + v17) = v19;
              v17 = v30 + 1;
              LODWORD(v30) = v30 + 1;
              v19 = v18[v20++];
            }

            while (v19);
          }

          if (v17 == HIDWORD(v30))
          {
            DgnPrimArray<char>::reallocElts(&v29, 1, 1);
            v17 = v30;
          }

          *(v29 + v17) = 0;
          v21 = v30;
          v22 = &v30;
        }

        else
        {
          v21 = v28;
          if (v28 == HIDWORD(v28))
          {
            DgnPrimArray<short>::reallocElts(&v27, 1, 1);
            v21 = v28;
          }

          *(v27 + 2 * v21) = -1;
          v22 = &v28;
        }

        *v22 = v21 + 1;
        ++v14;
      }

      while (v14 < *(this + 48));
      v23 = v30;
    }

    else
    {
      v23 = 0;
    }

    DgnPrimArray<unsigned char>::copyArraySlice(this + 168, &v29, 0, v23);
    DgnPrimArray<unsigned short>::copyArraySlice(this + 184, &v27, 0, v28);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
    if (*(this + 44) >= 0xFFFFu)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 165, "fileutil/envmgr", 1, "%u %u", v24, v25, *(this + 44));
    }
  }

  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::add(this + 88, v6);
  return v6;
}

void sub_262815D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::add(uint64_t result, __int16 a2)
{
  v3 = result;
  v4 = (result + 8);
  if (*result == 1)
  {
    v5 = *(result + 2);
    v25 = a2;
    v26 = *(result + 64);
    v27 = v5;
    v28 = 0;
    result = DgnPrimArray<unsigned short>::searchLastOrBefore((result + 8), 0, *(result + 16), &v25, *(result + 56));
    v6 = (result + 1);
    v7 = *(v3 + 16);
    if (v7 == *(v3 + 20))
    {
      result = DgnPrimArray<short>::reallocElts(v4, 1, 1);
      v7 = *(v3 + 16);
    }

    v8 = *v4;
    if (v7 > v6)
    {
      v9 = v7;
      v10 = (v8 + 2 * v7);
      v11 = v10;
      do
      {
        --v9;
        v12 = *--v11;
        *v10 = v12;
        v10 = v11;
      }

      while (v9 > v6);
    }

    v13 = (v8 + 2 * v6);
  }

  else
  {
    v7 = *(result + 16);
    if (v7 == *(result + 20))
    {
      result = DgnPrimArray<short>::reallocElts(result + 8, 1, 1);
      v7 = *(v3 + 16);
    }

    v13 = (*v4 + 2 * v7);
  }

  *v13 = a2;
  *(v3 + 16) = v7 + 1;
  v14 = *(v3 + 32);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      result = *(*(v3 + 24) + 8 * i);
      if (result)
      {
        v25 = a2;
        v26 = *(v3 + 64);
        v27 = i;
        v28 = 0;
        result = DgnPrimArray<unsigned short>::searchLastOrBefore(result, 0, *(result + 8), &v25, *(v3 + 56));
        v16 = result;
        v17 = *(*(v3 + 24) + 8 * i);
        v18 = *(v17 + 2);
        if (v18 == *(v17 + 3))
        {
          result = DgnPrimArray<short>::reallocElts(*(*(v3 + 24) + 8 * i), 1, 1);
          v18 = *(v17 + 2);
        }

        v19 = (v16 + 1);
        v20 = *v17;
        if (v18 > v19)
        {
          v21 = v18;
          v22 = (v20 + 2 * v18);
          v23 = v22;
          do
          {
            --v21;
            v24 = *--v23;
            *v22 = v24;
            v22 = v23;
          }

          while (v21 > v19);
        }

        *(v20 + 2 * v19) = a2;
        *(v17 + 2) = v18 + 1;
        v14 = *(v3 + 32);
      }
    }
  }

  return result;
}

uint64_t EnvMgr::releaseString(uint64_t this, unsigned int a2)
{
  v2 = *(this + 200);
  v3 = *(v2 + 4 * a2) - 1;
  *(v2 + 4 * a2) = v3;
  if (!v3)
  {
    v5 = this;
    this = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::remove(this + 88, a2);
    v6 = *(v5 + 224);
    if (v6 == *(v5 + 228))
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 216, 1, 1);
      v6 = *(v5 + 224);
    }

    *(*(v5 + 216) + 2 * v6) = a2;
    *(v5 + 224) = v6 + 1;
    *(*(v5 + 184) + 2 * a2) = -1;
  }

  return this;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::remove(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*result == 1)
  {
    if (v2)
    {
      v3 = 0;
      v4 = (*(result + 8) + 2);
      v5 = (v2 - 1);
      while (*(v4 - 1) != a2)
      {
        ++v3;
        ++v4;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v6 = v2 - 1;
      if (v6 > v3)
      {
        v9 = v5 - v3;
        do
        {
          *(v4 - 1) = *v4;
          ++v4;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
LABEL_6:
      v6 = v2 - 1;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_18;
    }

    v7 = *(result + 16);
    v8 = *(result + 8);
    while (*v8 != a2)
    {
      ++v8;
      if (!--v7)
      {
        goto LABEL_18;
      }
    }

    v6 = v2 - 1;
    *v8 = *(*(result + 8) + 2 * v6);
  }

  *(result + 16) = v6;
LABEL_18:
  v10 = *(result + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(result + 24);
    do
    {
      v13 = *(v12 + 8 * v11);
      if (v13)
      {
        v14 = v13[2];
        if (v14)
        {
          v15 = 0;
          v16 = (*v13 + 2);
          v17 = (v14 - 1);
          while (*(*v13 + 2 * v15) != a2)
          {
            ++v15;
            ++v16;
            --v17;
            if (v14 == v15)
            {
              goto LABEL_25;
            }
          }

          v18 = v14 - 1;
          if (v18 > v15)
          {
            do
            {
              *(v16 - 1) = *v16;
              ++v16;
              --v17;
            }

            while (v17);
          }
        }

        else
        {
LABEL_25:
          v18 = v14 - 1;
        }

        v13[2] = v18;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  return result;
}

uint64_t EnvMgr::loadEnvMgrFromStream(EnvMgr *this, DFile *a2, DgnStream *a3, unsigned int *a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v20);
  v10 = *(this + 65);
  if (a5)
  {
    v19 = 0;
    readMrecHeader(a3, a2, 0x16u, "MRENV!? ", &v19 + 1, &v19);
    if (*(a2 + 6))
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = &unk_262891388;
    }

    MrecHeaderCheckVersions(v11, "MRENV!? ", HIDWORD(v19), v19, 0x11u, 0xEu);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRENV!? ", SHIDWORD(v19), v19, 17, 14, v13, v14);
    v21 = 0;
    (*(*a3 + 72))(a3, &v21, 4, 1);
    v12 = v21;
  }

  else
  {
    v12 = 0;
  }

  v21 = 0;
  readObject(a3, this, &v21);
  readObject<unsigned int>(a3, this + 8, &v21);
  readObject<DgnPrimArray<unsigned int>>(a3, this + 24, &v21);
  readObject<DgnPrimArray<unsigned short>>(a3, this + 56, &v21);
  readObject<DgnArray<DgnPrimFixArray<unsigned char>>>(a3, this + 72, &v21);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::readObject(this + 88, a3, &v21);
  readObject<char>(a3, this + 168, &v21);
  readObject<unsigned short>(a3, this + 184, &v21);
  readObject<unsigned int>(a3, this + 200, &v21);
  readObject<unsigned short>(a3, this + 216, &v21);
  readObject(a3, this + 116, &v21);
  readObject<unsigned int>(a3, this + 240, &v21);
  readObject(a3, this + 64, &v21);
  readObject(a3, this + 65, &v21);
  *(this + 18) = StringIdCollSearchCmpFromStringId;
  *(this + 19) = this;
  *(this + 20) = 0;
  v15 = *(this + 65);
  if (v15 != v10)
  {
    DFile::getNameForSemanticType(v15);
    DFile::getNameForSemanticType(v10);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 273, "fileutil/envmgr", 5, "%d %.500s %d %.500s", v16, v17, v15);
  }

  readObjectChecksumAndVerify(a3, v21);
  *a4 ^= v21;
  LoadSaveTracker::~LoadSaveTracker(&v20);
  return v12;
}

void readObject<DgnArray<DgnPrimFixArray<unsigned char>>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      DgnArray<DgnVector>::releaseAll(*a2 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<DgnPrimFixArray<unsigned char>>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void EnvMgr::loadEnvMgrFromText(EnvMgr *this, DFile *a2)
{
  LoadSaveTracker::LoadSaveTracker(&v55);
  DgnTextFileParser::DgnTextFileParser(v54);
  DgnTextFileParser::openDgnTextFileParser(v54, a2, 0x15u, 1);
  DgnTextFileParser::verifyMatchingFileType(v54, "ENS");
  v53[0] = 0;
  v53[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v54, sENS_Versions, v53, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v54, v53, v9, v10, v11, v12, v13, v14);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v54, v15, v16, v17, v18, v19, v20, v21);
  v51 = 0;
  v52 = 0;
  DgnTextFile::getLineFieldNames(v54, &v51);
  v49 = 0;
  v50 = 0;
  DgnTextFile::getLineFieldFormats(v54, &v49);
  if (v52 != 2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 312, "fileutil/envmgr", 7, &errStr_fileutil_envmgr_E_ENS_NOT_TWO_FIELD_SPECS, v22, v23, v52);
  }

  v24 = v51;
  if (*(v51 + 8))
  {
    v25 = *v51;
  }

  else
  {
    v25 = &unk_262891388;
  }

  if (strcmp(v25, "VariableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 314, "fileutil/envmgr", 8, "%.500s %.500s", v26, v27, "VariableName");
    v24 = v51;
  }

  if (*v49)
  {
    if (*(v24 + 8))
    {
      v28 = *v24;
    }

    else
    {
      v28 = &unk_262891388;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 316, "fileutil/envmgr", 15, "%.500s %.500s", v26, v27, v28);
    v24 = v51;
  }

  if (*(v24 + 24))
  {
    v29 = *(v24 + 16);
  }

  else
  {
    v29 = &unk_262891388;
  }

  if (strcmp(v29, "VariableValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 318, "fileutil/envmgr", 8, "%.500s %.500s", v30, v31, "VariableValue");
  }

  if (*v49)
  {
    if (*(v51 + 8))
    {
      v32 = *v51;
    }

    else
    {
      v32 = &unk_262891388;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 320, "fileutil/envmgr", 15, "%.500s %.500s", v30, v31, v32);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  DgnArray<DgnString>::releaseAll(&v51);
  DgnString::DgnString(&v51);
  DgnString::DgnString(&v49);
  v48[0] = 0;
  v48[1] = 0;
  DgnString::DgnString(v47);
  v45 = 0;
  v46 = 0;
  while (DgnTextFileParser::parseNextLine(v54))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v54, 0);
    DgnString::operator=(&v51, LineFieldString);
    v34 = DgnTextFileParser::getLineFieldString(v54, 1u);
    DgnString::operator=(&v49, v34);
    if (v52 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 333, "fileutil/envmgr", 12, "%s", v40, v41, &unk_262891388);
    }

    if (v50 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 334, "fileutil/envmgr", 13, "%s", v40, v41, &errStr_fileutil_envmgr_E_EMPTY_VARIABLE_VALUE);
    }

    if (!*this)
    {
      *this = EnvMgr::newEnv(this, v35, v36, v37, v38, v39, v40, v41);
    }

    DgnTextFile::convertFromEnvValueFormat(&v49, &v45);
    if (v52)
    {
      v44 = v51;
    }

    else
    {
      v44 = &unk_262891388;
    }

    EnvMgr::setData(this, *this, v44, v45, v46, 1, v42, v43);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v45);
  DgnString::~DgnString(v47);
  DgnArray<DgnString>::releaseAll(v48);
  DgnString::~DgnString(&v49);
  DgnString::~DgnString(&v51);
  DgnIArray<Utterance *>::~DgnIArray(v53);
  DgnTextFileParser::~DgnTextFileParser(v54);
  LoadSaveTracker::~LoadSaveTracker(&v55);
}

void sub_2628168F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, void);
  v20 = va_arg(va4, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnTextFileParser::~DgnTextFileParser(va4);
  LoadSaveTracker::~LoadSaveTracker((v7 - 65));
  _Unwind_Resume(a1);
}

uint64_t EnvMgr::newEnv(EnvMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 264) = 0;
  v9 = *(this + 62);
  if (v9)
  {
    v10 = v9 - 1;
    result = *(*(this + 30) + 4 * v10);
    *(this + 62) = v10;
  }

  else
  {
    if (*(this + 64) >= 0x3FFFFFu)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 643, "fileutil/envmgr", 3, "%s", a7, a8, &errStr_fileutil_envmgr_E_TOO_MANY);
    }

    v12 = *(this + 16);
    if (v12 == *(this + 17))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 1);
      v12 = *(this + 16);
    }

    v13 = (*(this + 7) + 16 * v12);
    *v13 = 0;
    v13[1] = 0;
    ++*(this + 16);
    v14 = *(this + 20);
    if (v14 == *(this + 21))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 1);
      v14 = *(this + 20);
    }

    v15 = (*(this + 9) + 16 * v14);
    *v15 = 0;
    v15[1] = 0;
    ++*(this + 20);
    result = *(this + 64);
    *(this + 64) = result + 1;
  }

  return result;
}

void *EnvMgr::setData(EnvMgr *this, unsigned int a2, EnvMgr *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  EnvMgr::verifyEnvId(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8 && EnvMgr::getData(this, a2, a3, v14, v15, v16, v17, v18))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 817, "fileutil/envmgr", 14, "%.500s", v19, v20, a3);
  }

  *(this + 264) = 0;
  result = EnvMgr::findStringId(this, a3);
  if (result == 0xFFFF || (v22 = result, !*(*(this + 25) + 4 * result)))
  {
    if (!v9)
    {
      return result;
    }

    result = EnvMgr::addString(this, a3);
    v22 = result;
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = a2;
  v25 = *(this + 7) + 16 * a2;
  v26 = *(v25 + 8);
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = 0;
  v28 = *v25;
  v29 = (v26 - 1);
  v30 = -2;
  v31 = 24;
  while (*(v28 + 2 * v27) != v22)
  {
    ++v27;
    v31 += 16;
    v30 -= 2;
    if (v26 == v27)
    {
      goto LABEL_15;
    }
  }

  if (v27 == 0xFFFFFFFFLL)
  {
LABEL_15:
    if (!v9)
    {
      return result;
    }

    v32 = *(v25 + 8);
    if (v26 == *(v25 + 12))
    {
      DgnPrimArray<short>::reallocElts(v25, 1, 1);
      v32 = *(v25 + 8);
    }

    *(*v25 + 2 * v32) = v22;
    *(v25 + 8) = v32 + 1;
    v33 = *(this + 9) + 16 * v24;
    v34 = *(v33 + 8);
    if (v34 == *(v33 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(*(this + 9) + 16 * v24, 1, 1);
      v34 = *(v33 + 8);
    }

    v35 = *v33 + 16 * v34;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v33 + 8) = v34 + 1;
    if (v23)
    {
      ++*(*(this + 25) + 4 * v22);
    }

    goto LABEL_25;
  }

  if (v9)
  {
    LODWORD(v26) = v27;
LABEL_25:
    v36 = 16 * v24;
    v37 = *(*(this + 9) + v36);
    v38 = v37 + 16 * v26;
    if (*v38)
    {
      MemChunkFree(*v38, 0);
      *v38 = 0;
      v37 = *(*(this + 9) + v36);
    }

    *(v38 + 8) = 0;
    v39 = v37 + 16 * v26;
    if (!*(v39 + 8))
    {
      *v39 = MemChunkAlloc(v9, 0);
      *(v39 + 8) = v9;
      v37 = *(*(this + 9) + v36);
    }

    v40 = *(v37 + 16 * v26);

    return memcpy(v40, a4, v9);
  }

  if (v29 > v27)
  {
    v41 = v29 - v27;
    v42 = (v28 - v30);
    do
    {
      *(v42 - 1) = *v42;
      ++v42;
      --v41;
    }

    while (v41);
  }

  *(v25 + 8) = v29;
  v43 = *(this + 9);
  v44 = v43 + 16 * v24;
  LODWORD(v45) = *(v44 + 8);
  if (v27 + 1 < v45)
  {
    do
    {
      v46 = *v44 + 16 * v27;
      if (*v46)
      {
        MemChunkFree(*v46, 0);
        *v46 = 0;
        v43 = *(this + 9);
      }

      *(v46 + 8) = 0;
      DgnPrimFixArray<unsigned char>::copyArraySlice((*(v43 + 16 * v24) + 16 * v27), (*(v43 + 16 * v24) + v31 - 8), 0, *(*(v43 + 16 * v24) + v31));
      v43 = *(this + 9);
      v44 = v43 + 16 * v24;
      v45 = *(v44 + 8);
      v47 = v27 + 2;
      ++v27;
      v31 += 16;
    }

    while (v47 < v45);
  }

  v48 = (v45 - 1);
  v49 = *(v44 + 12);
  if (v48 > v49)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v44, v48 - v49, 0);
    LODWORD(v45) = *(v44 + 8);
  }

  if (v45 <= v48)
  {
    if (v45 < v48)
    {
      v52 = v48 - v45;
      v53 = (*v44 + 16 * v45 + 8);
      do
      {
        *(v53 - 1) = 0;
        *v53 = 0;
        v53 += 4;
        --v52;
      }

      while (v52);
    }
  }

  else if (v45 > v48)
  {
    v50 = v45;
    v51 = 16 * v45 - 16;
    do
    {
      --v50;
      DgnPrimFixArray<double>::~DgnPrimFixArray(*v44 + v51);
      v51 -= 16;
    }

    while (v50 > v48);
  }

  *(v44 + 8) = v48;

  return EnvMgr::releaseString(this, v22);
}

void EnvMgr::loadEnvMgr(EnvMgr *this, DFile *a2, DFileChecksums *a3)
{
  LoadSaveTracker::LoadSaveTracker(&v9);
  if (DFile::subFileExists(a2, 0x16u))
  {
    v6 = DFile::openSubFile(a2, 0x16u, 3, 0);
    v8 = 0;
    EnvMgr::loadEnvMgrFromStream(this, a2, v6, &v8, 1);
    DgnDelete<DgnStream>(v6);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x16u, v8);
    *(this + 264) = 0;
  }

  else if (DFile::subFileExists(a2, 0x15u))
  {
    EnvMgr::loadEnvMgrFromText(this, a2);
    *(this + 264) = 1;
  }

  EnvMgr::compact(this);
  LoadSaveTracker::~LoadSaveTracker(&v9);
}

uint64_t EnvMgr::compact(EnvMgr *this)
{
  v39[0] = 0;
  v39[1] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v2 = *(this + 4);
  v3 = v2 + 1;
  v4 = 4 * v2 - 4;
  while (v4 != -4)
  {
    v5 = *(*(this + 1) + v4);
    --v3;
    v4 -= 4;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  *(this + 4) = v3;
  DgnPrimArray<unsigned int>::compact(this + 8);
  if (*(this + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(this + 3) + 16 * v6;
      v8 = *(v7 + 8);
      v9 = v8 + 1;
      v10 = 4 * v8 - 4;
      while (v10 != -4)
      {
        v11 = *(*v7 + v10);
        --v9;
        v10 -= 4;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      v9 = 0;
LABEL_13:
      *(v7 + 8) = v9;
      DgnPrimArray<unsigned int>::compact(v7);
      ++v6;
    }

    while (v6 < *(this + 8));
  }

  DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(this + 24, v39);
  if (*(this + 12))
  {
    v12 = 0;
    do
    {
      v13 = *(this + 5) + 16 * v12;
      if (*(v13 + 8))
      {
        v14 = 0;
        do
        {
          v15 = *v13 + 16 * v14;
          v16 = *(v15 + 8);
          v17 = v16 + 1;
          v18 = 4 * v16 - 4;
          while (v18 != -4)
          {
            v19 = *(*v15 + v18);
            --v17;
            v18 -= 4;
            if (v19)
            {
              goto LABEL_23;
            }
          }

          v17 = 0;
LABEL_23:
          *(v15 + 8) = v17;
          DgnPrimArray<unsigned int>::compact(v15);
          ++v14;
          v13 = *(this + 5) + 16 * v12;
        }

        while (v14 < *(v13 + 8));
      }

      DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(v13, v39);
      ++v12;
    }

    while (v12 < *(this + 12));
  }

  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::compactRemoveMatchingSuffix(this + 40, v38);
  if (!*this && !*(this + 4) && !*(this + 8) && !*(this + 12))
  {
    v20 = *(this + 16);
    if (v20 >= 1)
    {
      v21 = 16 * v20 - 16;
      do
      {
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 7) + v21);
        v21 -= 16;
      }

      while (v21 != -16);
    }

    *(this + 16) = 0;
    v22 = *(this + 17);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 0);
      v23 = *(this + 16);
      v22 = *(this + 17);
    }

    if (v23 == v22)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 1);
      v23 = *(this + 16);
    }

    v24 = (*(this + 7) + 16 * v23);
    *v24 = 0;
    v24[1] = 0;
    ++*(this + 16);
    v25 = *(this + 20);
    if (v25 >= 1)
    {
      v26 = v25 + 1;
      v27 = 16 * v25 - 16;
      do
      {
        DgnArray<DgnVector>::releaseAll(*(this + 9) + v27);
        --v26;
        v27 -= 16;
      }

      while (v26 > 1);
    }

    *(this + 20) = 0;
    v28 = *(this + 21);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 0);
      v29 = *(this + 20);
      v28 = *(this + 21);
    }

    if (v29 == v28)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 1);
      v29 = *(this + 20);
    }

    v30 = (*(this + 9) + 16 * v29);
    *v30 = 0;
    v30[1] = 0;
    ++*(this + 20);
    *(this + 26) = 0;
    v31 = *(this + 30);
    if (v31)
    {
      v32 = *(this + 14);
      do
      {
        if (*v32)
        {
          *(*v32 + 8) = 0;
        }

        v32 += 8;
        --v31;
      }

      while (v31);
    }

    *(this + 44) = 0;
    *(this + 48) = 0;
    *(this + 52) = 0;
    *(this + 56) = 0;
    *(this + 116) = 0;
    *(this + 62) = 0;
    *(this + 64) = 1;
  }

  if (*(this + 16))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      DgnPrimArray<unsigned short>::compact(*(this + 7) + v33);
      ++v34;
      v33 += 16;
    }

    while (v34 < *(this + 16));
  }

  DgnArray<DgnPrimArray<unsigned short>>::compact(this + 56);
  if (*(this + 20))
  {
    v35 = 0;
    v36 = 0;
    do
    {
      DgnArray<DgnPrimArray<unsigned short>>::compact(*(this + 9) + v35);
      ++v36;
      v35 += 16;
    }

    while (v36 < *(this + 20));
  }

  DgnArray<DgnPrimArray<unsigned short>>::compact(this + 72);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::compact(this + 88);
  DgnPrimArray<unsigned char>::compact(this + 21);
  DgnPrimArray<unsigned short>::compact(this + 184);
  DgnPrimArray<unsigned int>::compact(this + 200);
  DgnPrimArray<unsigned short>::compact(this + 216);
  DgnPrimArray<unsigned int>::compact(this + 240);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
}

void sub_262817338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

void EnvMgr::saveEnvMgrToStream(EnvMgr *this, DgnStream *a2, unsigned int *a3, int a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v13);
  if (a5)
  {
    writeMrecHeader(a2, "MRENV!? ", 17, 14, a4 ^ 1);
    v10 = (*(*a2 + 40))(a2);
    v14 = 0;
    (*(*a2 + 80))(a2, &v14, 4);
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
  writeObject(a2, this, &v12);
  writeObject<unsigned int>(a2, this + 8, &v12);
  writeObject<DgnPrimArray<unsigned int>>(a2, this + 24, &v12);
  writeObject<DgnPrimArray<unsigned short>>(a2, this + 56, &v12);
  writeObject<DgnArray<DgnPrimArray<unsigned char>>>(a2, this + 72, &v12);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::writeObject(this + 88, a2, &v12);
  writeObject<char>(a2, this + 168, &v12);
  writeObject<unsigned short>(a2, this + 184, &v12);
  writeObject<unsigned int>(a2, this + 200, &v12);
  writeObject<unsigned short>(a2, this + 216, &v12);
  writeObject(a2, this + 116, &v12);
  writeObject<unsigned int>(a2, this + 240, &v12);
  writeObject(a2, this + 64, &v12);
  writeObject(a2, this + 65, &v12);
  writeObjectChecksum(a2, &v12);
  *a3 ^= v12;
  if (a5 && (a4 & 1) == 0)
  {
    v11 = (*(*a2 + 48))(a2);
    (*(*a2 + 24))(a2, v10);
    v15 = v11;
    (*(*a2 + 80))(a2, &v15, 4);
    (*(*a2 + 24))(a2, v11);
  }

  LoadSaveTracker::~LoadSaveTracker(&v13);
}

void EnvMgr::saveEnvMgrToText(EnvMgr *this, DFile *a2, int a3)
{
  LoadSaveTracker::LoadSaveTracker(&v32);
  DgnTextFileWriter::DgnTextFileWriter(v31);
  DgnTextFileWriter::openDgnTextFileWriter(v31, a2, 0x15u, a3);
  v29 = 0;
  v30 = 0;
  DgnTextFile::legalDgnTextFileVersions(v31, sENS_Versions, &v29, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v31, "ENS", (v29 + 8 * (v30 - 1)));
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  DgnString::DgnString(&v23, "VariableName");
  v11 = v26;
  if (v26 == HIDWORD(v26))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v25, 1, 1);
    v11 = v26;
  }

  DgnString::DgnString((v25 + 16 * v11), &v23);
  LODWORD(v26) = v26 + 1;
  DgnString::~DgnString(&v23);
  v12 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v12 = v28;
  }

  *(v27 + 4 * v12) = 0;
  LODWORD(v28) = v12 + 1;
  DgnString::DgnString(&v23, "VariableValue");
  v13 = v26;
  if (v26 == HIDWORD(v26))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v25, 1, 1);
    v13 = v26;
  }

  DgnString::DgnString((v25 + 16 * v13), &v23);
  LODWORD(v26) = v26 + 1;
  DgnString::~DgnString(&v23);
  v14 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v14 = v28;
  }

  *(v27 + 4 * v14) = 0;
  LODWORD(v28) = v14 + 1;
  DgnTextFileWriter::setLineFieldFormat(v31, &v27, &v25);
  v15 = *this;
  v16 = *(this + 7);
  v17 = *(this + 9);
  DgnString::DgnString(&v23);
  v18 = v16 + 16 * v15;
  if (*(v18 + 8))
  {
    v19 = 0;
    v20 = 0;
    v21 = (v17 + 16 * v15);
    do
    {
      DgnTextFileWriter::setLineFieldValue(v31, 0, (*(this + 21) + *(*(this + 23) + 2 * *(*v18 + 2 * v20))));
      DgnTextFile::convertToEnvValueFormat(*v21 + v19, &v23);
      if (v24)
      {
        v22 = v23;
      }

      else
      {
        v22 = &unk_262891388;
      }

      DgnTextFileWriter::setLineFieldValue(v31, 1u, v22);
      DgnTextFileWriter::writeNextLine(v31);
      ++v20;
      v19 += 16;
    }

    while (v20 < *(v18 + 8));
  }

  DgnString::~DgnString(&v23);
  DgnArray<DgnString>::releaseAll(&v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  DgnIArray<Utterance *>::~DgnIArray(&v29);
  DgnTextFileWriter::~DgnTextFileWriter(v31);
  LoadSaveTracker::~LoadSaveTracker(&v32);
}

void sub_2628178C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  LoadSaveTracker::~LoadSaveTracker((v3 - 65));
  _Unwind_Resume(a1);
}

void EnvMgr::saveEnvMgr(EnvMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v14);
  if (*this)
  {
    if (a4)
    {
      EnvMgr::saveEnvMgrToText(this, a2, a5);
    }

    else
    {
      if (a5)
      {
        v10 = 5;
      }

      else
      {
        v10 = 1;
      }

      v11 = DFile::openSubFile(a2, 0x16u, v10, 0);
      v13 = 0;
      EnvMgr::saveEnvMgrToStream(this, v11, &v13, 1, 1);
      DgnDelete<DgnStream>(v11);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x16u, v13);
    }
  }

  LoadSaveTracker::~LoadSaveTracker(&v14);
}

void EnvMgr::printSize(EnvMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 556, &v155);
  if (v156)
  {
    v16 = v155;
  }

  else
  {
    v16 = &unk_262891388;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262891388, a3, &unk_262891388, v16);
  DgnString::~DgnString(&v155);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262891388);
  v21 = (a3 + 1);
  v154 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v27 = v155;
  }

  else
  {
    v27 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &unk_262891388, v22, v22, v27, 4, 4, 0);
  DgnString::~DgnString(&v155);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = *(this + 4);
  v30 = *(this + 5);
  if (v30 >= v29)
  {
    v31 = 0;
    if (v29 > 0)
    {
      v28 += 4 * (v29 - 1) + 4;
    }

    v32 = v28 + 4 * (v30 - v29);
  }

  else
  {
    v31 = 4 * v29;
    v32 = v28;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v37 = v155;
  }

  else
  {
    v37 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v21, &unk_262891388, v22, v22, v37, v32, v28, v31);
  DgnString::~DgnString(&v155);
  *a4 += v32;
  *a5 += v28;
  *a6 += v31;
  v38 = sizeObject<DgnPrimArray<unsigned int>>(this + 24, 0);
  v39 = sizeObject<DgnPrimArray<unsigned int>>(this + 24, 1);
  v155 = 0;
  v156 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v155);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v44 = v155;
  }

  else
  {
    v44 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v21, &unk_262891388, v22, v22, v44, v38, v39, 0);
  DgnString::~DgnString(&v155);
  *a4 += v38;
  *a5 += v39;
  v45 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 0);
  v46 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 1);
  v47 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v52 = v155;
  }

  else
  {
    v52 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &unk_262891388, v22, v22, v52, v45, v46, v47);
  DgnString::~DgnString(&v155);
  *a4 += v45;
  *a5 += v46;
  *a6 += v47;
  v53 = sizeObject<DgnPrimArray<unsigned short>>(this + 56, 0);
  v54 = sizeObject<DgnPrimArray<unsigned short>>(this + 56, 1);
  v155 = 0;
  v156 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v155);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v59 = v155;
  }

  else
  {
    v59 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v21, &unk_262891388, v22, v22, v59, v53, v54, 0);
  DgnString::~DgnString(&v155);
  *a4 += v53;
  *a5 += v54;
  fixed = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 0);
  v61 = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 1);
  v62 = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v67 = v155;
  }

  else
  {
    v67 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v21, &unk_262891388, v22, v22, v67, fixed, v61, v62);
  DgnString::~DgnString(&v155);
  *a4 += fixed;
  *a5 += v61;
  *a6 += v62;
  v68 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 0);
  v69 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 1);
  v70 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v75 = v155;
  }

  else
  {
    v75 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v21, &unk_262891388, v22, v22, v75, v68, v69, v70);
  DgnString::~DgnString(&v155);
  *a4 += v68;
  *a5 += v69;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v76 = 12;
  }

  else
  {
    v76 = 16;
  }

  v77 = *(this + 44);
  v78 = *(this + 45);
  v79 = v78 >= v77;
  v80 = v78 - v77;
  if (v79)
  {
    if (v77 > 0)
    {
      v81 = (v77 - 1) + v76 + 1;
    }

    else
    {
      v81 = v76;
    }

    v76 = v81 + v80;
    v77 = 0;
  }

  else
  {
    v81 = v76;
  }

  v82 = v77;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v87 = v155;
  }

  else
  {
    v87 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_262891388, v22, v22, v87, v76, v81, v82);
  DgnString::~DgnString(&v155);
  *a4 += v76;
  *a5 += v81;
  *a6 += v82;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 12;
  }

  else
  {
    v88 = 16;
  }

  v89 = *(this + 48);
  v90 = *(this + 49);
  if (v90 >= v89)
  {
    v91 = 0;
    if (v89 > 0)
    {
      v88 += 2 * (v89 - 1) + 2;
    }

    v92 = v88 + 2 * (v90 - v89);
  }

  else
  {
    v91 = 2 * v89;
    v92 = v88;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v97 = v155;
  }

  else
  {
    v97 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_262891388, v22, v22, v97, v92, v88, v91);
  DgnString::~DgnString(&v155);
  *a4 += v92;
  *a5 += v88;
  *a6 += v91;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 12;
  }

  else
  {
    v98 = 16;
  }

  v99 = *(this + 52);
  v100 = *(this + 53);
  if (v100 >= v99)
  {
    v101 = 0;
    if (v99 > 0)
    {
      v98 += 4 * (v99 - 1) + 4;
    }

    v102 = v98 + 4 * (v100 - v99);
  }

  else
  {
    v101 = 4 * v99;
    v102 = v98;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v107 = v155;
  }

  else
  {
    v107 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, v21, &unk_262891388, v22, v22, v107, v102, v98, v101);
  DgnString::~DgnString(&v155);
  *a4 += v102;
  *a5 += v98;
  *a6 += v101;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v108 = 12;
  }

  else
  {
    v108 = 16;
  }

  v109 = *(this + 56);
  v110 = *(this + 57);
  if (v110 >= v109)
  {
    v111 = 0;
    if (v109 > 0)
    {
      v108 += 2 * (v109 - 1) + 2;
    }

    v112 = v108 + 2 * (v110 - v109);
  }

  else
  {
    v111 = 2 * v109;
    v112 = v108;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v117 = v155;
  }

  else
  {
    v117 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v114, v115, v116, v21, &unk_262891388, v22, v22, v117, v112, v108, v111);
  DgnString::~DgnString(&v155);
  *a4 += v112;
  *a5 += v108;
  *a6 += v111;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v122 = v155;
  }

  else
  {
    v122 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v21, &unk_262891388, v22, v22, v122, 2, 2, 0);
  DgnString::~DgnString(&v155);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v123 = 12;
  }

  else
  {
    v123 = 16;
  }

  v124 = *(this + 62);
  v125 = *(this + 63);
  if (v125 >= v124)
  {
    v126 = 0;
    if (v124 > 0)
    {
      v123 += 4 * (v124 - 1) + 4;
    }

    v127 = v123 + 4 * (v125 - v124);
  }

  else
  {
    v126 = 4 * v124;
    v127 = v123;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v132 = v155;
  }

  else
  {
    v132 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v21, &unk_262891388, v22, v22, v132, v127, v123, v126);
  DgnString::~DgnString(&v155);
  *a4 += v127;
  *a5 += v123;
  *a6 += v126;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v137 = v155;
  }

  else
  {
    v137 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v21, &unk_262891388, v22, v22, v137, 4, 4, 0);
  DgnString::~DgnString(&v155);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v142 = v155;
  }

  else
  {
    v142 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v21, &unk_262891388, v22, v22, v142, 4, 4, 0);
  DgnString::~DgnString(&v155);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558, &v155);
  if (v156)
  {
    v147 = v155;
  }

  else
  {
    v147 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v21, &unk_262891388, v22, v22, v147, 1, 1, 0);
  DgnString::~DgnString(&v155);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 559, &v155);
  if (v156)
  {
    v152 = v155;
  }

  else
  {
    v152 = &unk_262891388;
  }

  v153 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v154, &unk_262891388, (35 - v154), (35 - v154), v152, *a4, *a5, *a6);
  DgnString::~DgnString(&v155);
}

void sub_2628184D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimFixArray<unsigned char>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnVector>::releaseAll(v10);
  return v5;
}

unint64_t DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(unint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 8);
    do
    {
      v6 = v5 - 1;
      v7 = *a1 + 16 * (v5 - 1);
      if (v7 != a2)
      {
        if (*(v7 + 8) != *(a2 + 8))
        {
          goto LABEL_11;
        }

        v8 = *(a2 + 8);
        while (v8 >= 1)
        {
          v9 = *v7 + 4 * v8;
          v10 = *(*a2 - 4 + 4 * v8--);
          if (*(v9 - 4) != v10)
          {
            goto LABEL_11;
          }
        }
      }

      --v5;
    }

    while (v6);
    v5 = 0;
LABEL_11:
    if (v3 <= v5)
    {
      if (v3 < v5)
      {
        v12 = v5 - v3;
        v13 = 16 * v3;
        do
        {
          v14 = (*a1 + v13);
          *v14 = 0;
          v14[1] = 0;
          v13 += 16;
          --v12;
        }

        while (v12);
      }
    }

    else if (v3 > v5)
    {
      v11 = 16 * v3 - 16;
      do
      {
        --v4;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v11);
        v11 -= 16;
      }

      while (v4 > v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;

  return DgnArray<DgnPrimArray<unsigned short>>::compact(a1);
}

unint64_t DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::compactRemoveMatchingSuffix(unint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = v4 + 1;
  v6 = 16 * v4 - 16;
  while (v6 != -16)
  {
    v7 = DgnArray<DgnPrimArray<unsigned int>>::operator==((*a1 + v6), a2);
    --v5;
    v6 -= 16;
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v8 = *(a1 + 8);
  if (v8 <= v5)
  {
    if (v8 < v5)
    {
      v11 = v5 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a1 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v5)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*a1 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > v5);
  }

  *(a1 + 8) = v5;

  return DgnArray<DgnPrimArray<unsigned short>>::compact(a1);
}

unint64_t DgnArray<DgnPrimArray<unsigned short>>::compact(unint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, 16 * v3, 16 * v3, 16 * v4, 0);
      *(v5 + 12) = result >> 4;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 12) = 0;
    }
  }

  return result;
}

unint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::compact(uint64_t a1)
{
  DgnPrimArray<unsigned short>::compact(a1 + 8);
  v2 = *(a1 + 32);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        DgnPrimArray<unsigned short>::compact(v4);
        v2 = *(a1 + 32);
      }
    }
  }

  return DgnPrimArray<unsigned short>::compact(a1 + 40);
}

void EnvMgr::verifyEnvId(EnvMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 64) <= a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 630, "fileutil/envmgr", 11, "%u", a7, a8, a2);
  }

  v10 = *(this + 62);
  if (v10)
  {
    v11 = *(this + 30);
    for (i = 0xFFFFFFFFLL; ; --i)
    {
      v13 = *v11++;
      if (v13 == a2)
      {
        break;
      }

      if (!--v10)
      {
        return;
      }
    }

    if (i)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 631, "fileutil/envmgr", 11, "%u", a7, a8, a2);
    }
  }
}

uint64_t EnvMgr::killEnv(EnvMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EnvMgr::verifyEnvId(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 264) = 0;
  v10 = *(this + 7) + 16 * a2;
  if (*(v10 + 8))
  {
    v11 = 0;
    do
    {
      EnvMgr::releaseString(this, *(*v10 + 2 * v11++));
      v10 = *(this + 7) + 16 * a2;
    }

    while (v11 < *(v10 + 8));
  }

  if (*v10)
  {
    MemChunkFree(*v10, 0);
    *v10 = 0;
  }

  *(v10 + 8) = 0;
  result = DgnArray<DgnVector>::releaseAll(*(this + 9) + 16 * a2);
  v13 = *(this + 62);
  if (v13 == *(this + 63))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(this + 240, 1, 1);
    v13 = *(this + 62);
  }

  *(*(this + 30) + 4 * v13) = a2;
  ++*(this + 62);
  return result;
}

uint64_t EnvMgr::getTopEnvIdMaybeNew(EnvMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (a2 && !v8)
  {
    v8 = EnvMgr::newEnv(this, a2, a3, a4, a5, a6, a7, a8);
    EnvMgr::verifyEnvId(this, v8, v10, v11, v12, v13, v14, v15);
    *(this + 264) = 0;
    *this = v8;
  }

  return v8;
}

void EnvMgr::setTopEnvId(EnvMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EnvMgr::verifyEnvId(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 264) = 0;
  *this = a2;
}

uint64_t EnvMgr::getItemEnvId(EnvMgr *this, unsigned int a2)
{
  if (*(this + 4) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 4 * a2);
  }
}

uint64_t EnvMgr::getItemEnvIdMaybeNew(EnvMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a3 && (*(this + 4) <= a2 || !*(*(this + 1) + 4 * a2)))
  {
    v10 = EnvMgr::newEnv(this, a2, a3, a4, a5, a6, a7, a8);
    EnvMgr::verifyEnvId(this, v10, v11, v12, v13, v14, v15, v16);
    *(this + 264) = 0;
    SetEnvIdInArray(this + 8, v8, v10);
  }

  if (*(this + 4) <= v8)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 4 * v8);
  }
}

void EnvMgr::setItemEnvId(EnvMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  EnvMgr::verifyEnvId(this, a3, a3, a4, a5, a6, a7, a8);
  *(this + 264) = 0;

  SetEnvIdInArray(this + 8, a2, v8);
}

void SetEnvIdInArray(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 8);
  if (a2 >= v6)
  {
    v8 = a2 + 1;
    v9 = *(a1 + 12);
    v10 = v8;
    v11 = a2 + 1 - v9;
    if (v8 > v9)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1, v11, 1);
      v10 = v8 - v6 + *(a1 + 8);
    }

    *(a1 + 8) = v10;
    v7 = *a1;
    if (v8 > v6)
    {
      bzero((v7 + 4 * v6), 4 * (a2 - v6) + 4);
    }
  }

  else
  {
    v7 = *a1;
  }

  *(v7 + 4 * a2) = a3;
}

unint64_t EnvMgr::getItemsWithEnv(unint64_t result, uint64_t a2)
{
  *(a2 + 8) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v4 + 8) + 4 * i))
      {
        if (v5 == *(a2 + 12))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
          v5 = *(a2 + 8);
        }

        *(*a2 + 4 * v5) = i;
        v5 = *(a2 + 8) + 1;
        *(a2 + 8) = v5;
        v2 = *(v4 + 16);
      }
    }
  }

  return result;
}

uint64_t EnvMgr::getItemPairEnvId(EnvMgr *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  v3 = *(this + 3) + 16 * a2;
  if (*(v3 + 8) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*v3 + 4 * a3);
  }
}

uint64_t EnvMgr::getItemPairEnvIdMaybeNew(EnvMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (a4)
  {
    if (*(this + 8) <= a2 || (v11 = *(this + 3) + 16 * a2, *(v11 + 8) <= a3) || !*(*v11 + 4 * a3))
    {
      v12 = EnvMgr::newEnv(this, a2, a3, a4, a5, a6, a7, a8);
      EnvMgr::setItemPairEnvId(this, v9, a3, v12, v13, v14, v15, v16);
    }
  }

  if (*(this + 8) <= v9)
  {
    return 0;
  }

  v17 = *(this + 3) + 16 * v9;
  if (*(v17 + 8) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*v17 + 4 * a3);
  }
}

void EnvMgr::setItemPairEnvId(EnvMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  EnvMgr::verifyEnvId(this, a4, a3, a4, a5, a6, a7, a8);
  *(this + 264) = 0;
  v12 = *(this + 8);
  if (v12 <= a2)
  {
    v13 = a2 + 1;
    v14 = *(this + 9);
    if (v13 > v14)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 24, v13 - v14, 0);
      v12 = *(this + 8);
    }

    if (v12 <= v13)
    {
      if (v12 < v13)
      {
        v17 = 16 * v12;
        v18 = v13 - v12;
        do
        {
          v19 = (*(this + 3) + v17);
          *v19 = 0;
          v19[1] = 0;
          v17 += 16;
          --v18;
        }

        while (v18);
      }
    }

    else if (v12 > v13)
    {
      v15 = v12;
      v16 = 16 * v12 - 16;
      do
      {
        --v15;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 3) + v16);
        v16 -= 16;
      }

      while (v15 > v13);
    }

    *(this + 8) = v13;
  }

  v20 = *(this + 3) + 16 * a2;

  SetEnvIdInArray(v20, v9, v8);
}

unint64_t EnvMgr::getItemPairsWithEnv(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = 0;
  *(a3 + 8) = 0;
  v3 = *(result + 32);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 24);
    do
    {
      v9 = v8 + 16 * v7;
      if (*(v9 + 8))
      {
        v10 = 0;
        do
        {
          if (*(*v9 + 4 * v10))
          {
            v11 = *(a2 + 8);
            if (v11 == *(a2 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
              v11 = *(a2 + 8);
            }

            *(*a2 + 4 * v11) = v7;
            ++*(a2 + 8);
            v12 = *(a3 + 8);
            if (v12 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v12 = *(a3 + 8);
            }

            *(*a3 + 4 * v12) = v10;
            ++*(a3 + 8);
            v8 = *(v6 + 24);
          }

          ++v10;
          v9 = v8 + 16 * v7;
        }

        while (v10 < *(v9 + 8));
        v3 = *(v6 + 32);
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t EnvMgr::getData(EnvMgr *this, unsigned int a2, EnvMgr *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EnvMgr::verifyEnvId(this, a2, a3, a4, a5, a6, a7, a8);
  StringId = EnvMgr::findStringId(this, a3);
  if (StringId == 0xFFFF)
  {
    return 0;
  }

  if (!*(*(this + 25) + 4 * StringId))
  {
    return 0;
  }

  v12 = *(this + 7) + 16 * a2;
  v13 = *(v12 + 8);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = *v12;
  while (1)
  {
    v16 = *v15++;
    if (v16 == StringId)
    {
      break;
    }

    v14 -= 16;
    if (!(16 * v13 + v14))
    {
      return 0;
    }
  }

  if (v14 != 0xFFFFFFF000000010)
  {
    return *(*(this + 9) + 16 * a2) - v14;
  }

  else
  {
    return 0;
  }
}

uint64_t DgnPrimArray<unsigned short>::searchLastOrBefore(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  LODWORD(v6) = a2;
  if (a3 > a2)
  {
    v10 = a3 - 1;
    v11 = a2;
    do
    {
      if (v11 == v10 - 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = ((v11 + v10) / 2);
      }

      v12 = a5(*a1 + 2 * v6, a4);
      if (v12)
      {
        if (v12 < 0)
        {
          v6 = (v6 + 1);
        }

        else
        {
          v10 = v6 - 1;
          v6 = v11;
        }
      }

      else if (v10 == v11)
      {
        return v6;
      }

      v11 = v6;
    }

    while (v6 <= v10);
  }

  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v6 - 1);
  }
}

void readObject<DgnPrimFixArray<unsigned char>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = (*a2 + 16 * v8 + 8);
      do
      {
        *(v12 - 1) = 0;
        *v12 = 0;
        v12 += 4;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      readObject<unsigned char>(a1, *a2 + v13, a3);
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a2 + 8));
  }
}

void DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::readObject(uint64_t a1, DgnStream *a2, unsigned int *a3)
{
  readObject<unsigned short>(a2, a1 + 8, a3);
  readObject<unsigned short>(a2, a1 + 40, a3);
  v14 = 0;
  readObject(a2, &v14, a3);
  readObject(a2, &v14, a3);
  *a1 = v14 != 0;
  readObject(a2, &v14 + 1, a3);
  *(a1 + 2) = WORD2(v14);
  readObject(a2, &v14, a3);
  *(a1 + 4) = v14 != 0;
  readObject(a2, &v14, a3);
  *(a1 + 5) = v14 != 0;
  v13 = 0;
  readObject(a2, &v13, a3);
  LODWORD(v6) = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    do
    {
      DgnDelete<DgnPrimArray<unsigned int>>(*(*(a1 + 24) + 8 * v7));
      *(*(a1 + 24) + 8 * v7++) = 0;
      v6 = *(a1 + 32);
    }

    while (v7 < v6);
  }

  v8 = v13;
  v9 = *(a1 + 36);
  if (v13 > v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 24, v13 - v9, 0);
    LODWORD(v6) = *(a1 + 32);
  }

  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v6 = v6;
      do
      {
        *(*(a1 + 24) + 8 * v6++) = 0;
      }

      while (v8 != v6);
    }
  }

  else
  {
    DgnIOwnArray<DgnPrimArray<unsigned int> *>::destructAt(a1 + 24, v8, v6 - v8);
  }

  *(a1 + 32) = v8;
  if (v8)
  {
    v10 = 0;
    do
    {
      v12 = 0;
      readObject(a2, &v12, a3);
      *(*(a1 + 24) + 8 * v10) = 0;
      if (v12)
      {
        v11 = MemChunkAlloc(0x10uLL, 0);
        *v11 = 0;
        v11[1] = 0;
        *(*(a1 + 24) + 8 * v10) = v11;
        readObject<unsigned short>(a2, *(*(a1 + 24) + 8 * v10), a3);
      }

      ++v10;
    }

    while (v10 < *(a1 + 32));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::writeObject(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  writeObject<unsigned short>(a2, (a1 + 8), a3);
  writeObject<unsigned short>(a2, (a1 + 40), a3);
  v13 = 0;
  writeObject(a2, &v13, a3);
  v12 = *a1;
  writeObject(a2, &v12, a3);
  v11 = *(a1 + 1);
  writeObject(a2, &v11, a3);
  v10 = a1[4];
  writeObject(a2, &v10, a3);
  v9 = a1[5];
  writeObject(a2, &v9, a3);
  v8 = *(a1 + 8);
  result = writeObject(a2, &v8, a3);
  if (*(a1 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 3) + 8 * v7) != 0;
      result = writeObject(a2, &v8, a3);
      if (v8)
      {
        result = writeObject<unsigned short>(a2, *(*(a1 + 3) + 8 * v7), a3);
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }

  return result;
}

uint64_t sizeObject<DgnPrimFixArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v11 = 0;
  v12 = 0;
  v3 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 8;
  }

  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        v6 = (*a1 + 16 * v4 - 8);
        do
        {
          v7 = *v6;
          v6 -= 4;
          v8 = (v3 | 1) + (v7 - 1);
          if (v7 <= 0)
          {
            v9 = v3;
          }

          else
          {
            v9 = v8;
          }

          v2 += v9;
          --v5;
        }

        while (v5 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - v4);
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v2;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned short>(a1 + 8, a2);
  v5 = sizeObject<DgnPrimArray<unsigned short> *>(a1 + 24, a2);
  v6 = sizeObject<unsigned short>(a1 + 40, a2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (a2 == 3)
  {
    v7 = 0;
  }

  return ((a2 != 3) | (2 * (a2 != 3))) + 2 * (a2 != 3) + v4 + v5 + v6 + v7 + 2 * v7;
}

uint64_t sizeObject<DgnPrimArray<unsigned short> *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject<unsigned short>(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t DgnArray<DgnPrimArray<unsigned int>>::operator==(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a2;
  result = 1;
  do
  {
    v6 = v2 - 1;
    if (v3 != v4)
    {
      v7 = v3 + 16 * v6;
      v8 = v4 + 16 * v6;
      v9 = *(v7 + 8);
      if (v9 != *(v8 + 8))
      {
        return 0;
      }

      v10 = *v8 - 4;
      while (v9 >= 1)
      {
        v11 = *v7 + 4 * v9;
        v12 = *(v10 + 4 * v9--);
        if (*(v11 - 4) != v12)
        {
          return 0;
        }
      }
    }
  }

  while (v2-- > 1);
  return result;
}

void PronCollMgr::checkSimple(PronCollMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  if (v8)
  {
    v10 = 0;
    for (i = 0; i < v8; v10 = ++i)
    {
      v12 = *(this + 1);
      v13 = *(v12 + 2 * i);
      v14 = v13 == i || v13 == 0xFFFF;
      if (!v14 && *(v12 + 2 * v13) != v13)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 112, "word/pcollmgr", 7, "%u %u %u", a7, a8, v10);
        v8 = *(this + 4);
      }
    }
  }
}

void PronCollMgr::loadPronCollMgrFromText(unsigned int **this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v78);
  DgnTextFileParser::openDgnTextFileParser(v78, a2, 0x3Au, 1);
  DgnTextFileParser::verifyMatchingFileType(v78, "PronCollation");
  v76 = 0;
  v77 = 0;
  DgnTextFile::legalDgnTextFileVersions(v78, sPCT_Versions, &v76, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v78, &v76, v9, v10, v11, v12, v13, v14);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v78, v15, v16, v17, v18, v19, v20, v21);
  v74 = 0;
  v75 = 0;
  DgnTextFile::getLineFieldNames(v78, &v74);
  v72 = 0;
  v73 = 0;
  DgnTextFile::getLineFieldFormats(v78, &v72);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v78, 2, v22, v23, v24, v25, v26, v27);
  v28 = v74;
  if (*(v74 + 2))
  {
    v29 = *v74;
  }

  else
  {
    v29 = &unk_2628913D4;
  }

  if (strcmp(v29, "HumanReadable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 146, "word/pcollmgr", 1, "%.500s %.500s", v30, v31, "HumanReadable");
    v28 = v74;
  }

  if (*v72)
  {
    if (*(v28 + 2))
    {
      v32 = *v28;
    }

    else
    {
      v32 = &unk_2628913D4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 149, "word/pcollmgr", 2, "%.500s %.500s", v30, v31, v32);
    v28 = v74;
  }

  if (*(v28 + 6))
  {
    v33 = *(v28 + 2);
  }

  else
  {
    v33 = &unk_2628913D4;
  }

  if (strcmp(v33, "CollatedHumanReadable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 154, "word/pcollmgr", 1, "%.500s %.500s", v34, v35, "CollatedHumanReadable");
  }

  if (*(v72 + 1))
  {
    if (*(v74 + 6))
    {
      v36 = *(v74 + 2);
    }

    else
    {
      v36 = &unk_2628913D4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 158, "word/pcollmgr", 2, "%.500s %.500s", v34, v35, v36);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v72);
  DgnArray<DgnString>::releaseAll(&v74);
  DgnIArray<Utterance *>::~DgnIArray(&v76);
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  PhnMgr::getPublicPhnIndexArray(*this, &v76);
  v37 = v77;
  LODWORD(v38) = v77;
  if (HIDWORD(v75) < v77)
  {
    v72 = 0;
    HIDWORD(v75) = realloc_array(v74, &v72, v77, v75, v75, 1);
    v74 = v72;
    LODWORD(v38) = v77;
  }

  LODWORD(v75) = v37;
  v39 = 0;
  if (v38)
  {
    v40 = v74;
    v41 = v76;
    v38 = v38;
    do
    {
      *v40++ = 0;
      v43 = *v41++;
      v42 = v43;
      if (v43 <= v39)
      {
        v39 = v39;
      }

      else
      {
        v39 = v42;
      }

      --v38;
    }

    while (v38);
  }

  v44 = v39 + 1;
  v45 = *(this + 5);
  if (v45 <= v39)
  {
    DgnPrimArray<short>::reallocElts((this + 1), v44 - v45, 0);
  }

  v46 = 0;
  *(this + 4) = v44;
  if ((v44 & 0xFFFE) != 0)
  {
    v47 = v44;
  }

  else
  {
    v47 = 1;
  }

  v48 = vdupq_n_s64(v47 - 1);
  v49 = xmmword_26286CCD0;
  v50 = xmmword_26286CCE0;
  v51 = xmmword_26286BF80;
  v52 = xmmword_26286B680;
  v53 = this[1] + 2;
  v54 = vdupq_n_s64(8uLL);
  do
  {
    v55 = vmovn_s64(vcgeq_u64(v48, v52));
    if (vuzp1_s8(vuzp1_s16(v55, *v48.i8), *v48.i8).u8[0])
    {
      *(v53 - 4) = v46;
    }

    if (vuzp1_s8(vuzp1_s16(v55, *&v48), *&v48).i8[1])
    {
      *(v53 - 3) = v46 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v51))), *&v48).i8[2])
    {
      *(v53 - 2) = v46 | 2;
      *(v53 - 1) = v46 | 3;
    }

    v56 = vmovn_s64(vcgeq_u64(v48, v50));
    if (vuzp1_s8(*&v48, vuzp1_s16(v56, *&v48)).i32[1])
    {
      *v53 = v46 | 4;
    }

    if (vuzp1_s8(*&v48, vuzp1_s16(v56, *&v48)).i8[5])
    {
      v53[1] = v46 | 5;
    }

    if (vuzp1_s8(*&v48, vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v49)))).i8[6])
    {
      v53[2] = v46 | 6;
      v53[3] = v46 | 7;
    }

    v46 += 8;
    v50 = vaddq_s64(v50, v54);
    v51 = vaddq_s64(v51, v54);
    v52 = vaddq_s64(v52, v54);
    v49 = vaddq_s64(v49, v54);
    v53 += 8;
  }

  while (((v47 + 7) & 0x1FFF8) != v46);
  DgnString::DgnString(&v72);
  DgnString::DgnString(&v70);
  while ((DgnTextFileParser::parseNextLine(v78) & 1) != 0)
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v78, 0);
    DgnString::operator=(&v72, LineFieldString);
    if (v73)
    {
      v60 = v72;
    }

    else
    {
      v60 = &unk_2628913D4;
    }

    PhnIndex = PhnMgr::getPhnIndex(*this, v60);
    v62 = PhnIndex;
    if (v77)
    {
      v63 = 0;
      while (v76[v63] != PhnIndex)
      {
        if (v77 == ++v63)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_57:
      v63 = 0xFFFFFFFFLL;
    }

    *(v74 + v63) = 1;
    v64 = DgnTextFileParser::getLineFieldString(v78, 1u);
    DgnString::operator=(&v70, v64);
    if (v71 >= 2)
    {
      v65 = PhnMgr::getPhnIndex(*this, v70);
    }

    else
    {
      v65 = -1;
    }

    *(this[1] + v62) = v65;
  }

  v66 = v75;
  if (v75)
  {
    v67 = 0;
    do
    {
      if ((*(v74 + v67) & 1) == 0)
      {
        v68 = *(*this + 1) + 16 * v76[v67];
        if (*(v68 + 8))
        {
          v69 = *v68;
        }

        else
        {
          v69 = &unk_2628913D4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 202, "word/pcollmgr", 6, "%.500s", v57, v58, v69);
        v66 = v75;
      }

      ++v67;
    }

    while (v67 < v66);
  }

  DgnString::~DgnString(&v70);
  DgnString::~DgnString(&v72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v76);
  DgnTextFileParser::~DgnTextFileParser(v78);
}

void sub_26281A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnTextFileParser::~DgnTextFileParser(va3);
  _Unwind_Resume(a1);
}

void PronCollMgr::loadPronCollMgr(unsigned int **this, char **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x3Au))
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 215, "word/pcollmgr", 3, "%s", v8, v9, &unk_2628913D4);
    }

    PronCollMgr::loadPronCollMgrFromText(this, a2);

    PronCollMgr::checkSimple(this, v10, v11, v12, v13, v14, v15, v16);
  }

  else if (DFile::subFileExists(a2, 0x38u))
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 222, "word/pcollmgr", 5, "%s", v17, v18, &errStr_word_pcollmgr_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v42[0] = 0;
    v45 = 0;
    v19 = OpenAndReadMrecHeader(a2, 0x38u, 1, "MRPCOL!?", v42, &v45);
    if (*(a2 + 6))
    {
      v20 = a2[2];
    }

    else
    {
      v20 = &unk_2628913D4;
    }

    MrecHeaderCheckVersions(v20, "MRPCOL!?", v42[0], v45, 0x13u, 3u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPCOL!?", v42[0], v45, 19, 3, v26, v27);
    v44 = 0;
    readObject<unsigned short>(v19, (this + 1), &v44);
    readObjectChecksumAndVerify(v19, v44);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x38u, v44);
    DgnDelete<DgnStream>(v19);
  }

  else
  {
    *v42 = 0;
    v43 = 0;
    PhnMgr::getPublicPhnIndexArray(*this, v42);
    v21 = v43;
    if (v43)
    {
      LOWORD(v22) = 0;
      v23 = *v42;
      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25 <= v22)
        {
          v22 = v22;
        }

        else
        {
          v22 = v24;
        }

        --v21;
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v29 = v22 + 1;
    v30 = *(this + 5);
    if (v30 <= v22)
    {
      DgnPrimArray<short>::reallocElts((this + 1), v29 - v30, 0);
    }

    v31 = 0;
    *(this + 4) = v29;
    if ((v29 & 0xFFFE) != 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = 1;
    }

    v33 = vdupq_n_s64(v32 - 1);
    v34 = xmmword_26286CCD0;
    v35 = xmmword_26286CCE0;
    v36 = xmmword_26286BF80;
    v37 = xmmword_26286B680;
    v38 = this[1] + 2;
    v39 = vdupq_n_s64(8uLL);
    do
    {
      v40 = vmovn_s64(vcgeq_u64(v33, v37));
      if (vuzp1_s8(vuzp1_s16(v40, *v33.i8), *v33.i8).u8[0])
      {
        *(v38 - 4) = v31;
      }

      if (vuzp1_s8(vuzp1_s16(v40, *&v33), *&v33).i8[1])
      {
        *(v38 - 3) = v31 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v36))), *&v33).i8[2])
      {
        *(v38 - 2) = v31 | 2;
        *(v38 - 1) = v31 | 3;
      }

      v41 = vmovn_s64(vcgeq_u64(v33, v35));
      if (vuzp1_s8(*&v33, vuzp1_s16(v41, *&v33)).i32[1])
      {
        *v38 = v31 | 4;
      }

      if (vuzp1_s8(*&v33, vuzp1_s16(v41, *&v33)).i8[5])
      {
        v38[1] = v31 | 5;
      }

      if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34)))).i8[6])
      {
        v38[2] = v31 | 6;
        v38[3] = v31 | 7;
      }

      v31 += 8;
      v35 = vaddq_s64(v35, v39);
      v36 = vaddq_s64(v36, v39);
      v37 = vaddq_s64(v37, v39);
      v34 = vaddq_s64(v34, v39);
      v38 += 8;
    }

    while (((v32 + 7) & 0x1FFF8) != v31);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v42);
  }
}

void sub_26281A494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void PronCollMgr::savePronCollMgrToText(PronCollMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v30);
  DgnTextFileWriter::openDgnTextFileWriter(v30, a2, 0x3Au, a3);
  v28 = 0;
  v29 = 0;
  DgnTextFile::legalDgnTextFileVersions(v30, sPCT_Versions, &v28, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v30, "PronCollation", (v28 + 8 * (v29 - 1)));
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  DgnString::DgnString(v23, "HumanReadable");
  v11 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v11 = v25;
  }

  DgnString::DgnString((v24 + 16 * v11), v23);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v23);
  v12 = v27;
  if (v27 == HIDWORD(v27))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v26, 1, 1);
    v12 = v27;
  }

  *(v26 + 4 * v12) = 0;
  LODWORD(v27) = v12 + 1;
  DgnString::DgnString(v23, "CollatedHumanReadable");
  v13 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v13 = v25;
  }

  DgnString::DgnString((v24 + 16 * v13), v23);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v23);
  v14 = v27;
  if (v27 == HIDWORD(v27))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v26, 1, 1);
    v14 = v27;
  }

  *(v26 + 4 * v14) = 0;
  LODWORD(v27) = v14 + 1;
  DgnTextFileWriter::setLineFieldFormat(v30, &v26, &v24);
  v15 = *(this + 4);
  if (v15)
  {
    for (i = 0; i < v15; ++i)
    {
      if (i)
      {
        v17 = *this;
        if (*(*this + 60) != i && *(v17 + 56) != i && *(v17 + 58) != i)
        {
          v18 = *(v17 + 8) + 16 * i;
          if (*(v18 + 8))
          {
            v19 = *v18;
          }

          else
          {
            v19 = &unk_2628913D4;
          }

          DgnTextFileWriter::setLineFieldValue(v30, 0, v19);
          v20 = *(*(this + 1) + 2 * i);
          if (v20 == 0xFFFF || (v21 = *(*this + 8) + 16 * v20, !*(v21 + 8)))
          {
            v22 = &unk_2628913D4;
          }

          else
          {
            v22 = *v21;
          }

          DgnTextFileWriter::setLineFieldValue(v30, 1u, v22);
          DgnTextFileWriter::writeNextLine(v30);
          v15 = *(this + 4);
        }
      }
    }
  }

  DgnArray<DgnString>::releaseAll(&v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  DgnIArray<Utterance *>::~DgnIArray(&v28);
  DgnTextFileWriter::~DgnTextFileWriter(v30);
}

void sub_26281A74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PronCollMgr::savePronCollMgr(PronCollMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    PronCollMgr::savePronCollMgrToText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x38u, a5, "MRPCOL!?", 19, 3);
    v10 = 0;
    writeObject<unsigned short>(v8, this + 8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x38u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void PronCollMgr::printSize(PronCollMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 338, &v43);
  if (v44)
  {
    v16 = v43;
  }

  else
  {
    v16 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_2628913D4, a3, &unk_2628913D4, v16);
  DgnString::~DgnString(&v43);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_2628913D4);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 339, &v43);
  if (v44)
  {
    v26 = v43;
  }

  else
  {
    v26 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_2628913D4, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v43);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  v28 = *(this + 4);
  v29 = *(this + 5);
  if (v29 >= v28)
  {
    v30 = 0;
    if (v28 > 0)
    {
      v27 += 2 * (v28 - 1) + 2;
    }

    v31 = v27 + 2 * (v29 - v28);
  }

  else
  {
    v30 = 2 * v28;
    v31 = v27;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 341, &v43);
  if (v44)
  {
    v36 = v43;
  }

  else
  {
    v36 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_2628913D4, (34 - a3), (34 - a3), v36, v31, v27, v30);
  DgnString::~DgnString(&v43);
  *a4 += v31;
  *a5 += v27;
  *a6 += v30;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 343, &v43);
  if (v44)
  {
    v41 = v43;
  }

  else
  {
    v41 = &unk_2628913D4;
  }

  v42 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, a3, &unk_2628913D4, (35 - a3), (35 - a3), v41, *a4, *a5, *a6);
  DgnString::~DgnString(&v43);
}

void sub_26281AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t PronCollMgr::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(a1 + 8) + 2 * v2;
    v5 = *(*(a2 + 8) - 2 + 2 * v2--);
  }

  while (*(v4 - 2) == v5);
  return v3;
}

void MrecInitModule_paramspec_mrecutil(void)
{
  if (!gParDebugShowParamSetRefCounting)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowParamSetRefCounting", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowParamSetRefCounting = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowParamSetRefCounting);
  }
}

void ParamSpec::getDescription(ParamSpec *this, DgnString *a2)
{
  *(a2 + 2) = 0;
  if (**(this + 3))
  {
    DgnString::DgnString(v5);
    FileSpec::getRelativeSourceFileName(*(this + 3), v5, v4);
    DgnString::operator+=(a2, "[");
    DgnString::operator+=(a2, v5);
    DgnString::operator+=(a2, "] ");
    DgnString::operator+=(a2, *(this + 2));
    DgnString::~DgnString(v5);
  }
}

void ParamSpecMgr::ParamSpecMgr(ParamSpecMgr *this)
{
  *(this + 1) = 0u;
  v2 = this + 16;
  *this = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this, 256, 0);
  v3 = *(this + 7);
  if (v3 <= 0xFF)
  {
    DgnPrimArray<unsigned int>::reallocElts(v2, 256 - v3, 0);
  }
}

void sub_26281AD20(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnIOwnArray<ParamSpec *>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void ParamSpecMgr::startupParamSpecMgrs(ParamSpecMgr *this)
{
  v1 = 1u;
  do
  {
    v2 = MemChunkAlloc(0x20uLL, 0);
    ParamSpecMgr::ParamSpecMgr(v2);
    ParamSpecMgr::smpParamSpecMgrArray[v1++] = v3;
  }

  while (v1 != 13);
}

void ParamSpecMgr::printSize(ParamSpecMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 229, &v44);
  if (v45)
  {
    v16 = v44;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v44);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v21 = sizeObject<ParamSpec *>(this, 0);
    v22 = sizeObject<ParamSpec *>(this, 1);
    getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 238, &v44);
    if (v45)
    {
      v27 = v44;
    }

    else
    {
      v27 = &byte_262899963;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, v21, v22, 0);
    DgnString::~DgnString(&v44);
    *a4 += v21;
    *a5 += v22;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v28 = 12;
    }

    else
    {
      v28 = 16;
    }

    v29 = *(this + 6);
    v30 = *(this + 7);
    if (v30 >= v29)
    {
      v31 = 0;
      if (v29 > 0)
      {
        v28 += 4 * (v29 - 1) + 4;
      }

      v32 = v28 + 4 * (v30 - v29);
    }

    else
    {
      v31 = 4 * v29;
      v32 = v28;
    }

    getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 240, &v44);
    if (v45)
    {
      v37 = v44;
    }

    else
    {
      v37 = &byte_262899963;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, v32, v28, v31);
    DgnString::~DgnString(&v44);
    *a4 += v32;
    *a5 += v28;
    *a6 += v31;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 242, &v44);
  if (v45)
  {
    v42 = v44;
  }

  else
  {
    v42 = &byte_262899963;
  }

  v43 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, a3, &byte_262899963, (35 - a3), (35 - a3), v42, *a4, *a5, *a6);
  DgnString::~DgnString(&v44);
}

void sub_26281B028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<ParamSpec *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += (*(*v10 + 16))(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t ParamSpecMgr::getParamIdByParamName(ParamSpecMgr *this, const char *__s2)
{
  v4 = 0;
  v5 = *(this + 2);
  while (v5 != v4)
  {
    if (!strcmp(*(*(*this + 8 * v4++) + 8), __s2))
    {
      return v4;
    }
  }

  LOWORD(v4) = -1;
  return v4;
}

unint64_t ParamSpecMgr::addParam(unint64_t this, ParamSpec *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 == *(this + 12))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
    v4 = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = a2;
  *(v3 + 8) = v4 + 1;
  return this;
}

uint64_t ParamSpecMgr::sortParams(ParamSpecMgr *this)
{
  *(this + 6) = 0;
  if (*(this + 2))
  {
    LODWORD(v2) = 0;
    v3 = 0;
    do
    {
      if (v2 == *(this + 7))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 16, 1, 1);
        LODWORD(v2) = *(this + 6);
      }

      v4 = *(this + 2);
      *(v4 + 4 * v2) = v3;
      v2 = (*(this + 6) + 1);
      *(this + 6) = v2;
      ++v3;
    }

    while (v3 < *(this + 2));
  }

  else
  {
    v2 = 0;
    v4 = *(this + 2);
  }

  return mrec_qsort_r<ParamSpecMgr>(v4, v2, 4, this);
}

uint64_t mrec_qsort_r<ParamSpecMgr>(uint64_t result, unint64_t a2, const char *a3, void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v108 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v111 = ((result | a3) & 7) == 0;
  v112 = v8;
  if (a2 < 7)
  {
LABEL_120:
    if ((v5 * a3) > a3)
    {
      v82 = (v6 + v5 * a3);
      v83 = &a3[v6];
      v84 = v6;
      do
      {
        if (v83 > v6)
        {
          v85 = v84;
          v86 = v83;
          do
          {
            v87 = v86;
            v86 += v7;
            result = DgnString::compareNoCase(*(*(*a4 + 8 * *v86) + 8), *(*(*a4 + 8 * *v87) + 8), a3);
            if (result < 1)
            {
              break;
            }

            if (v112)
            {
              if (v111)
              {
                v88 = 0;
                v89 = v86;
                do
                {
                  v90 = *&v87[8 * v88];
                  *&v87[8 * v88] = *v89;
                  *v89 = v90;
                  v89 += 8;
                  ++v88;
                }

                while (a3 >> 3 != v88);
              }

              else
              {
                v92 = 0;
                v93 = a3;
                do
                {
                  v94 = v87[v92];
                  v87[v92] = *(v85 + v92);
                  *(v85 + v92++) = v94;
                  --v93;
                }

                while (v93);
              }
            }

            else
            {
              v91 = *v87;
              *v87 = *v86;
              *v86 = v91;
            }

            v85 += v7;
          }

          while (v86 > v6);
        }

        v83 = &a3[v83];
        v84 += a3;
      }

      while (v83 < v82);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v109 = v5;
    if (v5 == 7)
    {
      goto LABEL_47;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 < 0x29)
    {
      v16 = v6;
      goto LABEL_38;
    }

    v107 = (v6 + (v5 - 1) * a3);
    v13 = v5 >> 3;
    v14 = v9;
    v15 = v13 * a3;
    v16 = (v6 + v13 * a3);
    v17 = (v6 + 2 * v13 * a3);
    v18 = DgnString::compareNoCase(*(*(*v14 + 8 * *v6) + 8), *(*(*v14 + 8 * *v16) + 8), a3);
    v20 = DgnString::compareNoCase(*(*(*v14 + 8 * *v16) + 8), *(*(*v14 + 8 * *v17) + 8), v19);
    if (v18 < 0)
    {
      if ((v20 & 0x80000000) == 0)
      {
        if (DgnString::compareNoCase(*(*(*a4 + 8 * *v6) + 8), *(*(*a4 + 8 * *v17) + 8), v21) >= 0)
        {
          v16 = v6;
        }

        else
        {
          v16 = (v6 + 2 * v15);
        }
      }
    }

    else if (v20 <= 0)
    {
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v6) + 8), *(*(*a4 + 8 * *v17) + 8), v21) >= 0)
      {
        v16 = (v6 + 2 * v15);
      }

      else
      {
        v16 = v6;
      }
    }

    v22 = (v11 - v15);
    v23 = (v11 + v15);
    v24 = DgnString::compareNoCase(*(*(*a4 + 8 * *(v11 - v15)) + 8), *(*(*a4 + 8 * *v11) + 8), v21);
    v26 = DgnString::compareNoCase(*(*(*a4 + 8 * *v11) + 8), *(*(*a4 + 8 * *(v11 + v15)) + 8), v25);
    if (v24 < 0)
    {
      if ((v26 & 0x80000000) == 0)
      {
        if (DgnString::compareNoCase(*(*(*a4 + 8 * *v22) + 8), *(*(*a4 + 8 * *v23) + 8), v27) >= 0)
        {
          v11 = (v11 - v15);
        }

        else
        {
          v11 = (v11 + v15);
        }
      }
    }

    else if (v26 <= 0)
    {
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v22) + 8), *(*(*a4 + 8 * *v23) + 8), v27) >= 0)
      {
        v11 = (v11 + v15);
      }

      else
      {
        v11 = (v11 - v15);
      }
    }

    v28 = -v15;
    v29 = (v107 - 2 * v15);
    v12 = (v107 + v28);
    v30 = DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *(v107 + v28)) + 8), v27);
    v32 = DgnString::compareNoCase(*(*(*a4 + 8 * *v12) + 8), *(*(*a4 + 8 * *v107) + 8), v31);
    if (v30 < 0)
    {
      if (v32 < 0)
      {
LABEL_36:
        v9 = a4;
        goto LABEL_37;
      }

      v33 = a4;
      v12 = v107;
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *v107) + 8), a3) >= 0)
      {
        v12 = v29;
      }
    }

    else
    {
      if (v32 > 0)
      {
        goto LABEL_36;
      }

      v33 = a4;
      v12 = v107;
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *v107) + 8), a3) < 0)
      {
        v12 = v29;
      }
    }

    v9 = v33;
LABEL_37:
    v5 = v109;
LABEL_38:
    v34 = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v11) + 8), a3);
    result = DgnString::compareNoCase(*(*(*v9 + 8 * *v11) + 8), *(*(*v9 + 8 * *v12) + 8), v35);
    if (v34 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v12) + 8), a3);
        if (result >= 0)
        {
          v11 = v16;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v12) + 8), a3);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v16;
      }
    }

LABEL_47:
    if (v112)
    {
      if (v111)
      {
        v36 = v6;
        v37 = a3 >> 3;
        do
        {
          v38 = *v36;
          *v36++ = *v11;
          *v11++ = v38;
          --v37;
        }

        while (v37);
      }

      else
      {
        v40 = a3;
        v41 = v6;
        do
        {
          v42 = *v41;
          *v41++ = *v11;
          *v11 = v42;
          v11 = (v11 + 1);
          --v40;
        }

        while (v40);
      }
    }

    else
    {
      v39 = *v6;
      *v6 = *v11;
      *v11 = v39;
    }

    v43 = 0;
    v44 = &a3[v6];
    v45 = (v6 + (v5 - 1) * a3);
    v46 = v45;
    v47 = &a3[v6];
LABEL_56:
    while (v47 <= v46)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v47) + 8), *(*(*v9 + 8 * *v6) + 8), a3);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v112)
        {
          if (v111)
          {
            v48 = 0;
            do
            {
              v49 = *&v44[8 * v48];
              *&v44[8 * v48] = *&v47[8 * v48];
              *&v47[8 * v48++] = v49;
            }

            while (v10 != v48);
          }

          else
          {
            v58 = 0;
            do
            {
              v59 = v58[v44];
              v58[v44] = v58[v47];
              (v58++)[v47] = v59;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v57 = *v44;
          *v44 = *v47;
          *v47 = v57;
        }

        v44 = &a3[v44];
        v43 = 1;
      }

      v47 = &a3[v47];
    }

    while (v47 <= v46)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v46) + 8), *(*(*v9 + 8 * *v6) + 8), a3);
      if ((result & 0x80000000) != 0)
      {
        if (v112)
        {
          if (v111)
          {
            v55 = 0;
            do
            {
              v56 = *&v47[8 * v55];
              *&v47[8 * v55] = *&v46[8 * v55];
              *&v46[8 * v55++] = v56;
            }

            while (v10 != v55);
          }

          else
          {
            v61 = 0;
            do
            {
              v62 = v61[v47];
              v61[v47] = v61[v46];
              (v61++)[v46] = v62;
            }

            while (a3 != v61);
          }
        }

        else
        {
          v60 = *v47;
          *v47 = *v46;
          *v46 = v60;
        }

        v47 = &a3[v47];
        v46 += v7;
        v43 = 1;
        goto LABEL_56;
      }

      if (!result)
      {
        if (v112)
        {
          if (v111)
          {
            v50 = 0;
            do
            {
              v51 = *&v46[8 * v50];
              *&v46[8 * v50] = *&v45[8 * v50];
              *&v45[8 * v50++] = v51;
            }

            while (v10 != v50);
          }

          else
          {
            v53 = 0;
            do
            {
              v54 = v53[v46];
              v53[v46] = v53[v45];
              (v53++)[v45] = v54;
            }

            while (a3 != v53);
          }
        }

        else
        {
          v52 = *v46;
          *v46 = *v45;
          *v45 = v52;
        }

        v45 += v7;
        v43 = 1;
      }

      v46 += v7;
    }

    v63 = (v6 + v109 * a3);
    if (!v43)
    {
      break;
    }

    v64 = v47 - v44;
    if (&v44[-v6] >= v47 - v44)
    {
      v65 = v47 - v44;
    }

    else
    {
      v65 = &v44[-v6];
    }

    if (v65)
    {
      if (v111)
      {
        v66 = &v47[-v65];
        v67 = v65 >> 3;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = *v66;
          *v66 = v69;
          v66 += 8;
          --v67;
        }

        while (v67);
      }

      else
      {
        v70 = -v65;
        v71 = v6;
        do
        {
          v72 = *v71;
          *v71++ = v47[v70];
          v47[v70] = v72;
          v73 = __CFADD__(v70++, 1);
        }

        while (!v73);
      }
    }

    v74 = v45 - v46;
    if (v45 - v46 >= v63 - &a3[v45])
    {
      v75 = v63 - &a3[v45];
    }

    else
    {
      v75 = v45 - v46;
    }

    if (v75)
    {
      if (v111)
      {
        v76 = &v63[-v75];
        v77 = v75 >> 3;
        do
        {
          v78 = *v47;
          *v47 = *v76;
          v47 += 8;
          *v76 = v78;
          v76 += 8;
          --v77;
        }

        while (v77);
      }

      else
      {
        v79 = -v75;
        do
        {
          v80 = *v47;
          *v47++ = v63[v79];
          v63[v79] = v80;
          v73 = __CFADD__(v79++, 1);
        }

        while (!v73);
      }
    }

    if (v64 > a3)
    {
      result = mrec_qsort_r<ParamSpecMgr>(v6, v64 / a3, a3, a4);
    }

    if (v74 <= a3)
    {
      return result;
    }

    v6 = &v63[-v74];
    v5 = v74 / a3;
    v81 = v108;
    if ((((v63 - v74) | a3) & 7) != 0)
    {
      v81 = 2;
    }

    v111 = (((v63 - v74) | a3) & 7) == 0;
    v112 = v81;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_120;
    }
  }

  v95 = &a3[v6];
  if ((v109 * a3) > a3)
  {
    v96 = v6;
    do
    {
      if (v95 > v6)
      {
        v97 = v96;
        v98 = v95;
        do
        {
          v99 = v98;
          v98 += v7;
          result = DgnString::compareNoCase(*(*(*a4 + 8 * *v98) + 8), *(*(*a4 + 8 * *v99) + 8), a3);
          if (result < 1)
          {
            break;
          }

          if (v112)
          {
            if (v111)
            {
              v100 = 0;
              v101 = v98;
              do
              {
                v102 = *&v99[8 * v100];
                *&v99[8 * v100] = *v101;
                *v101 = v102;
                v101 += 8;
                ++v100;
              }

              while (v10 != v100);
            }

            else
            {
              v104 = 0;
              v105 = a3;
              do
              {
                v106 = v99[v104];
                v99[v104] = *(v97 + v104);
                *(v97 + v104++) = v106;
                --v105;
              }

              while (v105);
            }
          }

          else
          {
            v103 = *v99;
            *v99 = *v98;
            *v98 = v103;
          }

          v97 += v7;
        }

        while (v98 > v6);
      }

      v95 = &a3[v95];
      v96 += a3;
    }

    while (v95 < v63);
  }

  return result;
}

uint64_t ParamSpecMgr::getParamByParamId(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 - 1;
  if ((a2 - 1) >= *(this + 2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 289, "mrecutil/paramspec", 3, "%d", a7, a8, a2);
  }

  return *(*this + 8 * v9);
}

unint64_t ParamSpecMgr::getAllParamIdsSortedByName(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  *(a2 + 8) = 0;
  v8 = *(result + 24);
  v9 = *(a2 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<short>::reallocElts(a2, v8 - v9, 0);
    v8 = *(v7 + 24);
  }

  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = *(*(v7 + 16) + 4 * v10);
      result = (*(**(*v7 + 8 * v11) + 32))(*(*v7 + 8 * v11), a3, a4);
      if (result)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 12))
        {
          result = DgnPrimArray<short>::reallocElts(a2, 1, 1);
          v12 = *(a2 + 8);
        }

        *(*a2 + 2 * v12) = v11 + 1;
        *(a2 + 8) = v12 + 1;
      }

      ++v10;
    }

    while (v10 < *(v7 + 24));
  }

  return result;
}

uint64_t ParamSpecMgr::ParamGetDefault_BOOL(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v14 = ParamByParamId;
    v15 = *ParamByParamId;
    v16 = **ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 359, "mrecutil/paramspec", 4, "%d", v17, v18, v10);
      v15 = *v14;
    }

    v19 = *v15;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 359, "mrecutil/paramspec", 4, "%d", v12, v13, v10);
    v20 = 0;
  }

  return BoolParamSpec::getDefault(v20, v9, v8);
}

uint64_t BoolParamSpec::getDefault(BoolParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 5);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[3 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return BYTE1(v3[3 * v5 + 2]);
}

uint64_t ParamSpecMgr::ParamGetDefault_int(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v14 = ParamByParamId;
    v15 = *ParamByParamId;
    v16 = **ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 368, "mrecutil/paramspec", 4, "%d", v17, v18, v10);
      v15 = *v14;
    }

    v19 = *v15;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 367, "mrecutil/paramspec", 3, "%d", v12, v13, v10);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 368, "mrecutil/paramspec", 4, "%d", v21, v22, v10);
    v20 = 0;
  }

  return IntParamSpec::getDefault(v20, v9, v8);
}

uint64_t IntParamSpec::getDefault(IntParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return v3[6 * v5 + 3];
}

uint64_t ParamSpecMgr::ParamGetDefault_string(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v14 = ParamByParamId;
    v15 = *ParamByParamId;
    v16 = **ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 377, "mrecutil/paramspec", 4, "%d", v17, v18, v10);
      v15 = *v14;
    }

    v19 = *v15;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 377, "mrecutil/paramspec", 4, "%d", v12, v13, v10);
    v20 = 0;
  }

  return StringParamSpec::getDefault(v20, v9, v8);
}

uint64_t StringParamSpec::getDefault(StringParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 6);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 6);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return *&v3[6 * v5 + 4];
}

uint64_t ParamSpecMgr::ParamGetDefault_enum(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (!ParamByParamId)
  {
    ParamSpecMgr::ParamGetDefault_enum(v8, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = ParamByParamId;
  v18 = *ParamByParamId;
  v19 = **ParamByParamId;
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 388, "mrecutil/paramspec", 4, "%d", v20, v21, v8);
    v18 = *v17;
  }

  v22 = *v18;
  if (!**(v23 + 24))
  {
    return 0;
  }

  v24 = v23 + 16;
  v25 = 1;
  v26 = v24;
  while (*v26 != 1)
  {
    v26 = v24 + 32 * v25++;
    if (!**(v26 + 8))
    {
      return 0;
    }
  }

  return *(v26 + 16);
}

char *ParamSpecMgr::ParamGetDefault_enumAsString(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v14 = ParamByParamId;
    v15 = *ParamByParamId;
    v16 = **ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 401, "mrecutil/paramspec", 4, "%d", v17, v18, v10);
      v15 = *v14;
    }

    v19 = *v15;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 401, "mrecutil/paramspec", 4, "%d", v12, v13, v10);
    v20 = 0;
  }

  return EnumParamSpec::getDefaultAsString(v20, v9, v8);
}

char *EnumParamSpec::getDefaultAsString(EnumParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[84 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  v7 = &v3[84 * v5];
  result = *(v7 + 3);
  if (!*result)
  {
    return &byte_262899963;
  }

  if ((v7[4] & 1) == 0)
  {
    v9 = 1;
    v10 = &v3[84 * v5];
    result = &byte_262899963;
    while (1)
    {
      v11 = &v10[8 * v9];
      if (!**(v11 + 3))
      {
        break;
      }

      ++v9;
      if (*(v11 + 16) == 1)
      {
        return *(v11 + 3);
      }
    }
  }

  return result;
}

double ParamSpecMgr::ParamGetDefault_double(ParamSpecMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v14 = ParamByParamId;
    v15 = *ParamByParamId;
    v16 = **ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 412, "mrecutil/paramspec", 4, "%d", v17, v18, v10);
      v15 = *v14;
    }

    v19 = *v15;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 412, "mrecutil/paramspec", 4, "%d", v12, v13, v10);
    v20 = 0;
  }

  return DoubleParamSpec::getDefault(v20, v9, v8);
}

double DoubleParamSpec::getDefault(DoubleParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[10 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return *&v3[10 * v5 + 4];
}

void *IntParamSpec::IntParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528C80;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t IntParamSpec::sizeObject(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v2 = (a2 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = 20;
  if (v2)
  {
    v3 = 0;
  }

  v4 = 24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

void IntParamSpec::validateValue(IntParamSpec *this, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  if (a4 | a3 && (v9 = *v8, *v8 >= a3))
  {
    v10 = 0;
    v11 = *(this + 4);
    do
    {
      if (v9 == a3 && v11[1] <= a4)
      {
        break;
      }

      v11 = &v8[6 * ++v10];
      v9 = *v11;
    }

    while (*v11 >= a3);
  }

  else
  {
    v10 = 0;
  }

  v12 = &v8[6 * v10];
  if (v12[3] != a2 && (v12[4] > a2 || v12[5] < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 480, "mrecutil/paramspec", 1, "%.500s", a7, a8, *(this + 1));
  }
}

void *EnumParamSpec::EnumParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528798;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t EnumParamSpec::sizeObject(uint64_t a1, int a2)
{
  v3 = gShadowDiagnosticShowIdealizedObjectSizes;
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (a2 != 2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v5 += sizeObject(v6, a2);
    }
  }

  v7 = 16;
  if (v3)
  {
    v7 = 8;
  }

  if (a2 == 3)
  {
    v7 = 0;
  }

  return v5 + v7;
}

DgnString *EnumParamSpec::getDescription(EnumParamSpec *this, DgnString *a2)
{
  ParamSpec::getDescription(this, a2);
  result = DgnString::operator+=(a2, " ==> LegalVals: ");
  v5 = *(this + 4);
  v6 = *(v5 + 24);
  if (*v6)
  {
    v7 = (v5 + 40);
    do
    {
      DgnString::operator+=(a2, v6);
      result = DgnString::operator+=(a2, " ");
      if (*v7)
      {
        if (**v7)
        {
          DgnString::operator+=(a2, "[");
          DgnString::operator+=(a2, *v7);
          result = DgnString::operator+=(a2, "] ");
        }
      }

      v6 = v7[2];
      v7 += 4;
    }

    while (*v6);
  }

  return result;
}

void EnumParamSpec::validateValue(EnumParamSpec *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v9 = **(v8 + 24);
  if (**(v8 + 24))
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v12 = 0;
    v13 = (v8 + 32);
    v14 = v13;
    while (1)
    {
      if (*(v14 - 16) == 1)
      {
        v12 = *v14;
      }

      if (v10)
      {
        v15 = *v14;
        if (v9 >= *v14)
        {
          v9 = *v14;
        }

        if (v11 >= v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = *v13;
        v9 = *v13;
      }

      v11 = v15;
LABEL_12:
      v16 = **(v14 + 3);
      v14 += 8;
      --v10;
      if (!v16)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_15:
  if (v12 != a2 && (v9 > a2 || v11 < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 646, "mrecutil/paramspec", 1, "%.500s", a7, a8, *(this + 1));
  }
}

uint64_t EnumParamSpec::convertEnumStringToInt(EnumParamSpec *this, const char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 4);
  v11 = *(v10 + 24);
  if (*v11)
  {
    v12 = (v10 + 32);
    while (strcmp(__s1, v11))
    {
      v11 = v12[3];
      v12 += 4;
      if (!*v11)
      {
        goto LABEL_5;
      }
    }

    return *v12;
  }

  else
  {
LABEL_5:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 661, "mrecutil/paramspec", 2, "%.500s %.500s", a7, a8, *(this + 1));
    return 0;
  }
}

uint64_t EnumParamSpec::checkStringEnumValue(EnumParamSpec *this, char *a2, unsigned int a3, unsigned int a4)
{
  v6 = *(this + 4);
  if (a4 | a3 && (v7 = *v6, *v6 >= a3))
  {
    v8 = 0;
    v9 = *(this + 4);
    do
    {
      if (v7 == a3 && v9[1] <= a4)
      {
        break;
      }

      v9 = &v6[84 * ++v8];
      v7 = *v9;
    }

    while (*v9 >= a3);
  }

  else
  {
    v8 = 0;
  }

  v10 = *&v6[84 * v8 + 6];
  v11 = *v10;
  if (*v10)
  {
    v12 = 336 * v8 + 56;
    do
    {
      v13 = ustrcmp(v10, a2);
      v11 = v13 == 0;
      if (!v13)
      {
        break;
      }

      v10 = *(*(this + 4) + v12);
      v12 += 32;
    }

    while (*v10);
  }

  return v11;
}

void *BoolParamSpec::BoolParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528858;
  result[1] = a2;
  result[5] = a5;
  return result;
}

uint64_t BoolParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2 + 1;
  }
}

void *DoubleParamSpec::DoubleParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287527BB8;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t DoubleParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void DoubleParamSpec::getDescription(DoubleParamSpec *this, DgnString *a2)
{
  ParamSpec::getDescription(this, a2);
  DgnString::operator+=(a2, " ==> Range ");
  DgnString::formatFloat(0xE, *(*(this + 4) + 24), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
  DgnString::operator+=(a2, " to ");
  DgnString::formatFloat(0xE, *(*(this + 4) + 32), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
}

void DoubleParamSpec::validateValue(DoubleParamSpec *this, double a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(this + 4);
  if (a4 | a3 && (v10 = *v9, *v9 >= a3))
  {
    v11 = 0;
    v12 = *(this + 4);
    do
    {
      if (v10 == a3 && v12[1] <= a4)
      {
        break;
      }

      v12 = &v9[10 * ++v11];
      v10 = *v12;
    }

    while (*v12 >= a3);
  }

  else
  {
    v11 = 0;
  }

  v13 = &v9[10 * v11];
  if (v13[2] != a2 && (v13[3] > a2 || v13[4] < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 808, "mrecutil/paramspec", 1, "%.500s", a8, a9, *(this + 1));
  }
}

void *StringParamSpec::StringParamSpec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = a4;
  a1[3] = a3;
  *a1 = &unk_287527820;
  a1[1] = a2;
  DgnString::DgnString((a1 + 4));
  a1[6] = a5;
  return a1;
}

void StringParamSpec::~StringParamSpec(StringParamSpec *this)
{
  *this = &unk_287527820;
  DgnString::~DgnString((this + 32));
}

{
  *this = &unk_287527820;
  DgnString::~DgnString((this + 32));

  JUMPOUT(0x26672B1B0);
}

uint64_t StringParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3 + sizeObject(a1 + 32);
}

uint64_t IntParamSpec::isPresent(IntParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[6 * v5 + 2]);
}

uint64_t EnumParamSpec::isPresent(EnumParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[84 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[84 * v5 + 2]);
}

uint64_t BoolParamSpec::isPresent(BoolParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 5);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[3 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[3 * v5 + 2]);
}

uint64_t DoubleParamSpec::isPresent(DoubleParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[10 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[10 * v5 + 2]);
}

uint64_t StringParamSpec::isPresent(StringParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 6);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 6);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[6 * v5 + 2]);
}

void *DgnIOwnArray<ParamSpec *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<ParamSpec>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void (***DgnDelete<ParamSpec>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_recentb_lm(void)
{
  if (!gParDebugShowRecentBufferOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowRecentBufferOnLoad", byte_262891468, byte_262891468, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowRecentBufferOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowRecentBufferOnLoad);
  }

  if (!gParDebugRecentBufferScoring)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugRecentBufferScoring", byte_262891468, byte_262891468, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugRecentBufferScoring = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecentBufferScoring);
  }

  if (!gParDebugRecentBufferAddDelete)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugRecentBufferAddDelete", byte_262891468, byte_262891468, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugRecentBufferAddDelete = v5;
    v6 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v6, &gParDebugRecentBufferAddDelete);
  }
}

void RecentBuffer::RecentBuffer(RecentBuffer *this, int a2, const WordList *a3, LanguageModel *a4, LanguageModel *a5)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::Hash(this + 80, 0, 16);
  DgnString::DgnString((this + 192));
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::Hash(this + 304, 0, 16);
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 110) = 0;
  *(this + 54) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  DgnString::DgnString((this + 496));
  *(this + 32) = 0u;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 1) = a3;
  *this = a2;
  v10 = (*(*a5 + 528))(a5);
  *(this + 4) = v10;
  WordLanguageModel::registerRecentBuffer(v10, this);
  *(this + 70) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 254) = 0;
  LODWORD(v11) = *this;
  CombineTable::initCombineTable(this + 432, v11);
  v13 = (40 * *this) | 1;
  v14 = *(this + 115);
  if (v14 <= 40 * *this)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 448, v13 - v14, 0);
  }

  v15 = 0;
  *(this + 114) = v13;
  do
  {
    LODWORD(v12) = *this;
    *(*(this + 56) + 8 * v15) = DgnExp(-v15 / v12);
    ++v15;
  }

  while (v15 < *(this + 114));
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 72) = 0;
  *(this + 37) = 20000;
  v16 = vdup_n_s16(0x4E20u);
  *(this + 60) = v16;
  *(this + 488) = 0;
  *(this + 66) = v16;
}

void sub_26281D7BC(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 512);
  BitArray::~BitArray((v1 + 496));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 448);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 432);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 416);
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  BitArray::~BitArray((v1 + 192));
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(v1 + 80);
  _Unwind_Resume(a1);
}

unint64_t WordLanguageModel::registerRecentBuffer(unint64_t this, RecentBuffer *a2)
{
  v3 = this;
  v4 = *(this + 216);
  if (v4 == *(this + 220))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this + 208, 1, 1);
    v4 = *(v3 + 216);
  }

  *(*(v3 + 208) + 8 * v4) = a2;
  *(v3 + 216) = v4 + 1;
  return this;
}

void RecentBuffer::~RecentBuffer(RecentBuffer *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 216);
  if (v3)
  {
    v4 = *(v2 + 216);
    v5 = *(v2 + 208);
    while (*v5 != this)
    {
      ++v5;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v6 = v3 - 1;
    *v5 = *(*(v2 + 208) + 8 * v6);
    *(v2 + 216) = v6;
  }

LABEL_7:
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 512);
  BitArray::~BitArray((this + 496));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 448);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 432);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 416);
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  BitArray::~BitArray((this + 192));
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(this + 80);
}

void RecentBuffer::printSize(RecentBuffer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 428, &v306);
  if (v307)
  {
    v15 = v306;
  }

  else
  {
    v15 = &unk_262891468;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_262891468, a3, &unk_262891468, v15);
  DgnString::~DgnString(&v306);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_262891468);
  v20 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 430, &v306);
  if (v307)
  {
    v25 = v306;
  }

  else
  {
    v25 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 432, &v306);
  if (v307)
  {
    v31 = v306;
  }

  else
  {
    v31 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v31, v26, v26, 0);
  DgnString::~DgnString(&v306);
  *a4 += v26;
  *a5 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 433, &v306);
  if (v307)
  {
    v37 = v306;
  }

  else
  {
    v37 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v37, v32, v32, 0);
  DgnString::~DgnString(&v306);
  *a4 += v32;
  *a5 += v32;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 434, &v306);
  if (v307)
  {
    v43 = v306;
  }

  else
  {
    v43 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v43, v38, v38, 0);
  DgnString::~DgnString(&v306);
  *a4 += v38;
  *a5 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 4;
  }

  else
  {
    v44 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 435, &v306);
  if (v307)
  {
    v49 = v306;
  }

  else
  {
    v49 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v49, v44, v44, 0);
  DgnString::~DgnString(&v306);
  *a4 += v44;
  *a5 += v44;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 438, &v306);
  if (v307)
  {
    v54 = v306;
  }

  else
  {
    v54 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v54, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 440, &v306);
  if (v307)
  {
    v59 = v306;
  }

  else
  {
    v59 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v59, 8, 8, 0);
  DgnString::~DgnString(&v306);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 442, &v306);
  if (v307)
  {
    v64 = v306;
  }

  else
  {
    v64 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v64, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 444, &v306);
  if (v307)
  {
    v69 = v306;
  }

  else
  {
    v69 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v69, 8, 8, 0);
  v304 = this;
  DgnString::~DgnString(&v306);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 446, &v306);
  if (v307)
  {
    v74 = v306;
  }

  else
  {
    v74 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v74, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 448, &v306);
  if (v307)
  {
    v79 = v306;
  }

  else
  {
    v79 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, (a3 + 1), &unk_262891468, (34 - a3), (34 - a3), v79, 2, 2, 0);
  v303 = (a3 + 1);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  v80 = sizeObject(this + 104);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v81 = 8;
  }

  else
  {
    v81 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 2;
  }

  else
  {
    v82 = 3;
  }

  v83 = *(this + 42) << v82;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 8;
  }

  else
  {
    v84 = 16;
  }

  v85 = v80 + v84 + v81 + v83 + 13;
  v86 = sizeObject(v304 + 26);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v87 = 8;
  }

  else
  {
    v87 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 2;
  }

  else
  {
    v88 = 3;
  }

  v89 = v304[42] << v88;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 8;
  }

  else
  {
    v90 = 16;
  }

  v91 = v86 + v90 + v87 + v89 + 13;
  v92 = sizeObject(v304 + 26);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 451, &v306);
  if (v307)
  {
    v97 = v306;
  }

  else
  {
    v97 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v303, &unk_262891468, v20, v20, v97, v85, v91, v92);
  DgnString::~DgnString(&v306);
  *a4 += v85;
  *a5 += v91;
  *a6 += v92;
  v98 = BitArray::sizeObject((v304 + 48), 0);
  v99 = BitArray::sizeObject((v304 + 48), 1);
  v100 = BitArray::sizeObject((v304 + 48), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 453, &v306);
  if (v307)
  {
    v105 = v306;
  }

  else
  {
    v105 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v303, &unk_262891468, v20, v20, v105, v98, v99, v100);
  DgnString::~DgnString(&v306);
  *a4 += v98;
  *a5 += v99;
  *a6 += v100;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  else
  {
    v106 = 16;
  }

  v107 = v304[54];
  v108 = v304[55];
  if (v108 >= v107)
  {
    v109 = 0;
    if (v107 > 0)
    {
      v106 += 4 * (v107 - 1) + 4;
    }

    v110 = v106 + 4 * (v108 - v107);
  }

  else
  {
    v109 = 4 * v107;
    v110 = v106;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 455, &v306);
  if (v307)
  {
    v115 = v306;
  }

  else
  {
    v115 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v112, v113, v114, v303, &unk_262891468, v20, v20, v115, v110, v106, v109);
  DgnString::~DgnString(&v306);
  *a4 += v110;
  *a5 += v106;
  *a6 += v109;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 12;
  }

  else
  {
    v116 = 16;
  }

  v117 = v304[58];
  v118 = v304[59];
  if (v118 >= v117)
  {
    v119 = 0;
    if (v117 > 0)
    {
      v116 += 4 * (v117 - 1) + 4;
    }

    v120 = v116 + 4 * (v118 - v117);
  }

  else
  {
    v119 = 4 * v117;
    v120 = v116;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 457, &v306);
  if (v307)
  {
    v125 = v306;
  }

  else
  {
    v125 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v303, &unk_262891468, v20, v20, v125, v120, v116, v119);
  DgnString::~DgnString(&v306);
  *a4 += v120;
  *a5 += v116;
  *a6 += v119;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 459, &v306);
  if (v307)
  {
    v130 = v306;
  }

  else
  {
    v130 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v127, v128, v129, v303, &unk_262891468, v20, v20, v130, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 461, &v306);
  if (v307)
  {
    v135 = v306;
  }

  else
  {
    v135 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v132, v133, v134, v303, &unk_262891468, v20, v20, v135, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 464, &v306);
  if (v307)
  {
    v140 = v306;
  }

  else
  {
    v140 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v136, v137, v138, v139, v303, &unk_262891468, v20, v20, v140, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 466, &v306);
  if (v307)
  {
    v145 = v306;
  }

  else
  {
    v145 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v142, v143, v144, v303, &unk_262891468, v20, v20, v145, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 468, &v306);
  if (v307)
  {
    v150 = v306;
  }

  else
  {
    v150 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v147, v148, v149, v303, &unk_262891468, v20, v20, v150, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 470, &v306);
  if (v307)
  {
    v155 = v306;
  }

  else
  {
    v155 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v152, v153, v154, v303, &unk_262891468, v20, v20, v155, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v156 = 12;
  }

  else
  {
    v156 = 16;
  }

  v157 = v304[68];
  v158 = v304[69];
  if (v158 >= v157)
  {
    v159 = 0;
    if (v157 > 0)
    {
      v156 += 2 * (v157 - 1) + 2;
    }

    v160 = v156 + 2 * (v158 - v157);
  }

  else
  {
    v159 = 2 * v157;
    v160 = v156;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 472, &v306);
  if (v307)
  {
    v165 = v306;
  }

  else
  {
    v165 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v161, v162, v163, v164, v303, &unk_262891468, v20, v20, v165, v160, v156, v159);
  DgnString::~DgnString(&v306);
  *a4 += v160;
  *a5 += v156;
  *a6 += v159;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 474, &v306);
  if (v307)
  {
    v170 = v306;
  }

  else
  {
    v170 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v167, v168, v169, v303, &unk_262891468, v20, v20, v170, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v171 = 12;
  }

  else
  {
    v171 = 16;
  }

  v172 = v304[74];
  v173 = v304[75];
  if (v173 >= v172)
  {
    v174 = 0;
    if (v172 > 0)
    {
      v171 += 2 * (v172 - 1) + 2;
    }

    v175 = v171 + 2 * (v173 - v172);
  }

  else
  {
    v174 = 2 * v172;
    v175 = v171;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 476, &v306);
  if (v307)
  {
    v180 = v306;
  }

  else
  {
    v180 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v177, v178, v179, v303, &unk_262891468, v20, v20, v180, v175, v171, v174);
  DgnString::~DgnString(&v306);
  *a4 += v175;
  *a5 += v171;
  *a6 += v174;
  v181 = sizeObject(v304 + 82);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v182 = 8;
  }

  else
  {
    v182 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v183 = 2;
  }

  else
  {
    v183 = 3;
  }

  v184 = v304[98] << v183;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v185 = 8;
  }

  else
  {
    v185 = 16;
  }

  v186 = v181 + v185 + v182 + v184 + 13;
  v187 = sizeObject(v304 + 82);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v188 = 8;
  }

  else
  {
    v188 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v189 = 2;
  }

  else
  {
    v189 = 3;
  }

  v190 = v304[98] << v189;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v191 = 8;
  }

  else
  {
    v191 = 16;
  }

  v192 = v187 + v191 + v188 + v190 + 13;
  v193 = sizeObject(v304 + 82);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 478, &v306);
  if (v307)
  {
    v198 = v306;
  }

  else
  {
    v198 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v195, v196, v197, v303, &unk_262891468, v20, v20, v198, v186, v192, v193);
  DgnString::~DgnString(&v306);
  *a4 += v186;
  *a5 += v192;
  *a6 += v193;
  v199 = sizeObject<DgnPrimArray<unsigned short>>((v304 + 104), 0);
  v200 = sizeObject<DgnPrimArray<unsigned short>>((v304 + 104), 1);
  v306 = 0;
  v307 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v306);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 481, &v306);
  if (v307)
  {
    v205 = v306;
  }

  else
  {
    v205 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v303, &unk_262891468, v20, v20, v205, v199, v200, 0);
  DgnString::~DgnString(&v306);
  *a4 += v199;
  *a5 += v200;
  v206 = CombineTable::sizeObject((v304 + 108), 0);
  v207 = CombineTable::sizeObject((v304 + 108), 1);
  v208 = CombineTable::sizeObject((v304 + 108), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 483, &v306);
  if (v307)
  {
    v213 = v306;
  }

  else
  {
    v213 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v209, v210, v211, v212, v303, &unk_262891468, v20, v20, v213, v206, v207, v208);
  DgnString::~DgnString(&v306);
  *a4 += v206;
  *a5 += v207;
  *a6 += v208;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v214 = 12;
  }

  else
  {
    v214 = 16;
  }

  v215 = v304[114];
  v216 = v304[115];
  if (v216 >= v215)
  {
    v217 = 0;
    if (v215 > 0)
    {
      v214 += 8 * (v215 - 1) + 8;
    }

    v218 = v214 + 8 * (v216 - v215);
  }

  else
  {
    v217 = 8 * v215;
    v218 = v214;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 485, &v306);
  if (v307)
  {
    v223 = v306;
  }

  else
  {
    v223 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v219, v220, v221, v222, v303, &unk_262891468, v20, v20, v223, v218, v214, v217);
  DgnString::~DgnString(&v306);
  *a4 += v218;
  *a5 += v214;
  *a6 += v217;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v224 = 12;
  }

  else
  {
    v224 = 16;
  }

  v225 = v304[118];
  v226 = v304[119];
  if (v226 >= v225)
  {
    v227 = 0;
    if (v225 > 0)
    {
      v224 += 2 * (v225 - 1) + 2;
    }

    v228 = v224 + 2 * (v226 - v225);
  }

  else
  {
    v227 = 2 * v225;
    v228 = v224;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 487, &v306);
  if (v307)
  {
    v233 = v306;
  }

  else
  {
    v233 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v229, v230, v231, v232, v303, &unk_262891468, v20, v20, v233, v228, v224, v227);
  DgnString::~DgnString(&v306);
  *a4 += v228;
  *a5 += v224;
  *a6 += v227;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 489, &v306);
  if (v307)
  {
    v238 = v306;
  }

  else
  {
    v238 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v234, v235, v236, v237, v303, &unk_262891468, v20, v20, v238, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 491, &v306);
  if (v307)
  {
    v243 = v306;
  }

  else
  {
    v243 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v240, v241, v242, v303, &unk_262891468, v20, v20, v243, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 493, &v306);
  if (v307)
  {
    v248 = v306;
  }

  else
  {
    v248 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v244, v245, v246, v247, v303, &unk_262891468, v20, v20, v248, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 495, &v306);
  if (v307)
  {
    v253 = v306;
  }

  else
  {
    v253 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v249, v250, v251, v252, v303, &unk_262891468, v20, v20, v253, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 498, &v306);
  if (v307)
  {
    v258 = v306;
  }

  else
  {
    v258 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v254, v255, v256, v257, v303, &unk_262891468, v20, v20, v258, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  v259 = BitArray::sizeObject((v304 + 124), 0);
  v260 = BitArray::sizeObject((v304 + 124), 1);
  v261 = BitArray::sizeObject((v304 + 124), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 500, &v306);
  if (v307)
  {
    v266 = v306;
  }

  else
  {
    v266 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v262, v263, v264, v265, v303, &unk_262891468, v20, v20, v266, v259, v260, v261);
  DgnString::~DgnString(&v306);
  *a4 += v259;
  *a5 += v260;
  *a6 += v261;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v267 = 12;
  }

  else
  {
    v267 = 16;
  }

  v268 = v304[130];
  v269 = v304[131];
  if (v269 >= v268)
  {
    v270 = 0;
    if (v268 > 0)
    {
      v267 += 4 * (v268 - 1) + 4;
    }

    v271 = v267 + 4 * (v269 - v268);
  }

  else
  {
    v270 = 4 * v268;
    v271 = v267;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 502, &v306);
  if (v307)
  {
    v276 = v306;
  }

  else
  {
    v276 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v272, v273, v274, v275, v303, &unk_262891468, v20, v20, v276, v271, v267, v270);
  DgnString::~DgnString(&v306);
  *a4 += v271;
  *a5 += v267;
  *a6 += v270;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 505, &v306);
  if (v307)
  {
    v281 = v306;
  }

  else
  {
    v281 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v277, v278, v279, v280, v303, &unk_262891468, v20, v20, v281, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 507, &v306);
  if (v307)
  {
    v286 = v306;
  }

  else
  {
    v286 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v282, v283, v284, v285, v303, &unk_262891468, v20, v20, v286, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 509, &v306);
  if (v307)
  {
    v291 = v306;
  }

  else
  {
    v291 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v287, v288, v289, v290, v303, &unk_262891468, v20, v20, v291, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 511, &v306);
  if (v307)
  {
    v296 = v306;
  }

  else
  {
    v296 = &unk_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v292, v293, v294, v295, v303, &unk_262891468, v20, v20, v296, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 513, &v306);
  if (v307)
  {
    v301 = v306;
  }

  else
  {
    v301 = &unk_262891468;
  }

  v302 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v297, v298, v299, v300, a3, &unk_262891468, (35 - a3), (35 - a3), v301, *a4, *a5, *a6);
  DgnString::~DgnString(&v306);
}

void sub_26281EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecentBuffer::computeAppearancesToScores(RecentBuffer *this, unsigned int a2)
{
  if (a2)
  {
    v4 = *(this + 52) + 16 * a2;
    v5 = a2 + 1;
    if (*(v4 + 8) != v5)
    {
      v6 = *(v4 + 12);
      if (v5 <= v6)
      {
        *(v4 + 8) = v5;
        if (a2 == -1)
        {
          return;
        }
      }

      else
      {
        DgnPrimArray<short>::reallocElts(v4, v5 - v6, 0);
        *(v4 + 8) = v5;
      }

      v7 = 0;
      v8 = 1.0 / a2;
      v9 = 16 * a2;
      do
      {
        v10 = *this;
        v11 = -20.0;
        if (v8 * v7 > 0.0)
        {
          v11 = DgnLog(v8 * v7);
          if (v11 < -20.0)
          {
            v11 = -20.0;
          }
        }

        *(*(*(this + 52) + v9) + 2 * v7++) = (-v10 * v11 + 0.5);
      }

      while (v5 != v7);
    }
  }
}

uint64_t RecentBuffer::addWordCountUni(uint64_t this, unsigned int a2, int a3)
{
  if (a2 == 16777213)
  {
    if (*(this + 488) == 1)
    {
      v5 = *(this + 256);
      if (a3)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = v5 - 1;
      }

      *(this + 256) = v6;
    }

    else
    {
      v12 = *(this + 260);
      if (a3)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 - 1;
      }

      *(this + 260) = v13;
    }
  }

  else if (a2 == 0xFFFFFF)
  {
    v3 = *(this + 248);
    if (a3)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = v3 - 1;
    }

    *(this + 248) = v4;
  }

  else if (*(this + 504) > a2 && ((*(*(this + 496) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v7 = *(this + 252);
    if (a3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    *(this + 252) = v8;
  }

  else
  {
    v9 = *(this + 264);
    v10 = *(v9 + 2 * a2);
    if (a3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 - 1;
    }

    *(v9 + 2 * a2) = v11;
  }

  return this;
}

void RecentBuffer::addWordCountBi(RecentBuffer *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a2 != 0xFFFFFF && (a3 & 0xFFFFFFFE) != 0xFFFFFE)
  {
    v16 = __PAIR64__(a3, a2);
    v7 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(this + 304, &v16);
    if (v7)
    {
      v8 = *(v7 + 5);
      if (a4)
      {
        *(v7 + 5) = v8 + 1;
        v9 = 1;
LABEL_15:
        v13 = *(this + 36);
        v14 = *(v13 + 2 * a3) + v9;
        *(v13 + 2 * a3) = v14;
        RecentBuffer::computeAppearancesToScores(this, v14);
        return;
      }

      v12 = v8 - 1;
      *(v7 + 5) = v12;
      if (!v12)
      {
        Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::remove(this + 304, &v16);
      }
    }

    else
    {
      v9 = 1;
      v15 = 1;
      Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(this + 304, &v16, &v15);
      if (a4)
      {
        goto LABEL_15;
      }
    }

    v9 = -1;
    goto LABEL_15;
  }

  v10 = *(this + 70);
  if (a4)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10 - 1;
  }

  *(this + 70) = v11;
}

uint64_t **Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::remove(uint64_t a1, _DWORD *a2)
{
  result = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(a1, a2);
  if (*result)
  {

    return Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::removeBucket(a1, result);
  }

  return result;
}

void RecentBuffer::addToRecentInternal(RecentBuffer *this, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = *(this + 10);
    if (v5)
    {
      v6 = v3 >= v5 ? v3 - v5 : 0;
      if (v6 < v3)
      {
        v9 = *(this + 60);
        do
        {
          v10 = *(this + 61);
          if (v10 + 1 == v5)
          {
            v11 = 0;
          }

          else
          {
            v11 = v10 + 1;
          }

          *(this + 61) = v11;
          if (v9 == v5)
          {
            RecentBuffer::addWordCountUni(this, *(*(this + 26) + 4 * v11), 0);
            v11 = *(this + 61);
            if (*(this + 56) == 1)
            {
              RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * v11), *(*(this + 28) + 4 * v11), 0);
              v11 = *(this + 61);
            }
          }

          v12 = *(this + 26);
          *(v12 + 4 * v11) = *(*a2 + 4 * v6);
          RecentBuffer::addWordCountUni(this, *(v12 + 4 * *(this + 61)), 1);
          if (*(this + 56) == 1)
          {
            v13 = a3;
            if (v6)
            {
              v13 = *(*a2 + 4 * v6 - 4);
            }

            v14 = *(this + 28);
            *(v14 + 4 * *(this + 61)) = v13;
            RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * *(this + 61)), *(v14 + 4 * *(this + 61)), 1);
          }

          v5 = *(this + 10);
          v15 = *(this + 60);
          if (v5 >= v15 + 1)
          {
            v9 = v15 + 1;
          }

          else
          {
            v9 = *(this + 10);
          }

          *(this + 60) = v9;
          ++v6;
        }

        while (v6 < *(a2 + 8));
      }
    }
  }
}

uint64_t RecentBuffer::getRecentScore(RecentBuffer *this, uint64_t a2, int a3, const LMContextData *a4)
{
  v30 = a2;
  if (a2 == 0xFFFFFF)
  {
    return a3;
  }

  v6 = a2;
  if (a2 == 16777213)
  {
    v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, &v30);
    if (!v8)
    {
      if (((*(**(this + 4) + 696))(*(this + 4)) & 1) == 0)
      {
        return a3;
      }

      goto LABEL_9;
    }

LABEL_8:
    v30 = *(v8 + 4);
    goto LABEL_9;
  }

  if (!(*(**(this + 2) + 112))(*(this + 2), a2))
  {
    return a3;
  }

  v30 = *(*(*(this + 1) + 256) + 4 * v6);
  v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, &v30);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(this + 60);
  if (!v9)
  {
    return a3;
  }

  v10 = *(a4 + 2);
  if (v30 == 16777213 && (*(this + 488) & 1) != 0 || *(this + 126) > v30 && ((*(*(this + 62) + ((v30 >> 3) & 0x1FFFFFFC)) >> v30) & 1) != 0 || ((v11 = *(this + 63) + *(this + 62) + *(this + 64), v30 != 16777213) ? (v12 = (*(this + 33) + 2 * v30)) : (v12 = (this + 260)), v9 == v11))
  {
    v13 = a3;
LABEL_19:
    if (*(this + 56) == 1 && v10 < 0xFFFFF4 && v9 != *(this + 70))
    {
      v14 = *(*(this + 36) + 2 * v10);
      v29[0] = v30;
      v29[1] = v10;
      v15 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(this + 304, v29);
      if (v15)
      {
        v15 = *(v15 + 5);
      }

      if (v14)
      {
        v16 = *(*(*(this + 52) + 16 * v14) + 2 * v15);
        if (v16 != 20000)
        {
          v17 = v13 + *(this + 264);
          v18 = *(this + 265) + v16;
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v13 + *(this + 264);
          }

          if (v19)
          {
            v21 = -v20;
          }

          else
          {
            v21 = v20;
          }

          if (v21 < *(this + 110))
          {
            v18 -= *(*(this + 54) + 4 * v21);
          }

          v13 = v18 & ~(v18 >> 31);
        }
      }
    }

    goto LABEL_43;
  }

  v13 = *(*(*(this + 52) + 16 * (v9 - v11)) + 2 * *v12);
  if (*(this + 72) != 1)
  {
    goto LABEL_19;
  }

  if (v10 < 0xFFFFF4)
  {
    v13 += *(*(this + 58) + 2 * v10);
    goto LABEL_19;
  }

  if (v10 == 16777214)
  {
    v22 = *(this + 241);
  }

  else if (v10 == 0xFFFFFF)
  {
    v22 = *(this + 240);
  }

  else
  {
    v22 = *(this + 242);
  }

  LOWORD(v13) = v22 + v13;
LABEL_43:
  if (v13 != a3)
  {
    v23 = *(this + 266) + a3;
    v24 = v13 + *(this + 267);
    v26 = v24 - v23;
    v25 = v24 - v23 < 0;
    if (v24 >= v23)
    {
      v24 = *(this + 266) + a3;
    }

    if (v25)
    {
      v27 = -v26;
    }

    else
    {
      v27 = v26;
    }

    if (v27 < *(this + 110))
    {
      v24 -= *(*(this + 54) + 4 * v27);
    }

    a3 = v24 & ~(v24 >> 31);
  }

  return a3;
}

uint64_t **RecentBuffer::setContext(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8))
  {
    v5 = result;
    *(a4 + 8) = **a2;
    result = (*(*result[2] + 112))(result[2]);
    if (!result)
    {
      goto LABEL_9;
    }

    v6 = *(a4 + 8);
    if (v6 <= 0xFFFFF3)
    {
      *(a4 + 8) = *(v5[1][32] + 4 * v6);
    }

    result = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((v5 + 10), (a4 + 8));
    if (*result)
    {
      v7 = *(*result + 4);
LABEL_10:
      *(a4 + 8) = v7;
      return result;
    }

    if (*(a4 + 8) == 16777214 && *(v5[4] + 28) == -1)
    {
LABEL_9:
      v7 = 0xFFFFFF;
      goto LABEL_10;
    }
  }

  return result;
}

double RecentBuffer::initRecentBuffer(RecentBuffer *this)
{
  v2 = *(*(this + 1) + 388);
  v3 = *(this + 10);
  v4 = *(this + 55);
  if (v3 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 208, v3 - v4, 0);
  }

  *(this + 54) = v3;
  if (v2)
  {
    v5 = *(this + 69);
    if (v2 > v5)
    {
      DgnPrimArray<short>::reallocElts(this + 264, v2 - v5, 0);
    }

    *(this + 68) = v2;
  }

  if (*(this + 56) == 1)
  {
    v6 = *(this + 10);
    v7 = *(this + 59);
    if (v6 > v7)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 224, v6 - v7, 0);
    }

    *(this + 58) = v6;
    if (v2)
    {
      v8 = *(this + 75);
      if (v2 > v8)
      {
        DgnPrimArray<short>::reallocElts(this + 288, v2 - v8, 0);
      }

      *(this + 74) = v2;
    }
  }

  v9 = (*(this + 10) + 1);
  v10 = *(this + 107);
  if (v9 > v10)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 416, v9 - v10, 0);
  }

  v11 = *(this + 106);
  if (v11 <= v9)
  {
    if (v11 < v9)
    {
      v14 = v9 - v11;
      v15 = 16 * v11;
      do
      {
        v16 = (*(this + 52) + v15);
        *v16 = 0;
        v16[1] = 0;
        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else if (v11 > v9)
  {
    v12 = v11;
    v13 = 16 * v11 - 16;
    do
    {
      --v12;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 52) + v13);
      v13 -= 16;
    }

    while (v12 > v9);
  }

  *(this + 106) = v9;
  RecentBuffer::clearRecent(this);

  return RecentBuffer::setWeights(this);
}

void RecentBuffer::clearRecent(RecentBuffer *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    bzero(*(this + 33), 2 * v2);
  }

  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 254) = 0;
  if (*(this + 10))
  {
    v3 = 0;
    v4 = *(this + 26);
    do
    {
      *(v4 + 4 * v3++) = 0xFFFFFF;
    }

    while (v3 < *(this + 10));
  }

  *(this + 61) = 0;
  if (*(this + 56))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(this + 304);
    v5 = *(this + 74);
    if (v5)
    {
      bzero(*(this + 36), 2 * v5);
    }

    *(this + 70) = 0;
    if (*(this + 10))
    {
      v6 = 0;
      v7 = *(this + 28);
      do
      {
        *(v7 + 4 * v6++) = 0xFFFFFF;
      }

      while (v6 < *(this + 10));
    }
  }
}

double RecentBuffer::setWeights(RecentBuffer *this)
{
  v2 = *(this + 8);
  v3 = 1.0 - v2;
  v4 = *this;
  v5 = -20.0;
  v6 = -20.0;
  if (v2 > 0.0)
  {
    v7 = DgnLog(v2);
    v6 = -20.0;
    if (v7 >= -20.0)
    {
      v6 = v7;
    }
  }

  *(this + 264) = (-v4 * v6 + 0.5);
  v8 = *this;
  if (v3 > 0.0)
  {
    v9 = DgnLog(v3);
    if (v9 < -20.0)
    {
      v5 = -20.0;
    }

    else
    {
      v5 = v9;
    }
  }

  *(this + 265) = (-v8 * v5 + 0.5);
  v10 = *(this + 10);
  if (v10)
  {
    v11 = (*(this + 60) - *(this + 62)) / v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v11 * *(this + 6);
  v13 = *this;
  v14 = -20.0;
  v15 = -20.0;
  if (1.0 - v12 > 0.0)
  {
    v15 = DgnLog(1.0 - v12);
    if (v15 < -20.0)
    {
      v15 = -20.0;
    }
  }

  *(this + 266) = (-v13 * v15 + 0.5);
  v16 = *this;
  if (v12 > 0.0)
  {
    v17 = DgnLog(v12);
    if (v17 < -20.0)
    {
      v14 = -20.0;
    }

    else
    {
      v14 = v17;
    }
  }

  result = -v16 * v14 + 0.5;
  *(this + 267) = result;
  return result;
}

uint64_t RecentBuffer::initHeadClonesAndCommonWords(RecentBuffer *this)
{
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  WordLanguageModel::constructLmIdToWordIdMapping(*(this + 4), v14, v13);
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(this + 80);
  BitArray::setSizeNoGrow((this + 192), 0);
  v12 = 0;
  v2 = *(this + 1);
  if (*(v2 + 388))
  {
    v3 = 0;
    do
    {
      if (*(*(v2 + 104) + v3))
      {
        if (*(*(v2 + 256) + 4 * v3) == v3 && ((*(*(v2 + 624) + 4 * (v3 >> 5)) >> v3) & 1) != 0)
        {
          v4 = (*(**(this + 2) + 112))(*(this + 2));
          v3 = v12;
          if (v4)
          {
            LmId = WordLanguageModel::getLmId(*(this + 4), v12);
            v3 = *(v14[0] + 4 * LmId);
            v11 = v3;
            if (v3 != v12)
            {
              Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(this + 80, &v12, &v11);
              v6 = *(this + 50);
              v7 = v11;
              v8 = v11 >= v6;
              v9 = v11 - v6;
              if (v8)
              {
                BitArray::addSize((this + 192), v9 + 1);
                v7 = v11;
              }

              *(*(this + 24) + 4 * (v7 >> 5)) |= 1 << v7;
              v3 = v12;
            }
          }
        }
      }

      v12 = ++v3;
      v2 = *(this + 1);
    }

    while (v3 < *(v2 + 388));
  }

  if (*(this + 72))
  {
    RecentBuffer::setCommonWords(this, v14);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
}

void sub_26281FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t RecentBuffer::setCommonWords(uint64_t a1, uint64_t a2)
{
  *(a1 + 520) = 0;
  BitArray::setSizeNoGrow((a1 + 496), 0);
  *(a1 + 488) = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  LMStats::resetStats(v19);
  v16 = xmmword_262888C00;
  v17 = 1;
  v18 = 1;
  v4 = (*(**(a1 + 32) + 464))(*(a1 + 32));
  (*(**(a1 + 32) + 472))(*(a1 + 32), v26, 0, v19, &v16, v4);
  v5 = *(*(a1 + 32) + 104);
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      WordIdWithMapping = WordLanguageModel::getWordIdWithMapping(*(a1 + 32), i, 0, a2, 0);
      v8 = WordIdWithMapping;
      v9 = *(a1 + 8);
      if (*(v9 + 388) > WordIdWithMapping && *(*(v9 + 104) + WordIdWithMapping) && *(*(v9 + 256) + 4 * WordIdWithMapping) == WordIdWithMapping || WordIdWithMapping == 16777213)
      {
        v15 = 0;
        if ((*(**(a1 + 32) + 504))(*(a1 + 32), WordIdWithMapping, 0xFFFFLL, v19, v4, 0, 0, 0, &v15) < *(a1 + 74))
        {
          v10 = *(a1 + 520);
          if (v10 == *(a1 + 524))
          {
            DgnPrimArray<unsigned int>::reallocElts(a1 + 512, 1, 1);
            v10 = *(a1 + 520);
          }

          *(*(a1 + 512) + 4 * v10) = v8;
          ++*(a1 + 520);
          if (v8 == 16777213)
          {
            *(a1 + 488) = 1;
          }

          else
          {
            v11 = *(a1 + 504);
            if (v11 <= v8)
            {
              BitArray::addSize((a1 + 496), v8 - v11 + 1);
            }

            *(*(a1 + 496) + 4 * (v8 >> 5)) |= 1 << v8;
          }
        }
      }
    }
  }

  DgnDelete<LMContextData>(v4);
  DgnPrimArray<unsigned int>::compact(a1 + 512);
  v12 = *(a1 + 504) + 1;
  while (1)
  {
    v13 = v12 - 2;
    if ((v12 - 2) < 0)
    {
      break;
    }

    --v12;
    if ((*(*(a1 + 496) + 4 * (v13 >> 5)) >> v13))
    {
      goto LABEL_21;
    }
  }

  v12 = 0;
LABEL_21:
  BitArray::setSize((a1 + 496), v12);
  BitArray::compact((a1 + 496));
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
}

uint64_t RecentBuffer::computeRemainderScore(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6.n128_f64[0] = LMStats::resetStats(v14);
  (*(**(a1 + 4) + 472))(v6);
  if (a1[130])
  {
    v7 = 0;
    v8 = 1.0;
    do
    {
      v9 = *(*(a1 + 64) + 4 * v7);
      v13 = 0;
      v8 = v8 - *(*(a1 + 56) + 8 * (*(**(a1 + 4) + 504))(*(a1 + 4), v9, 0xFFFFLL, v14, a4, 0, 0, 0, &v13));
      ++v7;
    }

    while (v7 < a1[130]);
  }

  else
  {
    v8 = 1.0;
  }

  (*(**(a1 + 4) + 480))(*(a1 + 4), a4);
  v10 = *a1;
  v11 = -20.0;
  if (v8 > 0.0)
  {
    v11 = DgnLog(v8);
    if (v11 < -20.0)
    {
      v11 = -20.0;
    }
  }

  return (-v10 * v11 + 0.5);
}

uint64_t RecentBuffer::computeRemainderScores(RecentBuffer *this)
{
  v2 = *(*(this + 1) + 388);
  v3 = *(this + 119);
  if (v2 > v3)
  {
    DgnPrimArray<short>::reallocElts(this + 464, v2 - v3, 0);
  }

  *(this + 118) = v2;
  v20[0] = 0;
  v4 = realloc_array(0, v20, 4uLL, 0, 0, 1);
  v23 = v20[0];
  v24 = 1;
  v25 = v4 >> 2;
  *v20 = xmmword_262891450;
  v21 = 3;
  v22 = 1;
  v5 = (*(**(this + 3) + 464))();
  v6 = (*(**(this + 4) + 464))(*(this + 4));
  LODWORD(v19[0]) = 0;
  if (v2)
  {
    for (i = 0; i < v2; LODWORD(v19[0]) = ++i)
    {
      v8 = *(this + 1);
      if (*(v8 + 388) > i && *(*(v8 + 104) + i) && *(*(v8 + 256) + 4 * i) == i)
      {
        if ((*(**(this + 2) + 112))(*(this + 2)))
        {
          if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, v19))
          {
            i = v19[0];
            *(*(this + 58) + 2 * LODWORD(v19[0])) = 20000;
          }

          else
          {
            (*(**(this + 3) + 408))(*(this + 3), 0, v5);
            *v23 = v19[0];
            v9 = RecentBuffer::computeRemainderScore(this, &v23, v20, v6);
            *(*(this + 58) + 2 * LODWORD(v19[0])) = v9;
            (*(**(this + 3) + 424))(*(this + 3), 0, v5);
            (*(**(this + 3) + 432))(*(this + 3), 0);
            i = v19[0];
          }

          continue;
        }

        i = v19[0];
      }

      *(*(this + 58) + 2 * i) = 20000;
    }
  }

  (*(**(this + 3) + 408))(*(this + 3), 0, v5);
  v19[0] = 0;
  v19[1] = 0;
  *(this + 242) = RecentBuffer::computeRemainderScore(this, v19, v20, v6);
  v13 = 0;
  v10 = realloc_array(0, &v13, 4uLL, 0, 0, 1);
  v16 = v13;
  v17 = 1;
  v18 = v10 >> 2;
  *v13 = 0xFFFFFF;
  *(this + 240) = RecentBuffer::computeRemainderScore(this, &v16, v20, v6);
  v26 = 0;
  v11 = realloc_array(0, &v26, 4uLL, 0, 0, 1);
  v13 = v26;
  v14 = 1;
  v15 = v11 >> 2;
  *v26 = 16777214;
  *(this + 241) = RecentBuffer::computeRemainderScore(this, &v13, v20, v6);
  *(this + 243) = 20000;
  (*(**(this + 3) + 424))(*(this + 3), 1, v5);
  (*(**(this + 3) + 432))(*(this + 3), 0);
  DgnDelete<LMContextData>(v6);
  DgnDelete<LMContextData>(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_262820688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void RecentBuffer::loadRecentBufferText(RecentBuffer *this, DFile *a2)
{
  if (!DFile::subFileExists(a2, 0x4Bu))
  {
    return;
  }

  DgnTextFileParser::DgnTextFileParser(v244);
  DgnTextFileParser::openDgnTextFileParser(v244, a2, 0x4Bu, 1);
  DgnTextFileParser::verifyMatchingFileType(v244, "RecentBufferText");
  v243[0] = 0;
  v243[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v244, sRBT_Versions, v243, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v244, v243, v9, v10, v11, v12, v13, v14);
  FileVersion = DgnTextFile::getFileVersion(v244);
  v228 = this;
  if (FileVersion != 0x200000013)
  {
    v240[0] = 0;
    DgnTextFile::getHeaderFieldUnsigned(v244, "Depth", v240, 1, 1u, 2u);
    v18 = *(this + 56) ? 2 : 1;
    if (v240[0] != v18)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1384, "lm/recentb", 16, "%s", v16, v17, &unk_262891468);
    }
  }

  v242 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v244, "RecentBufferLength", &v242, 1, 0, 0x7FFFFFFFu);
  if (v242 != *(this + 10))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1392, "lm/recentb", 10, "%s", v24, v25, &errStr_lm_recentb_E_RBT_BAD_RECENTBUFFERLENGTH);
  }

  DgnTextFileParser::verifyNoUnknownHeaderFields(v244, v19, v20, v21, v22, v23, v24, v25);
  *v240 = 0;
  v241 = 0;
  DgnTextFile::getLineFieldNames(v244, v240);
  v239[0] = 0;
  v239[1] = 0;
  DgnTextFile::getLineFieldFormats(v244, v239);
  v237 = 0;
  v238 = 0;
  v235 = 0;
  v236 = 0;
  if (FileVersion != 0x200000013)
  {
    NumLineFields = DgnTextFile::getNumLineFields(v244);
    if (*(this + 56) == 1)
    {
      if (DgnTextFile::getNumLineFields(v244) == 3)
      {
        goto LABEL_24;
      }
    }

    else if (NumLineFields == 2)
    {
LABEL_24:
      v41 = *v240;
      if (*(*v240 + 8))
      {
        v42 = **v240;
      }

      else
      {
        v42 = &unk_262891468;
      }

      if (strcmp(v42, "EntryIndex"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1554, "lm/recentb", 7, "%.500s %.500s", v43, v44, "EntryIndex");
        v41 = *v240;
      }

      if (*v239[0] != 3)
      {
        if (*(v41 + 2))
        {
          v45 = *v41;
        }

        else
        {
          v45 = &unk_262891468;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1558, "lm/recentb", 8, "%.500s %.500s", v43, v44, v45);
        v41 = *v240;
      }

      if (*(v41 + 6))
      {
        v50 = v41[2];
      }

      else
      {
        v50 = &unk_262891468;
      }

      this = v228;
      if (strcmp(v50, "EntryValue1"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1563, "lm/recentb", 7, "%.500s %.500s", v51, v52, "EntryValue1");
      }

      if (*(v239[0] + 4) != 1)
      {
        if (*(*v240 + 24))
        {
          v53 = *(*v240 + 16);
        }

        else
        {
          v53 = &unk_262891468;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1567, "lm/recentb", 8, "%.500s %.500s", v51, v52, v53);
      }

      if (*(v228 + 56) == 1)
      {
        v58 = *(*v240 + 32);
        if (*(*v240 + 40))
        {
          v59 = *(*v240 + 32);
        }

        else
        {
          v59 = &unk_262891468;
        }

        if (strcmp(v59, "EntryValue2"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1574, "lm/recentb", 7, "%.500s %.500s", v60, v61, "EntryValue2");
        }

        if (*(v239[0] + 8) != 1)
        {
          if (*(*v240 + 40))
          {
            v62 = *(*v240 + 32);
          }

          else
          {
            v62 = &unk_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1578, "lm/recentb", 8, "%.500s %.500s", v60, v61, v62);
        }
      }

      v167 = 0;
      while (DgnTextFileParser::parseNextLine(v244))
      {
        LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v244, 0, v168, v169, v170, v171, v172, v173);
        LineFieldInteger = DgnTextFileParser::getLineFieldInteger(v244, 1u, v175, v176, v177, v178, v179, v180);
        if (v167 != LineFieldUnsigned)
        {
          CurrentLine = DgnTextFile::getCurrentLine(v244);
          if (*(CurrentLine + 8))
          {
            v191 = *CurrentLine;
          }

          else
          {
            v191 = &unk_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1591, "lm/recentb", 9, "%.500s", v189, v190, v191);
        }

        if (LineFieldUnsigned >= *(v228 + 10))
        {
          v192 = DgnTextFile::getCurrentLine(v244);
          if (*(v192 + 8))
          {
            v195 = *v192;
          }

          else
          {
            v195 = &unk_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1594, "lm/recentb", 9, "%.500s", v193, v194, v195);
        }

        if (*(v228 + 56))
        {
          v196 = DgnTextFileParser::getLineFieldInteger(v244, 2u, v181, v182, v183, v184, v185, v186);
          if (LineFieldInteger >= 0xFFFFF4)
          {
            if (LineFieldInteger == -2)
            {
              LineFieldInteger = 16777214;
            }

            else
            {
              if (LineFieldInteger != -1)
              {
                v197 = DgnTextFile::getCurrentLine(v244);
                if (*(v197 + 8))
                {
                  v200 = *v197;
                }

                else
                {
                  v200 = &unk_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v198, v199, v200);
              }

              LineFieldInteger = 0xFFFFFF;
            }
          }

          if (v196 >= 0xFFFFF4)
          {
            if (v196 == -3)
            {
              v196 = 16777213;
            }

            else
            {
              if (v196 != -1)
              {
                v212 = DgnTextFile::getCurrentLine(v244);
                if (*(v212 + 8))
                {
                  v215 = *v212;
                }

                else
                {
                  v215 = &unk_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v213, v214, v215);
              }

              v196 = 0xFFFFFF;
            }
          }

          if (LineFieldInteger < 0xFFFFF4)
          {
            v216 = *(v228 + 1);
            if (*(v216 + 388) <= LineFieldInteger || !*(*(v216 + 104) + LineFieldInteger))
            {
              v217 = DgnTextFile::getCurrentLine(v244);
              if (*(v217 + 8))
              {
                v220 = *v217;
              }

              else
              {
                v220 = &unk_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1619, "lm/recentb", 9, "%.500s", v218, v219, v220);
            }
          }

          if (v196 < 0xFFFFF4)
          {
            v221 = *(v228 + 1);
            if (*(v221 + 388) <= v196 || !*(*(v221 + 104) + v196))
            {
              v222 = DgnTextFile::getCurrentLine(v244);
              if (*(v222 + 8))
              {
                v225 = *v222;
              }

              else
              {
                v225 = &unk_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1623, "lm/recentb", 9, "%.500s", v223, v224, v225);
            }
          }

          v226 = v236;
          if (v236 == HIDWORD(v236))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v235, 1, 1);
            v226 = v236;
          }

          *(v235 + 4 * v226) = LineFieldInteger;
          LODWORD(v236) = v236 + 1;
          v211 = v238;
          if (v238 == HIDWORD(v238))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v237, 1, 1);
            v211 = v238;
          }

          LineFieldInteger = v196;
        }

        else
        {
          if (LineFieldInteger >= 0xFFFFF4)
          {
            if (LineFieldInteger == -3)
            {
              LineFieldInteger = 16777213;
            }

            else
            {
              if (LineFieldInteger != -1)
              {
                v206 = DgnTextFile::getCurrentLine(v244);
                if (*(v206 + 8))
                {
                  v209 = *v206;
                }

                else
                {
                  v209 = &unk_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v207, v208, v209);
              }

              LineFieldInteger = 0xFFFFFF;
            }
          }

          else
          {
            v201 = *(v228 + 1);
            if (*(v201 + 388) <= LineFieldInteger || !*(*(v201 + 104) + LineFieldInteger))
            {
              v202 = DgnTextFile::getCurrentLine(v244);
              if (*(v202 + 8))
              {
                v205 = *v202;
              }

              else
              {
                v205 = &unk_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1603, "lm/recentb", 9, "%.500s", v203, v204, v205);
            }
          }

          v210 = v236;
          if (v236 == HIDWORD(v236))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v235, 1, 1);
            v210 = v236;
          }

          *(v235 + 4 * v210) = 0xFFFFFF;
          LODWORD(v236) = v236 + 1;
          v211 = v238;
          if (v238 == HIDWORD(v238))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v237, 1, 1);
            v211 = v238;
          }
        }

        *(v237 + 4 * v211) = LineFieldInteger;
        LODWORD(v238) = v238 + 1;
        ++v167;
      }

      goto LABEL_211;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1545, "lm/recentb", 17, "%s", v39, v40, &errStr_lm_recentb_E_RBT_BAD_NUMFIELDS);
    goto LABEL_24;
  }

  DgnTextFileParser::verifyMatchingNumFieldSpecs(v244, 4, v26, v27, v28, v29, v30, v31);
  v32 = *v240;
  v33 = &unk_262891468;
  if (*(*v240 + 8))
  {
    v34 = **v240;
  }

  else
  {
    v34 = &unk_262891468;
  }

  if (strcmp(v34, "TableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1414, "lm/recentb", 7, "%.500s %.500s", v35, v36, "TableName");
    v32 = *v240;
  }

  if (*v239[0])
  {
    if (*(v32 + 2))
    {
      v37 = *v32;
    }

    else
    {
      v37 = &unk_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1418, "lm/recentb", 8, "%.500s %.500s", v35, v36, v37);
    v32 = *v240;
  }

  if (*(v32 + 6))
  {
    v46 = v32[2];
  }

  else
  {
    v46 = &unk_262891468;
  }

  if (strcmp(v46, "EntryIndex"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1422, "lm/recentb", 7, "%.500s %.500s", v47, v48, "EntryIndex");
    v32 = *v240;
  }

  if (*(v239[0] + 4) != 3)
  {
    if (*(v32 + 6))
    {
      v49 = v32[2];
    }

    else
    {
      v49 = &unk_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1426, "lm/recentb", 8, "%.500s %.500s", v47, v48, v49);
    v32 = *v240;
  }

  if (*(v32 + 10))
  {
    v54 = v32[4];
  }

  else
  {
    v54 = &unk_262891468;
  }

  if (strcmp(v54, "EntryValue1"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1430, "lm/recentb", 7, "%.500s %.500s", v55, v56, "EntryValue1");
    v32 = *v240;
  }

  if (*(v239[0] + 8) != 1)
  {
    if (*(v32 + 10))
    {
      v57 = v32[4];
    }

    else
    {
      v57 = &unk_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1434, "lm/recentb", 8, "%.500s %.500s", v55, v56, v57);
    v32 = *v240;
  }

  if (*(v32 + 14))
  {
    v63 = v32[6];
  }

  else
  {
    v63 = &unk_262891468;
  }

  if (strcmp(v63, "EntryValue2"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1438, "lm/recentb", 7, "%.500s %.500s", v64, v65, "EntryValue2");
  }

  if (*(v239[0] + 12) != 1)
  {
    if (*(*v240 + 56))
    {
      v66 = *(*v240 + 48);
    }

    else
    {
      v66 = &unk_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1442, "lm/recentb", 8, "%.500s %.500s", v64, v65, v66);
  }

  v233 = 0;
  v234 = 0;
  DgnString::DgnString(&v231);
  v67 = 0;
  v68 = 1;
  while (DgnTextFileParser::parseNextLine(v244))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v244, 0);
    DgnString::DgnString(&v229, LineFieldString);
    v78 = DgnTextFileParser::getLineFieldUnsigned(v244, 1u, v72, v73, v74, v75, v76, v77);
    v85 = DgnTextFileParser::getLineFieldInteger(v244, 2u, v79, v80, v81, v82, v83, v84);
    v92 = DgnTextFileParser::getLineFieldInteger(v244, 3u, v86, v87, v88, v89, v90, v91);
    if (v68)
    {
      DgnString::operator=(&v231, &v229);
    }

    v227 = v67;
    v93 = v230;
    v94 = v229;
    v95 = v33;
    if (v230)
    {
      v33 = v229;
    }

    if (!strcmp(v33, "UnigramRecentBuffer"))
    {
      v96 = v95;
    }

    else
    {
      v96 = v95;
      if (strcmp(v33, "BigramRecentBuffer"))
      {
        v97 = DgnTextFile::getCurrentLine(v244);
        if (*(v97 + 8))
        {
          v100 = *v97;
        }

        else
        {
          LOBYTE(v100) = v95;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1468, "lm/recentb", 9, "%.500s", v98, v99, v100);
        v93 = v230;
        v94 = v229;
      }
    }

    v101 = v96;
    if (v93)
    {
      v102 = v94;
    }

    else
    {
      v102 = v96;
    }

    v103 = v232;
    v104 = v231;
    if (v232)
    {
      v105 = v231;
    }

    else
    {
      v105 = v101;
    }

    if (!strcmp(v102, v105))
    {
      v33 = v95;
    }

    else
    {
      v106 = strcmp(v102, "BigramRecentBuffer");
      v33 = v95;
      if (v106)
      {
        v107 = DgnTextFile::getCurrentLine(v244);
        if (*(v107 + 8))
        {
          v110 = *v107;
        }

        else
        {
          LOBYTE(v110) = v95;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1472, "lm/recentb", 9, "%.500s", v108, v109, v110);
        v93 = v230;
        v94 = v229;
        v103 = v232;
        v104 = v231;
      }
    }

    if (v93)
    {
      v111 = v94;
    }

    else
    {
      v111 = v33;
    }

    if (v103)
    {
      v112 = v104;
    }

    else
    {
      v112 = v33;
    }

    this = v228;
    v113 = v227;
    if (strcmp(v111, v112))
    {
      DgnString::operator=(&v231, &v229);
      v113 = 0;
    }

    if (v78 != v113)
    {
      v114 = DgnTextFile::getCurrentLine(v244);
      if (*(v114 + 8))
      {
        v117 = *v114;
      }

      else
      {
        LOBYTE(v117) = v33;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1482, "lm/recentb", 9, "%.500s", v115, v116, v117);
    }

    if (v78 >= *(v228 + 10))
    {
      v118 = DgnTextFile::getCurrentLine(v244);
      if (*(v118 + 8))
      {
        v121 = *v118;
      }

      else
      {
        LOBYTE(v121) = v33;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1485, "lm/recentb", 9, "%.500s", v119, v120, v121);
    }

    if (v230)
    {
      v122 = v229;
    }

    else
    {
      v122 = v33;
    }

    if (strcmp(v122, "UnigramRecentBuffer"))
    {
      if ((*(v228 + 56) & 1) == 0)
      {
        v123 = DgnTextFile::getCurrentLine(v244);
        if (*(v123 + 8))
        {
          v126 = *v123;
        }

        else
        {
          LOBYTE(v126) = v33;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1509, "lm/recentb", 9, "%.500s", v124, v125, v126);
      }

      if (v85 >= 0xFFFFF4)
      {
        if (v85 == -2)
        {
          v85 = 16777214;
        }

        else
        {
          if (v85 != -1)
          {
            v127 = DgnTextFile::getCurrentLine(v244);
            if (*(v127 + 8))
            {
              v130 = *v127;
            }

            else
            {
              LOBYTE(v130) = v33;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v128, v129, v130);
          }

          v85 = 0xFFFFFF;
        }
      }

      if (v92 >= 0xFFFFF4)
      {
        if (v92 == -3)
        {
          v92 = 16777213;
        }

        else
        {
          if (v92 != -1)
          {
            v144 = DgnTextFile::getCurrentLine(v244);
            if (*(v144 + 8))
            {
              v147 = *v144;
            }

            else
            {
              LOBYTE(v147) = v33;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v145, v146, v147);
          }

          v92 = 0xFFFFFF;
        }
      }

      if (v85 < 0xFFFFF4)
      {
        v148 = *(v228 + 1);
        if (*(v148 + 388) <= v85 || !*(*(v148 + 104) + v85))
        {
          v149 = DgnTextFile::getCurrentLine(v244);
          if (*(v149 + 8))
          {
            v152 = *v149;
          }

          else
          {
            LOBYTE(v152) = v33;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1518, "lm/recentb", 9, "%.500s", v150, v151, v152);
        }
      }

      if (v92 < 0xFFFFF4)
      {
        v153 = *(v228 + 1);
        if (*(v153 + 388) <= v92 || !*(*(v153 + 104) + v92))
        {
          v154 = DgnTextFile::getCurrentLine(v244);
          if (*(v154 + 8))
          {
            v157 = *v154;
          }

          else
          {
            LOBYTE(v157) = v33;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1522, "lm/recentb", 9, "%.500s", v155, v156, v157);
        }
      }

      v158 = v236;
      if (v236 == HIDWORD(v236))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v235, 1, 1);
        v158 = v236;
      }

      *(v235 + 4 * v158) = v85;
      LODWORD(v236) = v236 + 1;
      v159 = v238;
      if (v238 == HIDWORD(v238))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v237, 1, 1);
        v159 = v238;
      }

      v85 = v92;
LABEL_194:
      *(v237 + 4 * v159) = v85;
      LODWORD(v238) = v238 + 1;
      goto LABEL_195;
    }

    if (v92 != -1)
    {
      v131 = DgnTextFile::getCurrentLine(v244);
      if (*(v131 + 8))
      {
        v134 = *v131;
      }

      else
      {
        LOBYTE(v134) = v33;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1491, "lm/recentb", 9, "%.500s", v132, v133, v134);
    }

    if (v85 >= 0xFFFFF4)
    {
      if (v85 == -3)
      {
        v85 = 16777213;
      }

      else
      {
        if (v85 != -1)
        {
          v140 = DgnTextFile::getCurrentLine(v244);
          if (*(v140 + 8))
          {
            v143 = *v140;
          }

          else
          {
            LOBYTE(v143) = v33;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v141, v142, v143);
        }

        v85 = 0xFFFFFF;
      }
    }

    else
    {
      v135 = *(v228 + 1);
      if (*(v135 + 388) <= v85 || !*(*(v135 + 104) + v85))
      {
        v136 = DgnTextFile::getCurrentLine(v244);
        if (*(v136 + 8))
        {
          v139 = *v136;
        }

        else
        {
          LOBYTE(v139) = v33;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1497, "lm/recentb", 9, "%.500s", v137, v138, v139);
      }
    }

    v160 = v234;
    if (v234 == HIDWORD(v234))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v233, 1, 1);
      v160 = v234;
    }

    v233[v160] = v85;
    LODWORD(v234) = v234 + 1;
    if ((*(v228 + 56) & 1) == 0)
    {
      v161 = v236;
      if (v236 == HIDWORD(v236))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v235, 1, 1);
        v161 = v236;
      }

      *(v235 + 4 * v161) = 0xFFFFFF;
      LODWORD(v236) = v236 + 1;
      v159 = v238;
      if (v238 == HIDWORD(v238))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v237, 1, 1);
        v159 = v238;
      }

      goto LABEL_194;
    }

LABEL_195:
    v67 = v113 + 1;
    DgnString::~DgnString(&v229);
    v68 = 0;
  }

  v162 = v234;
  if (v234 && *(this + 56) == 1)
  {
    if (v234 == v238)
    {
      while (v162 >= 1)
      {
        v163 = v233[v162 - 1];
        v164 = *(v237 - 4 + 4 * v162--);
        if (v163 != v164)
        {
          goto LABEL_209;
        }
      }
    }

    else
    {
LABEL_209:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1534, "lm/recentb", 13, "%s", v69, v70, &errStr_lm_recentb_E_UNI_BI_MISMATCH);
    }
  }

  DgnString::~DgnString(&v231);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v233);
LABEL_211:
  RecentBuffer::initRecentBuffer(this);
  RecentBuffer::initHeadClonesAndCommonWords(this);
  if (*(this + 72) == 1)
  {
    RecentBuffer::computeRemainderScores(this);
  }

  v231 = 0;
  v165 = realloc_array(0, &v231, 4uLL, 0, 0, 1);
  v233 = v231;
  LODWORD(v234) = 1;
  HIDWORD(v234) = v165 >> 2;
  if (v238)
  {
    v166 = 0;
    do
    {
      *v233 = *(v237 + 4 * v166);
      RecentBuffer::addToRecentInternal(v228, &v233, *(v235 + 4 * v166++));
    }

    while (v166 < v238);
  }

  RecentBuffer::computeAppearancesToScores(v228, *(v228 + 60) - *(v228 + 64) - (*(v228 + 62) + *(v228 + 63)));
  RecentBuffer::setWeights(v228);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v233);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v235);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v237);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v239);
  DgnArray<DgnString>::releaseAll(v240);
  DgnIArray<Utterance *>::~DgnIArray(v243);
  DgnTextFileParser::~DgnTextFileParser(v244);
}