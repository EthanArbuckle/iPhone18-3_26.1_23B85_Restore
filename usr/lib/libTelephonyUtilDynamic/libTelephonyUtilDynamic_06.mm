void ctu::Http::HttpSessionRequest::registerCallbackQueue(ctu::Http::HttpSessionRequest *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 19);
  *(this + 19) = object;
  if (v4)
  {

    dispatch_release(v4);
  }
}

void ctu::Http::HttpSessionRequest::registerCompletionCodeblock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 160);
  *(a1 + 160) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

void ctu::Http::HttpSessionRequest::registerDataReceiveCodeblock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 168);
  *(a1 + 168) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

void ctu::Http::HttpSessionRequest::registerDataSendCodeblock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 176);
  *(a1 + 176) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

void *ctu::Http::HttpSessionRequest::setRequestBody(void *result, const void **a2)
{
  v2 = result + 9;
  if (result + 9 != a2)
  {
    v3 = result;
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 - *a2;
    v7 = result[11];
    v8 = result[9];
    if (v7 - v8 >= v6)
    {
      v13 = result[10];
      v14 = v13 - v8;
      if (v13 - v8 >= v6)
      {
        if (v5 != v4)
        {
          result = memmove(result[9], *a2, v6);
        }

        v12 = &v8[v6];
      }

      else
      {
        v15 = &v4[v14];
        if (v13 != v8)
        {
          result = memmove(result[9], *a2, v14);
          v13 = v3[10];
        }

        if (v5 != v15)
        {
          result = memmove(v13, v15, v5 - v15);
        }

        v12 = &v13[v5 - v15];
      }
    }

    else
    {
      if (v8)
      {
        result[10] = v8;
        operator delete(v8);
        v7 = 0;
        *v2 = 0;
        v2[1] = 0;
        v2[2] = 0;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v9 = 2 * v7;
      if (2 * v7 <= v6)
      {
        v9 = v6;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      result = std::vector<unsigned char>::__vallocate[abi:ne200100](v2, v10);
      v11 = v3[10];
      if (v5 != v4)
      {
        result = memmove(v3[10], v4, v6);
      }

      v12 = (v11 + v6);
    }

    v3[10] = v12;
  }

  return result;
}

const void **ctu::Http::HttpSessionRequest::setClientCert(ctu::Http::HttpSessionRequest *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 12);
  *(this + 12) = cf;
  v6 = v4;
  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v6);
}

const void **ctu::Http::HttpSessionRequest::setServerPinnedCerts(ctu::Http::HttpSessionRequest *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 13);
  *(this + 13) = cf;
  v6 = v4;
  return ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v6);
}

void ctu::Http::HttpSessionRequest::setValidateCertsCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t ctu::Http::HttpSessionRequest::executeValidateCertsCallback(ctu::Http::HttpSessionRequest *this, __SecTrust *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    return (*(v2 + 16))(v2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk toctu::Http::HttpSessionRequest::executeValidateCertsCallback(ctu::Http::HttpSessionRequest *this, __SecTrust *a2)
{
  v2 = *(this + 22);
  if (v2)
  {
    return (*(v2 + 16))(v2, a2);
  }

  else
  {
    return 1;
  }
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v5);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t *std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t *result, __int128 *a2, __int128 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, v5 + 1, (v4 + 2), v4 + 2);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t **a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    memset(v10, 170, sizeof(v10));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(a1, a4, v10);
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(a1, v12, v8, v10[0]);
    v7 = v10[0];
    v10[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v10);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (*(a5 + 23) >= 0 ? (v11 = a5) : (v11 = *a5), *(a2 + 55) >= 0 ? (v12 = (a2 + 4)) : (v12 = a2[4]), strcasecmp(v11, v12) < 0))
  {
    v13 = *a2;
    if (*a1 == a2)
    {
      v15 = a2;
LABEL_29:
      if (v13)
      {
        *a3 = v15;
        return v15 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v13)
    {
      v14 = *a2;
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v19 = *v15 == v18;
        v18 = v15;
      }

      while (v19);
    }

    if (*(v15 + 55) >= 0)
    {
      v20 = (v15 + 4);
    }

    else
    {
      v20 = v15[4];
    }

    if (*(a5 + 23) >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    if (strcasecmp(v20, v21) < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((strcasecmp(v12, v11) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        a4 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v19 = *a4 == v22;
        v22 = a4;
      }

      while (!v19);
    }

    if (a4 == v9 || (*(a4 + 55) >= 0 ? (v23 = (a4 + 4)) : (v23 = a4[4]), strcasecmp(v11, v23) < 0))
    {
      if (v16)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }
  }

  return std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a3, a5);
}

std::string *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = std::pair<std::string const,std::string>::pair[abi:ne200100]((v6 + 32), a2);
  *(a3 + 16) = 1;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
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

    do
    {
      while (1)
      {
        v7 = v4;
        v10 = v4[4];
        v8 = v4 + 4;
        v9 = v10;
        v11 = (*(v8 + 23) >= 0 ? v8 : v9);
        if ((strcasecmp(v6, v11) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcasecmp(v11, v6) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_15:
  *a2 = v7;
  return v5;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1A9133F44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__shared_ptr_pointer<ctu::Http::HttpSession_impl *,ctu::Http::HttpSession_impl::Deleter,std::allocator<ctu::Http::HttpSession_impl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpSession_impl *,ctu::Http::HttpSession_impl::Deleter,std::allocator<ctu::Http::HttpSession_impl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<BOOL *,std::shared_ptr<BOOL>::__shared_ptr_default_delete<BOOL,BOOL>,std::allocator<BOOL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BOOL *,std::shared_ptr<BOOL>::__shared_ptr_default_delete<BOOL,BOOL>,std::allocator<BOOL>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BOOL *,std::shared_ptr<BOOL>::__shared_ptr_default_delete<BOOL,BOOL>,std::allocator<BOOL>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ctu::Http::HttpSessionRequest *,ctu::Http::HttpSessionRequest::Deleter,std::allocator<ctu::Http::HttpSessionRequest>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpSessionRequest *,ctu::Http::HttpSessionRequest::Deleter,std::allocator<ctu::Http::HttpSessionRequest>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponseConcrete>::__shared_ptr_default_delete<ctu::Http::HttpResponseConcrete,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponseConcrete>::__shared_ptr_default_delete<ctu::Http::HttpResponseConcrete,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponseConcrete>::__shared_ptr_default_delete<ctu::Http::HttpResponseConcrete,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__lower_bound<std::string>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__lower_bound<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

void boost::algorithm::detail::transform_range_copy<std::string,std::string,boost::algorithm::detail::to_upperF<char>>(std::string *a1, char *a2, std::locale *this)
{
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v5)
  {
    v8 = MEMORY[0x1E69E5318];
    do
    {
      v9 = *v4;
      v10 = std::locale::use_facet(this, v8);
      v11 = (v10->__vftable[1].~facet)(v10, v9);
      std::string::push_back(a1, v11);
      ++v4;
      --v5;
    }

    while (v5);
  }
}

void sub_1A913438C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void ctu::Http::HttpResponseConcrete::~HttpResponseConcrete(ctu::Http::HttpResponseConcrete *this)
{
  *this = &unk_1F1CB6240;
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(this + 11);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(this + 10);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 16, *(this + 3));
}

{
  ctu::Http::HttpResponseConcrete::~HttpResponseConcrete(this);

  operator delete(v1);
}

ctu::Http::HttpResponseConcrete *ctu::Http::HttpResponseConcrete::HttpResponseConcrete(ctu::Http::HttpResponseConcrete *this, NSHTTPURLResponse *a2)
{
  *this = &unk_1F1CB6240;
  *(this + 3) = 0;
  v3 = this + 24;
  *(this + 2) = this + 24;
  v4 = this + 16;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 10) = -1;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 48) = -1;
  if (a2)
  {
    v6 = [(NSHTTPURLResponse *)a2 allHeaderFields];
    v19 = 0;
    v20 = 0;
    context[1] = &v19;
    v18 = &v19;
    context[0] = &v18;
    if (v6)
    {
      CFDictionaryApplyFunction(v6, ctu::cf::_Applier_InsertMapDefault<std::string,std::string,std::insert_iterator<std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>>>, context);
      v8 = *(this + 2);
      v7 = *(this + 3);
      v9 = v19;
      *(this + 2) = v18;
      *(this + 3) = v9;
      v18 = v8;
      v19 = v7;
      v10 = *(this + 4);
      v11 = v20;
      *(this + 4) = v20;
      v20 = v10;
      v12 = v9 + 2;
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = v4;
      }

      *v13 = v3;
      v14 = v10 == 0;
      v15 = &v18;
      if (!v14)
      {
        v15 = v7 + 2;
      }

      *v15 = &v19;
    }

    else
    {
      v7 = 0;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v18, v7);
    *(this + 10) = [(NSHTTPURLResponse *)a2 statusCode];
  }

  return this;
}

void sub_1A9134580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a12, a13);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v13 + 88));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v15);
  if (*(v13 + 79) < 0)
  {
    operator delete(*(v13 + 56));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14, *v16);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v6);
  return a1;
}

unint64_t ctu::Http::HttpResponseConcrete::getResponseString@<X0>(ctu::Http::HttpResponseConcrete *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  result = *(this + 10);
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  BytePtr = CFDataGetBytePtr(result);
  result = CFDataGetLength(*(this + 10));
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    result = operator new(v7);
    *(v3 + 1) = v6;
    *(v3 + 2) = v7 | 0x8000000000000000;
    *v3 = result;
    v3 = result;
    goto LABEL_11;
  }

  v3[23] = result;
  if (result)
  {
    do
    {
LABEL_11:
      v8 = *BytePtr++;
      *v3++ = v8;
      --v6;
    }

    while (v6);
  }

  *v3 = 0;
  return result;
}

const void **ctu::cf::CFSharedRef<__CFError>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

void ctu::Http::HttpResponseConcrete::getResponseStatusLine(ctu::Http::HttpResponseConcrete *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::cf::_Applier_InsertMapDefault<std::string,std::string,std::insert_iterator<std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>>>(__CFString *cf, __CFString *a2, uint64_t a3)
{
  *v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  if (ctu::cf::assign(v18, cf))
  {
    ctu::cf::assign(&v19[1], a2);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string,std::string,0>(&v15, v18);
    v6 = *a3;
    v5 = *(a3 + 8);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v6, v5, &v24, &v23, &v15);
    v8 = *v7;
    if (!*v7)
    {
      v9 = operator new(0x50uLL);
      v10 = v9;
      v21[0] = v9;
      v21[1] = v6;
      v22 = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 32), v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
        v11 = v21[0];
      }

      else
      {
        *(v9 + 32) = v15;
        v11 = v9;
      }

      *(v10 + 56) = *__p;
      *(v10 + 9) = v17;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      LOBYTE(v22) = 1;
      std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v6, v24, v7, v11);
      v8 = v21[0];
      v21[0] = 0;
      std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v21);
    }

    *(a3 + 8) = v8;
    v12 = v8[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v8[2];
        v14 = *v13 == v8;
        v8 = v13;
      }

      while (!v14);
    }

    *(a3 + 8) = v13;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1A9134990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v15 - 72);
  std::pair<std::string,std::string>::~pair(&a9);
  std::pair<std::string,std::string>::~pair(&a15);
  _Unwind_Resume(a1);
}

void *ctu::ns::AutoPool::AutoPool(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

void **ctu::ns::AutoPool::operator=(void **a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  ctu::ns::AutoPool::~AutoPool(&v6);
  return a1;
}

double ctu::LogMessageBuffer::LogMessageBuffer(ctu::LogMessageBuffer *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *ctu::LogMessageBuffer::LogMessageBuffer(std::string *this, std::string *__str)
{
  *&this[1].__r_.__value_.__r.__words[1] = 0u;
  v4 = &this[1].__r_.__value_.__r.__words[1];
  this[2].__r_.__value_.__r.__words[0] = 0;
  *&this->__r_.__value_.__l.__data_ = 0u;
  *&this->__r_.__value_.__r.__words[2] = 0u;
  data = __str[1].__r_.__value_.__l.__data_;
  if (data)
  {
    std::ostringstream::str[abi:ne200100](data, &v20);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    *&this->__r_.__value_.__l.__data_ = v20;
    this->__r_.__value_.__r.__words[2] = v21;
  }

  else
  {
    std::string::operator=(this, __str);
  }

  if (this != __str)
  {
    size = __str[1].__r_.__value_.__l.__size_;
    v6 = __str[1].__r_.__value_.__r.__words[2];
    v8 = v6 - size;
    v9 = this[1].__r_.__value_.__l.__size_;
    if (this[2].__r_.__value_.__r.__words[0] - v9 < v6 - size)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      std::vector<std::string>::__vdeallocate(v4);
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0x5555555555555556 * ((this[2].__r_.__value_.__r.__words[0] - this[1].__r_.__value_.__l.__size_) >> 3);
      if (v11 <= v10)
      {
        v11 = v10;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this[2].__r_.__value_.__r.__words[0] - this[1].__r_.__value_.__l.__size_) >> 3) >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](v4, v12);
      v13 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v4, size, v6, this[1].__r_.__value_.__r.__words[2]);
LABEL_21:
      this[1].__r_.__value_.__r.__words[2] = v13;
      return this;
    }

    v14 = this[1].__r_.__value_.__r.__words[2];
    v15 = v14 - v9;
    if (v14 - v9 < v8)
    {
      if (v14 != v9)
      {
        v16 = v14 - v9;
        v17 = size;
        do
        {
          std::string::operator=(v9++, v17++);
          v16 -= 24;
        }

        while (v16);
        v14 = this[1].__r_.__value_.__r.__words[2];
      }

      v13 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v4, (size + v15), v6, v14);
      goto LABEL_21;
    }

    if (size != v6)
    {
      do
      {
        std::string::operator=(v9, size);
        size = (size + 24);
        ++v9;
      }

      while (size != v6);
      v14 = this[1].__r_.__value_.__r.__words[2];
    }

    while (v14 != v9)
    {
      v18 = SHIBYTE(v14[-1].__r_.__value_.__r.__words[2]);
      --v14;
      if (v18 < 0)
      {
        operator delete(v14->__r_.__value_.__l.__data_);
      }
    }

    this[1].__r_.__value_.__r.__words[2] = v9;
  }

  return this;
}

void sub_1A9134C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 40) = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::LogMessageBuffer::LogMessageBuffer(uint64_t a1, ctu::LogMessageBuffer *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ctu::LogMessageBuffer::swap(a1, a2);
  return a1;
}

{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ctu::LogMessageBuffer::swap(a1, a2);
  return a1;
}

__n128 ctu::LogMessageBuffer::swap(ctu::LogMessageBuffer *this, ctu::LogMessageBuffer *a2)
{
  v2 = *this;
  result = *(this + 8);
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  *a2 = v2;
  *(a2 + 8) = result;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  return result;
}

__n128 ctu::LogMessageBuffer::createWithFormat@<Q0>(ctu::LogMessageBuffer *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 48) = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = v3;
  *(a2 + 32) = v3;
  *a2 = v3;
  ctu::LogMessageBuffer::vCreateWithFormat(this, va, a2);
  return result;
}

BOOL ctu::LogMessageBuffer::empty(ctu::LogMessageBuffer *this)
{
  if (*(this + 3))
  {
    return 0;
  }

  v2 = *(this + 23);
  if (v2 < 0)
  {
    v2 = *(this + 1);
  }

  return v2 == 0;
}

uint64_t ctu::LogMessageBuffer::operator std::ostream &(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = operator new(0x108uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v3);
    v4 = *(a1 + 24);
    *(a1 + 24) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v3 = *(a1 + 24);
    }

    v5 = *v3;
    *(v3 + *(*v3 - 24) + 8) &= ~0x1000u;
    *(v3 + *(v5 - 24) + 8) |= 1u;
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v7, v8);
    return *(a1 + 24);
  }

  return result;
}

std::string *ctu::LogMessageBuffer::appendString(std::string *this, uint64_t a2)
{
  data = this[1].__r_.__value_.__l.__data_;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (data)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(data, a2, v5);
  }

  else
  {
    std::string::append(this, a2, v5);
  }

  return this;
}

std::string *ctu::LogMessageBuffer::appendChar(std::string *this, std::string::value_type a2)
{
  data = this[1].__r_.__value_.__l.__data_;
  if (data)
  {
    v5 = a2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(data, &v5, 1);
  }

  else
  {
    std::string::push_back(this, a2);
  }

  return this;
}

