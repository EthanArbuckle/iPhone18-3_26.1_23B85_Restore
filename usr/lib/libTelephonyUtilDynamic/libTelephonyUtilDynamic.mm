void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_1A90E41E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

uint64_t ctu::cf::assign(uint64_t a1, const __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(cf);
  usedBufLen = 0xAAAAAAAAAAAAAAAALL;
  v10.location = 0;
  v10.length = Length;
  Bytes = CFStringGetBytes(cf, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
  if (!usedBufLen || !Bytes)
  {
    goto LABEL_11;
  }

  memset(__p, 170, sizeof(__p));
  std::vector<unsigned char>::vector[abi:ne200100](__p, usedBufLen);
  v11.location = 0;
  v11.length = Length;
  if (!CFStringGetBytes(cf, v11, 0x8000100u, 0, 0, __p[0], __p[1] - __p[0], 0))
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_11:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return 1;
  }

  std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>(a1, __p[0], __p[1], __p[1] - __p[0]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1A90E4384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

BOOL ctu::cf::convert_copy(CFStringRef *a1, const UInt8 *a2, CFStringEncoding encoding, CFAllocatorRef alloc)
{
  v6 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = CFStringCreateWithBytes(alloc, a2, v7, encoding, 0);
  *a1 = v8;
  return v8 != 0;
}

void ctu::RestModuleState::setSubscriptionValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && (*(*v4 + 32))(v4))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object = xpc_string_create(v7);
    if (!object)
    {
      object = xpc_null_create();
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), &object, a3);
    xpc_release(object);
  }
}

xpc_object_t ctu::rest::detail::write_enum_string_value@<X0>(ctu::rest::detail *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return xpc::string("%lld:%s", a3, this, a2);
}

{
  return xpc::string("%llu:%s", a3, this, a2);
}

xpc_object_t xpc::string@<X0>(xpc *this@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  result = xpc_string_create_with_format_and_arguments(this, va);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>(ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = (v1 + 24);
  if (xpc_dictionary_get_value(*(v1 + 24), "r"))
  {
    v12[0] = (v1 + 24);
    v12[1] = "a";
    xpc::dict::object_proxy::operator xpc::object(v12, &object);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xpc::dyn_cast_or_default(&object, &v15, &__p);
    ResourceConnection_sync = ctu::RestDispatchListener::getOrCreateResourceConnection_sync(v2, (v1 + 8), &__p);
    v5 = *ResourceConnection_sync;
    v6 = ResourceConnection_sync[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(object);
    v7 = v2[6];
    v15 = v5;
    v16 = v6;
    v8 = *v3;
    v12[0] = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v12[0] = xpc_null_create();
    }

    (*(*v7 + 16))(v7, &v15, v12);
    xpc_release(v12[0]);
    v12[0] = 0;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  std::unique_ptr<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v10);
}

void sub_1A90E4768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(object);
  object = 0;
  v22 = *(v20 - 48);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::unique_ptr<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::rest::RestDispatchConnector::send(uint64_t a1, char *string, void **a3, void **a4)
{
  if (!*(a1 + 64) || !*(a1 + 72) || !*(a1 + 56))
  {
    _rest_api_misuse("Attempted to send message on a disconnected connector.");
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  v7 = xpc_string_create(string);
  v19 = v7;
  if (!v7)
  {
    v7 = xpc_null_create();
    v19 = v7;
  }

  v8 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v8 = *v8;
  }

  v9 = xpc_string_create(v8);
  v18 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v18 = v9;
  }

  ctu::rest::createRestMessage(&v19, &v18, a3, a4, &object);
  xpc_release(v9);
  xpc_release(v7);
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = *(a1 + 16);
    if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v12 + 24;
    if (!v12)
    {
      v14 = 0;
    }

    v16 = v14;
    v17 = v13;
    v15 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v15 = xpc_null_create();
    }

    (*(*v10 + 16))(v10, &v16, &v15);
    xpc_release(v15);
    v15 = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  xpc_release(object);
}

void sub_1A90E49A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  xpc_release(a14);
  _Unwind_Resume(a1);
}

void ctu::rest::createRestMessage(void **a1@<X0>, void **a2@<X1>, void **a3@<X2>, void **a4@<X3>, void *a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    *a5 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v11) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  *a5 = v12;
LABEL_9:
  xpc_release(v11);
  v13 = *a1;
  object = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    object = xpc_null_create();
  }

  v23 = a5;
  v24 = "o";
  xpc::dict::object_proxy::operator=(&v23, &object, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(object);
  object = 0;
  v14 = *a2;
  v21 = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    v21 = xpc_null_create();
  }

  v23 = a5;
  v24 = "a";
  xpc::dict::object_proxy::operator=(&v23, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v15 = *a3;
  v19 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v23 = a5;
  v24 = "r";
  xpc::dict::object_proxy::operator=(&v23, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v16 = *a4;
  v17 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v17 = xpc_null_create();
  }

  v23 = a5;
  v24 = "v";
  xpc::dict::object_proxy::operator=(&v23, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void ctu::rest::RestConnectorSink<ctu::RestDispatchListener>::handleClientMessage(uint64_t a1, __int128 *a2, xpc_object_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v11 = *a2;
        *a2 = 0;
        *(a2 + 1) = 0;
        object = *a3;
        *a3 = xpc_null_create();
        (*(*v9 + 24))(v9, &v11, &object);
        xpc_release(object);
        object = 0;
        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1A90E4D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void ctu::RestDispatchListener::handleClientMessage(void *a1, __int128 *a2, xpc_object_t *a3)
{
  v13 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *a3;
  *a3 = xpc_null_create();
  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x20uLL);
  *v9 = a1;
  *(v9 + 8) = v13;
  *(v9 + 3) = v4;
  v10 = xpc_null_create();
  v11 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v9;
  v12[1] = v6;
  v12[2] = v8;
  v14 = 0;
  v15 = 0;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>(ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  xpc_release(v10);
}

uint64_t ctu::TreeRestResource::handleMessage(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v6 = *(a3 + 3);
  if (v6)
  {
    v13[0] = *(a3 + 2);
    v13[1] = v6;
    ctu::llvm::StringRef::operator std::string(v13, __p);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>>::find(&v14, this + 1, __p);
    v7 = v14;
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (v7 == &this[1][5 * this[2]])
    {
      result = 0;
      if (*(a3 + 3) == 1 && **(a3 + 2) == 42)
      {
        v10 = *(a3 + 1);
        *__p = *a3;
        v12 = v10;
        if (((*this)[10])(this, a2, __p))
        {
          return 1;
        }
      }
    }

    else
    {
      v8 = *(a3 + 1);
      *__p = *a3;
      v12 = v8;
      ctu::PathView::advance(__p, 1);
      return (*(**(v7 + 24) + 16))(*(v7 + 24), a2, __p);
    }
  }

  else
  {

    return ctu::RestResource::handleMessage(this, a2, a3);
  }

  return result;
}

const void **ctu::llvm::StringRef::operator std::string@<X0>(const void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *result;
  if (!*result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v4 = result[1];
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v4 | 7) + 1;
    }

    v6 = operator new(v5);
    v2[1] = v4;
    v2[2] = v5 | 0x8000000000000000;
    *v2 = v6;
    v2 = v6;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  result = memmove(v2, v3, v4);
LABEL_12:
  *(v2 + v4) = 0;
  return result;
}

void *ctu::RestDispatchListener::getOrCreateResourceConnection_sync(void *a1, unint64_t *a2, uint64_t *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a1[8];
  v7 = (a1 + 7);
  v8 = *a2;
  if (v6)
  {
    v9 = a1[7];
    v10 = a1[8];
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[3 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 3;
      v10 += ~(v10 >> 1);
      if (v14 >= v8)
      {
        v10 = v11;
      }

      else
      {
        v9 = v13;
      }
    }

    while (v10);
  }

  else
  {
    v9 = a1[7];
  }

  v15 = a1[7] + 24 * v6;
  if (v9 != v15 && *v9 > v8)
  {
    v9 = (a1[7] + 24 * v6);
  }

  if (v9 != v15)
  {
    v16 = v9 + 1;
    goto LABEL_64;
  }

  v17 = operator new(0x48uLL);
  v18 = v17;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = &unk_1F1CB5008;
  v19 = *a3;
  *&v56 = a3[1];
  *(&v56 + 7) = *(a3 + 15);
  v20 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v22 = *a2;
  v21 = a2[1];
  v23 = *a2;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
    v23 = *a2;
  }

  v24 = v56;
  v17[4] = v19;
  v17[5] = v24;
  *(v17 + 47) = *(&v56 + 7);
  *(v17 + 55) = v20;
  v17[3] = &unk_1F1CB6840;
  v17[7] = v22;
  v17[8] = v21;
  v26 = a1[7];
  v25 = a1[8];
  v27 = v26;
  if (v25)
  {
    v27 = a1[7];
    v28 = a1[8];
    do
    {
      v29 = v28 >> 1;
      v30 = &v27[3 * (v28 >> 1)];
      v32 = *v30;
      v31 = v30 + 3;
      v28 += ~(v28 >> 1);
      if (v32 >= v23)
      {
        v28 = v29;
      }

      else
      {
        v27 = v31;
      }
    }

    while (v28);
  }

  v33 = &v26[3 * v25];
  if (v27 == v33)
  {
    v57 = 0;
    v56 = v23;
    goto LABEL_33;
  }

  if (*v27 > v23)
  {
    v57 = 0;
    v56 = v23;
    if (*v27 <= v23)
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * (v33 - v27);
      v26 = v27;
      do
      {
        v35 = v34 >> 1;
        v36 = &v26[3 * (v34 >> 1)];
        v38 = *v36;
        v37 = v36 + 3;
        v34 += ~(v34 >> 1);
        if (v38 >= v23)
        {
          v34 = v35;
        }

        else
        {
          v26 = v37;
        }
      }

      while (v34);
      if (v26 == v33)
      {
        v26 = v33;
LABEL_48:
        if (a1[9] == v25)
        {
          boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>*,boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>>(&v55, v7, v26, &v56);
          goto LABEL_59;
        }

        if (v33 == v26)
        {
          v33[1] = 0;
          v33[2] = 0;
          *v33 = v23;
          *(&v56 + 1) = 0;
          v57 = 0;
          a1[8] = v25 + 1;
        }

        else
        {
          v46 = v33 - 3;
          *v33 = *(v33 - 3);
          v33[2] = *(v33 - 1);
          *(v33 - 2) = 0;
          *(v33 - 1) = 0;
          ++a1[8];
          if (v33 - 3 != v26)
          {
            v47 = v33 - 3;
            do
            {
              v48 = *(v47 - 3);
              v47 -= 3;
              v49 = *(v46 - 1);
              *(v46 - 2) = 0;
              *(v46 - 1) = 0;
              *v46 = v48;
              v50 = v46[2];
              *(v46 + 1) = v49;
              if (v50)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
              }

              v46 = v47;
            }

            while (v47 != v26);
          }

          *v26 = v23;
          *(&v56 + 1) = 0;
          v57 = 0;
          v51 = v26[2];
          v26[1] = 0;
          v26[2] = 0;
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }
        }

LABEL_58:
        v55 = v26;
LABEL_59:
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }

        v27 = v55;
        goto LABEL_62;
      }

LABEL_45:
      if (*v26 <= v23)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

LABEL_33:
    if (v26 == v27)
    {
      goto LABEL_48;
    }

    v39 = v27 - 3;
    v40 = *(v27 - 3);
    if (v40 < v23)
    {
      v26 = v27;
      goto LABEL_48;
    }

    if (v40 <= v23)
    {
      v26 = v27 - 3;
      goto LABEL_58;
    }

    if (v39 != v26)
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v39 - v26);
      do
      {
        v42 = v41 >> 1;
        v43 = &v26[3 * (v41 >> 1)];
        v45 = *v43;
        v44 = v43 + 3;
        v41 += ~(v41 >> 1);
        if (v45 >= v23)
        {
          v41 = v42;
        }

        else
        {
          v26 = v44;
        }
      }

      while (v41);
    }

    if (v26 == v39)
    {
      v26 = v27 - 3;
      goto LABEL_48;
    }

    goto LABEL_45;
  }

LABEL_62:
  v27[1] = (v18 + 3);
  v16 = v27 + 1;
  v52 = v16[1];
  v16[1] = v18;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

LABEL_64:
  v53 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1A90E5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  _Unwind_Resume(a1);
}

uint64_t ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(uint64_t a1, void *a2, uint64_t a3, NSObject **a4, void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F1CB6778;
  *(a1 + 8) = a3;
  v10 = *a4;
  *(a1 + 16) = *a4;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = a5[1];
  *(a1 + 24) = *a5;
  *(a1 + 32) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  v12 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 72) = *a2;
  *a2 = 0;
  v13 = **(a1 + 8);
  v18 = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v18 = xpc_null_create();
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v20, a6);
  object = v18;
  v19 = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v22, v20);
  v24 = 0;
  v14 = operator new(0x30uLL);
  v15 = object;
  *v14 = &unk_1F1CB55B0;
  v14[1] = v15;
  object = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v14 + 2), v22);
  v24 = v14;
  if ((a1 + 40) != v23)
  {
    if (*v12 == a1 + 40)
    {
      (*(**v12 + 24))(*v12, v23);
      (*(**v12 + 32))();
      *v12 = v24;
      v24 = v23;
    }

    else
    {
      v24 = *v12;
      *v12 = v14;
    }
  }

  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v22);
  xpc_release(object);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v20);
  xpc_release(v19);
  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1A90E56C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
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
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void **std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

void xpc::dyn_cast_or_default(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(*a1);
    length = xpc_string_get_length(*a1);

    std::string::basic_string[abi:ne200100](a3, string_ptr, length);
  }

  else if (*(a2 + 23) < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = __len;
    __dst[2] = v7 | 0x8000000000000000;
    *__dst = v6;
  }

  else
  {
    *(__dst + 23) = __len;
    v6 = __dst;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __src, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __dst;
}