uint64_t ctu::LogMessageBuffer::addMetaData(uint64_t a1, __int128 *a2)
{
  std::vector<std::string>::push_back[abi:ne200100](a1 + 32, a2);
  return a1;
}

{
  std::vector<std::string>::push_back[abi:ne200100](a1 + 32, a2);
  return a1;
}

void ctu::LogMessageBuffer::merge(std::string **this, const ctu::LogMessageBuffer *a2)
{
  ctu::LogMessageBuffer::str(this);
  v4 = *(a2 + 3);
  if (v4)
  {
    std::ostringstream::str[abi:ne200100](v4, &__p);
    if (SHIBYTE(__p.__end_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__first_;
    }

    if (SHIBYTE(__p.__end_) >= 0)
    {
      end_high = HIBYTE(__p.__end_);
    }

    else
    {
      end_high = __p.__begin_;
    }

    std::string::append(this, p_p, end_high);
    if (SHIBYTE(__p.__end_) < 0)
    {
      operator delete(__p.__first_);
    }
  }

  else
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 1);
    }

    std::string::append(this, v8, v9);
  }

  v11 = *(a2 + 4);
  v10 = *(a2 + 5);
  v12 = v10 - v11;
  if (v10 - v11 >= 1)
  {
    v13 = this[4];
    v14 = this[5];
    v15 = this[6];
    if (v15 - v14 >= v12)
    {
      v35 = this[5];
      v36 = v14;
      __p.__first_ = (this + 4);
      __p.__begin_ = &v35;
      __p.__end_ = &v36;
      __p.__end_cap_.__value_ = 0xAAAAAAAAAAAAAA00;
      if (v11 != v10)
      {
        v22 = v14;
        do
        {
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v22, *v11, *(v11 + 1));
            v22 = v36;
          }

          else
          {
            v23 = *v11;
            v22->__r_.__value_.__r.__words[2] = *(v11 + 2);
            *&v22->__r_.__value_.__l.__data_ = v23;
          }

          v11 = (v11 + 24);
          v36 = ++v22;
        }

        while (v11 != v10);
        v14 = v22;
      }

      LOBYTE(__p.__end_cap_.__value_) = 1;
      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&__p);
      this[5] = v14;
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
      v17 = v16 - 0x5555555555555555 * (v12 >> 3);
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v13) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= v17)
      {
        v19 = v16 - 0x5555555555555555 * (v12 >> 3);
      }

      if (v18 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      __p.__end_cap_.__value_ = (this + 4);
      if (v20)
      {
        v21 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>((this + 4), v20);
      }

      else
      {
        v21 = 0;
      }

      v24 = v21 + v16;
      __p.__first_ = v21;
      __p.__begin_ = v24;
      __p.__end_ = v24;
      __p.__end_cap_.__value_ = &v21[v20];
      v25 = v24 + v12;
      do
      {
        if (*(v11 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v24, *v11, *(v11 + 1));
        }

        else
        {
          v26 = *v11;
          v24->__r_.__value_.__r.__words[2] = *(v11 + 2);
          *&v24->__r_.__value_.__l.__data_ = v26;
        }

        ++v24;
        v11 = (v11 + 24);
        v12 -= 24;
      }

      while (v12);
      begin = __p.__begin_;
      memcpy(v25, v14, this[5] - v14);
      v28 = this[4];
      v29 = &v25[this[5] - v14];
      this[5] = v14;
      v30 = v14 - v28;
      v31 = (begin - (v14 - v28));
      memcpy(v31, v28, v30);
      v32 = this[4];
      this[4] = v31;
      this[5] = v29;
      v33 = this[6];
      this[6] = __p.__end_cap_.__value_;
      __p.__end_ = v32;
      __p.__end_cap_.__value_ = v33;
      __p.__first_ = v32;
      __p.__begin_ = v32;
      std::__split_buffer<std::string>::~__split_buffer(&__p);
    }
  }
}

void sub_1A91352DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::operator<<(uint64_t a1, uint64_t a2)
{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580AD0](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580AE0](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580AF0](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580B00](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580B10](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580B20](v4, a2);
  return a1;
}

{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580AA0](v4, a2);
  return a1;
}

{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::vector<std::string>::push_back[abi:ne200100](a1 + 32, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t ctu::operator<<(uint64_t a1)
{
  ctu::LogMessageBuffer::operator std::ostream &(a1);
  std::ostream::operator<<();
  return a1;
}

uint64_t ctu::operator<<(uint64_t a1, double a2)
{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  MEMORY[0x1AC580AB0](v4, a2);
  return a1;
}

std::string *ctu::operator<<(std::string *a1, int a2)
{
  if (a2)
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  return ctu::LogMessageBuffer::appendString(a1, v2);
}

void sub_1A9135588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::operator<<(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  a2(v4);
  return a1;
}

uint64_t ctu::operator<<(uint64_t a1, void (*a2)(char *))
{
  v4 = ctu::LogMessageBuffer::operator std::ostream &(a1);
  a2(&v4[*(*v4 - 24)]);
  return a1;
}

char *std::vector<std::string>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void anonymous namespace::XpcDescriptionGenerator::describe_double(std::string **this, xpc_object_t xdouble)
{
  value = xpc_double_get_value(xdouble);
  v4 = *this;
  std::to_string(&v7, value);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  std::string::append(v4, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1A9135844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *anonymous namespace::XpcDescriptionGenerator::describe_date(std::string **this, xpc_object_t xdate)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v8 = xpc_date_get_value(xdate) / 0x3B9ACA00uLL;
  v7.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tm_mon = v3;
  *&v7.tm_isdst = v3;
  *&v7.tm_sec = v3;
  localtime_r(&v8, &v7);
  memset(v10, 170, 22);
  *__s = 0xAAAAAAAAAAAAAAAALL;
  strftime(__s, 0x1EuLL, "%F %T %Z", &v7);
  v4 = strlen(__s);
  result = std::string::append(*this, __s, v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void anonymous namespace::XpcDescriptionGenerator::describe_error(std::string **this, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
  std::string::append(*this, "XPC_ERROR(", 0xAuLL);
  v4 = strlen(string);
  std::string::append(*this, string, v4);
  v5 = *this;

  std::string::push_back(v5, 41);
}

void xpc::object::describe(xpc::object *this@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1AC581A60](*this);
  memset(a2, 170, 24);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v7 = operator new(v6);
    a2[1] = v5;
    a2[2] = v6 | 0x8000000000000000;
    *a2 = v7;
    a2 = v7;
    goto LABEL_9;
  }

  *(a2 + 23) = v4;
  if (v4)
  {
LABEL_9:
    memcpy(a2, v3, v5);
  }

  *(a2 + v5) = 0;

  free(v3);
}

xpc_object_t ctu::LogWriter::getFullConfig@<X0>(void *a1@<X8>)
{
  result = xpc_null_create();
  *a1 = result;
  return result;
}

__n128 ctu::LogMessage::LogMessage(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5, __n128 *a6)
{
  *a1 = &unk_1F1CB7558;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v6 = *a4;
  *(a1 + 40) = *(a4 + 2);
  *(a1 + 24) = v6;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v7 = *a5;
  *(a1 + 64) = *(a5 + 2);
  *(a1 + 48) = v7;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  result = *a6;
  *(a1 + 72) = *a6;
  *(a1 + 88) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_1F1CB7558;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v6 = *a4;
  *(a1 + 40) = *(a4 + 2);
  *(a1 + 24) = v6;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v7 = *a5;
  *(a1 + 64) = *(a5 + 2);
  *(a1 + 48) = v7;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  result = *a6;
  *(a1 + 72) = *a6;
  *(a1 + 88) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

uint64_t ctu::LogServer::create@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  ctu::LogServer::create(a1, &v4, a2);
  result = v4;
  if (v4)
  {
    v3 = *(*v4 + 8);

    return v3();
  }

  return result;
}

void sub_1A9135C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::LogServer::create@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xE0uLL);
  v7 = *a2;
  *a2 = 0;
  v12 = v7;
  ctu::LogServer::LogServer(v6, a1, &v12);
  *a3 = v6;
  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_1F1CB4AC8;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v6;
  a3[1] = v8;
  v9 = *(v6 + 2);
  if (v9)
  {
    if (v9->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 1) = v6;
    *(v6 + 2) = v8;
    std::__shared_weak_count::__release_weak(v9);
  }

  else
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 1) = v6;
    *(v6 + 2) = v8;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_6:
  result = v12;
  if (v12)
  {
    v11 = *(*v12 + 8);

    return v11();
  }

  return result;
}

void sub_1A9135DD0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ctu::LogServer> ctu::SharedSynchronizable<ctu::LogServer>::make_shared_ptr<ctu::LogServer>(ctu::LogServer*)::{lambda(ctu::LogServer*)#1}::operator() const(ctu::LogServer*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_1A9135DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_end_catch();
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::LogServer::LogServer(uint64_t a1, __int128 *a2)
{
  v4 = 0;
  ctu::LogServer::LogServer(a1, a2, &v4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  v4 = 0;
  ctu::LogServer::LogServer(a1, a2, &v4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_1A9135EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::LogServer::LogServer(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = __p;
  std::operator+<char>();
  if (v22 < 0)
  {
    v6 = __p[0];
  }

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v8 = dispatch_queue_create(v6, v7);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    *(a1 + 32) = 0;
    dispatch_release(v9);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F1CB5DA8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v10;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = operator new(0x58uLL);
  v20 = 0;
  LOBYTE(v19) = 0;
  ctu::LoggerTree::LoggerTree(v11, &v19);
  *(a1 + 80) = v11;
  std::operator+<char>();
  v12 = std::string::append(&v18, "::writers", 9uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v22 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (v22 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  *(a1 + 88) = dispatch_queue_create(v15, v14);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v16 = *a3;
  *a3 = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = v16;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 850045863;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  atomic_store(v16 != 0, (a1 + 216));
  ctu::LoggerTree::updateParentLogLevel(*(a1 + 80), 40);
  return a1;
}

void sub_1A9136244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void ctu::LogServer::~LogServer(ctu::LogServer *this)
{
  *this = &unk_1F1CB5DA8;
  v5 = (this + 192);
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::mutex::~mutex(this + 2);
  v5 = (this + 104);
  std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::unique_ptr<ctu::LoggerTree>::reset[abi:ne200100](this + 10);
  v4 = *(this + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

{
  ctu::LogServer::~LogServer(this);

  operator delete(v1);
}

void ctu::LogServer::updateConfig(void *a1, void **a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN3ctu9LogServer12updateConfigEN3xpc4dictE_block_invoke;
  v9[3] = &__block_descriptor_tmp_22;
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9LogServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
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

void ___ZN3ctu9LogServer12updateConfigEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = a1 + 40;
  v6[1] = "kDomainLogLevels";
  xpc::dict::object_proxy::operator xpc::dict(v6, &v7);
  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E80])
  {
    v2 = *(v1 + 80);
    v3 = v7;
    v5 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v3 = xpc_null_create();
      v5 = v3;
    }

    ctu::LoggerTree::updateLogLevels(v2, &v5);
    xpc_release(v3);
    v5 = 0;
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::LoggerTree::commitConfigUpdate(v6, *(v1 + 80));
  v4 = *v6;
  std::atomic_store[abi:ne200100]<std::vector<std::pair<std::string,ctu::LogLevel>> const>((v1 + 64), &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  xpc_release(v7);
}

void sub_1A91365B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12;
  xpc_release(v14);
  xpc_release(*(v13 - 40));
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
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

  if (MEMORY[0x1AC581B70](v4) != MEMORY[0x1E69E9E80])
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

void std::atomic_store[abi:ne200100]<std::vector<std::pair<std::string,ctu::LogLevel>> const>(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void ctu::LogServer::start(ctu::LogServer *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3ctu9LogServer5startEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_5;
  v4[4] = this;
  v5 = v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9LogServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_18_0;
  block[4] = this + 8;
  block[5] = &v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }

  atomic_store(1u, this + 216);
}

void ___ZN3ctu9LogServer5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  ctu::LoggerTree::commitConfigUpdate(&v4, *(v1 + 80));
  v3 = v4;
  std::atomic_store[abi:ne200100]<std::vector<std::pair<std::string,ctu::LogLevel>> const>((v1 + 64), &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }

  v2 = *(v1 + 88);
  v5 = v1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN8dispatch9sync_implIZN3ctu9LogServer20flushStartupMessagesEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_29_0;
  block[4] = &v5;
  dispatch_sync(v2, block);
}

void sub_1A91368A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ctu::LogServer::flushStartupMessages(NSObject **this)
{
  v2 = this;
  v1 = this[11];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN8dispatch9sync_implIZN3ctu9LogServer20flushStartupMessagesEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_29_0;
  block[4] = &v2;
  dispatch_sync(v1, block);
}

void ctu::LogServer::close(ctu::LogServer *this)
{
  atomic_store(0, this + 216);
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 11);
  v7 = operator new(0x18uLL);
  *v7 = v3;
  v7[1] = v5;
  v7[2] = this;

  dispatch_async_f(v6, v7, dispatch::async<ctu::LogServer,ctu::LogServer::close(void)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::close(void)::$_0 &&)::{lambda(void *)#1}::__invoke);
}

void ctu::LogServer::debugFlush(ctu::LogServer *this)
{
  v3 = &__block_literal_global_8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9LogServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_18_0;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ctu::LogServer::flush(ctu::LogServer *this@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v10 = *(this + 11);
  v11 = operator new(0x20uLL);
  *v11 = v7;
  v11[1] = v9;
  v11[2] = this;
  v11[3] = v5;
  dispatch_async_f(v10, v11, dispatch::async<ctu::LogServer const,ctu::LogServer::flush(void)::$_0>(std::shared_ptr<ctu::LogServer const>,dispatch_queue_s *,ctu::LogServer::flush(void)::$_0 &&)::{lambda(void *)#1}::__invoke);
  *a2 = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_leave(v5);

    dispatch_release(v5);
  }
}

void sub_1A9136B68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::LogServer::fillLogWriterFullConfig_sync(ctu::LogServer *this, xpc::dict *a2)
{
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    object = v4;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
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
  object = v6;
LABEL_9:
  xpc_release(v5);
  v10[0] = this;
  v10[1] = &object;
  v7 = *(this + 11);
  block = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = ___ZN8dispatch9sync_implIZNK3ctu9LogServer28fillLogWriterFullConfig_syncERN3xpc4dictEE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v15 = &__block_descriptor_tmp_20_0;
  v16 = v10;
  dispatch_sync(v7, &block);
  v8 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v8 = xpc_null_create();
  }

  block = a2;
  v13 = "kLogWriters";
  xpc::dict::object_proxy::operator=(&block, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
}

void ctu::LogServer::fillLogWriterSimpleConfig_sync(ctu::LogServer *this, xpc::dict *a2)
{
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    object = v4;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
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
  object = v6;
LABEL_9:
  xpc_release(v5);
  v10[0] = this;
  v10[1] = &object;
  v7 = *(this + 11);
  block = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = ___ZN8dispatch9sync_implIZNK3ctu9LogServer30fillLogWriterSimpleConfig_syncERN3xpc4dictEE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v15 = &__block_descriptor_tmp_21_0;
  v16 = v10;
  dispatch_sync(v7, &block);
  v8 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v8 = xpc_null_create();
  }

  block = a2;
  v13 = "kLogWriters";
  xpc::dict::object_proxy::operator=(&block, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
}

void ctu::LogServer::getConfig(ctu::LogServer *this@<X0>, xpc_object_t *a2@<X8>)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK3ctu9LogServer9getConfigEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_9;
  v2[4] = this;
  v3 = v2;
  ctu::SharedSynchronizable<ctu::LogServer>::execute_wrapped_sync<xpc::dict({block_pointer})(void)>(a2, this + 8, &v3);
}

uint64_t ___ZNK3ctu9LogServer9getConfigEv_block_invoke@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
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

  if (MEMORY[0x1AC581B70](v5) != MEMORY[0x1E69E9E80])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a2 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  (*(*v3 + 40))(v3, a2);
  return (*(*v3 + 24))(v3, a2);
}

void ctu::LogServer::getSimpleConfig(ctu::LogServer *this@<X0>, xpc_object_t *a2@<X8>)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK3ctu9LogServer15getSimpleConfigEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_10_0;
  v2[4] = this;
  v3 = v2;
  ctu::SharedSynchronizable<ctu::LogServer>::execute_wrapped_sync<xpc::dict({block_pointer})(void)>(a2, this + 8, &v3);
}

uint64_t ___ZNK3ctu9LogServer15getSimpleConfigEv_block_invoke@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
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

  if (MEMORY[0x1AC581B70](v5) != MEMORY[0x1E69E9E80])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a2 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  (*(*v3 + 48))(v3, a2);
  return (*(*v3 + 32))(v3, a2);
}

void ctu::LogServer::addWriter(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[11];
  v11 = operator new(0x28uLL);
  *v11 = v5;
  v11[1] = v7;
  v11[2] = a1;
  v11[3] = v8;
  v11[4] = v9;

  dispatch_async_f(v10, v11, dispatch::async<ctu::LogServer,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0 &&)::{lambda(void *)#1}::__invoke);
}

void ctu::LogServer::registerLogger(void *a1, uint64_t a2, void *a3)
{
  CurrentLogLevel = ctu::LogServer::getCurrentLogLevel(a1, a2);
  if (CurrentLogLevel)
  {
    (*(**a3 + 16))(*a3, CurrentLogLevel);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = a3[1];
  v18 = *a3;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = a1;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = v19;
  v12[4] = v18;
  v12[5] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  v20 = 0;
  v21 = 0;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<ctu::LogServer>::execute_wrapped<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>(ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0,std::default_delete<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v20);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t ctu::LogServer::getCurrentLogLevel(uint64_t a1, void *a2)
{
  sp_mut = std::__get_sp_mut((a1 + 64));
  std::__sp_mut::lock(sp_mut);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
  if (!v6)
  {
LABEL_58:
    v31 = 0;
    if (!v5)
    {
      return v31;
    }

LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    return v31;
  }

  v7 = *(a2 + 23);
  v8 = a2[1];
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v6;
  v11 = v6[1];
  v33 = v11;
  v34 = v5;
  v35 = *v6;
  do
  {
    if (!v9)
    {
      break;
    }

    v12 = v10;
    if (v11 != v10)
    {
      v13 = (v11 - v10) >> 5;
      v14 = v10;
      do
      {
        v15 = &v14[4 * (v13 >> 1)];
        v16 = *(v15 + 23);
        if (v16 >= 0)
        {
          v17 = *(v15 + 23);
        }

        else
        {
          v17 = v15[1];
        }

        if (v17 && (v17 >= v9 ? (v18 = v9) : (v18 = v17), v16 >= 0 ? (v19 = &v14[4 * (v13 >> 1)]) : (v19 = *v15), (v20 = memcmp(v19, a2, v18)) != 0))
        {
          v21 = (v20 >> 31) | 1;
        }

        else
        {
          if (v9 > v17)
          {
            v21 = -1;
          }

          else
          {
            v21 = 1;
          }

          if (v9 == v17)
          {
            v21 = 0;
          }
        }

        if (v21 == -1)
        {
          v13 += ~(v13 >> 1);
        }

        else
        {
          v13 >>= 1;
        }

        if (v21 == -1)
        {
          v14 = v15 + 4;
        }
      }

      while (v13);
      v12 = v11;
      v10 = v35;
      if (v14 != v11)
      {
        v22 = *(v14 + 23);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[1];
        }

        if (v22 == v9)
        {
          if (v23 >= 0)
          {
            v24 = v14;
          }

          else
          {
            v24 = *v14;
          }

          v25 = memcmp(v24, a2, v9);
          v12 = v14;
          if (!v25)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v12 = v14;
        }
      }
    }

    v26 = v9;
    while (v26)
    {
      v27 = v26 - 1;
      v28 = *(a2 + --v26);
      if (v28 == 46)
      {
        goto LABEL_51;
      }
    }

    v27 = v9;
LABEL_51:
    v11 = v12;
    v29 = v9 == v27;
    v9 = v27;
  }

  while (!v29);
  v5 = v34;
  if (v10 == v33)
  {
    goto LABEL_58;
  }

  v30 = *(v10 + 23);
  if (v30 < 0)
  {
    v30 = *(v10 + 8);
  }

  v14 = v10;
  if (v30)
  {
    v31 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v31 = *(v14 + 24);
LABEL_62:
  v5 = v34;
  if (v34)
  {
    goto LABEL_59;
  }

  return v31;
}

uint64_t ctu::LogServer::getCurrentLogLevelSlow(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableINS_9LogServerEE20execute_wrapped_syncIZNKS1_22getCurrentLogLevelSlowERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSE__block_invoke;
  v6[3] = &__block_descriptor_tmp_26;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = -86;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3ctu8LogLevelEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_28;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = -86;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFN3ctu8LogLevelEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_27;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14;
}

void ctu::LogServer::log(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 216));
  if (v2)
  {
    std::mutex::lock((a1 + 128));
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
    v7 = *(a1 + 208);
    if (v6 >= v7)
    {
      v9 = v6 - v5;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<std::shared_ptr<ctu::LogMessage>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v7 - v5;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v21[4] = (a1 + 192);
      if (v12)
      {
        v13 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(a1 + 192, v12);
      }

      else
      {
        v13 = 0;
      }

      v15 = &v13[16 * v12];
      v14 = &v13[16 * v9];
      *v14 = *a2;
      v8 = v14 + 16;
      *a2 = 0;
      *(a2 + 8) = 0;
      v16 = *(a1 + 192);
      v17 = *(a1 + 200) - v16;
      v18 = &v14[-v17];
      memcpy(&v14[-v17], v16, v17);
      v19 = *(a1 + 192);
      *(a1 + 192) = v18;
      *(a1 + 200) = v8;
      v20 = *(a1 + 208);
      *(a1 + 208) = v15;
      v21[2] = v19;
      v21[3] = v20;
      v21[0] = v19;
      v21[1] = v19;
      std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::~__split_buffer(v21);
    }

    else
    {
      *v6 = *a2;
      v8 = v6 + 1;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    *(a1 + 200) = v8;
    std::mutex::unlock((a1 + 128));
    if (v5 == v6)
    {
      ctu::LogServer::handleLogMessages(a1);
    }
  }
}

void ctu::LogServer::handleLogMessages(ctu::LogServer *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 11);
  v7 = operator new(0x18uLL);
  *v7 = v3;
  v7[1] = v5;
  v7[2] = this;

  dispatch_async_f(v6, v7, dispatch::async<ctu::LogServer,ctu::LogServer::handleLogMessages(void)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::handleLogMessages(void)::$_0 &&)::{lambda(void *)#1}::__invoke);
}

void *ctu::ScopedLogFlusher::ScopedLogFlusher(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 5000;
  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 5000;
  return result;
}

void *ctu::ScopedLogFlusher::ScopedLogFlusher(void *result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = a3;
  return result;
}

{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = a3;
  return result;
}

void ctu::ScopedLogFlusher::~ScopedLogFlusher(ctu::ScopedLogFlusher *this)
{
  v2 = *this;
  if (v2)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    ctu::LogServer::flush(v2, &v6);
    v3 = v6;
    if (v6)
    {
      v4 = dispatch_time(0, 1000000 * *(this + 2));
      dispatch_group_wait(v3, v4);
      dispatch_release(v3);
    }
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void std::__shared_ptr_pointer<ctu::LogServer *,std::shared_ptr<ctu::LogServer> ctu::SharedSynchronizable<ctu::LogServer>::make_shared_ptr<ctu::LogServer>(ctu::LogServer*)::{lambda(ctu::LogServer *)#1},std::allocator<ctu::LogServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogServer *,std::shared_ptr<ctu::LogServer> ctu::SharedSynchronizable<ctu::LogServer>::make_shared_ptr<ctu::LogServer>(ctu::LogServer*)::{lambda(ctu::LogServer *)#1},std::allocator<ctu::LogServer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::LogServer> ctu::SharedSynchronizable<ctu::LogServer>::make_shared_ptr<ctu::LogServer>(ctu::LogServer*)::{lambda(ctu::LogServer*)#1}::operator() const(ctu::LogServer*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::unique_ptr<ctu::LoggerTree>::reset[abi:ne200100](ctu::LoggerTree **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ctu::LoggerTree::~LoggerTree(v2);

    operator delete(v3);
  }
}

void __copy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9LogServerEEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9LogServerEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void **dispatch::async<ctu::LogServer,ctu::LogServer::close(void)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::close(void)::$_0 &&)::{lambda(void *)#1}::__invoke(void *a1)
{
  v6 = a1;
  v1 = a1[2];
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v2 = (v1 + 104);
  while (v3 != v4)
  {
    (*(**v3 + 16))();
    v3 += 16;
  }

  std::vector<std::shared_ptr<ctu::RestResourceConnection>>::clear[abi:ne200100](v2);
  return std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::close(void)::$_0>>::~unique_ptr[abi:ne200100](&v6);
}

void sub_1A9137D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::close(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::close(void)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

void **dispatch::async<ctu::LogServer const,ctu::LogServer::flush(void)::$_0>(std::shared_ptr<ctu::LogServer const>,dispatch_queue_s *,ctu::LogServer::flush(void)::$_0 &&)::{lambda(void *)#1}::__invoke(void *a1)
{
  v8 = a1;
  v1 = a1[2];
  v2 = *(v1 + 104);
  for (i = *(v1 + 112); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = a1[3];
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }

    (*(*v5 + 40))(v5, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  return std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer const>,ctu::LogServer::flush(void)::$_0>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_1A9137E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer const>,ctu::LogServer::flush(void)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer const>,ctu::LogServer::flush(void)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v2[3];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN8dispatch9sync_implIZNK3ctu9LogServer28fillLogWriterFullConfig_syncERN3xpc4dictEE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*v1)[13];
  v3 = (*v1)[14];
  if (v2 != v3)
  {
    v4 = MEMORY[0x1E69E9E80];
    do
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      (*(**v2 + 56))(&value);
      if (MEMORY[0x1AC581B70](value) == v4)
      {
        xpc_array_append_value(*v1[1], value);
      }

      xpc_release(value);
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN8dispatch9sync_implIZNK3ctu9LogServer30fillLogWriterSimpleConfig_syncERN3xpc4dictEE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*v1)[13];
  v3 = (*v1)[14];
  if (v2 != v3)
  {
    v4 = MEMORY[0x1E69E9E80];
    do
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      (*(**v2 + 48))(&value);
      if (MEMORY[0x1AC581B70](value) == v4)
      {
        xpc_array_append_value(*v1[1], value);
      }

      xpc_release(value);
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ctu::SharedSynchronizable<ctu::LogServer>::execute_wrapped_sync<xpc::dict({block_pointer})(void)>(xpc_object_t *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableINS_9LogServerEE20execute_wrapped_syncIU13block_pointerFN3xpc4dictEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v5[3] = &__block_descriptor_tmp_22;
  v5[4] = a2;
  v5[5] = a3;
  v6 = v5;
  v4 = *(a2 + 16);
  if (*(a2 + 24))
  {
    *a1 = 0xAAAAAAAAAAAAAAAALL;
    *a1 = xpc_null_create();
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc4dictEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_24;
    v11 = a1;
    v12 = &v6;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a1 = 0xAAAAAAAAAAAAAAAALL;
    *a1 = xpc_null_create();
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc4dictEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_23;
    v11 = a1;
    v12 = &v6;
    dispatch_sync(v4, &block);
  }
}

void ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc4dictEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
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

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc4dictEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
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

void **dispatch::async<ctu::LogServer,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v18 = a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = v1[14];
  v4 = v1[15];
  if (v3 >= v4)
  {
    v6 = v1[13];
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<ctu::LogMessage>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v17 = *(a1 + 24);
      if (v11 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v12 = operator new(16 * v11);
      v2 = v17;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[16 * v8];
    *v13 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
      v6 = v1[13];
      v7 = v1[14] - v6;
      v8 = v7 >> 4;
    }

    v14 = &v12[16 * v11];
    v5 = v13 + 16;
    v15 = &v13[-16 * v8];
    memcpy(v15, v6, v7);
    v1[13] = v15;
    v1[14] = v5;
    v1[15] = v14;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v3 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v5 = v3 + 16;
  }

  v1[14] = v5;
  return std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0>>::~unique_ptr[abi:ne200100](&v18);
}

void sub_1A91383FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::addWriter(std::shared_ptr<ctu::LogWriter>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
  }

  return a1;
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::LogServer>::execute_wrapped<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>(ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0,std::default_delete<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::LoggerTree::insertAt(*(*v1 + 80), (v1 + 8), (v1 + 32));
  std::unique_ptr<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0,std::default_delete<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1A91384B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0,std::default_delete<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0,std::default_delete<ctu::LogServer::registerLogger(std::string const&,std::shared_ptr<ctu::TrackedLogger> const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFN3ctu8LogLevelEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3ctu8LogLevelEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIZN3ctu9LogServer20flushStartupMessagesEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  result = *(*v1 + 96);
  if (result)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v4;
    v61 = v4;
    *__p = v4;
    (*(*result + 64))(__p);
    v5 = *(*(v2 + 96) + 80);
    if (v5 >= 1)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v57[2] = v6;
      v58 = v6;
      v57[0] = v6;
      v57[1] = v6;
      ctu::StaticLogger::StaticLogger(v57);
      v7 = *(v2 + 16);
      if (!v7 || (v8 = *(v2 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v10 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(&v58 + 1);
      *&v58 = v8;
      *(&v58 + 1) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      std::string::operator=((v57 + 8), (v2 + 40));
      v56 = 0;
      memset(v55, 0, sizeof(v55));
      ctu::LogMessageBuffer::appendString(v55, "Note: ");
      v12 = ctu::LogMessageBuffer::operator std::ostream &(v55);
      MEMORY[0x1AC580AF0](v12, v5);
      ctu::LogMessageBuffer::appendString(v55, " log messages dropped prior to log start");
      *&v54 = 0xAAAAAAAAAAAAAAAALL;
      *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::buildMessage(v57, 40, v55, &v54);
      v13 = v61;
      v14 = __p[1];
      v15 = v60;
      if (!v61)
      {
        v16 = 32 * (v60 - __p[1]) - 1;
        if (v60 == __p[1])
        {
          v16 = 0;
        }

        if (v16 - *(&v61 + 1) < 0x100)
        {
          if (v60 - __p[1] >= *(&v60 + 1) - __p[0])
          {
            if (*(&v60 + 1) == __p[0])
            {
              v17 = 1;
            }

            else
            {
              v17 = (*(&v60 + 1) - __p[0]) >> 2;
            }

            v67 = __p;
            v63 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(__p, v17);
            v64 = v63;
            v65 = v63;
            v66 = &v63[8 * v18];
            v62 = operator new(0x1000uLL);
            std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *> &>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(&v63, &v62);
            v20 = __p[1];
            v19 = v60;
            v21 = v65;
            if (__p[1] != v60)
            {
              do
              {
                if (v21 == v66)
                {
                  v22 = v64;
                  v23 = v64 - v63;
                  if (v64 <= v63)
                  {
                    if (v21 == v63)
                    {
                      v28 = 1;
                    }

                    else
                    {
                      v28 = (v21 - v63) >> 2;
                    }

                    v29 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(v67, v28);
                    v31 = v64;
                    v21 = &v29[8 * (v28 >> 2)];
                    v32 = v65 - v64;
                    if (v65 != v64)
                    {
                      v21 = &v29[8 * (v28 >> 2) + v32];
                      v33 = &v29[8 * (v28 >> 2)];
                      do
                      {
                        v34 = *v31;
                        v31 += 8;
                        *v33 = v34;
                        v33 += 8;
                        v32 -= 8;
                      }

                      while (v32);
                    }

                    v35 = v63;
                    v63 = v29;
                    v64 = &v29[8 * (v28 >> 2)];
                    v65 = v21;
                    v66 = &v29[8 * v30];
                    if (v35)
                    {
                      operator delete(v35);
                      v21 = v65;
                    }
                  }

                  else
                  {
                    v24 = (v23 >> 3) + 1 + (((v23 >> 3) + 1) >> 63);
                    v25 = ((v23 >> 3) + 1) / 2;
                    v26 = &v64[-8 * v25];
                    v27 = v21 - v64;
                    if (v21 != v64)
                    {
                      memmove(&v64[-8 * v25], v64, v21 - v64);
                      v22 = v64;
                    }

                    v21 = &v26[v27];
                    v64 = &v22[-8 * (v24 >> 1)];
                    v65 = &v26[v27];
                  }
                }

                v36 = *v20;
                v20 += 8;
                *v21 = v36;
                v21 = v65 + 8;
                v65 += 8;
                v19 = v60;
              }

              while (v20 != v60);
              v20 = __p[1];
            }

            v37 = __p[0];
            v38 = *(&v60 + 1);
            __p[0] = v63;
            __p[1] = v64;
            v63 = v37;
            v64 = v20;
            *&v60 = v21;
            *(&v60 + 1) = v66;
            v65 = v19;
            v66 = v38;
            v39 = (v21 - __p[1]) == 8;
            v40 = 128;
            if (!v39)
            {
              v40 = v61 + 256;
            }

            *&v61 = v40;
            if (v19 != v20)
            {
              v65 = &v19[(v20 - v19 + 7) & 0xFFFFFFFFFFFFFFF8];
            }

            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            if (__p[1] == __p[0])
            {
              v63 = operator new(0x1000uLL);
              std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(__p, &v63);
              v63 = *(v60 - 8);
              *&v60 = v60 - 8;
            }

            else
            {
              v63 = operator new(0x1000uLL);
            }

            std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_front<std::shared_ptr<ctu::LogMessage> *&>(__p, &v63);
            v41 = 128;
            if (v60 - __p[1] != 8)
            {
              v41 = v61 + 256;
            }

            *&v61 = v41;
          }
        }

        else
        {
          *&v61 = 256;
          v63 = *(v60 - 8);
          *&v60 = v60 - 8;
          std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_front<std::shared_ptr<ctu::LogMessage> *&>(__p, &v63);
        }

        v13 = v61;
        v14 = __p[1];
        v15 = v60;
      }

      v42 = &v14[8 * (v13 >> 8)];
      if (v15 == v14)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v42 + 16 * v13;
      }

      if (v43 == *v42)
      {
        v43 = *(v42 - 1) + 4096;
      }

      *(v43 - 16) = v54;
      v61 = __PAIR128__(*(&v61 + 1), v13 - 1) + __PAIR128__(1, 0);
      ctu::LogMessageBuffer::~LogMessageBuffer(v55);
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v57);
    }

    if (v60 != __p[1])
    {
      v44 = (__p[1] + 8 * (v61 >> 8));
      v45 = *v44;
      v46 = &(*v44)[16 * v61];
      v47 = *(__p[1] + (((*(&v61 + 1) + v61) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v61) + v61);
      while (v46 != v47)
      {
        v48 = *(v2 + 104);
        v49 = *(v2 + 112);
        if (v48 != v49)
        {
          do
          {
            v50 = *v48;
            v51 = *(v46 + 1);
            *&v57[0] = *v46;
            *(&v57[0] + 1) = v51;
            if (v51)
            {
              atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
            }

            (*(*v50 + 32))(v50, v57);
            if (*(&v57[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57[0] + 1));
            }

            v48 += 2;
          }

          while (v48 != v49);
          v45 = *v44;
        }

        v46 += 16;
        if (v46 - v45 == 4096)
        {
          v52 = v44[1];
          ++v44;
          v45 = v52;
          v46 = v52;
        }
      }
    }

    v53 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    return std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](__p);
  }

  return result;
}

void sub_1A9138ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  operator delete(v27);
  v31 = *(v28 - 96);
  v30 = *(v28 - 88);
  if (v30 != v31)
  {
    *(v28 - 88) = v30 + ((v31 - v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v32 = *(v28 - 104);
  if (v32)
  {
    operator delete(v32);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ctu::LogMessageBuffer::~LogMessageBuffer(&a11);
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(&a19);
  std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_front<std::shared_ptr<ctu::LogMessage> *&>(void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      v10 = 2 * v9;
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(a1, v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = a1[1];
      v14 = v5;
      v15 = a1[2] - v13;
      if (v15)
      {
        v14 = &v5[v15];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      a1[1] = v5;
      a1[2] = v14;
      a1[3] = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = a1[1];
      }
    }

    else
    {
      v8 = (((v7 - v6) >> 3) + 1) / 2;
      v5 = &v4[8 * v8];
      if (v6 != v4)
      {
        memmove(&v4[8 * v8], v4, v6 - v4);
        v6 = a1[2];
      }

      a1[1] = v5;
      a1[2] = &v6[8 * v8];
    }
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(a1, v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
      a1[2] = &v9[v10];
    }
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *> &>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(a1[4], v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
      a1[2] = &v9[v10];
    }
  }

  *v4 = *a2;
  a1[2] += 8;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

uint64_t std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
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
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void **dispatch::async<ctu::LogServer,ctu::LogServer::handleLogMessages(void)::$_0>(std::shared_ptr<ctu::LogServer>,dispatch_queue_s *,ctu::LogServer::handleLogMessages(void)::$_0 &&)::{lambda(void *)#1}::__invoke(void *a1)
{
  v10 = a1;
  v1 = a1[2];
  v12 = 0;
  v13 = 0uLL;
  std::mutex::lock((v1 + 128));
  v2 = *(v1 + 192);
  v12 = v2;
  v9 = *(v1 + 200);
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  v13 = v9;
  *(v1 + 208) = 0;
  std::mutex::unlock((v1 + 128));
  if (*(v1 + 96))
  {
    for (; v2 != v9; ++v2)
    {
      v3 = *(v1 + 96);
      v11 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      (*(*v3 + 32))(v3, &v11);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }
    }
  }

  else
  {
    for (; v2 != v9; ++v2)
    {
      v4 = *(v1 + 104);
      v5 = *(v1 + 112);
      while (v4 != v5)
      {
        v6 = *v4;
        v7 = *(v2 + 1);
        *&v11 = *v2;
        *(&v11 + 1) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v11);
        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        v4 += 2;
      }
    }
  }

  v14 = &v12;
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::close(void)::$_0>>::~unique_ptr[abi:ne200100](&v10);
}

void sub_1A91391C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 56) = &a15;
  std::vector<std::shared_ptr<ctu::LogMessage>>::__destroy_vector::operator()[abi:ne200100]((v15 - 56));
  std::unique_ptr<std::pair<std::shared_ptr<ctu::LogServer>,ctu::LogServer::close(void)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

const char *ctu::asString(int a1)
{
  if (a1 > 49)
  {
    if (a1 <= 79)
    {
      if (a1 == 50)
      {
        return "Notice";
      }

      if (a1 == 70)
      {
        return "Warn";
      }
    }

    else
    {
      switch(a1)
      {
        case 80:
          return "Error";
        case 100:
          return "Fatal";
        case 255:
          return "Never";
      }
    }
  }

  else if (a1 <= 9)
  {
    if (!a1)
    {
      return "Unset";
    }

    if (a1 == 1)
    {
      return "Always";
    }
  }

  else
  {
    switch(a1)
    {
      case 10:
        return "Trace";
      case 20:
        return "Debug";
      case 40:
        return "Info";
    }
  }

  return "???";
}

uint64_t ctu::asChar(int a1)
{
  if (a1 <= 49)
  {
    if (a1 == 10)
    {
      return 84;
    }

    if (a1 != 20)
    {
      if (a1 == 40)
      {
        return 73;
      }

      return 63;
    }

    return 68;
  }

  else if (a1 > 79)
  {
    if (a1 != 100)
    {
      if (a1 == 80)
      {
        return 69;
      }

      return 63;
    }

    return 70;
  }

  else
  {
    if (a1 != 50)
    {
      if (a1 == 70)
      {
        return 87;
      }

      return 63;
    }

    return 78;
  }
}

ctu::OsLogContext *ctu::OsLogContext::OsLogContext(ctu::OsLogContext *this, os_log_s *a2, const char *a3)
{
  *this = a3;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this + 1, a2);
  return this;
}

{
  *this = a3;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this + 1, a2);
  return this;
}

void *ctu::operator<<(void *a1, int a2)
{
  v3 = ctu::asString(a2);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

uint64_t ctu::combine(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = result == 255;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t ctu::max(uint64_t result, unsigned int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t ctu::LoggerCommonBase::LoggerCommonBase(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CB7138;
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), *a2);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 32), *(a2 + 8));
  *(a1 + 40) = 0;
  return a1;
}

{
  *a1 = &unk_1F1CB7138;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 32), (a2 + 32));
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = v5;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v7);
  return a1;
}

uint64_t ctu::LoggerCommonBase::LoggerCommonBase(uint64_t a1, __int128 *a2, void *object)
{
  *a1 = &unk_1F1CB7138;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 32), object);
  *(a1 + 40) = 0;
  return a1;
}

void ctu::LoggerCommonBase::~LoggerCommonBase(void **this)
{
  *this = &unk_1F1CB7138;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void **ctu::LoggerCommonBase::LoggerCommonBase(void **this, const ctu::LoggerCommonBase *a2)
{
  *this = &unk_1F1CB7138;
  v4 = (this + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this + 4, a2 + 4);
  *(this + 20) = *(a2 + 20);
  return this;
}

uint64_t ctu::LoggerCommonBase::operator=(uint64_t a1, const ctu::LoggerCommonBase *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v10[16] = v3;
  v11 = v3;
  *v10 = v3;
  ctu::LoggerCommonBase::LoggerCommonBase(v10, a2);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = *&v10[8];
  v6 = *&v10[24];
  *&v10[8] = v4;
  *&v10[16] = v5;
  v7 = *(a1 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  if (v10 != a1)
  {
    v13 = 0;
    *(a1 + 32) = v11;
    *&v11 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v13);
  }

  v13 = v11;
  *&v11 = v7;
  v12 = 0;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v13);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v12);
  v8 = *(a1 + 40);
  *(a1 + 40) = WORD4(v11);
  WORD4(v11) = v8;
  ctu::LoggerCommonBase::~LoggerCommonBase(v10);
  return a1;
}

uint64_t ctu::LoggerCommonBase::operator=(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v10[16] = v3;
  v11 = v3;
  *v10 = v3;
  ctu::LoggerCommonBase::LoggerCommonBase(v10, a2);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = *&v10[8];
  v6 = *&v10[24];
  *&v10[8] = v4;
  *&v10[16] = v5;
  v7 = *(a1 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  if (v10 != a1)
  {
    v13 = 0;
    *(a1 + 32) = v11;
    *&v11 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v13);
  }

  v13 = v11;
  *&v11 = v7;
  v12 = 0;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v13);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v12);
  v8 = *(a1 + 40);
  *(a1 + 40) = WORD4(v11);
  WORD4(v11) = v8;
  ctu::LoggerCommonBase::~LoggerCommonBase(v10);
  return a1;
}