void *ctu::PathView::PathView(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  if (a3 < 2)
  {
    if (!a3)
    {
LABEL_9:
      v3 = -1;
LABEL_11:
      if (v3 >= a3)
      {
        v3 = a3;
      }

      goto LABEL_13;
    }

    a3 = 1;
  }

  else if (*(a2 + a3 - 1) == 47)
  {
    result[1] = --a3;
  }

  v3 = 0;
  while (*(a2 + v3) != 47)
  {
    if (a3 == ++v3)
    {
      goto LABEL_9;
    }
  }

  if (v3)
  {
    goto LABEL_11;
  }

  if (a3 < 2)
  {
LABEL_18:
    v4 = -1;
  }

  else
  {
    v4 = 1;
    while (*(a2 + v4) != 47)
    {
      if (a3 == ++v4)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = a3 != 0;
  if (a3)
  {
    ++a2;
  }

  if (v5 > v4)
  {
    v4 = a3 != 0;
  }

  if (v4 >= a3)
  {
    v4 = a3;
  }

  v3 = v4 - v5;
LABEL_13:
  result[2] = a2;
  result[3] = v3;
  return result;
}

void ctu::rest::detail::read_enum_string_value(ctu::rest::detail *this, xpc_object_t *a2, const xpc::object *a3)
{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoll(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoull(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoul(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stol(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  memset(v6, 0, sizeof(v6));
  xpc::dyn_cast_or_default(a2, v6, &v5);
  __p = v5;
  *this = std::stoul(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A90E5BE0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A90E5BC0);
}

void sub_1A90E5BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>::find(uint64_t result, void ***a2, void **a3)
{
  v4 = result;
  *result = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    v8 = *a2;
    do
    {
      result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v8[7 * (v6 >> 1)], a3);
      if ((result & 0x80u) == 0)
      {
        v6 = (v6 >> 1);
      }

      else
      {
        v8 += 7 * (v6 >> 1) + 7;
        v6 = (v6 + ~(v6 >> 1));
      }
    }

    while (v6);
    v5 = *a2;
    v9 = a2[1];
  }

  else
  {
    v9 = 0;
    v8 = *a2;
  }

  *v4 = v8;
  v10 = &v5[7 * v9];
  if (v8 != v10)
  {
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v8);
    if ((result & 0x80) != 0)
    {
      *v4 = v10;
    }
  }

  return result;
}

uint64_t xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1AC581B70](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x1E69E9EB0])
  {

    return xpc_int64_get_value(v5);
  }

  else
  {
    v6 = MEMORY[0x1AC581B70](v5);
    v7 = *a1;
    if (v6 == MEMORY[0x1E69E9F18])
    {

      return xpc_uint64_get_value(v7);
    }

    else
    {
      if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E58])
      {
        return xpc::dyn_cast_or_default(a1, 0);
      }

      return a2;
    }
  }
}

BOOL ctu::RestModuleState::handleNotifyMessage(ctu::RestModuleState *this, xpc_object_t *a2, void **a3)
{
  memset(&__p, 170, sizeof(__p));
  memset(v10, 0, sizeof(v10));
  xpc::dyn_cast_or_default(a2, v10, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v7 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v7 = ctu::RestModuleState::handleNotifyMessage(this, p_p, size, a3);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_9:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1A90E5E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *dispatch::async<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v5 = a1;
  v6 = v3;
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::rest::RestConnector::visitIfNotifyMessage<std::shared_ptr<ctu::rest::RestConnectorDelegateBase>>((a1 + 24), &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1A90E5F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::rest::RestConnector::visitIfNotifyMessage<std::shared_ptr<ctu::rest::RestConnectorDelegateBase>>(void *a1, uint64_t *a2)
{
  v12 = a1;
  v13 = "o";
  xpc::dict::object_proxy::operator xpc::object(&v12, object);
  v5 = ctu::rest::asOperation(object, v4);
  xpc_release(object[0]);
  if (v5 != 5)
  {
    return 0;
  }

  v6 = *a2;
  v12 = a1;
  v13 = "r";
  xpc::dict::object_proxy::operator xpc::object(&v12, &v11);
  object[0] = a1;
  object[1] = "v";
  xpc::dict::object_proxy::operator xpc::object(object, &v10);
  v7 = (*(*v6 + 32))(v6, &v11, &v10);
  xpc_release(v10);
  xpc_release(v11);
  return v7;
}

void sub_1A90E605C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t ctu::rest::asOperation(xpc_object_t *this, const xpc::object *a2)
{
  if (MEMORY[0x1AC581B70](*this, a2) == MEMORY[0x1E69E9ED0])
  {
    return 0;
  }

  memset(&v21, 170, sizeof(v21));
  memset(v22, 0, sizeof(v22));
  xpc::dyn_cast_or_default(this, v22, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v21.__r_.__value_.__r.__words[0];
    if (v21.__r_.__value_.__l.__size_ != 3)
    {
      if (v21.__r_.__value_.__l.__size_ == 4)
      {
        if (*v21.__r_.__value_.__l.__data_ == 1752397168)
        {
          v4 = 3;
          goto LABEL_57;
        }

        v10 = bswap32(*v21.__r_.__value_.__l.__data_);
        v11 = v10 >= 0x70696E67;
        v12 = v10 > 0x70696E67;
        v13 = !v11;
        if (v12 == v13)
        {
          v4 = 6;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        if (v21.__r_.__value_.__l.__size_ != 6 || (*v21.__r_.__value_.__l.__data_ == 1769238382 ? (v6 = *(v21.__r_.__value_.__r.__words[0] + 4) == 31078) : (v6 = 0), !v6))
        {
LABEL_56:
          v4 = 0;
          goto LABEL_57;
        }

        v4 = 5;
      }

      v5 = v21.__r_.__value_.__r.__words[0];
LABEL_57:
      operator delete(v5);
      return v4;
    }

    if (*v21.__r_.__value_.__l.__data_ == 25959 && *(v21.__r_.__value_.__r.__words[0] + 2) == 116)
    {
      v4 = 2;
      goto LABEL_57;
    }

    if (*v21.__r_.__value_.__l.__data_ == 25971 && *(v21.__r_.__value_.__r.__words[0] + 2) == 116)
    {
      v4 = 1;
      goto LABEL_57;
    }

    if (*v21.__r_.__value_.__l.__data_ == 28528 && *(v21.__r_.__value_.__r.__words[0] + 2) == 112)
    {
      v4 = 4;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  switch(HIBYTE(v21.__r_.__value_.__r.__words[2]))
  {
    case 3u:
      if (LOWORD(v21.__r_.__value_.__l.__data_) == 25959 && v21.__r_.__value_.__s.__data_[2] == 116)
      {
        return 2;
      }

      if (LOWORD(v21.__r_.__value_.__l.__data_) == 25971 && v21.__r_.__value_.__s.__data_[2] == 116)
      {
        return 1;
      }

      if (LOWORD(v21.__r_.__value_.__l.__data_) == 28528 && v21.__r_.__value_.__s.__data_[2] == 112)
      {
        return 4;
      }

      return 0;
    case 4u:
      if (LODWORD(v21.__r_.__value_.__l.__data_) == 1752397168)
      {
        return 3;
      }

      else
      {
        v18 = bswap32(v21.__r_.__value_.__l.__data_);
        v11 = v18 >= 0x70696E67;
        v19 = v18 > 0x70696E67;
        v20 = !v11;
        if (v19 == v20)
        {
          return 6;
        }

        else
        {
          return 0;
        }
      }

    case 6u:
      if (LODWORD(v21.__r_.__value_.__l.__data_) != 1769238382 || WORD2(v21.__r_.__value_.__r.__words[0]) != 31078)
      {
        return 0;
      }

      return 5;
    default:
      return 0;
  }
}

BOOL ctu::RestModuleState::handleNotifyMessage(uint64_t a1, const void *a2, size_t a3, void **a4)
{
  if (!a2)
  {
    __dst = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_13;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (a3 | 7) + 1;
    }

    p_dst = operator new(v9);
    v17 = a3;
    v18 = v9 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v18) = a3;
    p_dst = &__dst;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, a2, a3);
LABEL_12:
  *(p_dst + a3) = 0;
LABEL_13:
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>::find(&v19, (a1 + 72), &__dst);
  v10 = v19;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }

  v11 = *(a1 + 72) + 56 * *(a1 + 80);
  if (v10 != v11)
  {
    v12 = *a4;
    object = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      object = xpc_null_create();
    }

    v13 = *(v10 + 48);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v13 + 48))(v13, &object);
    xpc_release(object);
  }

  return v10 != v11;
}

uint64_t *std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::handleNotifyMessage(uint64_t a1, xpc_object_t *a2, void **a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = ctu::RestModuleState::handleNotifyMessage(v9, a2, a3);
  }

  else
  {
    v10 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return v10;
}

void ctu::path_join_impl(std::string *this, _BYTE *a2, const void *a3)
{
  v11[0] = a2;
  v11[1] = a3;
  if (!a3)
  {
    return;
  }

  if (*a2 == 47)
  {
    goto LABEL_3;
  }

  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size)
    {
      goto LABEL_10;
    }

LABEL_3:
    ctu::llvm::StringRef::operator std::string(v11, __p);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    *&this->__r_.__value_.__l.__data_ = *__p;
    this->__r_.__value_.__r.__words[2] = v10;
    return;
  }

  if (!*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
LABEL_10:
  if (v4 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  if (v6->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(this, 47);
  }

  ctu::llvm::StringRef::operator std::string(v11, __p);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v10 >= 0)
  {
    v8 = HIBYTE(v10);
  }

  else
  {
    v8 = __p[1];
  }

  std::string::append(this, v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A90E6658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(uint64_t result, void ***a2, void **a3)
{
  v4 = result;
  *result = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    v8 = *a2;
    do
    {
      result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v8[4 * (v6 >> 1)], a3);
      if ((result & 0x80u) == 0)
      {
        v6 = (v6 >> 1);
      }

      else
      {
        v8 += 4 * (v6 >> 1) + 4;
        v6 = (v6 + ~(v6 >> 1));
      }
    }

    while (v6);
    v5 = *a2;
    v9 = a2[1];
  }

  else
  {
    v9 = 0;
    v8 = *a2;
  }

  *v4 = v8;
  v10 = &v5[4 * v9];
  if (v8 != v10)
  {
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v8);
    if ((result & 0x80) != 0)
    {
      *v4 = v10;
    }
  }

  return result;
}

BOOL ctu::PropertyRestResource::handleMessage_Resource_SET(uint64_t a1, ctu::RestResourceContext *a2, const ctu::PathView *a3, _BYTE *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a5;
  if (a7)
  {
    goto LABEL_25;
  }

  (*(*a2 + 24))(&object, a2);
  ctu::llvm::StringRef::operator std::string(&v26, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v24, (a1 + 16), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ctu::llvm::StringRef::operator std::string(&v26, &__p);
  v11 = ctu::PropertyRestResource::createIfNotPresent(a1, &__p, &v24);
  v12 = v11;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v12)
  {
LABEL_8:
    ctu::PropertyRestResource::sendResourcesNotification(a1, a2, a3);
  }

LABEL_9:
  if (*(a1 + 8) == 1)
  {
    v13 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v13 = xpc_null_create();
    }

    v14 = *(v24 + 3);
    v15 = *(v14 + 24);
    *(v14 + 24) = v13;
    xpc_release(v15);
  }

  if (*(a3 + 3))
  {
    v16 = *a3;
    v17 = (*(a3 + 2) - *a3);
    v18 = v17 - 1;
    if (v17 > 1)
    {
      v17 = *(a3 + 1);
      if (v18 < v17)
      {
        v17 = v18;
      }
    }

    else if (v17 >= *(a3 + 1))
    {
      v17 = *(a3 + 1);
    }
  }

  else
  {
    v16 = *a3;
    v17 = *(a3 + 1);
  }

  v23[0] = v16;
  v23[1] = v17;
  memset(&__p, 170, sizeof(__p));
  ctu::llvm::StringRef::operator std::string(v23, &__p);
  ctu::path_join_impl(&__p, v26, v27);
  v19 = *(v24 + 3);
  v30 = 0;
  v20 = operator new(0x20uLL);
  *v20 = &unk_1F1CB9010;
  v20[1] = a2;
  v20[2] = &__p;
  v20[3] = &object;
  v30 = v20;
  ctu::rest::WatchableRestResourceHelper::map(v19, v29);
  std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
LABEL_25:
  result = a7 == 0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90E6968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::rest::WatchableRestResourceHelper::map(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (*a1 + 8);
    do
    {
      if (*v5)
      {
        v6 = std::__shared_weak_count::lock(*v5);
        if (v6)
        {
          v7 = v6;
          if (*(v5 - 1))
          {
            v8 = *(a2 + 24);
            if (!v8)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v8 + 48))(v8);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }
}

BOOL ctu::PropertyRestResource::handleRestMessage_SET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v6;
  v11 = v6;
  v7 = *(a3 + 1);
  v9[0] = *a3;
  v9[1] = v7;
  if (v10 == 6)
  {
    return 0;
  }

  if (v10 == 7)
  {
    return ctu::PropertyRestResource::handleMessage_Resource_SET(this, a2, a3, *(&v10 + 1), v11, *(&v11 + 1), v12);
  }

  return 1;
}

uint64_t anonymous namespace::sParsePath(uint64_t result, void *a2)
{
  v2 = result;
  *result = 0xAAAAAAAA00000000;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  v3 = a2[3];
  if (!v3)
  {
    v15 = 1;
    goto LABEL_52;
  }

  v5 = a2[2];
  if (v3 == 1)
  {
    v6 = *v5;
    if (v6 == 42)
    {
      result = ctu::PathView::advance(a2, 1);
      if (a2[3])
      {
        return result;
      }

      v15 = 6;
      goto LABEL_52;
    }

    if (v6 == 95)
    {
      result = ctu::PathView::advance(a2, 1);
      v7 = a2[3];
      if (v7)
      {
        v8 = a2[2];
        if (v7 == 8)
        {
          if (*v8 != 0x7372656863746177)
          {
            return result;
          }

          result = ctu::PathView::advance(a2, 1);
          if (a2[3])
          {
            return result;
          }

          v15 = 3;
        }

        else
        {
          if (v7 != 7)
          {
            return result;
          }

          v9 = *v8;
          v10 = *(v8 + 3);
          if (v9 != 1668571511 || v10 != 1684367459)
          {
            return result;
          }

          result = ctu::PathView::advance(a2, 1);
          v12 = a2[3];
          if (v12)
          {
            if (v12 != 1)
            {
              return result;
            }

            if (*a2[2] != 95)
            {
              return result;
            }

            result = ctu::PathView::advance(a2, 1);
            if (a2[3] != 8)
            {
              return result;
            }

            v13 = a2[2];
            if (*v13 != 0x7372656863746177)
            {
              return result;
            }

            v14 = (*a2 + a2[1]);
            v15 = 5;
            if (v14 != v13 + 1 && (v13 + 9) != v14)
            {
              return result;
            }
          }

          else
          {
            v15 = 4;
          }
        }
      }

      else
      {
        v15 = 2;
      }

LABEL_52:
      *v2 = v15;
      return result;
    }
  }

  v16 = 0;
  *result = 7;
  while (v5[v16] != 64)
  {
    if (v3 == ++v16)
    {
      *(result + 8) = v5;
      *(result + 16) = v3;
      *(result + 24) = 0;
      *(result + 32) = 0;
      goto LABEL_40;
    }
  }

  if (v16 >= v3)
  {
    v17 = v3;
  }

  else
  {
    v17 = v16;
  }

  if (v16 + 1 < v3)
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = v3;
  }

  v19 = &v5[v18];
  v20 = v3 - v18;
  v21 = v16 == -1;
  if (v16 == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21)
  {
    v17 = v3;
  }

  *(result + 8) = v5;
  *(result + 16) = v17;
  if (v21)
  {
    v20 = 0;
  }

  *(result + 24) = v22;
  *(result + 32) = v20;
  if (!v17)
  {
LABEL_51:
    v15 = 0;
    goto LABEL_52;
  }