uint64_t ctu::LoggerCommonBase::getLogLevel(ctu::LoggerCommonBase *this)
{
  if (*(this + 40))
  {
    v1 = *(this + 41) == 255;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return *(this + 41);
  }

  else
  {
    return *(this + 40);
  }
}

BOOL ctu::LoggerCommonBase::enabled(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 41);
  if (*(a1 + 40))
  {
    v3 = v2 == 255;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v2 = *(a1 + 40);
  }

  return a2 >= v2;
}

void ctu::Logger::create(NSObject **a1@<X0>, void (****a2)(void)@<X1>, uint64_t a3@<X2>, void **a4@<X3>, std::__shared_weak_count_vtbl **a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x70uLL);
  v17 = *a4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v18, a4 + 1);
  v11 = a4[1];
  a4[1] = 0;
  p_get_deleter = v11;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&p_get_deleter);
  ctu::Logger::Logger(v10, a1, a2, a3, &v17);
  *a5 = v10;
  v12 = operator new(0x20uLL);
  v12->__vftable = &unk_1F1CB4B00;
  v12->__shared_owners_ = 0;
  v12->__shared_weak_owners_ = 0;
  v12[1].__vftable = v10;
  a5[1] = v12;
  v13 = v10[2].~__shared_weak_count;
  if (v13)
  {
    if (v13->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10[1].__on_zero_shared_weak = v10;
    v10[2].~__shared_weak_count = v12;
    std::__shared_weak_count::__release_weak(v13);
  }

  else
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10[1].__on_zero_shared_weak = v10;
    v10[2].~__shared_weak_count = v12;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_6:
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v18);
  v14 = *a2;
  p_get_deleter = &v10[1].__get_deleter;
  v16 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  (**v14)();
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1A9139BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void *ctu::Logger::Logger(void *a1, NSObject **a2, void *a3, uint64_t a4, void **a5)
{
  v13 = *a5;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v14, a5 + 1);
  v10 = a5[1];
  a5[1] = 0;
  v15 = v10;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v15);
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, &v13, a3);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v14);
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = &unk_1F1CB7260;
  v11 = *a2;
  a1[11] = *a2;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[12] = 0;
  a1[13] = a4;
  *a1 = &unk_1F1CB5EF8;
  a1[8] = &unk_1F1CB5F38;
  return a1;
}

uint64_t ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(uint64_t a1, uint64_t a2, void *a3)
{
  __s = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&object, (a2 + 8));
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v11 = v6;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  *a1 = &unk_1F1CB7138;
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), __s);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 32), object);
  *(a1 + 40) = 0;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&object);
  *a1 = &unk_1F1CB7508;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(ctu::LoggerCommonBase *this)
{
  *this = &unk_1F1CB7508;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ctu::LoggerCommonBase::~LoggerCommonBase(this);
}

void ctu::Logger::updateTrackedConfig(void *a1, char a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN3ctu6Logger19updateTrackedConfigENS_8LogLevelE_block_invoke;
  v8[3] = &__block_descriptor_tmp_9;
  v8[4] = a1;
  v9 = a2;
  v3 = a1[10];
  if (!v3 || (v4 = a1[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = a1[11];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_6LoggerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_27_2;
  block[5] = v4;
  v11 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(ctu::LoggerCommonBase *a1)
{
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(a1);

  operator delete(v1);
}

void ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::buildMessage(uint64_t a1@<X0>, char a2@<W1>, ctu::LogMessageBuffer *a3@<X2>, void *a4@<X8>)
{
  v8 = ctu::Clock::now_in_nanoseconds(a1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  ctu::LogMessageBuffer::str(a3);
  v10[0] = &unk_1F1CB7558;
  v10[1] = v8;
  v11 = a2;
  v12 = __p;
  memset(&__p, 0, sizeof(__p));
  v13 = *a3;
  v14 = *(a3 + 2);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v15 = *(a3 + 2);
  v16 = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  std::allocate_shared[abi:ne200100]<ctu::LogMessage,std::allocator<ctu::LogMessage>,ctu::LogMessage,0>(v10, a4);
  ctu::LogMessage::~LogMessage(v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A913A138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  ctu::LogMessage::~LogMessage(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(uint64_t a1, char a2, ctu::LogMessageBuffer *a3)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v5 = atomic_load((v4 + 216));
    if (v5)
    {
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::buildMessage(a1, a2, a3, &v6);
      ctu::LogServer::log(v4, &v6);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1A913A1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::enabled(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 41);
  if (*(a1 + 40))
  {
    v3 = v2 == 255;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v2 = *(a1 + 40);
  }

  if (v2 <= a2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      v4 = atomic_load((v6 + 216));
      if (!v5)
      {
        return v4 & 1;
      }
    }

    else
    {
      v4 = 1;
      if (!v5)
      {
        return v4 & 1;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

ctu::OsLogLogger *ctu::OsLogLogger::OsLogLogger(ctu::OsLogLogger *this, const char *subsystem, const char *category)
{
  *this = os_log_create(subsystem, category);
  return this;
}

{
  *this = os_log_create(subsystem, category);
  return this;
}

void **ctu::OsLogLogger::operator=(void **a1, void **a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v5, a2);
  v3 = *a1;
  *a1 = 0;
  if (&v5 != a1)
  {
    v7 = 0;
    *a1 = v5;
    v5 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v7);
  }

  v6 = 0;
  v7 = v5;
  v5 = v3;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v7);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v6);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v5);
  return a1;
}

{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v7, a2);
  v4 = *a2;
  *a2 = 0;
  v9 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  v5 = *a1;
  *a1 = 0;
  if (&v7 != a1)
  {
    v9 = 0;
    *a1 = v7;
    v7 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  }

  v8 = 0;
  v9 = v7;
  v7 = v5;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v8);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v7);
  return a1;
}

ctu::StaticLogger *ctu::StaticLogger::StaticLogger(ctu::StaticLogger *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, &str_12);
  ctu::LoggerCommonBase::LoggerCommonBase(this, __p, MEMORY[0x1E69E9C10]);
  *this = &unk_1F1CB7508;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F1CB73D8;
  return this;
}

void sub_1A913A520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(uint64_t a1, __int128 *a2, void *a3)
{
  result = ctu::LoggerCommonBase::LoggerCommonBase(a1, a2, MEMORY[0x1E69E9C10]);
  *result = &unk_1F1CB7508;
  v5 = a3[1];
  result[6] = *a3;
  result[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ctu::StaticLogger::~StaticLogger(ctu::StaticLogger *this)
{
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);

  operator delete(v1);
}

uint64_t ctu::StaticLogger::StaticLogger(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, a2, a3);
  *v4 = &unk_1F1CB73D8;
  v5 = v4[6];
  if (v5)
  {
    *(a1 + 41) = ctu::LogServer::getCurrentLogLevel(v5, (a1 + 8));
  }

  return a1;
}

uint64_t ctu::StaticLogger::updateLogLevel(ctu::StaticLogger *this)
{
  result = *(this + 6);
  if (result)
  {
    result = ctu::LogServer::getCurrentLogLevel(result, this + 1);
    *(this + 41) = result;
  }

  return result;
}

uint64_t ctu::StaticLogger::StaticLogger(uint64_t a1, void **a2, void *a3)
{
  v9 = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v10, a2 + 1);
  v6 = a2[1];
  a2[1] = 0;
  v11 = v6;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, &v9, a3);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v10);
  *a1 = &unk_1F1CB73D8;
  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 41) = ctu::LogServer::getCurrentLogLevel(v7, (a1 + 8));
  }

  return a1;
}

void **ctu::StaticLogger::StaticLogger(void **a1, const ctu::LoggerCommonBase *a2)
{
  result = ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, a2);
  *result = &unk_1F1CB73D8;
  return result;
}

{
  result = ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(a1, a2);
  *result = &unk_1F1CB73D8;
  return result;
}

void **ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::LoggerBase(void **a1, const ctu::LoggerCommonBase *a2)
{
  result = ctu::LoggerCommonBase::LoggerCommonBase(a1, a2);
  *result = &unk_1F1CB7508;
  v4 = *(a2 + 7);
  result[6] = *(a2 + 6);
  result[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void ctu::destr_function(ctu *this, void *a2)
{
  if (this)
  {
    v3 = *this;
    if (v3)
    {
      *(this + 1) = v3;
      operator delete(v3);
    }

    operator delete(this);
  }
}

void ctu::initThreadId(ctu *this)
{
  if ((_MergedGlobals_7 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EB382920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB382920))
    {
      __cxa_atexit(MEMORY[0x1E69E5328], &ctu::initThreadId(void)::g_pages_mutex, &dword_1A90E3000);
      __cxa_guard_release(&qword_1EB382920);
    }

    std::mutex::lock(&ctu::initThreadId(void)::g_pages_mutex);
    if ((_MergedGlobals_7 & 1) == 0)
    {
      pthread_key_create(&qword_1EB382928, ctu::destr_function);
      _MergedGlobals_7 = 1;
    }

    std::mutex::unlock(&ctu::initThreadId(void)::g_pages_mutex);
  }
}

void ctu::TagVector::push_back(ctu::TagVector *this, int a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 >= v4)
  {
    v7 = *this;
    v8 = v5 - *this;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 >> 62)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v12 = operator new(4 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * (v8 >> 2)];
    *v13 = a2;
    v6 = v13 + 4;
    memcpy(v12, v7, v8);
    *this = v12;
    *(this + 1) = v6;
    *(this + 2) = &v12[4 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(this + 1) = v6;
  ++*(this + 6);
}

uint64_t ctu::TagVector::pop_back(uint64_t this)
{
  *(this + 8) -= 4;
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 24) = v1 - 1;
  }

  return this;
}

void ctu::TagVector::getTagLabel(ctu::TagVector *this@<X0>, std::string *a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = *(this + 1);
  if (v3 == *this)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      memset(&v16, 170, sizeof(v16));
      v5 = *(v3 - 4);
      v3 -= 4;
      std::to_string(&v16, v5);
      if (*(this + 6))
      {
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        memset(&v15, 170, sizeof(v15));
        std::string::basic_string[abi:ne200100](&v15, size + 1);
        if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v15;
        }

        else
        {
          v7 = v15.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v16;
          }

          else
          {
            v8 = v16.__r_.__value_.__r.__words[0];
          }

          memmove(v7, v8, size);
        }

        *(&v7->__r_.__value_.__l.__data_ + size) = 43;
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        --*(this + 6);
      }

      std::vector<std::string>::push_back[abi:ne200100](&v17, &v16);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    while (v3 != *this);
    v9 = v17;
    v10 = v18;
    if (v17 != v18)
    {
      v11 = v18 - 1;
      if (&v18[-1] > v17)
      {
        do
        {
          v12 = *v9;
          v13 = *(v9 + 8);
          v14 = *&v11->__r_.__value_.__l.__data_;
          *(v9 + 16) = *(&v11->__r_.__value_.__l + 2);
          *v9 = v14;
          v9 += 24;
          v11->__r_.__value_.__r.__words[0] = v12;
          *&v11->__r_.__value_.__r.__words[1] = v13;
          --v11;
        }

        while (v9 < v11);
        v9 = v17;
        v10 = v18;
      }
    }
  }

  ctu::join<std::__wrap_iter<std::string *>>(v9, v10, ",", 1uLL, a2);
  v16.__r_.__value_.__r.__words[0] = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1A913AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  __p = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ctu::Logger::~Logger(ctu::Logger *this)
{
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 9);

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);
}

{
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 9);
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(this);

  operator delete(v2);
}

void non-virtual thunk toctu::Logger::~Logger(ctu::Logger *this)
{
  v1 = (this - 64);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);

  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v1);
}

{
  v1 = (this - 64);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
  ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::~LoggerBase(v1);

  operator delete(v2);
}

void std::__shared_ptr_pointer<ctu::Logger *,std::shared_ptr<ctu::Logger> ctu::SharedSynchronizable<ctu::Logger>::make_shared_ptr<ctu::Logger>(ctu::Logger*)::{lambda(ctu::Logger *)#1},std::allocator<ctu::Logger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::Logger *,std::shared_ptr<ctu::Logger> ctu::SharedSynchronizable<ctu::Logger>::make_shared_ptr<ctu::Logger>(ctu::Logger*)::{lambda(ctu::Logger *)#1},std::allocator<ctu::Logger>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::Logger> ctu::SharedSynchronizable<ctu::Logger>::make_shared_ptr<ctu::Logger>(ctu::Logger*)::{lambda(ctu::Logger*)#1}::operator() const(ctu::Logger*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void __copy_helper_block_e8_32b40c40_ZTSNSt3__110shared_ptrIKN3ctu6LoggerEEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c40_ZTSNSt3__110shared_ptrIKN3ctu6LoggerEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void *std::allocate_shared[abi:ne200100]<ctu::LogMessage,std::allocator<ctu::LogMessage>,ctu::LogMessage,0>@<X0>(const ctu::LogMessage *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x78uLL);
  result = std::__shared_ptr_emplace<ctu::LogMessage>::__shared_ptr_emplace[abi:ne200100]<ctu::LogMessage,std::allocator<ctu::LogMessage>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ctu::LogMessage>::__shared_ptr_emplace[abi:ne200100]<ctu::LogMessage,std::allocator<ctu::LogMessage>,0>(void *a1, const ctu::LogMessage *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1CB50B0;
  ctu::LogMessage::LogMessage((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ctu::LogMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB50B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

ctu::LogMessage *ctu::LogMessage::LogMessage(ctu::LogMessage *this, const ctu::LogMessage *a2)
{
  *this = &unk_1F1CB7558;
  v4 = *(a2 + 1);
  *(this + 16) = *(a2 + 16);
  *(this + 1) = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](this + 9, 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3));
    *(this + 10) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(this + 72, v8, v7, *(this + 10));
  }

  return this;
}

void sub_1A913B0F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::XpcServer::XpcServer(uint64_t a1, __int128 *a2, xpc_object_t *a3, dispatch_object_t *a4)
{
  v7 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
    v8 = a2 + 23;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    dispatch_retain(v7);
    dispatch_retain(v7);
    v10 = dispatch_queue_create_with_target_V2(v9, 0, v7);
  }

  else
  {
    v8 = a2 + 23;
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v10 = dispatch_queue_create(v11, 0);
  }

  v12 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 32) = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v7)
  {
    dispatch_release(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }

  *a1 = &unk_1F1CB5C58;
  v13 = (a1 + 40);
  if (*v8 < 0)
  {
    std::string::__init_copy_ctor_external(v13, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *&v13->__r_.__value_.__l.__data_ = v14;
  }

  v15 = *a3;
  v17 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v15 = xpc_null_create();
    v17 = v15;
  }

  ctu::XpcServerHelper::XpcServerHelper((a1 + 64), &v17);
  xpc_release(v15);
  return a1;
}

void ctu::XpcServer::~XpcServer(ctu::XpcServer *this)
{
  *this = &unk_1F1CB5C58;
  ctu::XpcServerHelper::~XpcServerHelper(this + 8);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

void ctu::XpcServer::setListener_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = *a2;
  v3 = v4;
  *a2 = xpc_null_create();
  ctu::XpcServerHelper::setListener((a1 + 64), &v4);
  xpc_release(v3);
}

void ctu::XpcServer::startListener_sync(ctu::XpcServer *this)
{
  v2 = *(this + 3);
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v7, this + 1);
  v3 = v8;
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ctu::XpcServerHelper::startListener<ctu::XpcServer>(this + 8, &object, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1A913B438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::XpcServerHelper::startListener<ctu::XpcServer>(xpc_connection_t *a1, dispatch_queue_t *a2, uint64_t *a3)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E68])
  {
    v6 = *a1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1174405120;
    v9[2] = ___ZN3ctu15XpcServerHelper13startListenerINS_9XpcServerEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    v9[3] = &__block_descriptor_tmp_23;
    v8 = *a3;
    v7 = a3[1];
    v9[4] = a1;
    v9[5] = v8;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v6;
    xpc_connection_set_event_handler(v6, v9);
    xpc_connection_set_target_queue(*a1, *a2);
    xpc_connection_resume(*a1);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_1A913B544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  _Unwind_Resume(exception_object);
}

void ctu::XpcServer::handleListenerError(void (***a1)(void, xpc_object_t *), void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (**a1)(a1, &object);
  xpc_release(object);
}

void ctu::XpcServer::handleClientError(uint64_t a1, void **a2, void **a3)
{
  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v6 = *a3;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 16))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_1A913B6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c70_ZTSN8dispatch5blockIU13block_pointerFvN3xpc10connectionENS1_4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

double ctu::MemoryBufferedLogWriter::create@<D0>(ctu::MemoryBufferedLogWriter *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *v6 = &unk_1F1CB69B8;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 7) = this;
  *(v6 + 8) = a2;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *a3 = v6;
  return result;
}

double ctu::MemoryBufferedLogWriter::MemoryBufferedLogWriter(ctu::MemoryBufferedLogWriter *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_1F1CB69B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = 0;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F1CB69B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = 0;
  *(this + 10) = 0;
  return result;
}

void ctu::MemoryBufferedLogWriter::~MemoryBufferedLogWriter(ctu::MemoryBufferedLogWriter *this)
{
  *this = &unk_1F1CB69B8;
  std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_1F1CB69B8;
  std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_1F1CB69B8;
  std::deque<std::shared_ptr<ctu::LogMessage>>::~deque[abi:ne200100](this + 1);

  operator delete(this);
}

__n128 ctu::MemoryBufferedLogWriter::drain@<Q0>(ctu::MemoryBufferedLogWriter *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 8);
  *(a2 + 16) = v2;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  result = *(this + 40);
  *(a2 + 32) = result;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

void ctu::MemoryBufferedLogWriter::dropFrontMessage(ctu::MemoryBufferedLogWriter *this)
{
  v2 = *(this + 5);
  v3 = *(*(this + 2) + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8));
  v4 = *(v3 + 16 * v2);
  v5 = *(v4 + 71);
  if (v5 < 0)
  {
    v5 = *(v4 + 56);
  }

  *(this + 9) -= v5;
  v6 = *(v3 + 16 * v2 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v2 = *(this + 5);
  }

  v7 = *(this + 6) - 1;
  v8 = v2 + 1;
  *(this + 5) = v8;
  *(this + 6) = v7;
  if (v8 >= 0x200)
  {
    operator delete(**(this + 2));
    *(this + 2) += 8;
    *(this + 5) -= 256;
  }

  ++*(this + 10);
}