LABEL_40:
  v23 = &v5[v3];
  v24 = (*a2 + a2[1]);
  if (v24 != v23 && v23 + 1 != v24)
  {
    result = ctu::PathView::advance(a2, 1);
    if (a2[3] == 1 && *a2[2] == 95)
    {
      result = ctu::PathView::advance(a2, 1);
      v26 = a2[3];
      if (!v26)
      {
        v15 = 8;
        goto LABEL_52;
      }

      if (v26 == 8)
      {
        v27 = a2[2];
        if (*v27 == 0x7372656863746177)
        {
          v28 = (*a2 + a2[1]);
          v15 = 9;
          if (v28 == v27 + 1 || (v27 + 9) == v28)
          {
            goto LABEL_52;
          }
        }
      }
    }

    goto LABEL_51;
  }

  return result;
}

int *anonymous namespace::sParsePath(int *result, void *a2)
{
  v2 = result;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = 0xAAAAAAAAAAAAAAAALL;
  v3 = a2[3];
  if (!v3)
  {
    v9 = 1;
    goto LABEL_16;
  }

  *result = 3;
  v6 = a2[1];
  v5 = a2[2];
  *(result + 1) = v5;
  *(result + 2) = v3;
  v7 = (*a2 + v6);
  if (v7 != &v5[v3] && &v5[v3 + 1] != v7)
  {
    result = ctu::PathView::advance(a2, 1);
    if (a2[3] != 8 || (v10 = a2[2], *v10 != 0x72656469766F7270) || (v11 = (*a2 + a2[1]), v9 = 4, v11 != v10 + 1) && (v10 + 9) != v11)
    {
      v9 = 0;
    }

    goto LABEL_16;
  }

  if (v3 == 1 && *v5 == 42)
  {
    v9 = 2;
LABEL_16:
    *v2 = v9;
  }

  return result;
}

{
  v2 = result;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = 0xAAAAAAAAAAAAAAAALL;
  v3 = a2[3];
  if (!v3)
  {
    v6 = 1;
    goto LABEL_28;
  }

  *result = 3;
  v5 = a2[2];
  *(result + 1) = v5;
  *(result + 2) = v3;
  if (v3 == 1 && *v5 == 42)
  {
    v6 = 2;
LABEL_28:
    *v2 = v6;
    return result;
  }

  v7 = &v5[v3];
  v8 = (*a2 + a2[1]);
  if (v8 != v7 && v7 + 1 != v8)
  {
    result = ctu::PathView::advance(a2, 1);
    v10 = a2[2];
    v11 = a2[3];
    if (v11 == 8)
    {
      if (*v10 == 0x72656469766F7270)
      {
        v6 = 7;
        goto LABEL_28;
      }
    }

    else if (v11 == 7)
    {
      if (*v10 == 1851880039 && *(v10 + 3) == 1684370542)
      {
        v6 = 4;
        goto LABEL_28;
      }

      if (*v10 == 1953063287 && *(v10 + 3) == 1735289204)
      {
        v6 = 6;
        goto LABEL_28;
      }

      v14 = *v10;
      v15 = *(v10 + 3);
      if (v14 == 1870030194 && v15 == 1684368239)
      {
        v6 = 5;
        goto LABEL_28;
      }
    }

    v6 = 0;
    goto LABEL_28;
  }

  return result;
}

xpc_object_t ctu::DictRestResourceContext::getRestValue@<X0>(ctu::DictRestResourceContext *this@<X0>, void *a2@<X8>)
{
  v3[0] = *(this + 1);
  v3[1] = "v";
  return xpc::dict::object_proxy::operator xpc::object(v3, a2);
}

BOOL ctu::PropertyRestResource::createIfNotPresent(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 16);
  v4 = *(a1 + 16) + 32 * *(a1 + 24);
  v5 = *a3;
  if (*a3 == v4)
  {
    if (*(a1 + 8) == 1)
    {
      v9 = operator new(0x20uLL);
      *v9 = 0u;
      v9[1] = 0u;
      *(v9 + 3) = xpc_null_create();
    }

    else
    {
      v9 = operator new(0x18uLL);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v26 = v10;
    *&v26[16] = v10;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *a2, *(a2 + 8));
    }

    else
    {
      *v26 = *a2;
      *&v26[16] = *(a2 + 16);
    }

    *&v26[24] = v9;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = &v11[2 * v12];
    while (v12)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v11[2 * (v12 >> 1)], v26) & 0x80u) == 0)
      {
        v12 >>= 1;
      }

      else
      {
        v11 += 2 * (v12 >> 1) + 2;
        v12 += ~(v12 >> 1);
      }
    }

    if (v11 == v13 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, v11) & 0x80) != 0)
    {
      v14 = *(a1 + 24);
      if (*(a1 + 32) == v14)
      {
        boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>>(&v25, v3, v11, v26);
        v11 = v25;
      }

      else
      {
        v15 = *v3 + 32 * v14;
        if (v15 == v11)
        {
          v20 = *v26;
          *(v15 + 16) = *&v26[16];
          *v15 = v20;
          memset(v26, 0, sizeof(v26));
          *(v15 + 24) = *&v26[24];
          ++*(a1 + 24);
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
          ++*(a1 + 24);
          if ((v15 - 32) != v11)
          {
            do
            {
              v19 = (v16 - 32);
              boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>::operator=(v16, (v16 - 32));
              v16 = v19;
            }

            while (v19 != v11);
          }

          boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>::operator=(v11, v26);
        }
      }
    }

    v21 = *&v26[24];
    *&v26[24] = 0;
    if (v21)
    {
      v22 = boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(v21);
      operator delete(v22);
    }

    if ((v26[23] & 0x80000000) != 0)
    {
      operator delete(*v26);
    }

    *a3 = v11;
  }

  result = v5 == v4;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90E72D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>::~value_destructor(va);
  _Unwind_Resume(a1);
}

xpc_object_t ctu::DictRestResourceContext::getRestOperation@<X0>(ctu::DictRestResourceContext *this@<X0>, void *a2@<X8>)
{
  v3[0] = *(this + 1);
  v3[1] = "o";
  return xpc::dict::object_proxy::operator xpc::object(v3, a2);
}

uint64_t ctu::RestResource::handleMessage(ctu::RestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  (*(*a2 + 16))(&object, a2);
  v7 = ctu::rest::asOperation(&object, v6);
  xpc_release(object);
  result = 0;
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      return (*(*this + 48))(this, a2, a3);
    }

    else if (v7 == 2)
    {
      return (*(*this + 40))(this, a2, a3);
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        return (*(*this + 56))(this, a2, a3);
      case 4:
        return (*(*this + 64))(this, a2, a3);
      case 5:
        return (*(*this + 72))(this, a2, a3);
    }
  }

  return result;
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>>::find(uint64_t result, void ***a2, void **a3)
{
  v4 = result;
  *result = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    v8 = *a2;
    do
    {
      result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v8[5 * (v6 >> 1)], a3);
      if ((result & 0x80u) == 0)
      {
        v6 = (v6 >> 1);
      }

      else
      {
        v8 += 5 * (v6 >> 1) + 5;
        v6 = (v6 + ~(v6 >> 1));
      }
    }

    while (v6);
    v5 = *a2;
    v9 = a2[1];
  }

  else
  {
    v9 = 0;
    v8 = *a2;
  }

  *v4 = v8;
  v10 = &v5[5 * v9];
  if (v8 != v10)
  {
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v8);
    if ((result & 0x80) != 0)
    {
      *v4 = v10;
    }
  }

  return result;
}

uint64_t ctu::PathView::advance(uint64_t this, uint64_t a2)
{
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      v11 = *(this + 8);
      if (v11)
      {
        v12 = *this;
        v13 = *(this + 16);
        do
        {
          v14 = v13 - v12;
          if (v13 - v12 <= 1)
          {
            if (v13 - v12 == 1)
            {
              if (v13 == v12 || *v12 == 47)
              {
                return this;
              }
            }

            else if (v13 == v12)
            {
              return this;
            }
          }

          ++a2;
          v15 = v14 - (v14 != v11);
          if (v15 >= v11)
          {
            v16 = v11;
          }

          else
          {
            v16 = v14 - (v14 != v11);
          }

          v17 = v16 - 1;
          do
          {
            if (v17 == -1)
            {
              v13 = v12;
              goto LABEL_54;
            }

            v18 = v12[v17--];
          }

          while (v18 != 47);
          v19 = v17 + 2;
          if (v17 + 2 >= v11)
          {
            v19 = v11;
          }

          if (v19 > v15)
          {
            v15 = v19;
          }

          if (v15 >= v11)
          {
            v20 = v11;
          }

          else
          {
            v20 = v15;
          }

          v13 = &v12[v19];
          v16 = v20 - v19;
LABEL_54:
          *(this + 16) = v13;
          *(this + 24) = v16;
        }

        while (a2);
      }
    }
  }

  else
  {
    v2 = *this;
    v3 = *(this + 8);
    v4 = *(this + 16) + *(this + 24) - *this;
    v5 = v4 != -1 && v4 < v3;
    v6 = *(this + 8);
    v7 = v6;
    if (v5)
    {
      while (1)
      {
        v6 = v4 + 1;
        if (v3 <= v4 + 1)
        {
          break;
        }

        ++v4;
        while (v2[v4] != 47)
        {
          if (v3 == ++v4)
          {
            goto LABEL_18;
          }
        }

        v8 = a2 - 1;
        if (a2 >= 2 && v4 != -1)
        {
          --a2;
          if (v4 < v3)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

LABEL_18:
      v8 = a2 - 1;
      v4 = -1;
LABEL_19:
      if (v8)
      {
        v6 = *(this + 8);
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }
    }

    if (v6 >= v3)
    {
      v9 = *(this + 8);
    }

    else
    {
      v9 = v6;
    }

    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v10 < v3)
    {
      v3 = v10;
    }

    *(this + 16) = &v2[v9];
    *(this + 24) = v3 - v9;
  }

  return this;
}

void ctu::rest::RestDispatchConnector::handleMessage(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  if (!a1[7])
  {
    _rest_api_misuse("Attempted to dispatch on a connector with no queue!");
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = xpc_null_create();
  v9 = a1[7];
  v10 = operator new(0x20uLL);
  *v10 = v5;
  v10[1] = v7;
  v10[2] = a1;
  v10[3] = v3;
  v11 = xpc_null_create();
  v12 = 0;
  v13 = 0;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](&v12);
  std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0>(ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](&v13);
  xpc_release(v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  xpc_release(v8);
}

void ctu::DispatchRestResourceConnection::send(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        (*(*v7 + 16))(v7, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1A90E7910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0,std::allocator<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (*(a2 + 31) >= 0)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v8 = xpc_string_create(v5);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v6 = a1[2];
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  object = xpc_string_create(v6);
  if (!object)
  {
    object = xpc_null_create();
  }

  (*(*v4 + 48))(v4, a2, &v8, &object, a1[3]);
  xpc_release(object);
  xpc_release(v8);
}

void sub_1A90E7A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::ReplyCallbackRestResourceContext::sendNotify(ctu::ReplyCallbackRestResourceContext *this, const ctu::RestResourceConnection *a2, void **a3, void **a4, void **a5)
{
  v23 = *MEMORY[0x1E69E9840];
  object = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createNotify(a3, a4, a5, &object);
  v7 = *(this + 9);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a2 + 1);
    v11 = *(a2 + 31);
    xpc::object::to_string(&object, &__p);
    v12 = v11 >= 0 ? (a2 + 8) : v10;
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v18 = v12;
    v19 = 2048;
    v20 = a2;
    v21 = 2080;
    v22 = v13;
    _os_log_debug_impl(&dword_1A90E3000, v7, OS_LOG_TYPE_DEBUG, "Sending NOTIFY to %s (%p): %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v14 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v14 = xpc_null_create();
  }

  (*(*a2 + 16))(a2, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(object);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void ctu::rest::createNotify(void **a1@<X0>, void **a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  v8 = xpc_string_create("notify");
  v9 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v9 = v8;
  }

  ctu::rest::createRestMessage(&v9, a1, a2, a3, a4);
  xpc_release(v8);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_1A90E3000);
  }

  return result;
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>::~PthreadMutexGuardPolicy, &ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance, &dword_1A90E3000);
  }

  return result;
}

ctu::cf::plist_adapter *ctu::cf::plist_adapter::plist_adapter(ctu::cf::plist_adapter *this, CFTypeRef cf, CFTypeRef a3)
{
  *this = &unk_1F1CB6878;
  *(this + 1) = cf;
  *(this + 2) = a3;
  if (cf)
  {
    CFRetain(cf);
    a3 = *(this + 2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void **ctu::OsLogContext::OsLogContext(void **this, void **a2)
{
  *this = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this + 1, a2 + 1);
  return this;
}

{
  *this = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this + 1, a2 + 1);
  return this;
}

void **ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

void **ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    os_retain(v3);
  }

  return a1;
}

void ctu::OsLogContext::~OsLogContext(void **this)
{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 1);
}

{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 1);
}

uint64_t *std::unique_ptr<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessage(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy_deallocate(xpc_object_t *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 2));
  xpc_release(a1[1]);

  operator delete(a1);
}

void ctu::ns::AutoPool::~AutoPool(void **this)
{
  v1 = *this;
  if (v1)
  {
    objc_autoreleasePoolPop(v1);
  }
}

ctu::ns::AutoPool *ctu::ns::AutoPool::AutoPool(ctu::ns::AutoPool *this)
{
  *this = objc_autoreleasePoolPush();
  return this;
}

{
  *this = objc_autoreleasePoolPush();
  return this;
}

unint64_t xpc::dyn_cast_or_default@<X0>(xpc_object_t *this@<X0>, const xpc::object *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  if (MEMORY[0x1AC581B70](*this, a2, a3) != MEMORY[0x1E69E9F10])
  {
    result = strlen(a2);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (result | 7) + 1;
      }

      v12 = operator new(v11);
      a4[1] = v8;
      a4[2] = v11 | 0x8000000000000000;
      *a4 = v12;
      a4 = v12;
    }

    else
    {
      *(a4 + 23) = result;
      if (!result)
      {
        goto LABEL_14;
      }
    }

    result = memcpy(a4, a2, v8);
LABEL_14:
    *(a4 + v8) = 0;
    return result;
  }

  string_ptr = xpc_string_get_string_ptr(*this);
  length = xpc_string_get_length(*this);

  return std::string::basic_string[abi:ne200100](a4, string_ptr, length);
}