void ctu::MemoryBufferedLogWriter::write(ctu::MemoryBufferedLogWriter *this, void *a2)
{
  v4 = *(this + 7);
  if (v4 >= 1 && *(this + 6) >= v4)
  {
    do
    {
      ctu::MemoryBufferedLogWriter::dropFrontMessage(this);
    }

    while (*(this + 6) >= *(this + 7));
  }

  v5 = *(this + 8);
  if (v5 >= 1 && *(this + 9) >= v5)
  {
    do
    {
      ctu::MemoryBufferedLogWriter::dropFrontMessage(this);
    }

    while (*(this + 9) >= *(this + 8));
  }

  v6 = *a2;
  v7 = *(*a2 + 71);
  if (v7 < 0)
  {
    v7 = *(v6 + 56);
  }

  v8 = *(this + 1);
  v9 = *(this + 3);
  v10 = *(this + 2);
  v11 = v9 - v10;
  *(this + 9) += v7;
  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 32 * (v9 - v10) - 1;
  }

  v13 = *(this + 5);
  v14 = *(this + 6) + v13;
  if (v12 == v14)
  {
    if (v13 < 0x100)
    {
      v15 = *(this + 4);
      v16 = *(this + 1);
      if (v11 >= v15 - v16)
      {
        if (v15 == v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = (v15 - v16) >> 2;
        }

        v44 = this + 8;
        __p = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(this + 8, v17);
        __src = __p + v11;
        *&v43 = __p + v11;
        *(&v43 + 1) = __p + 8 * v18;
        v40 = operator new(0x1000uLL);
        std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *> &>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(&__p, &v40);
        v20 = *(this + 2);
        v19 = *(this + 3);
        v21 = __src;
        if (v19 == v20)
        {
          v22 = *(this + 3);
        }

        else
        {
          v22 = *(this + 3);
          do
          {
            if (v21 == __p)
            {
              v24 = v43;
              if (v43 >= *(&v43 + 1))
              {
                if (*(&v43 + 1) == v21)
                {
                  v26 = 1;
                }

                else
                {
                  v26 = (*(&v43 + 1) - v21) >> 2;
                }

                v27 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::LogMessage> *>>(v44, v26);
                v23 = &v27[(2 * v26 + 6) & 0xFFFFFFFFFFFFFFF8];
                v29 = __src;
                v30 = v23;
                v31 = v43 - __src;
                if (v43 != __src)
                {
                  v30 = &v23[v31];
                  v32 = v23;
                  do
                  {
                    v33 = *v29++;
                    *v32 = v33;
                    v32 += 8;
                    v31 -= 8;
                  }

                  while (v31);
                }

                v34 = __p;
                __p = v27;
                __src = v23;
                *&v43 = v30;
                *(&v43 + 1) = &v27[8 * v28];
                if (v34)
                {
                  operator delete(v34);
                  v23 = __src;
                }
              }

              else
              {
                v25 = (((*(&v43 + 1) - v43) >> 3) + 1) / 2;
                v23 = &v21[8 * v25];
                if (v43 != v21)
                {
                  memmove(&v21[8 * v25], v21, v43 - v21);
                  v24 = v43;
                }

                __src = v23;
                *&v43 = v24 + 8 * v25;
              }
            }

            else
            {
              v23 = v21;
            }

            v35 = *(v22 - 1);
            v22 -= 8;
            *(v23 - 1) = v35;
            v21 = __src - 8;
            __src = __src - 8;
            v20 = *(this + 2);
          }

          while (v22 != v20);
          v19 = *(this + 3);
        }

        v37 = *(this + 1);
        *(this + 1) = __p;
        *(this + 2) = v21;
        __p = v37;
        __src = v20;
        v38 = *(this + 4);
        *(this + 24) = v43;
        *&v43 = v19;
        *(&v43 + 1) = v38;
        if (v19 != v22)
        {
          *&v43 = &v19[(v22 - v19 + 7) & 0xFFFFFFFFFFFFFFF8];
        }

        if (v37)
        {
          operator delete(v37);
        }

        goto LABEL_46;
      }

      if (v15 != v9)
      {
        __p = operator new(0x1000uLL);
        std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(this + 1, &__p);
        goto LABEL_46;
      }

      __p = operator new(0x1000uLL);
      std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_front<std::shared_ptr<ctu::LogMessage> *&>(this + 1, &__p);
      v36 = *(this + 2);
      __p = *v36;
      *(this + 2) = v36 + 1;
    }

    else
    {
      *(this + 5) = v13 - 256;
      __p = *v10;
      *(this + 2) = v10 + 1;
    }

    std::__split_buffer<std::shared_ptr<ctu::LogMessage> *,std::allocator<std::shared_ptr<ctu::LogMessage> *>>::emplace_back<std::shared_ptr<ctu::LogMessage> *>(this + 1, &__p);
LABEL_46:
    v10 = *(this + 2);
    v14 = *(this + 6) + *(this + 5);
    v6 = *a2;
  }

  v39 = *(v10 + ((v14 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v14;
  *v39 = v6;
  v39[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  ++*(this + 6);
}

void sub_1A913BD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::XpcClient::XpcClient(uint64_t a1, char *label, NSObject **a3)
{
  v4 = label;
  if (label[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *label, *(label + 1));
    if (v4[23] < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v9 = *label;
  }

  v6 = dispatch_queue_create(v4, 0);
  v8 = v6;
  ctu::XpcClient::XpcClient(a1, &v9, &v8, a3);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void ctu::XpcClient::~XpcClient(void **this)
{
  *this = &unk_1F1CB5CF8;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  ctu::XpcClientHelper::~XpcClientHelper(this + 5);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

void ctu::XpcClient::handleServerError(uint64_t a1, void **a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN3ctu9XpcClient17handleServerErrorEN3xpc6objectE_block_invoke;
  v5[3] = &__block_descriptor_tmp_24;
  v3 = *a2;
  v5[4] = a1;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_8_0;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  xpc_release(object);
}

void ___ZN3ctu9XpcClient17handleServerErrorEN3xpc6objectE_block_invoke(uint64_t a1)
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

  (**v2)(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t TelephonyUtilWriteStackshotWithExcCode(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (qword_1EB382948 != -1)
  {
    dispatch_once(&qword_1EB382948, &__block_literal_global_9);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
  v14 = v7;
  if (a2)
  {
    v15 = _MergedGlobals_8;
    if (_MergedGlobals_8)
    {
      v16 = getpid();
      if (v15(v16, v5, v14))
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    _TelephonyUtilDebugPrint("TelephonyUtilWriteStackshotWithExcCode", "Failed to do stack shot/simulate crash, reason '%s', asCrash %u\n", v8, v9, v10, v11, v12, v13, a1);
    goto LABEL_10;
  }

  if (!off_1EB382938 || (off_1EB382938(v7, v5) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return [v6 drain];
}

void TelephonyUtilTriggerNMI()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  if (_TUIsInternalBuildCached == 1)
  {

    JUMPOUT(0x1AC581790);
  }
}

void *__TelephonyUtilLoadCrashSupport_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_1EB382940 = v9;
  if (v9)
  {
    off_1EB382938 = dlsym(v9, "WriteStackshotReport");
    result = dlsym(qword_1EB382940, "SimulateCrash");
    _MergedGlobals_8 = result;
  }

  else
  {

    return _TelephonyUtilDebugPrint("TelephonyUtilLoadCrashSupport_block_invoke", "Unable to load CrashReporterSupport framework.\n", v10, v11, v12, v13, v14, v15, a9);
  }

  return result;
}

double MockHttpResponse::create@<D0>(char **a1@<X0>, _OWORD *a2@<X8>)
{
  v46[3] = *MEMORY[0x1E69E9840];
  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x2D0uLL);
  *(v4 + 1) = 850045863;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = &unk_1F1CB96D0;
  *(v4 + 8) = 0;
  *(v4 + 9) = "getResult";
  *(v4 + 10) = v4 + 8;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 18) = "getHttpResponseCode";
  *(v4 + 19) = v4 + 8;
  *(v4 + 20) = 1018212795;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 27) = "getResponseCFData";
  *(v4 + 28) = v4 + 8;
  *(v4 + 29) = 1018212795;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 36) = "getResponseString";
  *(v4 + 37) = v4 + 8;
  *(v4 + 38) = 1018212795;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 45) = "getResponseHeaders";
  *(v4 + 46) = v4 + 8;
  *(v4 + 47) = 1018212795;
  *(v4 + 25) = 0u;
  *(v4 + 26) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 54) = "getResponseStatusLine";
  *(v4 + 55) = v4 + 8;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 56) = 1018212795;
  *(v4 + 63) = "getRawErrorCode";
  *(v4 + 64) = v4 + 8;
  *(v4 + 65) = 1018212795;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 33) = 0u;
  *(v4 + 72) = "getErrorRef";
  *(v4 + 73) = v4 + 8;
  *(v4 + 74) = 1018212795;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 81) = "getTLSNegotiatedCipherSuite";
  *(v4 + 82) = v4 + 8;
  *(v4 + 83) = 1018212795;
  *(v4 + 43) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 42) = 0u;
  std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(&v41, v4);
  v5 = v41;
  v6 = *(v41 + 80);
  std::mutex::lock(v6);
  v9 = *(v5 + 136);
  v8 = (v5 + 136);
  v7 = v9;
  if (!v9)
  {
    v10 = operator new(0x60uLL);
    v10[4] = 0u;
    v10[5] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100](v8, v10);
    v7 = *v8;
  }

  *(v7 + 2) = 1;
  std::mutex::unlock(v6);
  v11 = v41;
  v12 = *(v41 + 152);
  std::mutex::lock(v12);
  v15 = *(v11 + 208);
  v14 = (v11 + 208);
  v13 = v15;
  if (!v15)
  {
    v16 = operator new(0x60uLL);
    v16[4] = 0u;
    v16[5] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100](v14, v16);
    v13 = *v14;
  }

  *(v13 + 2) = 200;
  std::mutex::unlock(v12);
  v17 = *a1;
  v18 = a1[1];
  v19 = v18 - *a1;
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v41;
  if (v19 > 0x16)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    p_p = operator new(v22);
    *&v44 = v19;
    *(&v44 + 1) = v22 | 0x8000000000000000;
    __p = p_p;
  }

  else
  {
    HIBYTE(v44) = v18 - *a1;
    p_p = &__p;
  }

  while (v17 != v18)
  {
    v23 = *v17++;
    *p_p++ = v23;
  }

  *p_p = 0;
  v24 = *(v20 + 296);
  std::mutex::lock(v24);
  v25 = *(v20 + 352);
  if (!v25)
  {
    v26 = operator new(0x70uLL);
    v26[5] = 0u;
    v26[6] = 0u;
    v26[3] = 0u;
    v26[4] = 0u;
    v26[1] = 0u;
    v26[2] = 0u;
    *v26 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100]((v20 + 352), v26);
    v25 = *(v20 + 352);
  }

  v27 = __p;
  v46[0] = v44;
  *(v46 + 7) = *(&v44 + 7);
  v28 = HIBYTE(v44);
  if (*(v25 + 31) < 0)
  {
    operator delete(*(v25 + 8));
  }

  v29 = v46[0];
  *(v25 + 8) = v27;
  *(v25 + 16) = v29;
  *(v25 + 23) = *(v46 + 7);
  *(v25 + 31) = v28;
  std::mutex::unlock(v24);
  v30 = v41;
  v31 = *a1;
  v32 = a1[1];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v37, v31, v32, v32 - v31);
  memset(v46, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v46, v37, v38, v38 - v37);
  v42 = 0;
  __p = 0;
  v44 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v46[0], v46[1], v46[1] - v46[0]);
  v33 = CFDataCreate(*MEMORY[0x1E695E480], __p, v44 - __p);
  if (v33)
  {
    v34 = v42;
    v42 = v33;
    v45 = v34;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v45);
  }

  if (__p)
  {
    *&v44 = __p;
    operator delete(__p);
  }

  v40 = v42;
  v42 = 0;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v42);
  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  ctu::MockFunction<ctu::cf::CFSharedRef<__CFData const>>::setDefaultReturnValue<ctu::cf::CFSharedRef<__CFData const>>(v30 + 216, &v40);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v40);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  result = *&v41;
  *a2 = v41;
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A913C73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::MockFunction<ctu::cf::CFSharedRef<__CFData const>>::setDefaultReturnValue<ctu::cf::CFSharedRef<__CFData const>>(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 8);
  std::mutex::lock(v4);
  v7 = *(a1 + 64);
  v6 = (a1 + 64);
  v5 = v7;
  if (!v7)
  {
    v8 = operator new(0x60uLL);
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFData const>>>::reset[abi:ne200100](v6, v8);
    v5 = *v6;
  }

  v9 = *a2;
  v12 = *a2;
  *a2 = 0;
  v10 = (v5 + 8);
  if (v10 != &v12)
  {
    v11 = *v10;
    v12 = 0;
    v13 = v11;
    *v10 = v9;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v13);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v12);
  std::mutex::unlock(v4);
}

void MockHttpResponse::create(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x2D0uLL);
  *(v4 + 1) = 850045863;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = &unk_1F1CB96D0;
  *(v4 + 8) = 0;
  *(v4 + 9) = "getResult";
  *(v4 + 10) = v4 + 8;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 18) = "getHttpResponseCode";
  *(v4 + 19) = v4 + 8;
  *(v4 + 20) = 1018212795;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 27) = "getResponseCFData";
  *(v4 + 28) = v4 + 8;
  *(v4 + 29) = 1018212795;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 36) = "getResponseString";
  *(v4 + 37) = v4 + 8;
  *(v4 + 38) = 1018212795;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 45) = "getResponseHeaders";
  *(v4 + 46) = v4 + 8;
  *(v4 + 47) = 1018212795;
  *(v4 + 25) = 0u;
  *(v4 + 26) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 54) = "getResponseStatusLine";
  *(v4 + 55) = v4 + 8;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 56) = 1018212795;
  *(v4 + 63) = "getRawErrorCode";
  *(v4 + 64) = v4 + 8;
  *(v4 + 65) = 1018212795;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 33) = 0u;
  *(v4 + 72) = "getErrorRef";
  *(v4 + 73) = v4 + 8;
  *(v4 + 74) = 1018212795;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 81) = "getTLSNegotiatedCipherSuite";
  *(v4 + 82) = v4 + 8;
  *(v4 + 83) = 1018212795;
  *(v4 + 43) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 42) = 0u;
  std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(&v37, v4);
  v5 = v37;
  v6 = *(v37 + 80);
  std::mutex::lock(v6);
  v9 = *(v5 + 136);
  v8 = (v5 + 136);
  v7 = v9;
  if (!v9)
  {
    v10 = operator new(0x60uLL);
    v10[4] = 0u;
    v10[5] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100](v8, v10);
    v7 = *v8;
  }

  *(v7 + 2) = 1;
  std::mutex::unlock(v6);
  v11 = v37;
  v12 = *(v37 + 152);
  std::mutex::lock(v12);
  v15 = *(v11 + 208);
  v14 = (v11 + 208);
  v13 = v15;
  if (!v15)
  {
    v16 = operator new(0x60uLL);
    v16[4] = 0u;
    v16[5] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100](v14, v16);
    v13 = *v14;
  }

  *(v13 + 2) = 200;
  std::mutex::unlock(v12);
  v17 = *(a1 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v18 = *a1;
    v17 = a1[1];
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_12:
    v19 = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v18 = a1;
  if (!*(a1 + 23))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v17 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v19 = operator new(v17);
  v20 = v19;
  do
  {
    v21 = *v18++;
    *v20++ = v21;
    --v17;
  }

  while (v17);
LABEL_13:
  v22 = v37;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v33, v19, v20, v20 - v19);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v39, v33, v34, v34 - v33);
  v38 = 0;
  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v39, v40, v40 - v39);
  v23 = CFDataCreate(*MEMORY[0x1E695E480], __p[0], __p[1] - __p[0]);
  if (v23)
  {
    v24 = v38;
    v38 = v23;
    v42 = v24;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v42);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v36 = v38;
  v38 = 0;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v38);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  ctu::MockFunction<ctu::cf::CFSharedRef<__CFData const>>::setDefaultReturnValue<ctu::cf::CFSharedRef<__CFData const>>(v22 + 216, &v36);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v36);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v25 = v37;
  v26 = *(v37 + 296);
  std::mutex::lock(v26);
  v27 = *(v25 + 352);
  if (!v27)
  {
    v28 = operator new(0x70uLL);
    v28[5] = 0u;
    v28[6] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    *v28 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100]((v25 + 352), v28);
    v27 = *(v25 + 352);
  }

  v29 = *a1;
  __p[0] = a1[1];
  *(__p + 7) = *(a1 + 15);
  v30 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*(v27 + 31) < 0)
  {
    operator delete(*(v27 + 8));
  }

  v31 = __p[0];
  *(v27 + 8) = v29;
  *(v27 + 16) = v31;
  *(v27 + 23) = *(__p + 7);
  *(v27 + 31) = v30;
  std::mutex::unlock(v26);
  *a2 = v37;
  v37 = 0uLL;
  if (v19)
  {
    operator delete(v19);
    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1A913CCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double MockHttpResponse::create@<D0>(int a1@<W0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x2D0uLL);
  *(v6 + 1) = 850045863;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = &unk_1F1CB96D0;
  *(v6 + 8) = 0;
  *(v6 + 9) = "getResult";
  *(v6 + 10) = v6 + 8;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 18) = "getHttpResponseCode";
  *(v6 + 19) = v6 + 8;
  *(v6 + 20) = 1018212795;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 27) = "getResponseCFData";
  *(v6 + 28) = v6 + 8;
  *(v6 + 29) = 1018212795;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 36) = "getResponseString";
  *(v6 + 37) = v6 + 8;
  *(v6 + 38) = 1018212795;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 45) = "getResponseHeaders";
  *(v6 + 46) = v6 + 8;
  *(v6 + 47) = 1018212795;
  *(v6 + 25) = 0u;
  *(v6 + 26) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 54) = "getResponseStatusLine";
  *(v6 + 55) = v6 + 8;
  *(v6 + 472) = 0u;
  *(v6 + 488) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 56) = 1018212795;
  *(v6 + 63) = "getRawErrorCode";
  *(v6 + 64) = v6 + 8;
  *(v6 + 65) = 1018212795;
  *(v6 + 34) = 0u;
  *(v6 + 35) = 0u;
  *(v6 + 33) = 0u;
  *(v6 + 72) = "getErrorRef";
  *(v6 + 73) = v6 + 8;
  *(v6 + 74) = 1018212795;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 81) = "getTLSNegotiatedCipherSuite";
  *(v6 + 82) = v6 + 8;
  *(v6 + 83) = 1018212795;
  *(v6 + 43) = 0u;
  *(v6 + 44) = 0u;
  *(v6 + 42) = 0u;
  std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(&v20, v6);
  v7 = v20;
  v8 = *(v20 + 80);
  std::mutex::lock(v8);
  v11 = *(v7 + 136);
  v10 = (v7 + 136);
  v9 = v11;
  if (!v11)
  {
    v12 = operator new(0x60uLL);
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100](v10, v12);
    v9 = *v10;
  }

  *(v9 + 2) = a1;
  std::mutex::unlock(v8);
  v13 = v20;
  v14 = *(v20 + 152);
  std::mutex::lock(v14);
  v17 = *(v13 + 208);
  v16 = (v13 + 208);
  v15 = v17;
  if (!v17)
  {
    v18 = operator new(0x60uLL);
    v18[4] = 0u;
    v18[5] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100](v16, v18);
    v15 = *v16;
  }

  *(v15 + 2) = a2;
  std::mutex::unlock(v14);
  result = *&v20;
  *a3 = v20;
  return result;
}