void xpc::object::to_string(void **this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2[0] = a2;
  v2[1] = 0xAAAAAAAA00000000;
}

void sub_1A90E814C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::XpcDescriptionGenerator::describe(std::string **this, void *a2)
{
  v4 = MEMORY[0x1AC581B70](a2);
  if (v4 == MEMORY[0x1E69E9E80])
  {
    std::string::push_back(*this, 123);
    if (xpc_dictionary_get_count(a2))
    {
      ++*(this + 2);
      applier.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      applier.__r_.__value_.__l.__size_ = 0x40000000;
      applier.__r_.__value_.__r.__words[2] = ___ZN12_GLOBAL__N_123XpcDescriptionGenerator19describe_dictionaryEPv_block_invoke;
      v43 = &__block_descriptor_tmp_8;
      v44 = this;
      xpc_dictionary_apply(a2, &applier);
      --*(this + 2);
      v5 = *this;
      size = SHIBYTE((*this)->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v5->__r_.__value_.__l.__size_;
      }

      std::string::resize(v5, size - 1, 0);
      std::string::push_back(*this, 10);
      std::string::append(*this, *(this + 2), 9);
    }

    v7 = *this;
    v8 = 125;
    goto LABEL_20;
  }

  if (v4 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(a2);
    length = xpc_string_get_length(a2);
    std::string::push_back(*this, 34);
    std::string::append(*this, string_ptr, length);
    v11 = *this;
    v12 = 34;
LABEL_22:

    std::string::push_back(v11, v12);
    return;
  }

  if (v4 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(a2);
    v14 = *this;
    std::to_string(&applier, value);
    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_applier = &applier;
    }

    else
    {
      p_applier = applier.__r_.__value_.__r.__words[0];
    }

    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = applier.__r_.__value_.__l.__size_;
    }

LABEL_31:
    std::string::append(v14, p_applier, v16);
    if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(applier.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (v4 == MEMORY[0x1E69E9E50])
  {
    std::string::push_back(*this, 91);
    count = xpc_array_get_count(a2);
    if (count)
    {
      v18 = count;
      v19 = 0;
      ++*(this + 2);
      do
      {
        if (v19)
        {
          std::string::push_back(*this, 44);
        }

        std::string::push_back(*this, 10);
        std::string::append(*this, *(this + 2), 9);
        v20 = *this;
        std::to_string(&applier, v19);
        if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &applier;
        }

        else
        {
          v21 = applier.__r_.__value_.__r.__words[0];
        }

        if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = applier.__r_.__value_.__l.__size_;
        }

        std::string::append(v20, v21, v22);
        if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(applier.__r_.__value_.__l.__data_);
        }

        std::string::append(*this, ": ", 2uLL);
        v23 = xpc_array_get_value(a2, v19);
        ++v19;
      }

      while (v18 != v19);
      --*(this + 2);
      std::string::push_back(*this, 10);
      std::string::append(*this, *(this + 2), 9);
      v7 = *this;
      v8 = 93;
      goto LABEL_20;
    }

    v11 = *this;
    v12 = 93;
    goto LABEL_22;
  }

  if (v4 != MEMORY[0x1E69E9E70])
  {
    if (v4 == MEMORY[0x1E69E9E58])
    {
      v29 = xpc_BOOL_get_value(a2);
      v30 = *this;
      if (v29)
      {
        v31 = "true";
      }

      else
      {
        v31 = "false";
      }

      if (v29)
      {
        v32 = 4;
      }

      else
      {
        v32 = 5;
      }

      v33 = *this;
LABEL_80:

      std::string::append(v33, v31, v32);
      return;
    }

    if (v4 != MEMORY[0x1E69E9F18])
    {
      if (v4 != MEMORY[0x1E69E9ED0])
      {
        if (v4 == MEMORY[0x1E69E9E88])
        {
        }

        else if (v4 == MEMORY[0x1E69E9E78])
        {
        }

        else if (v4 == MEMORY[0x1E69E9F20])
        {
        }

        else if (v4 == MEMORY[0x1E69E9E98])
        {
        }

        else
        {
          object = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object = xpc_null_create();
          }

          v38 = *this;
          xpc::object::describe(&object, &applier);
          if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &applier;
          }

          else
          {
            v39 = applier.__r_.__value_.__r.__words[0];
          }

          if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = applier.__r_.__value_.__l.__size_;
          }

          std::string::append(v38, v39, v40);
          if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(applier.__r_.__value_.__l.__data_);
          }

          xpc_release(object);
        }

        return;
      }

      v33 = *this;
      v31 = "null";
      v32 = 4;
      goto LABEL_80;
    }

    v34 = xpc_uint64_get_value(a2);
    v35 = *this;
    std::to_string(&applier, v34);
    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &applier;
    }

    else
    {
      v36 = applier.__r_.__value_.__r.__words[0];
    }

    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = applier.__r_.__value_.__l.__size_;
    }

    std::string::append(v35, v36, v37);
    if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(applier.__r_.__value_.__l.__data_);
    }

    v7 = *this;
    v8 = 117;
LABEL_20:
    std::string::push_back(v7, v8);
    return;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a2);
  v25 = xpc_data_get_length(a2);
  std::string::append(*this, "[", 1uLL);
  v26 = *this;
  std::to_string(&applier, v25);
  if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &applier;
  }

  else
  {
    v27 = applier.__r_.__value_.__r.__words[0];
  }

  if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = applier.__r_.__value_.__l.__size_;
  }

  std::string::append(v26, v27, v28);
  if (SHIBYTE(applier.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(applier.__r_.__value_.__l.__data_);
  }

  std::string::append(*this, " bytes]", 7uLL);
  if (v25)
  {
    std::string::append(*this, " ", 1uLL);
    v14 = *this;
    ctu::hex_sp(bytes_ptr, v25, &applier);
    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_applier = &applier;
    }

    else
    {
      p_applier = applier.__r_.__value_.__r.__words[0];
    }

    if ((applier.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(applier.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = applier.__r_.__value_.__l.__size_;
    }

    goto LABEL_31;
  }
}

void sub_1A90E87E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12_GLOBAL__N_123XpcDescriptionGenerator19describe_dictionaryEPv_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 32);
  std::string::push_back(*v5, 10);
  std::string::append(*v5, *(v5 + 8), 9);
  std::string::push_back(*v5, 34);
  v6 = strlen(a2);
  std::string::append(*v5, a2, v6);
  std::string::append(*v5, ": ", 3uLL);
  std::string::push_back(*v5, 44);
  return 1;
}

void xpc::auto_reply::connect(void ***a1, xpc_object_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = *a2;
    if (*a2)
    {
      xpc_retain(*a2);
    }

    else
    {
      v4 = xpc_null_create();
    }

    v5 = *v2;
    *v2 = v4;
    xpc_release(v5);
    v6 = xpc_null_create();
    v7 = *a2;
    *a2 = v6;
    xpc_release(v7);
  }
}

BOOL xpc::dyn_cast_or_default(xpc_object_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1AC581B70](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x1E69E9E58])
  {
    return v5 == MEMORY[0x1E69E9E10];
  }

  v6 = MEMORY[0x1AC581B70](v5);
  v7 = *a1;
  if (v6 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v7);
    return value != 0;
  }

  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9F18])
  {
    value = xpc_uint64_get_value(*a1);
    return value != 0;
  }

  return a2;
}

void xpc::auto_reply::deleter(xpc_object_t *a1)
{
  if (a1)
  {
    if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E80])
    {
      remote_connection = xpc_dictionary_get_remote_connection(*a1);
      if (remote_connection)
      {
        xpc_connection_send_message(remote_connection, *a1);
      }
    }

    xpc_release(*a1);

    operator delete(a1);
  }
}

void ___ZN3ctu15XpcClientHelper9setServerINS_9XpcClientEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = a1[5];
  if (v8)
  {
    v9 = MEMORY[0x1AC581B70](a2);
    v10 = MEMORY[0x1E69E9E80];
    if (v9 != MEMORY[0x1E69E9E80])
    {
      if (v9 == MEMORY[0x1E69E9E98] && *v5 == a1[7])
      {
        v12 = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
          v12 = a2;
        }

        ctu::XpcClient::handleServerError(v8, &v12);
        xpc_release(a2);
      }

      goto LABEL_19;
    }

    if (a2)
    {
      xpc_retain(a2);
      v13 = a2;
    }

    else
    {
      a2 = xpc_null_create();
      v13 = a2;
      if (!a2)
      {
        v11 = xpc_null_create();
        a2 = 0;
        goto LABEL_17;
      }
    }

    if (MEMORY[0x1AC581B70](a2) == v10)
    {
      xpc_retain(a2);
      v11 = a2;
LABEL_18:
      ctu::XpcClient::handleMessage(v8, &v13);
      xpc_release(v11);
      v13 = 0;
      xpc_release(a2);
      goto LABEL_19;
    }

    v11 = xpc_null_create();
LABEL_17:
    v13 = v11;
    goto LABEL_18;
  }

LABEL_19:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ctu::XpcClient::handleMessage(uint64_t a1, void **a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN3ctu9XpcClient13handleMessageEN3xpc4dictE_block_invoke;
  v5[3] = &__block_descriptor_tmp_1_1;
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

void *std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void __copy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(void *a1, uint64_t a2)
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

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
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

void ___ZN3ctu9XpcClient13handleMessageEN3xpc4dictE_block_invoke(uint64_t a1)
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

  (*(*v2 + 8))(v2, &object);
  xpc_release(object);
}

void __destroy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E786B418, MEMORY[0x1E69E5278]);
}

unint64_t ctu::FirstBootAfterUpdate::evaluate(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableINS_20FirstBootAfterUpdateEE20execute_wrapped_syncIZNS1_8evaluateENSt3__16chrono8durationIxNS4_5ratioILl1ELl1000000EEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  v6[3] = &__block_descriptor_tmp_19;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_21;
    v12 = &v14;
    v13 = &v7;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_20;
    v12 = &v14;
    v13 = &v7;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    dispatch_sync(v2, &block);
  }

  return v14;
}

uint64_t ctu::AdaptiveTimerService::getScaledTime(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  if (v3)
  {
    if (v3 >= 0)
    {
      v4 = 1000000 * v3;
    }

    else
    {
      v4 = 1800000000;
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v6 == v7)
    {
      v4 = a2;
    }

    else
    {
      v4 = a2;
      do
      {
        if (*v6)
        {
          v8 = (*(**v6 + 16))(*v6, a2);
          if (v4 <= v8)
          {
            v4 = v8;
          }
        }

        v6 += 2;
      }

      while (v6 != v7);
    }
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v12 = *v12;
    }

    v13 = 136315394;
    v14 = v12;
    v15 = 2048;
    v16 = v4;
    _os_log_debug_impl(&dword_1A90E3000, v9, OS_LOG_TYPE_DEBUG, "#D [%s] Scaled timeout value %llu microseconds", &v13, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

void ctu::AdaptiveTimerService::createOneShotTimerImpl(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, dispatch_queue_t *a5@<X5>, void **a6@<X6>, void *a7@<X8>)
{
  v11[0] = a2 | 0xAAAAAAAAAAAAAA00;
  v11[1] = ctu::AdaptiveTimerService::getScaledTime(a1, a3);
  ctu::DispatchTimerService::createDispatchTimer(*a5, v11, 0xFFFFFFFFFFFFFFFFLL, a4, *a6, a7);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableINS_20FirstBootAfterUpdateEE20execute_wrapped_syncIZNS1_8evaluateENSt3__16chrono8durationIxNS4_5ratioILl1ELl1000000EEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  if (*(*v1 + 48) == 1)
  {
    v4 = v3 * *(v2 + 49);
  }

  else
  {
    v4 = v1[1];
  }

  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134218240;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_debug_impl(&dword_1A90E3000, v5, OS_LOG_TYPE_DEBUG, "#D input timeOut: %llu usec, scaled output timeOut: %llu usec", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void ctu::DispatchTimerService::createDispatchTimer(dispatch_queue_t queue@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, void *a5@<X5>, void *a6@<X8>)
{
  v12 = *a2;
  v13 = 1;
  if (v12 == 2)
  {
    v13 = 2;
  }

  if (v12 == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  v15 = dispatch_source_create(MEMORY[0x1E69E9710], v14, 0, queue);
  v16 = operator new(1uLL);
  LOBYTE(v16->~__shared_weak_count) = 0;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_1F1CB49E8;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v16;
  if (a3 == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZNK3ctu20DispatchTimerService19createDispatchTimerEP16dispatch_queue_sRKNSt3__15tupleIJNS_8TimeTypeENS3_6chrono8durationIxNS3_5ratioILl1ELl1000000EEEEEEEEy11qos_class_tU13block_pointerFvvE_block_invoke;
    handler[3] = &__block_descriptor_tmp_21;
    handler[4] = a5;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    dispatch_source_set_event_handler(v15, handler);
    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    dispatch_source_set_event_handler(v15, a5);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1174405120;
  v21[2] = ___ZNK3ctu20DispatchTimerService19createDispatchTimerEP16dispatch_queue_sRKNSt3__15tupleIJNS_8TimeTypeENS3_6chrono8durationIxNS3_5ratioILl1ELl1000000EEEEEEEEy11qos_class_tU13block_pointerFvvE_block_invoke_3;
  v21[3] = &__block_descriptor_tmp_4;
  v21[4] = v16;
  v22 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  dispatch_source_set_cancel_handler(v15, v21);
  DispatchTime = ctu::DispatchTimerService::makeDispatchTime(v18, a2);
  dispatch_source_set_timer(v15, DispatchTime, a3, 5uLL);
  if (a4)
  {
    dispatch_set_qos_class();
  }

  v20 = operator new(0x20uLL);
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *v20 = &unk_1F1CB72C8;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_activate(v15);
  std::__shared_weak_count::__release_weak(v17);
  *a6 = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
}

void sub_1A90E9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v14)
  {
    dispatch_release(v14);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32b40c22_ZTSN8dispatch6sourceE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

uint64_t __copy_helper_block_e8_32c27_ZTSNSt3__110shared_ptrIvEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

dispatch_time_t ctu::DispatchTimerService::makeDispatchTime(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 <= 2)
  {
    return dispatch_time(qword_1A9163480[v2], 1000 * *(a2 + 1));
  }

  return result;
}

void ctu::DispatchTimer::cancel(ctu::DispatchTimer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ctu::DispatchTimer::~DispatchTimer(ctu::DispatchTimer *this)
{
  ctu::DispatchTimer::~DispatchTimer(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB72C8;
  ctu::DispatchTimer::cancel(this);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void __destroy_helper_block_e8_32b40c22_ZTSN8dispatch6sourceE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void __destroy_helper_block_e8_32c27_ZTSNSt3__110shared_ptrIvEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_pointer<BOOL *,std::shared_ptr<void>::__shared_ptr_default_delete<void,BOOL>,std::allocator<BOOL>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t ctu::XpcClient::XpcClient(uint64_t a1, char *label)
{
  v2 = label;
  if (label[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *label, *(label + 1));
    if (v2[23] < 0)
    {
      v2 = *v2;
    }
  }

  else
  {
    v8 = *label;
  }

  v4 = dispatch_queue_create(v2, 0);
  v6 = 0;
  v7 = v4;
  ctu::XpcClient::XpcClient(a1, &v8, &v7, &v6);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return a1;
}

void ctu::hex_sp(ctu *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 >= 1)
  {
    v3 = this;
    v5 = (this + a2);
    do
    {
      if (*v3 >= 0xA0u)
      {
        v6 = (*v3 >> 4) + 87;
      }

      else
      {
        v6 = (*v3 >> 4) | 0x30;
      }

      std::string::push_back(a3, v6);
      v7 = *v3 & 0xF;
      if (v7 >= 0xA)
      {
        v8 = v7 + 87;
      }

      else
      {
        v8 = *v3 & 0xF | 0x30;
      }

      std::string::push_back(a3, v8);
      std::string::push_back(a3, 32);
      v3 = (v3 + 1);
    }

    while (v3 < v5);
    v9 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v9 < 0)
    {
      size = a3->__r_.__value_.__l.__size_;
      if (!size)
      {
        return;
      }

      v11 = a3->__r_.__value_.__r.__words[0];
      v10 = a3->__r_.__value_.__r.__words[0] + size;
    }

    else
    {
      if (!*(&a3->__r_.__value_.__s + 23))
      {
        return;
      }

      v10 = a3 + v9;
      v11 = a3;
    }

    std::string::erase(a3, ~v11 + v10, 1uLL);
  }
}

void sub_1A90E99E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _TelephonyUtilDebugPrintOsLog(uint64_t a1, const char *a2, va_list a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    memset(__b, 170, sizeof(__b));
    vsnprintf(__b, 0x400uLL, a2, a3);
    if (qword_1EB3828B8 != -1)
    {
      dispatch_once(&qword_1EB3828B8, &__block_literal_global_0);
    }

    v5 = _MergedGlobals_2;
    if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = __b;
      _os_log_impl(&dword_1A90E3000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _TelephonyUtilDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((_TelephonyUtilDebugFlags & 6) != 0)
  {
    return gDelegate(result, a2, &a9);
  }

  return result;
}

const void *ctu::cf::map_adapter::copyCFDictionaryRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFDictionaryGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

double ctu::cf::map_adapter::getDouble(ctu::cf::map_adapter *this, const __CFString *a2, double a3)
{
  v3 = a3;
  v9 = a3;
  v4 = (**this)(this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v9, v5, v7);
      v3 = v9;
    }

    CFRelease(v5);
  }

  return v3;
}

const void *ctu::cf::dict_adapter::copyCFTypeRef(ctu::cf::dict_adapter *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a2);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v4;
}

void ctu::cf::dict_adapter::~dict_adapter(ctu::cf::dict_adapter *this)
{
  *this = &unk_1F1CB68A0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  ctu::cf::dict_adapter::~dict_adapter(this);

  operator delete(v1);
}

uint64_t ctu::cf::map_adapter::getInt(ctu::cf::map_adapter *this, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  v9 = a3;
  v4 = (**this)(this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v9, v5, v7);
      v3 = v9;
    }

    CFRelease(v5);
  }

  return v3;
}

uint64_t ctu::cf::assign(ctu::cf *this, CFTypeRef cf, const __CFNumber *a3)
{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -1431655766;
  result = CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -1;
  result = CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  result = CFNumberGetValue(cf, kCFNumberLongLongType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -21846;
  result = CFNumberGetValue(cf, kCFNumberShortType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -86;
  result = CFNumberGetValue(cf, kCFNumberCharType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  result = CFNumberGetValue(cf, kCFNumberLongType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -1;
  result = CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  result = CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  result = CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
  if (result)
  {
    *this = valuePtr;
    return 1;
  }

  return result;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || valuePtr >= 0x100000000)
  {
    return 0;
  }

  *this = valuePtr;
  return 1;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || valuePtr >= 0x10000)
  {
    return 0;
  }

  *this = valuePtr;
  return 1;
}

{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || valuePtr >= 256)
  {
    return 0;
  }

  *this = valuePtr;
  return 1;
}

const void *ctu::cf::map_adapter::copyCFArrayRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

const void *ctu::cf::map_adapter::copyCFDataRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFDataGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void ___ZN3ctu15XpcServerHelper13startListenerINS_9XpcServerEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = a1[5];
  if (v8)
  {
    v9 = MEMORY[0x1AC581B70](a2);
    v10 = MEMORY[0x1E69E9E68];
    if (v9 != MEMORY[0x1E69E9E68])
    {
      if (v9 == MEMORY[0x1E69E9E98] && *v5 == a1[7])
      {
        v14 = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
          v14 = a2;
        }

        ctu::XpcServer::handleListenerError(v8, &v14);
        xpc_release(a2);
      }

      goto LABEL_22;
    }

    if (a2)
    {
      xpc_retain(a2);
      v15 = a2;
      v11 = a2;
    }

    else
    {
      v11 = xpc_null_create();
      v15 = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_17;
      }
    }

    if (MEMORY[0x1AC581B70](v11) == v10)
    {
      xpc_retain(v11);
      v12 = v11;
      goto LABEL_18;
    }

    v12 = xpc_null_create();
LABEL_17:
    v15 = v12;
LABEL_18:
    v13 = ctu::XpcServer::handleNewClient(v8, &v15);
    xpc_release(v12);
    v15 = 0;
    xpc_release(v11);
    if (!v13)
    {
      xpc_connection_cancel(a2);
    }
  }

LABEL_22:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1A90EA190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  xpc_release(v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ctu::basename(std::string::size_type a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v4;
  *&__p[16] = v4;
  *v5 = v4;
  ctu::path_split(a1, a2, v5);
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(a3, *&__p[8], *&__p[16]);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *&__p[8];
    a3->__r_.__value_.__r.__words[2] = *&__p[24];
  }

  if ((__p[7] & 0x80000000) != 0)
  {
    operator delete(v5[0]);
  }
}

BOOL ctu::XpcServer::handleNewClient(uint64_t a1, void **a2)
{
  v4 = *a2;
  object = v4;
  aBlock = 0xAAAAAAAAAAAAAAAALL;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 8))(&aBlock, a1, &object);
  xpc_release(object);
  object = 0;
  v5 = aBlock;
  if (aBlock)
  {
    v6 = *a2;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      dispatch_retain(*(a1 + 24));
    }

    std::shared_ptr<ctu::XpcServer>::shared_ptr[abi:ne200100]<ctu::XpcServer,0>(&handler, (a1 + 8));
    v9 = handler;
    v8 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (aBlock)
    {
      v10 = _Block_copy(aBlock);
    }

    else
    {
      v10 = 0;
    }

    handler = MEMORY[0x1E69E9820];
    v16 = 1174405120;
    v17 = ___ZNK3ctu15XpcServerHelper12acceptClientINS_9XpcServerEN8dispatch5blockIU13block_pointerFvN3xpc10connectionENS5_4dictEEEEEEvS6_NS3_5queueENSt3__18weak_ptrIT_EET0__block_invoke;
    v18 = &__block_descriptor_tmp_6_1;
    v19 = v9;
    v20 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v6;
    if (v10)
    {
      v11 = _Block_copy(v10);
    }

    else
    {
      v11 = 0;
    }

    v22 = v11;
    xpc_connection_set_event_handler(v6, &handler);
    xpc_connection_set_target_queue(v6, v7);
    xpc_connection_resume(v6);
    if (v22)
    {
      _Block_release(v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v10)
    {
      _Block_release(v10);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    if (v7)
    {
      dispatch_release(v7);
    }

    xpc_release(v6);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  return v5 != 0;
}

void sub_1A90EA4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  xpc_release(v18);
  if (a10)
  {
    _Block_release(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  memset(a3, 170, 24);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

std::string *anonymous namespace::XpcDescriptionGenerator::describe_uuid(std::string **this, xpc_object_t xuuid)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v9[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  *v9 = v3;
  bytes = xpc_uuid_get_bytes(xuuid);
  uuid_unparse_lower(bytes, &v8);
  v5 = strlen(&v8);
  result = std::string::append(*this, &v8, v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ctu::cf::assign(ctu::cf *this, CFTypeRef cf, const __CFBoolean *a3)
{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFBooleanGetTypeID())
  {
    return 0;
  }

  *this = CFBooleanGetValue(cf) != 0;
  return 1;
}

void ___ZNK3ctu15XpcServerHelper12acceptClientINS_9XpcServerEN8dispatch5blockIU13block_pointerFvN3xpc10connectionENS5_4dictEEEEEEvS6_NS3_5queueENSt3__18weak_ptrIT_EET0__block_invoke(uint64_t a1, xpc_object_t a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = MEMORY[0x1AC581B70](a2);
    v9 = MEMORY[0x1E69E9E80];
    if (v8 != MEMORY[0x1E69E9E80])
    {
      if (v8 == MEMORY[0x1E69E9E98])
      {
        v10 = *(a1 + 48);
        v16 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v10 = xpc_null_create();
          v16 = v10;
        }

        v15 = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
          v15 = a2;
        }

        ctu::XpcServer::handleClientError(v7, &v16, &v15);
        xpc_release(a2);
        xpc_release(v10);
      }

      goto LABEL_30;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      xpc_retain(*(a1 + 48));
      if (a2)
      {
LABEL_11:
        xpc_retain(a2);
        v17 = a2;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = xpc_null_create();
      if (a2)
      {
        goto LABEL_11;
      }
    }

    a2 = xpc_null_create();
    v17 = a2;
    if (!a2)
    {
      v12 = xpc_null_create();
      a2 = 0;
      goto LABEL_23;
    }

LABEL_14:
    if (MEMORY[0x1AC581B70](a2) == v9)
    {
      xpc_retain(a2);
      v12 = a2;
LABEL_24:
      v13 = *(a1 + 56);
      if (v13)
      {
        v14 = _Block_copy(v13);
      }

      else
      {
        v14 = 0;
      }

      dispatch::block<void({block_pointer})(xpc::connection,xpc::dict)>::operator()<xpc::connection&,xpc::dict&>(v14, v11, &v17);
      if (v14)
      {
        _Block_release(v14);
      }

      xpc_release(v12);
      v17 = 0;
      xpc_release(a2);
      xpc_release(v11);
      goto LABEL_30;
    }

    v12 = xpc_null_create();
LABEL_23:
    v17 = v12;
    goto LABEL_24;
  }

LABEL_30:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1A90EA994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  xpc_release(v13);
  xpc_release(v14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(xpc::connection,xpc::dict)>::operator()<xpc::connection&,xpc::dict&>(uint64_t a1, xpc_object_t object, void **a3)
{
  v7 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v5 = *a3;
  objecta = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    objecta = xpc_null_create();
  }

  (*(a1 + 16))(a1, &v7, &objecta);
  xpc_release(objecta);
  objecta = 0;
  xpc_release(v7);
}

void sub_1A90EAAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t xpc::bridge@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _CFXPCCreateCFObjectFromXPCObject();
  *a2 = result;
  return result;
}

uint64_t ctu::OsLogContext::OsLogContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 8), (a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v6);
  return a1;
}

{
  *a1 = *a2;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 8), (a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v6);
  return a1;
}

void *__copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c70_ZTSN8dispatch5blockIU13block_pointerFvN3xpc10connectionENS1_4dictEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

uint64_t xpc::is_logically_false(xpc_object_t *a1)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9ED0])
  {
    return 1;
  }

  v2 = MEMORY[0x1AC581B70](*a1);
  v3 = *a1;
  if (v2 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v3);
  }

  else
  {
    v4 = MEMORY[0x1AC581B70](v3);
    v5 = *a1;
    if (v4 == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v5);
    }

    else
    {
      v6 = MEMORY[0x1AC581B70](v5);
      v7 = *a1;
      if (v6 == MEMORY[0x1E69E9E58])
      {
        return !xpc_BOOL_get_value(v7);
      }

      v8 = MEMORY[0x1AC581B70](v7);
      v9 = *a1;
      if (v8 == MEMORY[0x1E69E9E70])
      {
        value = xpc_data_get_length(v9);
      }

      else
      {
        v10 = MEMORY[0x1AC581B70](v9);
        v11 = *a1;
        if (v10 == MEMORY[0x1E69E9F10])
        {
          value = xpc_string_get_length(v11);
        }

        else
        {
          v12 = MEMORY[0x1AC581B70](v11);
          v13 = *a1;
          if (v12 == MEMORY[0x1E69E9E50])
          {
            value = xpc_array_get_count(v13);
          }

          else
          {
            if (MEMORY[0x1AC581B70](v13) != MEMORY[0x1E69E9E80])
            {
              return 0;
            }

            value = xpc_dictionary_get_count(*a1);
          }
        }
      }
    }
  }

  return value == 0;
}

uint64_t ctu::XpcClient::XpcClient(uint64_t a1, __int128 *a2, NSObject **a3, NSObject **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = *a3;
  *(a1 + 24) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  *(a1 + 32) = *a4;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *a1 = &unk_1F1CB5CF8;
  *(a1 + 40) = 0;
  *(a1 + 40) = xpc_null_create();
  v9 = *a2;
  *(a1 + 64) = *(a2 + 2);
  *(a1 + 48) = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  return a1;
}