double MockHttpResponse::createWithRawError@<D0>(MockHttpResponse *this@<X0>, _OWORD *a2@<X8>)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x2D0uLL);
  *(v4 + 1) = 850045863;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = &unk_1F1CB96D0;
  *(v4 + 8) = 0;
  *(v4 + 9) = "getResult";
  *(v4 + 10) = v4 + 8;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 18) = "getHttpResponseCode";
  *(v4 + 19) = v4 + 8;
  *(v4 + 20) = 1018212795;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 27) = "getResponseCFData";
  *(v4 + 28) = v4 + 8;
  *(v4 + 29) = 1018212795;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 36) = "getResponseString";
  *(v4 + 37) = v4 + 8;
  *(v4 + 38) = 1018212795;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 45) = "getResponseHeaders";
  *(v4 + 46) = v4 + 8;
  *(v4 + 47) = 1018212795;
  *(v4 + 25) = 0u;
  *(v4 + 26) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 54) = "getResponseStatusLine";
  *(v4 + 55) = v4 + 8;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 56) = 1018212795;
  *(v4 + 63) = "getRawErrorCode";
  *(v4 + 64) = v4 + 8;
  *(v4 + 65) = 1018212795;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 33) = 0u;
  *(v4 + 72) = "getErrorRef";
  *(v4 + 73) = v4 + 8;
  *(v4 + 74) = 1018212795;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 81) = "getTLSNegotiatedCipherSuite";
  *(v4 + 82) = v4 + 8;
  *(v4 + 83) = 1018212795;
  *(v4 + 43) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 42) = 0u;
  std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(&v11, v4);
  v5 = v11;
  v6 = *(v11 + 512);
  std::mutex::lock(v6);
  v7 = *(v5 + 568);
  if (!v7)
  {
    v8 = operator new(0x60uLL);
    v9 = (v5 + 568);
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<long>>::reset[abi:ne200100](v9, v8);
    v7 = *v9;
  }

  v7[1] = this;
  std::mutex::unlock(v6);
  result = *&v11;
  *a2 = v11;
  return result;
}

double MockHttpResponse::createWithCFError@<D0>(const void **a1@<X0>, _OWORD *a2@<X8>)
{
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x2D0uLL);
  *(v4 + 1) = 850045863;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = &unk_1F1CB96D0;
  *(v4 + 8) = 0;
  *(v4 + 9) = "getResult";
  *(v4 + 10) = v4 + 8;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 18) = "getHttpResponseCode";
  *(v4 + 19) = v4 + 8;
  *(v4 + 20) = 1018212795;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 27) = "getResponseCFData";
  *(v4 + 28) = v4 + 8;
  *(v4 + 29) = 1018212795;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 36) = "getResponseString";
  *(v4 + 37) = v4 + 8;
  *(v4 + 38) = 1018212795;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 45) = "getResponseHeaders";
  *(v4 + 46) = v4 + 8;
  *(v4 + 47) = 1018212795;
  *(v4 + 25) = 0u;
  *(v4 + 26) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 54) = "getResponseStatusLine";
  *(v4 + 55) = v4 + 8;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 56) = 1018212795;
  *(v4 + 63) = "getRawErrorCode";
  *(v4 + 64) = v4 + 8;
  *(v4 + 65) = 1018212795;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 33) = 0u;
  *(v4 + 72) = "getErrorRef";
  *(v4 + 73) = v4 + 8;
  *(v4 + 74) = 1018212795;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 81) = "getTLSNegotiatedCipherSuite";
  *(v4 + 82) = v4 + 8;
  *(v4 + 83) = 1018212795;
  *(v4 + 43) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 42) = 0u;
  std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(&v13, v4);
  v5 = v13;
  v6 = *(v13 + 584);
  std::mutex::lock(v6);
  v7 = *(v5 + 640);
  if (!v7)
  {
    v8 = operator new(0x60uLL);
    v9 = (v5 + 640);
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFError>>>::reset[abi:ne200100](v9, v8);
    v7 = *v9;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::SharedRef(&v14, a1);
  v10 = (v7 + 8);
  if ((v7 + 8) != &v14)
  {
    v11 = *v10;
    *v10 = v14;
    v14 = 0;
    v15 = v11;
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v15);
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v14);
  std::mutex::unlock(v6);
  result = *&v13;
  *a2 = v13;
  return result;
}

uint64_t MockHttpResponse::getResult(MockHttpResponse *this)
{
  v1 = this;
  v2 = *(this + 10);
  std::mutex::lock(v2);
  if (!*(v1 + 136))
  {
    v3 = operator new(0x60uLL);
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100]((v1 + 136), v3);
  }

  std::condition_variable::notify_one((v1 + 88));
  v4 = *(v1 + 136);
  ++*v4;
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v28 = v2;
  if (v6 >= v5)
  {
    v1 = *(v4 + 16);
    v8 = v6 - v1;
    v9 = v6 - v1 + 1;
    if (v9 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v1;
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
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[v11];
    v7 = &v12[v8 + 1];
    memcpy(v12, v1, v8);
    *(v4 + 16) = v12;
    *(v4 + 24) = v7;
    *(v4 + 32) = v13;
    if (v1)
    {
      operator delete(v1);
    }
  }

  else
  {
    v7 = v6 + 1;
  }

  *(v4 + 24) = v7;
  v14 = *(v4 + 72);
  while (v14 != *(v4 + 80))
  {
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = (*(*v16 + 32))(v16, *(v4 + 24) - 1);
    if ((v17 & 1) == 0)
    {
      v24 = 0;
      v14 += 2;
      if (!v15)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v18 = *(v4 + 80);
    if (v14 + 2 == v18)
    {
      v22 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *(v19 + 1);
        v19[2] = 0;
        v19[3] = 0;
        v21 = v19[1];
        *v19 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v22 = v19 + 2;
        v23 = v19 + 4;
        v19 += 2;
      }

      while (v23 != v18);
      v18 = *(v4 + 80);
    }

    while (v18 != v22)
    {
      v25 = *(v18 - 1);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v18 -= 2;
    }

    *(v4 + 80) = v22;
    if (*(v16 + 12) == 1)
    {
      v24 = 0;
      v1 = *(v16 + 8);
      if (!v15)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_39;
    }

    v24 = 1;
    if (v15)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v17)
    {
      if (!v24)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v26 = *(v4 + 64);
  if (v26)
  {
    v1 = (*(*v26 + 48))(v26, *(v4 + 24) - 1);
  }

  else
  {
    v1 = *(v4 + 8);
  }

LABEL_44:
  std::mutex::unlock(v28);
  return v1;
}

uint64_t MockHttpResponse::getHttpResponseCode(MockHttpResponse *this)
{
  v1 = this;
  v2 = *(this + 19);
  std::mutex::lock(v2);
  if (!*(v1 + 208))
  {
    v3 = operator new(0x60uLL);
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100]((v1 + 208), v3);
  }

  std::condition_variable::notify_one((v1 + 160));
  v4 = *(v1 + 208);
  ++*v4;
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v28 = v2;
  if (v6 >= v5)
  {
    v1 = *(v4 + 16);
    v8 = v6 - v1;
    v9 = v6 - v1 + 1;
    if (v9 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v1;
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
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[v11];
    v7 = &v12[v8 + 1];
    memcpy(v12, v1, v8);
    *(v4 + 16) = v12;
    *(v4 + 24) = v7;
    *(v4 + 32) = v13;
    if (v1)
    {
      operator delete(v1);
    }
  }

  else
  {
    v7 = v6 + 1;
  }

  *(v4 + 24) = v7;
  v14 = *(v4 + 72);
  while (v14 != *(v4 + 80))
  {
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = (*(*v16 + 32))(v16, *(v4 + 24) - 1);
    if ((v17 & 1) == 0)
    {
      v24 = 0;
      v14 += 2;
      if (!v15)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v18 = *(v4 + 80);
    if (v14 + 2 == v18)
    {
      v22 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *(v19 + 1);
        v19[2] = 0;
        v19[3] = 0;
        v21 = v19[1];
        *v19 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v22 = v19 + 2;
        v23 = v19 + 4;
        v19 += 2;
      }

      while (v23 != v18);
      v18 = *(v4 + 80);
    }

    while (v18 != v22)
    {
      v25 = *(v18 - 1);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v18 -= 2;
    }

    *(v4 + 80) = v22;
    if (*(v16 + 12) == 1)
    {
      v24 = 0;
      v1 = *(v16 + 8);
      if (!v15)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_39;
    }

    v24 = 1;
    if (v15)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v17)
    {
      if (!v24)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v26 = *(v4 + 64);
  if (v26)
  {
    v1 = (*(*v26 + 48))(v26, *(v4 + 24) - 1);
  }

  else
  {
    v1 = *(v4 + 8);
  }

LABEL_44:
  std::mutex::unlock(v28);
  return v1;
}

void MockHttpResponse::getResponseCFData(MockHttpResponse *this@<X0>, const void **a2@<X8>)
{
  v4 = *(this + 28);
  std::mutex::lock(v4);
  if (!*(this + 35))
  {
    v5 = operator new(0x60uLL);
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFData const>>>::reset[abi:ne200100](this + 35, v5);
  }

  std::condition_variable::notify_one((this + 232));
  v6 = *(this + 35);
  ++*v6;
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  v30 = v4;
  if (v8 >= v7)
  {
    v10 = *(v6 + 16);
    v11 = v8 - v10;
    v12 = v8 - v10 + 1;
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = operator new(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[v14];
    v9 = &v15[v11 + 1];
    memcpy(v15, v10, v11);
    *(v6 + 16) = v15;
    *(v6 + 24) = v9;
    *(v6 + 32) = v16;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v9 = v8 + 1;
  }

  *(v6 + 24) = v9;
  v17 = *(v6 + 72);
  while (v17 != *(v6 + 80))
  {
    v19 = *v17;
    v18 = v17[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v19 + 32))(v19, *(v6 + 24) - 1);
    if ((v20 & 1) == 0)
    {
      v27 = 0;
      v17 += 2;
      if (!v18)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v21 = *(v6 + 80);
    if (v17 + 2 == v21)
    {
      v25 = v17;
    }

    else
    {
      v22 = v17;
      do
      {
        v23 = *(v22 + 1);
        v22[2] = 0;
        v22[3] = 0;
        v24 = v22[1];
        *v22 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v25 = v22 + 2;
        v26 = v22 + 4;
        v22 += 2;
      }

      while (v26 != v21);
      v21 = *(v6 + 80);
    }

    while (v21 != v25)
    {
      v28 = *(v21 - 1);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v21 -= 2;
    }

    *(v6 + 80) = v25;
    if (*(v19 + 16) == 1)
    {
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(a2, (v19 + 8));
      v27 = 0;
      if (!v18)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_39;
    }

    v27 = 1;
    if (v18)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v20)
    {
      if (!v27)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v29 = *(v6 + 64);
  if (v29)
  {
    (*(*v29 + 48))(v29, *(v6 + 24) - 1);
  }

  else
  {
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(a2, (v6 + 8));
  }

LABEL_44:

  std::mutex::unlock(v30);
}

void MockHttpResponse::getResponseString(MockHttpResponse *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 37);
  std::mutex::lock(v4);
  if (!*(this + 44))
  {
    v5 = operator new(0x70uLL);
    v5[5] = 0u;
    v5[6] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100](this + 44, v5);
  }

  std::condition_variable::notify_one((this + 304));
  ctu::IMockMethodHandler<std::string>::call<>(a2, *(this + 44));

  std::mutex::unlock(v4);
}

void MockHttpResponse::getResponseHeaders(MockHttpResponse *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 46);
  std::mutex::lock(v4);
  if (!*(this + 53))
  {
    v5 = operator new(0x70uLL);
    *v5 = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[1] = 0u;
    *(v5 + 1) = v5 + 1;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 6) = 0;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>>>::reset[abi:ne200100](this + 53, v5);
  }

  std::condition_variable::notify_one((this + 376));
  v6 = *(this + 53);
  ++*v6;
  v8 = v6[5];
  v7 = v6[6];
  v30 = v4;
  if (v8 >= v7)
  {
    v10 = v6[4];
    v11 = v8 - v10;
    v12 = v8 - v10 + 1;
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = operator new(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[v14];
    v9 = &v15[v11 + 1];
    memcpy(v15, v10, v11);
    v6[4] = v15;
    v6[5] = v9;
    v6[6] = v16;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v9 = v8 + 1;
  }

  v6[5] = v9;
  v17 = v6[11];
  while (v17 != v6[12])
  {
    v19 = *v17;
    v18 = *(v17 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v19 + 32))(v19, v6[5] - 1);
    if ((v20 & 1) == 0)
    {
      v27 = 0;
      v17 += 16;
      if (!v18)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v21 = v6[12];
    if (v17 + 16 == v21)
    {
      v25 = v17;
    }

    else
    {
      v22 = v17;
      do
      {
        v23 = *(v22 + 16);
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        v24 = *(v22 + 8);
        *v22 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v25 = v22 + 16;
        v26 = v22 + 32;
        v22 += 16;
      }

      while (v26 != v21);
      v21 = v6[12];
    }

    while (v21 != v25)
    {
      v28 = *(v21 - 8);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v21 -= 16;
    }

    v6[12] = v25;
    if (v19[32] == 1)
    {
      std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](a2, (v19 + 8));
      v27 = 0;
      if (!v18)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_39;
    }

    v27 = 1;
    if (v18)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v20)
    {
      if (!v27)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v29 = v6[10];
  if (v29)
  {
    (*(*v29 + 48))(v29, v6[5] - 1);
  }

  else
  {
    std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](a2, (v6 + 1));
  }

LABEL_44:

  std::mutex::unlock(v30);
}

void MockHttpResponse::getResponseStatusLine(MockHttpResponse *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 55);
  std::mutex::lock(v4);
  if (!*(this + 62))
  {
    v5 = operator new(0x70uLL);
    v5[5] = 0u;
    v5[6] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100](this + 62, v5);
  }

  std::condition_variable::notify_one((this + 448));
  ctu::IMockMethodHandler<std::string>::call<>(a2, *(this + 62));

  std::mutex::unlock(v4);
}