void ctu::path_split(std::string::size_type a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v35[0] = a1;
  v35[1] = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v6 = 0;
  p_size = &v32.__r_.__value_.__l.__size_;
  while (v6[a1] == 47)
  {
    if (a2 == ++v6)
    {
      goto LABEL_18;
    }
  }

  if (v6 == -1)
  {
LABEL_18:
    ctu::llvm::StringRef::operator std::string(v35, &v32);
    std::string::basic_string[abi:ne200100]<0>(&v36, "");
    *a3 = v32;
    *(a3 + 24) = v36;
    *(a3 + 40) = v37;
    return;
  }

  memset(&__s, 170, sizeof(__s));
  if (v6 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6;
  }

  v32.__r_.__value_.__r.__words[0] = a1;
  v32.__r_.__value_.__l.__size_ = v8;
  ctu::llvm::StringRef::operator std::string(&v32.__r_.__value_.__l.__data_, &__s);
  v9 = (a1 + v8);
  v10 = &a2[-v8];
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v12 = a2 >= v6 ? v6 : a2;
  v13 = (a2 - v12);
  v14 = &v12[a1];
  while (v14[v11] != 47)
  {
    if (v13 == ++v11)
    {
      goto LABEL_25;
    }
  }

  if (v11 == -1)
  {
LABEL_25:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__s.__r_.__value_.__l.__size_)
      {
        std::string::__init_copy_ctor_external(&v32, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        goto LABEL_30;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      v32 = __s;
LABEL_30:
      v33[0] = v9;
      v33[1] = v10;
      *a3 = v32;
      memset(&v32, 0, sizeof(v32));
      ctu::llvm::StringRef::operator std::string(v33, a3 + 24);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      v19 = v32.__r_.__value_.__r.__words[0];
      goto LABEL_59;
    }

    v32.__r_.__value_.__r.__words[0] = "";
    v32.__r_.__value_.__l.__size_ = v9;
    v32.__r_.__value_.__r.__words[2] = v10;
    std::string::basic_string[abi:ne200100]<0>(a3, "");
    ctu::llvm::StringRef::operator std::string(&v32.__r_.__value_.__l.__size_, a3 + 24);
    goto LABEL_60;
  }

  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  v15 = &a2[a1 - 1];
  v16 = -1;
  v17 = v10;
  while (v17)
  {
    --v17;
    v18 = *v15--;
    ++v16;
    if (v18 == 47)
    {
      v32.__r_.__value_.__r.__words[0] = v9;
      v32.__r_.__value_.__l.__size_ = v17;
      v32.__r_.__value_.__r.__words[2] = &a2[a1 - v16];
      p_size = v33;
      v10 = v16;
      goto LABEL_34;
    }
  }

  v32.__r_.__value_.__r.__words[2] = 0;
  v33[0] = 0;
  v32.__r_.__value_.__r.__words[0] = v9;
LABEL_34:
  *p_size = v10;
  ctu::llvm::StringRef::operator std::string(&v32.__r_.__value_.__l.__data_, &v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v36;
  v31 = v37;
  ctu::llvm::StringRef::operator std::string(&v32.__r_.__value_.__r.__words[2], &v36);
  v20 = v36;
  v21 = SHIBYTE(v37);
  v22 = __p[0];
  *v29 = v37;
  *&v29[3] = *(&v37 + 3);
  if (v31 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if (v31 >= 0)
  {
    v24 = HIBYTE(v31);
  }

  else
  {
    v24 = __p[1];
  }

  v25 = v24 + 1;
  do
  {
    v26 = v25 - 1;
    if (v25 == 1)
    {
      goto LABEL_52;
    }

    v27 = (v25--)[v23 - 2];
  }

  while (v27 == 47);
  if (!v26)
  {
    goto LABEL_52;
  }

  v28 = v26 - 1;
  if (v31 < 0)
  {
    if (__p[1] > v28)
    {
      __p[1] = v26;
      goto LABEL_51;
    }

LABEL_62:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 >= HIBYTE(v31))
  {
    goto LABEL_62;
  }

  HIBYTE(v31) = v26;
  v22 = __p;
LABEL_51:
  v26[v22] = 0;
LABEL_52:
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s.__r_.__value_.__l.__data_, __p, &v32);
  *a3 = v32;
  memset(&v32, 0, sizeof(v32));
  if (v21 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 24), v20, *(&v20 + 1));
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    operator delete(v20);
  }

  else
  {
    *(a3 + 24) = v20;
    *(a3 + 40) = *v29;
    *(a3 + 43) = *&v29[3];
    *(a3 + 47) = v21;
  }

  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  v19 = __p[0];
LABEL_59:
  operator delete(v19);
LABEL_60:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1A90EB124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestModuleState::sendRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a1[7];
  if (v6 && ((*(*v6 + 32))(v6) & 1) != 0)
  {
    v9 = a1[7];
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v22 = xpc_string_create(v10);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    v11 = a1[1];
    if (!v11 || (v12 = *a1, (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    v15 = std::__shared_weak_count::lock(v14);
    v16 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v14);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v14);
      v12 = 0;
    }

    v20 = v12;
    v21 = v16;
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v24, a4);
    v26 = 0;
    v18 = operator new(0x28uLL);
    *v18 = &unk_1F1CB8D20;
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v18 + 1), v24);
    v26 = v18;
    (*(*v9 + 80))(v9, &v22, a3, &v20, a1 + 2, v25);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v24);
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    xpc_release(v22);
  }

  else
  {
    object = xpc_null_create();
    v17 = *(a4 + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v17 + 48))(v17, &object);
    xpc_release(object);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1A90EB418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, xpc_object_t object, xpc_object_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ctu::cf::assign(void **a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDataGetTypeID())
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(cf);
  v6 = CFDataGetBytePtr(cf);
  v7 = &v6[CFDataGetLength(cf)];
  v8 = v7 - BytePtr;
  v9 = a1[2];
  v10 = *a1;
  if (v9 - *a1 >= v7 - BytePtr)
  {
    v16 = a1[1];
    v17 = v16 - v10;
    if (v16 - v10 >= v8)
    {
      if (v7 != BytePtr)
      {
        memmove(*a1, BytePtr, v8);
      }

      v13 = &v10[v8];
    }

    else
    {
      v18 = &BytePtr[v17];
      if (v16 != v10)
      {
        memmove(*a1, BytePtr, v17);
        v16 = a1[1];
      }

      v19 = v16;
      if (v18 != v7)
      {
        v19 = v16;
        v20 = v16;
        do
        {
          v21 = *v18++;
          *v20++ = v21;
          ++v19;
        }

        while (v18 != v7);
      }

      v13 = v19;
    }
  }

  else
  {
    if (v10)
    {
      a1[1] = v10;
      operator delete(v10);
      v9 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = 2 * v9;
    if (2 * v9 <= v8)
    {
      v11 = v7 - BytePtr;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v12);
    v13 = a1[1];
    while (BytePtr != v7)
    {
      v14 = *BytePtr++;
      *v13++ = v14;
    }
  }

  a1[1] = v13;
  return 1;
}

uint64_t TelephonyRadiosGetRadio()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  return dword_1EB38254C;
}

void ctu::rest::RestDispatchConnector::send_with_reply(uint64_t a1, char *a2, void **a3, void **a4, std::__shared_weak_count **a5, NSObject **a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a5[1];
  v15[0] = *a5;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v16, a7);
  v18 = 0;
  v13 = operator new(0x38uLL);
  *v13 = &unk_1F1CB9AE8;
  *(v13 + 8) = *v15;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v13 + 24), v16);
  v18 = v13;
  ctu::rest::RestDispatchConnector::send_with_reply(a1, a2, a3, a4, a6, v17);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v16);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A90EB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&a16);
  ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)const::$_0::~$_0(&a9);
  _Unwind_Resume(a1);
}

uint64_t TelephonyRadiosGetRadioVendor()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  return sTelephonyRadioVendor;
}

void ctu::rest::RestDispatchConnector::get(uint64_t a1, void **a2, void **a3, std::__shared_weak_count **a4, NSObject **a5, uint64_t a6)
{
  v6 = a4[1];
  v7[0] = *a4;
  v7[1] = v6;
  *a4 = 0;
  a4[1] = 0;
  ctu::rest::RestDispatchConnector::send_with_reply(a1, "get", a2, a3, v7, a5, a6);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1A90EB868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::cf::assign(std::string *a1, __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {

    return ctu::cf::assign(a1, cf);
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFErrorGetTypeID())
  {

    return ctu::cf::assign(a1, cf);
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFURLGetTypeID())
  {
    return 0;
  }

  return ctu::cf::assign(a1, cf, 0);
}

uint64_t TelephonyUtilIsOversteerEnabled()
{
  if (qword_1EB382890 != -1)
  {
    dispatch_once(&qword_1EB382890, &__block_literal_global_20);
  }

  return byte_1EB382874;
}

void ctu::rest::RestDispatchConnector::send_with_reply(uint64_t a1, char *string, void **a3, void **a4, NSObject **a5, uint64_t a6)
{
  v36[4] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 64) || !*(a1 + 72) || !*(a1 + 56))
  {
    _rest_api_misuse("Attempted to send message on a disconnected connector.");
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  v11 = xpc_string_create(string);
  v36[0] = v11;
  if (!v11)
  {
    v11 = xpc_null_create();
    v36[0] = v11;
  }

  v12 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v12 = *v12;
  }

  v13 = xpc_string_create(v12);
  v29 = v13;
  if (!v13)
  {
    v13 = xpc_null_create();
    v29 = v13;
  }

  ctu::rest::createRestMessage(v36, &v29, a3, a4, &object);
  xpc_release(v13);
  xpc_release(v11);
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(a1 + 16);
    if (!v15 || (v16 = *(a1 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v16 + 24;
    if (!v16)
    {
      v18 = 0;
    }

    v27 = v18;
    v28 = v17;
    v26 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v26 = xpc_null_create();
    }

    v31 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v31 = xpc_null_create();
    }

    v21 = *a5;
    v32 = v21;
    if (v21)
    {
      dispatch_retain(v21);
    }

    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v33, a6);
    v35 = 0;
    v22 = operator new(0x38uLL);
    v23 = v31;
    *v22 = &unk_1F1CB9A68;
    v22[1] = v23;
    v31 = xpc_null_create();
    v24 = v32;
    v22[2] = v32;
    if (v24)
    {
      dispatch_retain(v24);
    }

    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v22 + 3), v33);
    v35 = v22;
    (*(*v14 + 24))(v14, &v27, &v26, v34);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v34);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v33);
    if (v32)
    {
      dispatch_release(v32);
    }

    xpc_release(v31);
    v31 = 0;
    xpc_release(v26);
    v26 = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  else
  {
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v36, a6);
    v19 = *a5;
    v20 = operator new(0x20uLL);
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v20, v36);
    dispatch_async_f(v19, v20, dispatch::async<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_1>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_1,std::default_delete<std::unique_ptr>>)::{lambda(void *)#1}::__invoke);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v36);
  }

  xpc_release(object);
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1A90EBC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::rest::RestConnectorSink<ctu::RestDispatchListener>::handleClientMessageWithReply(uint64_t a1, __int128 *a2, xpc_object_t *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v14 = *a2;
        *a2 = 0;
        *(a2 + 1) = 0;
        object = *a3;
        *a3 = xpc_null_create();
        std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v15, a4);
        (*(*v11 + 32))(v11, &v14, &object, v15);
        std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v15);
        xpc_release(object);
        object = 0;
        if (*(&v14 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A90EBE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1A90EBF24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A90EBF04);
}

void sub_1A90EBF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestDispatchListener::handleClientMessageWithReply(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  *v18 = a1;
  *&v18[8] = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  object = *a3;
  *a3 = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v20, a4);
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x40uLL);
  *v10 = *v18;
  v11 = *&v18[16];
  v12 = object;
  *&v18[8] = 0;
  *&v18[16] = 0;
  v10[2] = v11;
  v10[3] = v12;
  object = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v10 + 4), v20);
  v13 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v10;
  v14[1] = v7;
  v14[2] = v9;
  v16 = 0;
  v17 = 0;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>(ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v16);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v20);
  xpc_release(object);
  object = 0;
  if (*&v18[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v18[16]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A90EC0B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::XpcClient::setServer_sync(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  v4 = a1[3];
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  ctu::XpcClient::setServer_sync(a1, &v6, &v5);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc_release(v3);
}

void sub_1A90EC170(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

void ctu::XpcClient::setServer_sync(void *a1, void *a2, NSObject **a3)
{
  v6 = MEMORY[0x1AC581B70](*a2);
  v7 = MEMORY[0x1E69E9E68];
  if (v6 == MEMORY[0x1E69E9E68])
  {
    v8 = *a2;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v8 = xpc_null_create();
    }

    v9 = *a3;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v10 = a1[2];
    if (!v10 || (v11 = a1[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v19 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v19 = xpc_null_create();
    }

    v14 = (a1 + 5);
    ctu::XpcClientHelper::setServer_internal(v14, &v19);
    xpc_release(v19);
    if (MEMORY[0x1AC581B70](*v14) == v7)
    {
      v15 = *v14;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 1174405120;
      handler[2] = ___ZN3ctu15XpcClientHelper9setServerINS_9XpcClientEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
      handler[3] = &__block_descriptor_tmp_7_0;
      handler[4] = v14;
      handler[5] = v11;
      v17 = v13;
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = v15;
      xpc_connection_set_event_handler(v15, handler);
      xpc_connection_set_target_queue(v15, v9);
      xpc_connection_resume(v15);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    std::__shared_weak_count::__release_weak(v13);
    if (v9)
    {
      dispatch_release(v9);
    }

    xpc_release(v8);
  }

  else
  {

    ctu::XpcClientHelper::setServer(a1 + 5);
  }
}

void sub_1A90EC400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v18);
  if (v17)
  {
    dispatch_release(v17);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

ctu::OsLogContext *ctu::OsLogContext::OsLogContext(ctu::OsLogContext *this, const char *subsystem, const char *category)
{
  *this = category;
  *(this + 1) = os_log_create(subsystem, category);
  return this;
}

{
  *this = category;
  *(this + 1) = os_log_create(subsystem, category);
  return this;
}

void ctu::XpcClientHelper::setServer_internal(void *a1, void *a2)
{
  v3 = *a2;
  *a2 = *a1;
  *a1 = v3;
  if (MEMORY[0x1AC581B70](*a2) == MEMORY[0x1E69E9E68])
  {
    v4 = *a2;
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 1174405120;
    barrier[2] = ___ZN3ctu15XpcClientHelper18setServer_internalEN3xpc10connectionE_block_invoke;
    barrier[3] = &__block_descriptor_tmp_15;
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc_connection_send_barrier(v4, barrier);
    xpc_release(object);
  }
}

uint64_t *ctu::OsLogContext::operator=(uint64_t *a1, void **a2)
{
  v8 = *a2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v9, a2 + 1);
  v4 = a2[1];
  a2[1] = 0;
  v11 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  v5 = v8;
  v6 = a1[1];
  v8 = *a1;
  *a1 = v5;
  a1[1] = 0;
  if (&v8 != a1)
  {
    v11 = 0;
    a1[1] = v9;
    v9 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  }

  v10 = 0;
  v11 = v9;
  v9 = v6;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v10);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  return a1;
}

{
  v6 = *a2;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(&v7, a2 + 1);
  v3 = v6;
  v4 = a1[1];
  v6 = *a1;
  *a1 = v3;
  a1[1] = 0;
  if (&v6 != a1)
  {
    v9 = 0;
    a1[1] = v7;
    v7 = 0;
    ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  }

  v8 = 0;
  v9 = v7;
  v7 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v9);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v8);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v7);
  return a1;
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void **dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>(ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if (xpc_dictionary_get_value(*(v1 + 24), "r"))
  {
    v17[0] = v1 + 24;
    v17[1] = "a";
    xpc::dict::object_proxy::operator xpc::object(v17, &object);
    memset(v18, 0, sizeof(v18));
    xpc::dyn_cast_or_default(&object, v18, &__p);
    ResourceConnection_sync = ctu::RestDispatchListener::getOrCreateResourceConnection_sync(v2, (v1 + 8), &__p);
    v4 = *ResourceConnection_sync;
    v5 = ResourceConnection_sync[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(object);
    v6 = v2[6];
    object = v4;
    v15 = v5;
    v7 = *(v1 + 24);
    v13 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v13 = xpc_null_create();
    }

    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v17, v1 + 32);
    v19 = 0;
    v8 = operator new(0x28uLL);
    *v8 = &unk_1F1CB9620;
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v8 + 1), v17);
    v19 = v8;
    (*(*v6 + 24))(v6, &object, &v13, v18);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v18);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v17);
    xpc_release(v13);
    v13 = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  std::unique_ptr<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&v12);
  result = std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90EC830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, xpc_object_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *dispatch::async<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1,std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v2 = a1[2];
  v3 = a1 + 3;
  v23 = a1 + 3;
  object = "o";
  xpc::dict::object_proxy::operator xpc::object(&v23, v26);
  v5 = ctu::rest::asOperation(v26, v4);
  xpc_release(v26[0]);
  if (v5 == 6)
  {
    v6 = xpc_null_create();
    v23 = v6;
    ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)const::$_0::operator()((a1 + 4), &v23);
    xpc_release(v6);
  }

  else
  {
    v8 = *(v2 + 72);
    v7 = *(v2 + 80);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v3;
    object = "o";
    xpc::dict::object_proxy::operator xpc::object(&v23, v26);
    v10 = ctu::rest::asOperation(v26, v9);
    xpc_release(v26[0]);
    if (v10 == 2)
    {
      v21[0] = v3;
      v21[1] = "r";
      xpc::dict::object_proxy::operator xpc::object(v21, &v22);
      v19[0] = v3;
      v19[1] = "v";
      xpc::dict::object_proxy::operator xpc::object(v19, &v20);
      v11 = a1[4];
      v23 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        v23 = xpc_null_create();
      }

      v12 = a1[5];
      object = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v25, (a1 + 6));
      v27 = 0;
      v13 = operator new(0x38uLL);
      v14 = v23;
      *v13 = &unk_1F1CB9B68;
      v13[1] = v14;
      v23 = xpc_null_create();
      v15 = object;
      v13[2] = object;
      if (v15)
      {
        dispatch_retain(v15);
      }

      std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v13 + 3), v25);
      v27 = v13;
      (*(*v8 + 24))(v8, &v22, &v20, v26);
      std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v26);
      std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v25);
      if (object)
      {
        dispatch_release(object);
      }

      xpc_release(v23);
      v23 = 0;
      xpc_release(v20);
      xpc_release(v22);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  result = std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&>>::~unique_ptr[abi:ne200100](&v18);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90ECB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, dispatch_object_t a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void *std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB54A8;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F1CB9A68;
  v3 = *(a1 + 8);
  v2[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v2[1] = xpc_null_create();
  }

  v4 = *(a1 + 16);
  v2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 3), a1 + 24);
  return v2;
}

void sub_1A90ECD48(_Unwind_Exception *a1)
{
  v4 = v1[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc::dict::~dict(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::handleGetMessage(uint64_t a1, xpc_object_t *a2, void **a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if (v5 && (v9 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v10 = v9;
    v11 = *(a1 + 8);
    if (v11)
    {
      std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v15, a4);
      Message = ctu::RestModuleState::handleGetMessage(v11, a2, a3, v15);
      std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v15);
    }

    else
    {
      Message = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    Message = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return Message;
}

void sub_1A90ECE48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v3 = v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v2 = &unk_1F1CB9AE8;
  v2[1] = v5;
  v2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 3), a1 + 24);
  return v3;
}

void sub_1A90ECED4(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL ctu::RestModuleState::handleGetMessage(uint64_t a1, xpc_object_t *a2, void **a3, uint64_t a4)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  memset(&__p, 170, sizeof(__p));
  memset(v18, 0, sizeof(v18));
  xpc::dyn_cast_or_default(a2, v18, &__p);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v18[0] = 0xAAAAAAAAAAAAAAAALL;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>::find(v18, *(a1 + 96), &__p.__r_.__value_.__l.__data_);
    v8 = **(a1 + 96) + 56 * *(*(a1 + 96) + 8);
    v9 = v18[0];
    v10 = v18[0] != v8;
    if (v18[0] != v8)
    {
      v11 = *a3;
      object = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        object = xpc_null_create();
      }

      ctu::rest::createAutoReplyWithAction(a4, &v14);
      v12 = *(v9 + 48);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, &object, &v14);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      xpc_release(object);
      object = 0;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_17:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v10;
}

void sub_1A90ED050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F1CB8D20;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 1), a1 + 8);
  return v2;
}

void ctu::rest::createAutoReplyWithAction(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  v4->__shared_owners_ = 0;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_1F1CB4E80;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](&v4[1], a1);
  v4[2].__shared_owners_ = xpc_null_create();
  *a2 = v4 + 56;
  a2[1] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

uint64_t std::__shared_ptr_emplace<ctu::rest::createAutoReplyWithAction(std::function<void ()(xpc::object)> &&)::AutoReplier,std::allocator<std::function<void ()(xpc::object)> &&>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 48))
  {
    object = *(a1 + 56);
    *(a1 + 56) = xpc_null_create();
    v2 = *(a1 + 48);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v2 + 48))(v2, &object);
    xpc_release(object);
    object = 0;
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  return std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v4 = *a2;
  v3 = v4;
  *a2 = xpc_null_create();
  ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)const::$_0::operator()(a1 + 8, &v4);
  xpc_release(v3);
}

uint64_t ctu::RequestRestResource::handleRestMessage_GET(ctu::RequestRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v11, 170, sizeof(v11));
  v6 = *(a3 + 1);
  *object = *a3;
  v10 = v6;
  if (SLODWORD(v11[0]) <= 2)
  {
    if (LODWORD(v11[0]) == 1)
    {
      ctu::RequestRestResource::handleMessage_Root_GET(this, a2);
      return 1;
    }

    if (LODWORD(v11[0]) == 2)
    {
      ctu::RequestRestResource::handleMessage_RootDumpState_GET(this, a2);
      return 1;
    }

    goto LABEL_8;
  }

  if (LODWORD(v11[0]) != 3)
  {
    if (LODWORD(v11[0]) == 4)
    {
      ctu::RequestRestResource::handleMessage_Resource_Provider_GET(this, a2, v7, v11[1], v11[2]);
      return 1;
    }

LABEL_8:
    object[0] = xpc_null_create();
    (*(*a2 + 32))(a2, object);
    xpc_release(object[0]);
    return 1;
  }

  return ctu::RequestRestResource::handleMessage_Resource_GET(this, a2, a3, v11[1], v11[2]);
}

void std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = xpc_null_create();
  v12 = v3;
  v5 = MEMORY[0x1E69E9E80];
  if (v3 && MEMORY[0x1AC581B70](v3) == v5)
  {
    xpc_retain(v3);
    v6 = v3;
  }

  else
  {
    v6 = xpc_null_create();
    v12 = v6;
  }

  if (MEMORY[0x1AC581B70](v6) == v5)
  {
    object[0] = &v12;
    object[1] = "v";
    xpc::dict::object_proxy::operator xpc::object(object, &v11);
    v7 = v11;
    v11 = v4;
    xpc_release(v4);
    v11 = 0;
    v6 = v12;
    v4 = v7;
  }

  xpc_release(v6);
  object[0] = v4;
  v8 = xpc_null_create();
  v9 = *(a1 + 32);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v9, object);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v8);
  xpc_release(v3);
}

void sub_1A90ED528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v13);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)const::$_0::operator()(uint64_t a1, void **a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v11 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v13, a1 + 16);
  v6 = *(a1 + 8);
  v7 = operator new(0x30uLL);
  *v7 = v11;
  v11 = xpc_null_create();
  v7[1] = object;
  object = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v7 + 2), v13);
  v9 = 0;
  v10 = 0;
  dispatch_async_f(v6, v7, dispatch::async<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v9);
  std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v10);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v13);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A90ED6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t **std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](xpc_object_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((v2 + 2));
    xpc_release(v2[1]);
    v2[1] = 0;
    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

uint64_t ctu::RequestRestResource::handleMessage_Resource_GET(uint64_t a1, uint64_t a2, __int128 *a3, const void *a4, const void *a5)
{
  v23[0] = a4;
  v23[1] = a5;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a2 + 40))(&v21, a2);
  if (v21)
  {
    ctu::llvm::StringRef::operator std::string(v23, v24);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v18, (a1 + 8), v24);
    v8 = v18;
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v8 != *(a1 + 8) + 32 * *(a1 + 16) && (v9 = *(v8 + 24), (v10 = v9[1]) != 0) && (v11 = std::__shared_weak_count::lock(v10)) != 0)
    {
      v12 = v11;
      v13 = *v9;
      if (v13)
      {
        (*(*a2 + 8))(&v20, a2);
        v18 = *a3;
        ctu::llvm::StringRef::operator std::string(&v18, v24);
        if (v25 >= 0)
        {
          v14 = v24;
        }

        else
        {
          v14 = v24[0];
        }

        v19 = xpc_string_create(v14);
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        (*(*a2 + 24))(&object, a2);
        v15 = (*(*a2 + 56))(a2, v13, &v20, &v19, &object, &v21);
        xpc_release(object);
        xpc_release(v19);
        v19 = 0;
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        xpc_release(v20);
      }

      else
      {
        v15 = 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  return v15;
}

void sub_1A90ED9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  xpc_release(object);
  xpc_release(a14);
  if (*(v18 - 33) < 0)
  {
    operator delete(*(v18 - 56));
  }

  xpc_release(a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));

  operator delete(a1);
}

uint64_t *std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v2 + 48);
    v3 = *(v2 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }

    xpc_release(*(v2 + 32));
    *(v2 + 32) = 0;
    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
  }

  return a1;
}

xpc_object_t ctu::DictRestResourceContext::getRestAuthor@<X0>(ctu::DictRestResourceContext *this@<X0>, void *a2@<X8>)
{
  v3[0] = *(this + 1);
  v3[1] = "a";
  return xpc::dict::object_proxy::operator xpc::object(v3, a2);
}

void ctu::rest::createReplyFromRequestWithValue(xpc_object_t *this@<X0>, const xpc::dict *a2@<X1>, void *a3@<X8>)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createReplyFromRequest(this, a2, &v7);
  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E80])
  {
    ctu::rest::updateReplyValue(&v7, a2);
    *a3 = v7;
    v6 = xpc_null_create();
    v7 = v6;
  }

  else
  {
    *a3 = xpc_null_create();
    v6 = v7;
  }

  xpc_release(v6);
}

void std::__function::__alloc_func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

uint64_t ctu::ReplyCallbackRestResourceContext::sendGet(uint64_t a1, uint64_t a2, void **a3, void **a4, void **a5, uint64_t *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  object = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createGet(a3, a4, a5, &object);
  v10 = *a6;
  v9 = a6[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 31);
    xpc::object::to_string(&object, &__p);
    v17 = v16 >= 0 ? a2 + 8 : v15;
    v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v25 = v17;
    v26 = 2048;
    v27 = a2;
    v28 = 2080;
    v29 = v18;
    _os_log_debug_impl(&dword_1A90E3000, v11, OS_LOG_TYPE_DEBUG, "Sending GET to %s (%p): %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v21 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v21 = xpc_null_create();
  }

  v12 = *(a1 + 16);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1174405120;
  v19[2] = ___ZN3ctu32ReplyCallbackRestResourceContext7sendGetERKNS_22RestResourceConnectionERKN3xpc6objectES7_S7_RKNSt3__110shared_ptrIS5_EE_block_invoke;
  v19[3] = &__block_descriptor_tmp_20;
  v19[4] = v10;
  v20 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a2 + 24))(a2, &v21, v12, v19);
  xpc_release(v21);
  v21 = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  xpc_release(object);
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A90EDE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

xpc_object_t **dispatch::async<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  ctu::rest::createReplyFromRequestWithValue(a1, (a1 + 8), &object);
  v2 = object;
  v7 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v7);
  xpc_release(v7);
  v7 = 0;
  xpc_release(v2);
  return std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void ctu::rest::createGet(void **a1@<X0>, void **a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  v8 = xpc_string_create("get");
  v9 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v9 = v8;
  }

  ctu::rest::createRestMessage(&v9, a1, a2, a3, a4);
  xpc_release(v8);
}

void ctu::rest::createReplyFromRequest(xpc_object_t *this@<X0>, const xpc::dict *a2@<X1>, _anonymous_namespace_ *a3@<X8>)
{
  v5 = MEMORY[0x1AC581B70](*this, a2);
  v6 = MEMORY[0x1E69E9E80];
  if (v5 != MEMORY[0x1E69E9E80])
  {
    *a3 = xpc_null_create();
    return;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    *a3 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    *a3 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x1AC581B70](v8) != v6)
  {
    v9 = xpc_null_create();
LABEL_10:
    *a3 = v9;
    goto LABEL_11;
  }

  xpc_retain(v8);
LABEL_11:
  xpc_release(v8);
}

void anonymous namespace::copyKeyIfPresent(_anonymous_namespace_ *this, xpc_object_t *a2, const xpc::dict *key, const char *a4)
{
  v8[0] = a2;
  v8[1] = key;
  if (xpc_dictionary_get_value(*a2, key))
  {
    v6[0] = this;
    v6[1] = key;
    xpc::dict::object_proxy::operator=(v6, v8, &object);
    xpc_release(object);
  }
}

void ctu::DispatchRestResourceConnection::sendWithReply(uint64_t a1, void **a2, NSObject *a3, const void *a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 32);
      if (!v11)
      {
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_14;
      }

      v16 = a3;
      if (a3)
      {
        dispatch_retain(a3);
      }

      v12 = *a2;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
        if (a4)
        {
LABEL_8:
          v13 = _Block_copy(a4);
          goto LABEL_11;
        }
      }

      else
      {
        object = xpc_null_create();
        if (a4)
        {
          goto LABEL_8;
        }
      }

      v13 = 0;