MockHttpResponse *MockHttpResponse::getRawErrorCode(std::mutex **this)
{
  v1 = this;
  v2 = this[64];
  std::mutex::lock(v2);
  if (!*(v1 + 71))
  {
    v3 = operator new(0x60uLL);
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<long>>::reset[abi:ne200100](v1 + 71, v3);
  }

  std::condition_variable::notify_one((v1 + 520));
  v4 = *(v1 + 71);
  ++*v4;
  v6 = v4[3];
  v5 = v4[4];
  v28 = v2;
  if (v6 >= v5)
  {
    v1 = v4[2];
    v8 = v6 - v1;
    v9 = v6 - v1 + 1;
    if (v9 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v1;
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
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[v11];
    v7 = &v12[v8 + 1];
    memcpy(v12, v1, v8);
    v4[2] = v12;
    v4[3] = v7;
    v4[4] = v13;
    if (v1)
    {
      operator delete(v1);
    }
  }

  else
  {
    v7 = v6 + 1;
  }

  v4[3] = v7;
  v14 = v4[9];
  while (v14 != v4[10])
  {
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = (*(*v16 + 32))(v16, v4[3] - 1);
    if ((v17 & 1) == 0)
    {
      v24 = 0;
      v14 += 2;
      if (!v15)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v18 = v4[10];
    if (v14 + 2 == v18)
    {
      v22 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *(v19 + 1);
        v19[2] = 0;
        v19[3] = 0;
        v21 = v19[1];
        *v19 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v22 = v19 + 2;
        v23 = v19 + 4;
        v19 += 2;
      }

      while (v23 != v18);
      v18 = v4[10];
    }

    while (v18 != v22)
    {
      v25 = *(v18 - 1);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v18 -= 2;
    }

    v4[10] = v22;
    if (*(v16 + 16) == 1)
    {
      v24 = 0;
      v1 = *(v16 + 8);
      if (!v15)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_39;
    }

    v24 = 1;
    if (v15)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v17)
    {
      if (!v24)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v26 = v4[8];
  if (v26)
  {
    v1 = (*(*v26 + 48))(v26, v4[3] - 1);
  }

  else
  {
    v1 = v4[1];
  }

LABEL_44:
  std::mutex::unlock(v28);
  return v1;
}

void MockHttpResponse::getErrorRef(MockHttpResponse *this@<X0>, const void **a2@<X8>)
{
  v4 = *(this + 73);
  std::mutex::lock(v4);
  if (!*(this + 80))
  {
    v5 = operator new(0x60uLL);
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFError>>>::reset[abi:ne200100](this + 80, v5);
  }

  std::condition_variable::notify_one((this + 592));
  v6 = *(this + 80);
  ++*v6;
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  v30 = v4;
  if (v8 >= v7)
  {
    v10 = *(v6 + 16);
    v11 = v8 - v10;
    v12 = v8 - v10 + 1;
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = operator new(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[v14];
    v9 = &v15[v11 + 1];
    memcpy(v15, v10, v11);
    *(v6 + 16) = v15;
    *(v6 + 24) = v9;
    *(v6 + 32) = v16;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v9 = v8 + 1;
  }

  *(v6 + 24) = v9;
  v17 = *(v6 + 72);
  while (v17 != *(v6 + 80))
  {
    v19 = *v17;
    v18 = v17[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v19 + 32))(v19, *(v6 + 24) - 1);
    if ((v20 & 1) == 0)
    {
      v27 = 0;
      v17 += 2;
      if (!v18)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v21 = *(v6 + 80);
    if (v17 + 2 == v21)
    {
      v25 = v17;
    }

    else
    {
      v22 = v17;
      do
      {
        v23 = *(v22 + 1);
        v22[2] = 0;
        v22[3] = 0;
        v24 = v22[1];
        *v22 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v25 = v22 + 2;
        v26 = v22 + 4;
        v22 += 2;
      }

      while (v26 != v21);
      v21 = *(v6 + 80);
    }

    while (v21 != v25)
    {
      v28 = *(v21 - 1);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v21 -= 2;
    }

    *(v6 + 80) = v25;
    if (*(v19 + 16) == 1)
    {
      ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::SharedRef(a2, (v19 + 8));
      v27 = 0;
      if (!v18)
      {
        goto LABEL_39;
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_39;
    }

    v27 = 1;
    if (v18)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v20)
    {
      if (!v27)
      {
        goto LABEL_44;
      }

      break;
    }
  }

  v29 = *(v6 + 64);
  if (v29)
  {
    (*(*v29 + 48))(v29, *(v6 + 24) - 1);
  }

  else
  {
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::SharedRef(a2, (v6 + 8));
  }

LABEL_44:

  std::mutex::unlock(v30);
}

uint64_t MockHttpResponse::getTLSNegotiatedCipherSuite(MockHttpResponse *this)
{
  v2 = *(this + 82);
  std::mutex::lock(v2);
  if (!*(this + 89))
  {
    v3 = operator new(0x60uLL);
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<unsigned short>>::reset[abi:ne200100](this + 89, v3);
  }

  std::condition_variable::notify_one((this + 664));
  v4 = ctu::IMockMethodHandler<unsigned short>::call<>(*(this + 89));
  std::mutex::unlock(v2);
  return v4;
}

void MockHttpResponse::~MockHttpResponse(MockHttpResponse *this)
{
  MockHttpResponse::~MockHttpResponse(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB96D0;
  v2 = (this + 8);
  std::unique_ptr<ctu::MockMethodHandler<unsigned short>>::reset[abi:ne200100](this + 89, 0);
  std::condition_variable::~condition_variable((this + 664));
  std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFError>>>::reset[abi:ne200100](this + 80, 0);
  std::condition_variable::~condition_variable((this + 592));
  std::unique_ptr<ctu::MockMethodHandler<long>>::reset[abi:ne200100](this + 71, 0);
  std::condition_variable::~condition_variable((this + 520));
  std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100](this + 62, 0);
  std::condition_variable::~condition_variable((this + 448));
  std::unique_ptr<ctu::MockMethodHandler<std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>>>::reset[abi:ne200100](this + 53, 0);
  std::condition_variable::~condition_variable((this + 376));
  std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100](this + 44, 0);
  std::condition_variable::~condition_variable((this + 304));
  std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFData const>>>::reset[abi:ne200100](this + 35, 0);
  std::condition_variable::~condition_variable((this + 232));
  std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100](this + 26, 0);
  std::condition_variable::~condition_variable((this + 160));
  std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100](this + 17, 0);
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex(v2);
}

void std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFError>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      v4 = *(v2 + 80);
      v5 = *(v2 + 72);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 72);
      }

      *(v2 + 80) = v3;
      operator delete(v5);
    }

    v7 = *(v2 + 64);
    if (v7 == v2 + 40)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(v2 + 16);
    if (v8)
    {
      *(v2 + 24) = v8;
      operator delete(v8);
    }

    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v2 + 8));

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<long>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v4 = v2[10];
      v5 = v2[9];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[9];
      }

      v2[10] = v3;
      operator delete(v5);
    }

    v7 = v2[8];
    if (v7 == v2 + 5)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[2];
    if (v8)
    {
      v2[3] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<std::string>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = *(v2 + 96);
      v5 = *(v2 + 88);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 88);
      }

      *(v2 + 96) = v3;
      operator delete(v5);
    }

    v7 = *(v2 + 80);
    if (v7 == v2 + 56)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(v2 + 32);
    if (v8)
    {
      *(v2 + 40) = v8;
      operator delete(v8);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = *(v2 + 96);
      v5 = *(v2 + 88);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 88);
      }

      *(v2 + 96) = v3;
      operator delete(v5);
    }

    v7 = *(v2 + 80);
    if (v7 == v2 + 56)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(v2 + 32);
    if (v8)
    {
      *(v2 + 40) = v8;
      operator delete(v8);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 8, *(v2 + 16));

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<ctu::cf::CFSharedRef<__CFData const>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      v4 = *(v2 + 80);
      v5 = *(v2 + 72);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 72);
      }

      *(v2 + 80) = v3;
      operator delete(v5);
    }

    v7 = *(v2 + 64);
    if (v7 == v2 + 40)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(v2 + 16);
    if (v8)
    {
      *(v2 + 24) = v8;
      operator delete(v8);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v2 + 8));

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<int>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v4 = v2[10];
      v5 = v2[9];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[9];
      }

      v2[10] = v3;
      operator delete(v5);
    }

    v7 = v2[8];
    if (v7 == v2 + 5)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[2];
    if (v8)
    {
      v2[3] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<ctu::Http::ErrorType>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v4 = v2[10];
      v5 = v2[9];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[9];
      }

      v2[10] = v3;
      operator delete(v5);
    }

    v7 = v2[8];
    if (v7 == v2 + 5)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[2];
    if (v8)
    {
      v2[3] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<unsigned short>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v4 = (v2 + 72);
    std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](&v4);
    _ZNSt3__110__function12__value_funcIFtRNS_5tupleIJEEEEED2B8ne200100Ev(v2 + 40);
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    operator delete(v2);
  }
}

uint64_t _ZNSt3__110__function12__value_funcIFtRNS_5tupleIJEEEEED2B8ne200100Ev(uint64_t a1)
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

void *std::shared_ptr<MockHttpResponse>::shared_ptr[abi:ne200100]<MockHttpResponse,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F1CB9770;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_1A913EFD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MockHttpResponse *,std::shared_ptr<MockHttpResponse>::__shared_ptr_default_delete<MockHttpResponse,MockHttpResponse>,std::allocator<MockHttpResponse>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<MockHttpResponse *,std::shared_ptr<MockHttpResponse>::__shared_ptr_default_delete<MockHttpResponse,MockHttpResponse>,std::allocator<MockHttpResponse>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MockHttpResponse *,std::shared_ptr<MockHttpResponse>::__shared_ptr_default_delete<MockHttpResponse,MockHttpResponse>,std::allocator<MockHttpResponse>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ctu::IMockMethodHandler<std::string>::call<>(std::string *this, uint64_t a2)
{
  ++*a2;
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v5 >= v4)
  {
    v7 = *(a2 + 32);
    v8 = v5 - v7;
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[v11];
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *(a2 + 32) = v12;
    *(a2 + 40) = v6;
    *(a2 + 48) = v13;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a2 + 40) = v6;
  v14 = *(a2 + 88);
  while (v14 != *(a2 + 96))
  {
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = (*(*v16 + 32))(v16, *(a2 + 40) - 1);
    if ((v17 & 1) == 0)
    {
      v24 = 0;
      v14 += 2;
      if (!v15)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v18 = *(a2 + 96);
    if (v14 + 2 == v18)
    {
      v22 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *(v19 + 1);
        v19[2] = 0;
        v19[3] = 0;
        v21 = v19[1];
        *v19 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v22 = v19 + 2;
        v23 = v19 + 4;
        v19 += 2;
      }

      while (v23 != v18);
      v18 = *(a2 + 96);
    }

    while (v18 != v22)
    {
      v25 = *(v18 - 1);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v18 -= 2;
    }

    *(a2 + 96) = v22;
    if (*(v16 + 32) == 1)
    {
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(this, *(v16 + 8), *(v16 + 16));
        v24 = 0;
        if (!v15)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = 0;
        v26 = *(v16 + 8);
        this->__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&this->__r_.__value_.__l.__data_ = v26;
        if (!v15)
        {
          goto LABEL_38;
        }
      }

LABEL_37:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_38;
    }

    v24 = 1;
    if (v15)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v17)
    {
      if (!v24)
      {
        return;
      }

      break;
    }
  }

  v27 = *(a2 + 80);
  if (v27)
  {
    v28 = *(a2 + 40) - 1;
    v29 = *(*v27 + 48);

    v29();
  }

  else if (*(a2 + 31) < 0)
  {
    v30 = *(a2 + 8);
    v31 = *(a2 + 16);

    std::string::__init_copy_ctor_external(this, v30, v31);
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *(a2 + 8);
    this->__r_.__value_.__r.__words[2] = *(a2 + 24);
  }
}

void sub_1A913F378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::IMockMethodHandler<unsigned short>::call<>(uint64_t a1)
{
  ++*a1;
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v4 >= v3)
  {
    v1 = *(a1 + 16);
    v6 = v4 - v1;
    v7 = v4 - v1 + 1;
    if (v7 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = operator new(v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = &v10[v9];
    v5 = &v10[v6 + 1];
    memcpy(v10, v1, v6);
    *(a1 + 16) = v10;
    *(a1 + 24) = v5;
    *(a1 + 32) = v11;
    if (v1)
    {
      operator delete(v1);
    }
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 24) = v5;
  v12 = *(a1 + 72);
  while (v12 != *(a1 + 80))
  {
    v14 = *v12;
    v13 = *(v12 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = (*(*v14 + 32))(v14, *(a1 + 24) - 1);
    if ((v15 & 1) == 0)
    {
      v20 = 0;
      v12 += 16;
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *,std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *,std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *>(&v23, (v12 + 16), *(a1 + 80), v12);
    v17 = v16;
    for (i = *(a1 + 80); i != v17; i -= 16)
    {
      v19 = *(i - 8);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *(a1 + 80) = v17;
    if (*(v14 + 10) == 1)
    {
      v20 = 0;
      LOWORD(v1) = *(v14 + 8);
      if (!v13)
      {
        goto LABEL_31;
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_31;
    }

    v20 = 1;
    if (v13)
    {
      goto LABEL_30;
    }

LABEL_31:
    if (v15)
    {
      if (!v20)
      {
        return v1;
      }

      break;
    }
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    LOWORD(v1) = (*(*v21 + 48))(v21, *(a1 + 24) - 1);
  }

  else
  {
    LOWORD(v1) = *(a1 + 8);
  }

  return v1;
}

void sub_1A913F598(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *,std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *,std::shared_ptr<ctu::MockMethodExpectationBase<unsigned short>> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *MockHttpRequest::create@<X0>(int a1@<W0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x8C0uLL);
  MockHttpRequest::MockHttpRequest(v8, a1, a2, a3);
  *a4 = v9;
  result = operator new(0x20uLL);
  *result = &unk_1F1CB9938;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  a4[1] = result;
  return result;
}

double MockHttpRequest::MockHttpRequest(uint64_t a1, int a2, __int128 *a3, void *a4)
{
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = &unk_1F1CB97E8;
  *(a1 + 64) = 0;
  *(a1 + 72) = "start";
  *(a1 + 80) = a1 + 8;
  *(a1 + 88) = 1018212795;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = "terminate";
  *(a1 + 152) = a1 + 8;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = "setTimeout";
  *(a1 + 224) = a1 + 8;
  *(a1 + 232) = 1018212795;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = "setStreamProperty";
  *(a1 + 296) = a1 + 8;
  *(a1 + 304) = 1018212795;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = "setProxySettings";
  *(a1 + 368) = a1 + 8;
  *(a1 + 376) = 1018212795;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 432) = "registerCallbackQueue";
  *(a1 + 440) = a1 + 8;
  *(a1 + 448) = 1018212795;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 504) = "registerCompletionCodeblock";
  *(a1 + 512) = a1 + 8;
  *(a1 + 520) = 1018212795;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 576) = "registerDataReceiveCodeblock";
  *(a1 + 584) = a1 + 8;
  *(a1 + 592) = 1018212795;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = "registerDataSendCodeblock";
  *(a1 + 656) = a1 + 8;
  *(a1 + 664) = 1018212795;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 720) = "setRequestBody";
  *(a1 + 728) = a1 + 8;
  *(a1 + 736) = 1018212795;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 792) = "setProxyServer";
  *(a1 + 800) = a1 + 8;
  *(a1 + 808) = 1018212795;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 864) = "setClientCert";
  *(a1 + 872) = a1 + 8;
  *(a1 + 880) = 1018212795;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 936) = "setServerPinnedCerts";
  *(a1 + 944) = a1 + 8;
  *(a1 + 952) = 1018212795;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 1008) = "setMaxAllowedRedirects";
  *(a1 + 1016) = a1 + 8;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1024) = 1018212795;
  *(a1 + 1080) = "setRedirection";
  *(a1 + 1088) = a1 + 8;
  *(a1 + 1096) = 1018212795;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1152) = "setSharedConfiguration";
  *(a1 + 1160) = a1 + 8;
  *(a1 + 1168) = 1018212795;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1224) = "setBackgroundConfiguration";
  *(a1 + 1232) = a1 + 8;
  *(a1 + 1240) = 1018212795;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1296) = "setBackgroundConfigurationWithUniqueIdentifier";
  *(a1 + 1304) = a1 + 8;
  *(a1 + 1312) = 1018212795;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1368) = "setValidateCertsCallback";
  *(a1 + 1376) = a1 + 8;
  *(a1 + 1384) = 1018212795;
  *(a1 + 1424) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1440) = "setTLSPolicyName";
  *(a1 + 1448) = a1 + 8;
  *(a1 + 1456) = 1018212795;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1512) = "setConnectionCacheCellPurgeTimeout";
  *(a1 + 1520) = a1 + 8;
  *(a1 + 1528) = 1018212795;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1584) = "setWaitForConnectivityTimeout";
  *(a1 + 1592) = a1 + 8;
  *(a1 + 1600) = 1018212795;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1656) = "setAllowUltraConstrained";
  *(a1 + 1664) = a1 + 8;
  *(a1 + 1672) = 1018212795;
  *(a1 + 1712) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1728) = "setServiceType";
  *(a1 + 1736) = a1 + 8;
  *(a1 + 1744) = 1018212795;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1800) = "setSourceIdentifier";
  *(a1 + 1808) = a1 + 8;
  *(a1 + 1816) = 1018212795;
  *(a1 + 1856) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1872) = "setOnDemand";
  *(a1 + 1880) = a1 + 8;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1888) = 1018212795;
  *(a1 + 1944) = "setAllowCellularAccess";
  *(a1 + 1952) = a1 + 8;
  *(a1 + 1960) = 1018212795;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 2016) = "setSourceApplicationBundleIdentifier";
  *(a1 + 2024) = a1 + 8;
  *(a1 + 2032) = 1018212795;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2088) = "getTLSNegotiatedCipherSuite";
  *(a1 + 2096) = a1 + 8;
  *(a1 + 2104) = 1018212795;
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2160) = a2;
  v4 = *a3;
  *(a1 + 2184) = *(a3 + 2);
  *(a1 + 2168) = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a1 + 2192) = *a4;
  v5 = a1 + 2200;
  v6 = a4 + 1;
  v7 = a4[1];
  *(a1 + 2200) = v7;
  v8 = a4[2];
  *(a1 + 2208) = v8;
  if (v8)
  {
    *(v7 + 16) = v5;
    *a4 = v6;
    *v6 = 0;
    a4[2] = 0;
  }

  else
  {
    *(a1 + 2192) = v5;
  }

  *(a1 + 2232) = 0;
  result = 0.0;
  *(a1 + 2216) = 0u;
  return result;
}