LABEL_11:
      v17[0] = &unk_1F1CB54A8;
      v17[1] = v13;
      v17[3] = v17;
      (*(*v11 + 24))(v11, &object, &v16, v17);
      std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v17);
      xpc_release(object);
      object = 0;
      if (v16)
      {
        dispatch_release(v16);
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A90EE2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, dispatch_object_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  object = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::object(a2, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(a1, &v5, a3);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
}

uint64_t __copy_helper_block_e8_32c39_ZTSNSt3__110shared_ptrIN3xpc6objectEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ctu::rest::RestDispatchConnector::handleMessageWithReply(void *a1, void **a2, NSObject **a3, uint64_t a4)
{
  v36[5] = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v8;
  *object = v8;
  v9 = *a2;
  v28 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v28 = xpc_null_create();
  }

  v10 = *a3;
  object[0] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](&object[1], a4);
  v11 = *a2;
  v24[0] = a1;
  v24[1] = v11;
  *a2 = xpc_null_create();
  v25 = v28;
  v28 = xpc_null_create();
  v26 = object[0];
  if (object[0])
  {
    dispatch_retain(object[0]);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v27, &object[1]);
  if (!a1[7])
  {
    _rest_api_misuse("Attempted to dispatch on a connector with no queue!");
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  *v33 = *v24;
  v24[1] = xpc_null_create();
  v34 = v25;
  v25 = xpc_null_create();
  v35 = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v36, v27);
  v16 = a1[7];
  v17 = operator new(0x50uLL);
  v18 = v32;
  v19 = *v33;
  v32 = 0uLL;
  *v17 = v18;
  v17[1] = v19;
  v33[1] = xpc_null_create();
  *(v17 + 4) = v34;
  v34 = xpc_null_create();
  v20 = v35;
  *(v17 + 5) = v35;
  if (v20)
  {
    dispatch_retain(v20);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v17 + 3), v36);
  v22 = 0;
  v23 = 0;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1,std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&>>::~unique_ptr[abi:ne200100](&v22);
  std::unique_ptr<void ctu::rest::RestDispatchConnector::execute<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&)::{lambda(void)#1},std::default_delete<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1 &&>>::~unique_ptr[abi:ne200100](&v23);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v36);
  if (v35)
  {
    dispatch_release(v35);
  }

  xpc_release(v34);
  v34 = 0;
  xpc_release(v33[1]);
  v33[1] = 0;
  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v27);
  if (v26)
  {
    dispatch_release(v26);
  }

  xpc_release(v25);
  v25 = 0;
  xpc_release(v24[1]);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&object[1]);
  if (object[0])
  {
    dispatch_release(object[0]);
  }

  xpc_release(v28);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1A90EE664(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::rest::updateReplyValue(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x1AC581B70](*a2);
  v5 = *a2;
  if (v4 == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x1E69E9E28]);
    object = xpc_string_create(string);
    if (!object)
    {
      object = xpc_null_create();
    }

    v9 = a1;
    v10 = "e";
    xpc::dict::object_proxy::operator=(&v9, &object, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(object);
  }

  else
  {
    v7 = *a2;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      v7 = xpc_null_create();
    }

    v9 = a1;
    v10 = "v";
    xpc::dict::object_proxy::operator=(&v9, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
  }
}

xpc_object_t **dispatch::async<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<std::unique_ptr>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *a1;
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &object);
  xpc_release(object);
  return std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<$_0>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1A90EE87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  (*(*(a1 + 8) + 16))();
  xpc_release(v3);
}

uint64_t _TelephonyUtilDebugPrintError(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((_TelephonyUtilDebugFlags & 7) != 0)
  {
    return gDelegate(result, a2, &a9);
  }

  return result;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::operator()(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      if (a1[1])
      {
        object = v3;
        if (v3)
        {
          xpc_retain(v3);
        }

        else
        {
          object = xpc_null_create();
        }

        v7 = a1[6];
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v7 + 48))(v7, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  xpc_release(v3);
}

void sub_1A90EEA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN3ctu32ReplyCallbackRestResourceContext7sendGetERKNS_22RestResourceConnectionERKN3xpc6objectES7_S7_RKNSt3__110shared_ptrIS5_EE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v3 = MEMORY[0x1E69E9E80];
  if (object)
  {
    v4 = object;
    xpc_retain(object);
    v10 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v4) == v3)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = v10;
  if (MEMORY[0x1AC581B70](v10) == v3)
  {
    ctu::rest::getReplyValue(&v10, &v9);
    v7 = *(a1 + 32);
    v8 = *v7;
    *v7 = v9;
    v9 = v8;
    xpc_release(v8);
    v9 = 0;
    v6 = v10;
  }

  xpc_release(v6);
}

uint64_t *std::unique_ptr<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v2 + 32);
    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

xpc_object_t ctu::rest::getReplyValue@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E80])
  {
    v5[0] = a1;
    v5[1] = "v";
    return xpc::dict::object_proxy::operator xpc::object(v5, a2);
  }

  else
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t **std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((v2 + 1));
    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__110shared_ptrIN3xpc6objectEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));

  operator delete(a1);
}

void std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6 = *a2;
  *a2 = xpc_null_create();
  ctu::rest::createReplyFromRequestWithValue((a1 + 8), &v6, &object);
  v4 = object;
  v8 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v4);
  xpc_release(v3);
}

void std::__function::__alloc_func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &object);
  xpc_release(object);
  xpc_release(v3);
}

void sub_1A90EEF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = xpc_null_create();
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v10, a1 + 24);
  v4 = *(a1 + 16);
  v5 = operator new(0x28uLL);
  *v5 = object;
  object = xpc_null_create();
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v5 + 1), v10);
  v7 = 0;
  v8 = 0;
  dispatch_async_f(v4, v5, dispatch::async<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<std::unique_ptr>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<$_0>>::~unique_ptr[abi:ne200100](&v7);
  std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<$_0>>::~unique_ptr[abi:ne200100](&v8);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v10);
  xpc_release(object);
  xpc_release(v3);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A90EF0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void ctu::path_join_impl(std::string *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);

    ctu::path_join_impl(a1, __s, v4);
  }
}

void ctu::RestDispatchListener::~RestDispatchListener(ctu::RestDispatchListener *this)
{
  *this = &unk_1F1CB6C08;
  *(this + 5) = &unk_1F1CB6C48;
  boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::~vector(this + 7);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

{
  *this = &unk_1F1CB6C08;
  *(this + 5) = &unk_1F1CB6C48;
  boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::~vector(this + 7);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);

  operator delete(this);
}

void *boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 16);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 3;
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

void *ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(void *a1, void *object)
{
  *a1 = object;
  if (object)
  {
    os_retain(object);
  }

  return a1;
}

uint64_t ctu::cf_to_xpc@<X0>(void *a1@<X8>)
{
  result = _CFXPCCreateXPCObjectFromCFObject();
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

std::string *ctu::LogMessageBuffer::appendString(std::string *this, const char *__s)
{
  data = this[1].__r_.__value_.__l.__data_;
  v5 = strlen(__s);
  if (data)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(data, __s, v5);
  }

  else
  {
    std::string::append(this, __s, v5);
  }

  return this;
}

void ctu::LogMessageBuffer::vCreateWithFormat(ctu::LogMessageBuffer *this@<X0>, va_list a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  std::string::resize(a3, 0x40uLL, 0);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = vsnprintf(v7, v8, this, a2);
  v10 = v9;
  v11 = *(a3 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  if (v11 <= v9)
  {
    std::string::resize(a3, v9 + 1, 0);
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v10 = vsnprintf(v13, v14, this, a2);
  }

  std::string::resize(a3, v10, 0);
}

void ctu::LogMessageBuffer::merge(ctu::LogMessageBuffer *a1, uint64_t a2)
{
  ctu::LogMessageBuffer::str(a1);
  ctu::LogMessageBuffer::str(a2);
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

  std::string::append(a1, v5, v6);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  while (v7 != v8)
  {
    std::vector<std::string>::push_back[abi:ne200100](a1 + 32, v7);
    v7 = (v7 + 24);
  }
}

ctu::LogMessageBuffer *ctu::LogMessageBuffer::str(ctu::LogMessageBuffer *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::ostringstream::str[abi:ne200100](v2, &v5);
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v5;
    v3 = *(this + 3);
    *(this + 2) = v6;
    *(this + 3) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return this;
}

void ctu::LogMessageBuffer::~LogMessageBuffer(ctu::LogMessageBuffer *this)
{
  v3 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ctu::LogMessage::~LogMessage(void **this)
{
  ctu::LogMessage::~LogMessage(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB7558;
  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

CFPropertyListRef ctu::cf::plist_adapter::copyCFTypeRef(ctu::cf::plist_adapter *this, CFStringRef key)
{
  v2 = *(this + 1);
  if (v2)
  {
    return CFPreferencesCopyValue(key, v2, *(this + 2), *MEMORY[0x1E695E8B0]);
  }

  else
  {
    return 0;
  }
}

void ctu::cf::MakeCFString::~MakeCFString(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ctu::cf::map_adapter::getBool(ctu::cf::map_adapter *this, const __CFString *a2, char a3)
{
  v3 = a3;
  v9 = a3;
  v4 = (**this)(this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v9, v5, v7);
      v3 = v9;
    }

    CFRelease(v5);
  }

  return v3 & 1;
}

void ctu::cf::plist_adapter::~plist_adapter(ctu::cf::plist_adapter *this)
{
  *this = &unk_1F1CB6878;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  ctu::cf::plist_adapter::~plist_adapter(this);

  operator delete(v1);
}

uint64_t _TelephonyUtilDebugPrintVerbose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((_TelephonyUtilDebugFlags & 4) != 0)
  {
    return gDelegate(result, a2, &a9);
  }

  return result;
}

void ctu::hex(ctu **a1@<X0>, std::string *a2@<X8>)
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

  ctu::hex(v4, v3, a2);
}

void ctu::hex(ctu *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 >= 1)
  {
    v3 = this;
    v5 = (this + a2);
    do
    {
      if (*v3 >= 0xA0u)
      {
        v6 = (*v3 >> 4) + 87;
      }

      else
      {
        v6 = (*v3 >> 4) | 0x30;
      }

      std::string::push_back(a3, v6);
      v7 = *v3 & 0xF;
      if (v7 >= 0xA)
      {
        v8 = v7 + 87;
      }

      else
      {
        v8 = *v3 & 0xF | 0x30;
      }

      std::string::push_back(a3, v8);
      v3 = (v3 + 1);
    }

    while (v3 < v5);
  }
}

void sub_1A90EFA74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *ctu::cf::map_adapter::copyCFNumberRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFNumberGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

void ctu::cf::map_adapter::getString(uint64_t (***a1)(void)@<X0>, std::string *a2@<X2>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v5 = (**a1)(a1);
  if (v5 && (v6 = ctu::cf::assign(&__p, v5), CFRelease(v5), (v6 & 1) != 0))
  {
    v7 = 1;
    p_p = &__p;
  }

  else
  {
    v7 = 0;
    p_p = a2;
  }

  if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v7 == 0;
    v10 = &__p;
    if (v9)
    {
      v10 = a2;
    }

    std::string::__init_copy_ctor_external(a3, p_p->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *&p_p->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = p_p->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A90EFBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::OsLogLogger::OsLogLogger(ctu::OsLogLogger *this, void **a2)
{
  return ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this, a2[1]);
}

{
  return ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(this, a2[1]);
}

void **ctu::OsLogLogger::OsLogLogger(void **a1, void **a2)
{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(a1, a2);
  v4 = *a2;
  *a2 = 0;
  v6 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v6);
  return a1;
}

{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(a1, a2);
  v4 = *a2;
  *a2 = 0;
  v6 = v4;
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v6);
  return a1;
}

uint64_t ctu::Clock::now_in_nanoseconds(ctu::Clock *this)
{
  if (ctu::Clock::now_in_nanoseconds(void)::sOnce != -1)
  {
    dispatch_once(&ctu::Clock::now_in_nanoseconds(void)::sOnce, &__block_literal_global_4);
  }

  cur_time = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::Clock::now_in_nanoseconds(void)::sKern)
  {
    syslog(3, "Returning trivial time since clock service is unavailable\n");
    return 0;
  }

  if (clock_get_time(ctu::Clock::now_in_nanoseconds(void)::server, &cur_time))
  {
    syslog(3, "Failed to get time from clock service (error = %d); returning trivial time\n");
    return 0;
  }

  return cur_time.tv_nsec + 1000000000 * cur_time.tv_sec;
}

uint64_t xpc::dyn_cast_or_default(void *a1, int64_t value)
{
  v4 = MEMORY[0x1AC581B70](*a1);
  v5 = *a1;
  if (v4 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v5);
    if (value < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "dyn_cast to uint64_t requires nonnegative values");
      __cxa_throw(exception, off_1E786B420, MEMORY[0x1E69E5280]);
    }

    return value;
  }

  if (MEMORY[0x1AC581B70](v5) != MEMORY[0x1E69E9F18])
  {
    return value;
  }

  v6 = *a1;

  return xpc_uint64_get_value(v6);
}

std::string *ctu::binary@<X0>(ctu *this@<X0>, unint64_t a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if (v2)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    result = std::string::append(a2, v4, 1uLL);
    v11 = v2 > 1;
    v2 >>= 1;
  }

  while (v11);
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

  return result;
}

{
  return ctu::binary(this, a2);
}

{
  return ctu::binary(this, a2);
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if (v2)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    result = std::string::append(a2, v4, 1uLL);
    v11 = v2 > 1;
    v2 >>= 1;
  }

  while (v11);
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

  return result;
}

{
  return ctu::binary(this, a2);
}

{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if (v2)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    result = std::string::append(a2, v4, 1uLL);
    v11 = v2 > 1;
    v2 >>= 1;
  }

  while (v11);
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

  return result;
}

void sub_1A90F02B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0398(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0474(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctu::binary@<X0>(unint64_t this@<X0>, unint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if (this)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    result = std::string::append(a2, v4, 1uLL);
    v11 = this > 1;
    this >>= 1;
  }

  while (v11);
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

  return result;
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    if (this)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    result = std::string::append(a2, v4, 1uLL);
    v11 = this > 1;
    this >>= 1;
  }

  while (v11);
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

  return result;
}

void sub_1A90F054C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0624(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::binary0(ctu *this@<X0>, std::string *a2@<X8>)
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
      if (v2)
      {
        *v6 = 49;
      }

      --v6;
      v7 = v2 > 1;
      v2 >>= 1;
    }

    while (v7);
  }
}

{
  ctu::binary0(this, a2);
}

{
  ctu::binary0(this, a2);
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
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
      if (v2)
      {
        *v6 = 49;
      }

      --v6;
      v7 = v2 > 1;
      v2 >>= 1;
    }

    while (v7);
  }
}

{
  ctu::binary0(this, a2);
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x20uLL, 48);
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
      if (v2)
      {
        *v6 = 49;
      }

      --v6;
      v7 = v2 > 1;
      v2 >>= 1;
    }

    while (v7);
  }
}

void sub_1A90F06C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0770(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0814(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::binary0(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x40uLL, 48);
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
      if (this)
      {
        *v6 = 49;
      }

      --v6;
      v7 = this > 1;
      this >>= 1;
    }

    while (v7);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x40uLL, 48);
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
      if (this)
      {
        *v6 = 49;
      }

      --v6;
      v7 = this > 1;
      this >>= 1;
    }

    while (v7);
  }
}

void sub_1A90F08B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F0954(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}