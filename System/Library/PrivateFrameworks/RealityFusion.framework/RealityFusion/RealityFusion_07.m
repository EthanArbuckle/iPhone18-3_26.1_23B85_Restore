void sub_261834C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void RFLoggingObserverSetDidSaveFullSnapshotCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>((*(a1 + 16) + 40), v3);
}

void *std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>(void *a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8 = 0;
  if (a2)
  {
    v3 = v7;
    v7[0] = &unk_28740A8E0;
    v7[1] = MEMORY[0x26670D530](a2);
    v8 = v7;
  }

  else
  {
    v3 = 0;
  }

  if (v7 != a1)
  {
    v4 = a1[3];
    if (v3 == v7)
    {
      if (v4 == a1)
      {
        (*(*v3 + 24))(v3, v9);
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(*a1[3] + 24))(a1[3], v7);
        (*(*a1[3] + 32))(a1[3]);
        a1[3] = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v3 + 24))(v3, a1);
        (*(*v8 + 32))(v8);
        v8 = a1[3];
      }

      a1[3] = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(v4, v7);
      (*(*a1[3] + 32))(a1[3]);
      a1[3] = v8;
      v8 = v7;
    }

    else
    {
      v8 = a1[3];
      a1[3] = v3;
    }
  }

  std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_261834FA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void RFLoggingObserverSetDidSaveSnapshotCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>((*(a1 + 16) + 8), v3);
}

uint64_t RFLoggingObserverSetDidUpdateMeshAssetsCallback(uint64_t a1, uint64_t a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v9 = &unk_28740A970;
  v10 = MEMORY[0x26670D530](a2);
  v13 = v12;
  v11 = &v9;
  v12[0] = &unk_28740A970;
  v4 = v2 + 72;
  v12[1] = MEMORY[0x26670D530](v10, v3);
  if (v12 != (v2 + 72))
  {
    v5 = v13;
    v6 = *(v2 + 96);
    if (v13 == v12)
    {
      if (v6 == v4)
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = 0;
        (*(**(v2 + 96) + 24))(*(v2 + 96), v12);
        (*(**(v2 + 96) + 32))(*(v2 + 96));
        *(v2 + 96) = 0;
        v13 = v12;
        (*(v14[0] + 24))(v14, v2 + 72);
        (*(v14[0] + 32))(v14);
      }

      else
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = *(v2 + 96);
      }

      *(v2 + 96) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(v2 + 96), v12);
      (*(**(v2 + 96) + 32))(*(v2 + 96));
      *(v2 + 96) = v13;
      v13 = v12;
    }

    else
    {
      v13 = *(v2 + 96);
      *(v2 + 96) = v5;
    }
  }

  std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](&v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618352F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer15LoggingConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_22[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::LoggingConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4BF0 = 0u;
  xmmword_2810C4C00 = 0u;
  xmmword_2810C4C10 = 0u;
  unk_2810C4C20 = 0u;
  xmmword_2810C4C30 = 0u;
  unk_2810C4C40 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4BF0 + 1) = p_dst;
  *&xmmword_2810C4C00 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::initCallback;
  *&xmmword_2810C4C10 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::finalizeCallback;
  qword_2810C4C28 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4C30 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_14 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261835490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::LoggingConsumer::~LoggingConsumer((v2 + 16));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A750;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = strlen(v3);
    v5 = CFURLCreateWithBytes(0, v3, v4, 0, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    (*(v2 + 16))(v2, v5);
    CFRelease(cf);
  }
}

void sub_26183575C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A7E0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = strlen(v3);
    v5 = CFURLCreateWithBytes(0, v3, v4, 0, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    (*(v2 + 16))(v2, v5);
    CFRelease(cf);
  }
}

void sub_261835A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer16LoggingCallbacksEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_23[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::LoggingCallbacks]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4C50 = 0u;
  xmmword_2810C4C60 = 0u;
  xmmword_2810C4C70 = 0u;
  unk_2810C4C80 = 0u;
  xmmword_2810C4C90 = 0u;
  unk_2810C4CA0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4C50 + 1) = p_dst;
  *&xmmword_2810C4C60 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::initCallback;
  *&xmmword_2810C4C70 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::finalizeCallback;
  qword_2810C4C88 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4C90 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::copyDebugDescriptionCallback;
  qword_2810C4BE0 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261835C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](v2 + 72);
    std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v2 + 40);
    std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v2 + 8);

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void *a1, CFTypeRef cf)
{
  CFRetain(cf);
  *a1 = *(cf + 2) + 8;
  operator new();
}

void sub_261835E34(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingCallbacks *,rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingCallbacks *)#1},std::allocator<rf::data_flow::consumer::LoggingCallbacks>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingCallbacks *,rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingCallbacks *)#1},std::allocator<rf::data_flow::consumer::LoggingCallbacks>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A8E0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A970;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    v5 = *a2;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v7 = *a3;
    v8 = a3[1];
    while (v7 != v8)
    {
      v9 = v7;
      if (*(v7 + 23) < 0)
      {
        v9 = *v7;
      }

      v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      v7 += 24;
    }

    (*(*(a1 + 8) + 16))();

    CFRelease(Mutable);
  }
}

uint64_t std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void rf::detail::removePRRMeshesFrom(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = a1;
    do
    {
      v9 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(v5, __p);
        v10 = (SBYTE7(v21) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEFAULT, "ARState: Removing prr mesh %{public}s", buf, 0xCu);
        if (SBYTE7(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1952), v5);
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1992), v5);
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v8 + 40), v5))
      {
        goto LABEL_12;
      }

      v11 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        rf::data_flow::RFUUID::string(v5, __p);
        v16 = (SBYTE7(v21) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_2617CB000, v11, OS_LOG_TYPE_ERROR, "removePRRMeshesFrom(): Mesh %{public}s to be removed but doesn't exist in prrMeshDictionary!", buf, 0xCu);
        if (SBYTE7(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((a3 & 1) == 0)
      {
LABEL_12:
        *buf = *v5;
        v19 = *(v5 + 16);
        v12 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v8 + 40), v5);
        if (!v12)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        *__p = *buf;
        v21 = v19;
        v13 = v12[7];
        v22 = v12[6];
        v23 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(a4, __p);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v14 = *(v5 + 32);
        v15 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a4, v5);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        *(v15[6] + 120) = v14;
        a1 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 40), v5);
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void *rf::detail::updatePRRMeshesAt@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    do
    {
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v5 + 40), v3);
      if (result)
      {
        v6 = *v5;
        v7 = *(v3 + 16);
        v21 = *v3;
        v22 = v7;
        v8 = *(std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v6 + 40), &v21)[6] + 32);
        v9 = *(v3 + 16);
        v21 = *v3;
        v22 = v9;
        v23 = v8 + 1;
        v10 = *(v3 + 32);
        v11 = *(v3 + 48);
        v12 = *(v3 + 80);
        v26 = *(v3 + 64);
        v27 = v12;
        v24 = v10;
        v25 = v11;
        v28 = *(v3 + 96);
        v29 = 1;
        v30 = *(v3 + 104);
        LOBYTE(v31) = 0;
        v33 = 0;
        if (*(v3 + 136) == 1)
        {
          v13 = *(v3 + 112);
          *(v3 + 112) = 0;
          v31 = v13;
          v32 = *(v3 + 120);
          v33 = 1;
        }

        LOBYTE(v34) = 0;
        v36 = 0;
        if (*(v3 + 168) == 1)
        {
          v14 = *(v3 + 144);
          *(v3 + 144) = 0;
          v34 = v14;
          v35 = *(v3 + 152);
          v36 = 1;
        }

        LOBYTE(v37) = 0;
        v39 = 0;
        if (*(v3 + 200) == 1)
        {
          v15 = *(v3 + 176);
          *(v3 + 176) = 0;
          v37 = v15;
          v38 = *(v3 + 184);
          v39 = 1;
        }

        LOBYTE(v40) = 0;
        v42 = 0;
        if (*(v3 + 232) == 1)
        {
          v16 = *(v3 + 208);
          *(v3 + 208) = 0;
          v40 = v16;
          v41 = *(v3 + 216);
          v42 = 1;
        }

        LOBYTE(v43) = 0;
        v45 = 0;
        if (*(v3 + 264) == 1)
        {
          v17 = *(v3 + 240);
          *(v3 + 240) = 0;
          v43 = v17;
          v44 = *(v3 + 248);
          v45 = 1;
        }

        LOBYTE(v46) = 0;
        v48 = 0;
        if (*(v3 + 296) == 1)
        {
          v18 = *(v3 + 272);
          *(v3 + 272) = 0;
          v46 = v18;
          v47 = *(v3 + 280);
          v48 = 1;
        }

        LOBYTE(v49) = 0;
        v51 = 0;
        if (*(v3 + 328) == 1)
        {
          v19 = *(v3 + 304);
          *(v3 + 304) = 0;
          v49 = v19;
          v50 = *(v3 + 312);
          v51 = 1;
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        std::allocate_shared[abi:ne200100]<rf::data_flow::consumer::Mesh,std::allocator<rf::data_flow::consumer::Mesh>,rf::data_flow::consumer::Mesh,0>();
      }

      v3 += 352;
    }

    while (v3 != v4);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261836980(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  rf::data_flow::consumer::Mesh::~Mesh(va);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v9);
  _Unwind_Resume(a1);
}

rf *rf::detail::insertPRRMeshesInto@<X0>(rf *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = *a2;
  if (*a2 != a2[1])
  {
    v4 = (v3 + 176);
    v5 = *(v3 + 16);
    v23[0] = *v3;
    v23[1] = v5;
    v24 = 1;
    v6 = *(v3 + 32);
    v7 = *(v3 + 48);
    v8 = *(v3 + 80);
    v27 = *(v3 + 64);
    v28 = v8;
    v25 = v6;
    v26 = v7;
    v29 = *(v3 + 96);
    v30 = 1;
    v31 = *(v3 + 104);
    LOBYTE(v32) = 0;
    v34 = 0;
    if (*(v3 + 136) == 1)
    {
      v9 = *(v3 + 112);
      *(v4 - 8) = 0;
      v32 = v9;
      v33 = *(v4 - 7);
      v34 = 1;
    }

    LOBYTE(v35) = 0;
    v37 = 0;
    if (*(v4 - 8) == 1)
    {
      v10 = *(v4 - 4);
      *(v4 - 4) = 0;
      v35 = v10;
      v36 = *(v4 - 3);
      v37 = 1;
    }

    LOBYTE(v38) = 0;
    v40 = 0;
    if (*(v4 + 24) == 1)
    {
      v11 = *v4;
      *v4 = 0;
      v38 = v11;
      v39 = *(v4 + 1);
      v40 = 1;
    }

    LOBYTE(v41) = 0;
    v43 = 0;
    if (*(v4 + 56) == 1)
    {
      v12 = v4[4];
      v4[4] = 0;
      v41 = v12;
      v42 = *(v4 + 5);
      v43 = 1;
    }

    LOBYTE(v44) = 0;
    v46 = 0;
    if (*(v4 + 88) == 1)
    {
      v13 = v4[8];
      v4[8] = 0;
      v44 = v13;
      v45 = *(v4 + 9);
      v46 = 1;
    }

    LOBYTE(v47) = 0;
    v49 = 0;
    if (*(v4 + 120) == 1)
    {
      v14 = v4[12];
      v4[12] = 0;
      v47 = v14;
      v48 = *(v4 + 13);
      v49 = 1;
    }

    LOBYTE(v50) = 0;
    v52 = 0;
    if (*(v4 + 152) == 1)
    {
      v15 = v4[16];
      v4[16] = 0;
      v50 = v15;
      v51 = *(v4 + 17);
      v52 = 1;
    }

    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v16 = rf::realityFusionLogObject(result);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      rf::data_flow::RFUUID::string(v23, __p);
      if (v20 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      buf = 136446210;
      *buf_4 = v17;
      _os_log_impl(&dword_2617CB000, v16, OS_LOG_TYPE_DEFAULT, "ARState: Adding prr mesh %{public}s", &buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::allocate_shared[abi:ne200100]<rf::data_flow::consumer::Mesh,std::allocator<rf::data_flow::consumer::Mesh>,rf::data_flow::consumer::Mesh,0>();
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261836D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  rf::data_flow::consumer::Mesh::~Mesh(va);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t *rf::PlacementComponentTypeInfo::instance(rf::PlacementComponentTypeInfo *this)
{
  {
    rf::PlacementComponentTypeInfo::instance(void)::instance = 0;
    qword_2810C5160 = 0;
    qword_2810C5180 = 0;
    qword_2810C51A0 = 0;
    qword_2810C51C0 = 0;
    dword_2810C51C8 = 0;
  }

  return &rf::PlacementComponentTypeInfo::instance(void)::instance;
}

void *rf::PlacementComponentTypeInfo::initWithType(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  v10 = a1 + 13;
  std::function<unsigned char const* ()(REComponent *)>::operator=(a1 + 1, a3);
  std::function<BOOL ()(REComponent *)>::operator=(a1 + 5, a4);
  std::function<void ()(REComponent *)>::operator=(a1 + 9, a5);

  return std::function<RESRT ()(REComponent *)>::operator=(v10, a6);
}

void *std::function<unsigned char const* ()(REComponent *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<BOOL ()(REComponent *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(REComponent *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<BOOL ()(REComponent *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(REComponent *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(REComponent *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<RESRT ()(REComponent *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<RESRT ()(REComponent *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<RESRT ()(REComponent *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::function<unsigned char const* ()(REComponent *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::function<BOOL ()(REComponent *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<unsigned char const* ()(REComponent *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<unsigned char const* ()(REComponent *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618373FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(REComponent *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<BOOL ()(REComponent *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261837778(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(REComponent *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<RESRT ()(REComponent *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<RESRT ()(REComponent *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261837B8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void RFQueryServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4CB8 != -1)
  {
    dispatch_once(&qword_2810C4CB8, &__block_literal_global_13);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void RFQueryServiceEvaluateEntityQuery(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v11[0] = a2;
  v7 = *(a3 + 16);
  v8 = *(a1 + 16);
  v11[2] = v11;
  for (i = std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__emplace_unique_key_args<REScene const*,std::piecewise_construct_t const&,std::tuple<REScene const*&&>,std::tuple<>>((v8 + 40), v11)[5]; i; i = *i)
  {
    if ((***(v7 + 8))(*(v7 + 8), (i + 6)) && !*(i + 20))
    {
      v10[2](v10, i[6]);
    }
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer13QueryConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_24[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::QueryConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4CC0 = 0u;
  xmmword_2810C4CD0 = 0u;
  xmmword_2810C4CE0 = 0u;
  unk_2810C4CF0 = 0u;
  xmmword_2810C4D00 = 0u;
  unk_2810C4D10 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4CC0 + 1) = p_dst;
  *&xmmword_2810C4CD0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>>::initCallback;
  *&xmmword_2810C4CE0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>>::finalizeCallback;
  qword_2810C4CF8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4D00 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_15 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261837F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::QueryConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::~__hash_table(v2 + 40);

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t rf::data_flow::details::NodeStore::createNode(void *a1, __int128 *a2, std::string *a3)
{
  v6 = a1[5] + 1;
  a1[5] = v6;
  v18 = v6;
  std::to_string(&v16, v6);
  v7 = std::string::insert(&v16, 0, "Node ", 5uLL);
  __p = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  p_p = &__p;
  if (a3[1].__r_.__value_.__s.__data_[0])
  {
    p_p = a3;
  }

  v20 = p_p->__r_.__value_.__r.__words[2];
  v19 = *&p_p->__r_.__value_.__l.__data_;
  p_p->__r_.__value_.__l.__size_ = 0;
  p_p->__r_.__value_.__r.__words[2] = 0;
  p_p->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a2 + 2);
  v21 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v6;
    if (*&v9 <= v6)
    {
      v11 = v6 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
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

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[2] != v6)
  {
    goto LABEL_19;
  }

  v13[3] = v6;
  if (*(v13 + 55) < 0)
  {
    operator delete(v13[4]);
  }

  *(v13 + 2) = v19;
  v13[6] = v20;
  if (*(v13 + 79) < 0)
  {
    operator delete(v13[7]);
  }

  *(v13 + 7) = v21;
  v13[9] = v22;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_2618385C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,void *>>>>::~unique_ptr[abi:ne200100](v23 - 72);
  rf::data_flow::details::NodeStore::Node::~Node(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void rf::data_flow::details::NodeStore::Node::~Node(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,rf::data_flow::details::NodeStore::Node>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t rf::data_flow::consumer::QueryConsumer::consumeLatestUpdate(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    return rf::query::QueryDatabasePerScene::updateUsingScene((result + 32), *(a2 + 24));
  }

  return result;
}

void rf::data_flow::consumer::QueryConsumer::~QueryConsumer(rf::data_flow::consumer::QueryConsumer *this)
{
  std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::~__hash_table(this + 32);
}

{
  std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::~__hash_table(this + 32);

  JUMPOUT(0x26670D060);
}

uint64_t rf::helpers::findInDirtyOptions<rf::data_flow::consumer::ClientDirtyOption,BOOL>(int a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_17;
  }

  v3 = vcnt_s8(a3);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a1;
    if (a1 >= a3)
    {
      v4 = a1 % a3;
    }
  }

  else
  {
    v4 = (a3 - 1) & a1;
  }

  v5 = *(a2 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    v8 = 0;
    v9 = 0;
    return v8 | (v9 << 8);
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a1)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= a3)
      {
        v7 %= a3;
      }
    }

    else
    {
      v7 &= a3 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a1)
  {
    goto LABEL_16;
  }

  v11 = std::any_cast[abi:ne200100]<BOOL const>(v6 + 3);
  if (!v11)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  v8 = *v11;
  v9 = 1;
  return v8 | (v9 << 8);
}

void rf::data_flow::consumer::ClientMeshReconstructionConsumer::~ClientMeshReconstructionConsumer(rf::data_flow::consumer::ClientMeshReconstructionConsumer *this)
{
  *this = &unk_28740AA68;
  if (*(this + 152) == 1)
  {
    MEMORY[0x26670C440](*(this + 16), *(this + 17), *(this + 18));
  }

  std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::clear(this + 160);
  std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(this + 32);
}

{
  rf::data_flow::consumer::ClientMeshReconstructionConsumer::~ClientMeshReconstructionConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::consumer::ClientMeshReconstructionConsumer::setARStateData(uint64_t result, uint64_t a2)
{
  *(result + 96) = a2;
  *(result + 16) = a2;
  return result;
}

void rf::data_flow::consumer::ClientMeshReconstructionConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return;
  }

  if (*(a2 + 16) != 1)
  {
    return;
  }

  i = *(a2 + 24);
  REImmersiveSpaceTrackerComponentGetComponentType();
  RESceneGetComponentsOfClass();
  if (!v5)
  {
    return;
  }

  if ((*(a1 + 152) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a2 + 8))
    {
      MEMORY[0x26670CB50]();
      EventBus = REEngineGetEventBus();
      MEMORY[0x26670C400]("RESceneWillRemoveEvent");
      ComponentsOfClass = MEMORY[0x277D85DD0];
      v63 = 3321888768;
      v64 = ___ZZN2rf9data_flow8consumer32ClientMeshReconstructionConsumer25listenToSceneRemovalEventEP16REServiceLocatorENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke;
      v65 = &__block_descriptor_40_ea8_32c115_ZTSKZN2rf9data_flow8consumer32ClientMeshReconstructionConsumer25listenToSceneRemovalEventEP16REServiceLocatorE3__0_e14_I24__0_v8r_v16l;
      v66 = a1;
      v7 = MEMORY[0x26670D530](&ComponentsOfClass);
      v8 = REEventBusSubscribeBlock();
      if ((*(a1 + 152) & 1) == 0)
      {
        *(a1 + 152) = 1;
      }

      *(a1 + 128) = EventBus;
      *(a1 + 136) = v8;
      *(a1 + 144) = v9;
    }
  }

  v61[0] = i;
  if (std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>((a1 + 160), v61))
  {
    goto LABEL_64;
  }

  v63 = 0;
  v64 = 0;
  ComponentsOfClass = &v63;
  v10 = 0x9DDFEA08EB382D69 * ((8 * (v61[0] & 0x1FFFFFFF) + 8) ^ HIDWORD(v61[0]));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v61[0]) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = *(a1 + 168);
  if (!*&v13)
  {
    goto LABEL_29;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = v12 & (*&v13 - 1);
  }

  v16 = *(*(a1 + 160) + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v12)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= *&v13)
      {
        v18 %= *&v13;
      }
    }

    else
    {
      v18 &= *&v13 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_29;
    }

LABEL_28:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  if (v17[2] != v61[0])
  {
    goto LABEL_28;
  }

  if (v17 + 3 != &ComponentsOfClass)
  {
    v60 = i;
    v19 = ComponentsOfClass;
    if (!v17[5])
    {
      goto LABEL_54;
    }

    v21 = v17 + 4;
    v20 = v17[4];
    v22 = v17[3];
    v17[3] = (v17 + 4);
    v20[2] = 0;
    v17[4] = 0;
    v17[5] = 0;
    v23 = v22[1] ? v22[1] : v22;
    if (v23)
    {
      v24 = std::__tree<REEntity *>::_DetachedTreeCache::__detach_next(v23);
      if (v19 == &v63)
      {
        v25 = v23;
        v31 = v19;
      }

      else
      {
        do
        {
          v25 = v24;
          v26 = v19[4];
          v23[4] = v26;
          v27 = *v21;
          v28 = v17 + 4;
          v29 = v17 + 4;
          if (*v21)
          {
            do
            {
              while (1)
              {
                v28 = v27;
                if (v26 >= v27[4])
                {
                  break;
                }

                v27 = *v27;
                v29 = v28;
                if (!*v28)
                {
                  goto LABEL_43;
                }
              }

              v27 = v27[1];
            }

            while (v27);
            v29 = v28 + 1;
          }

LABEL_43:
          std::__tree<rf::synthetic::SceneUnderstandingType>::__insert_node_at(v17 + 3, v28, v29, v23);
          if (v24)
          {
            v24 = std::__tree<REEntity *>::_DetachedTreeCache::__detach_next(v24);
          }

          else
          {
            v24 = 0;
          }

          v30 = v19[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v19[2];
              v32 = *v31 == v19;
              v19 = v31;
            }

            while (!v32);
          }

          if (!v25)
          {
            break;
          }

          v23 = v25;
          v19 = v31;
        }

        while (v31 != &v63);
      }

      std::__tree<rf::synthetic::SceneUnderstandingType>::destroy((v17 + 3), v25);
      if (v24)
      {
        v33 = v24[2];
        for (i = v60; v33; v33 = v33[2])
        {
          v24 = v33;
        }

        std::__tree<rf::synthetic::SceneUnderstandingType>::destroy((v17 + 3), v24);
      }

      else
      {
        i = v60;
      }
    }

    else
    {
LABEL_54:
      v31 = v19;
      i = v60;
    }

    if (v31 != &v63)
    {
      operator new();
    }
  }

  std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(&ComponentsOfClass, v63);
LABEL_64:
  rf::data_flow::consumer::EntitiesProcessor::consumeLatestUpdate(a1 + 80, a2);
  v34 = *(a1 + 16);
  std::mutex::lock(v34);
  RESceneUnderstandingComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v63 = v35;
  v64 = 0;
  v65 = 0;
  v36 = rf::helpers::findInDirtyOptions<rf::data_flow::consumer::ClientDirtyOption,BOOL>(1, *(a1 + 32), *(a1 + 40));
  v37 = v36;
  v38 = i;
  if (v36 >= 0x100u)
  {
    v40 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(&ComponentsOfClass);
    v41 = &ComponentsOfClass[v63];
    if (v40 != v41)
    {
      v42 = v39;
      do
      {
        v43 = *v40;
        REComponentGetEntity();
        RERigidBodyComponentGetComponentType();
        if (v37)
        {
          if (REEntityAddComponentByClass())
          {
            RERigidBodyComponentSetMotionType();
            if (*(a1 + 26) == 1)
            {
              RENetworkMarkComponentDirty();
            }
          }
        }

        else if (REEntityGetComponentByClass())
        {
          RERigidBodyComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v44 = v40 + 1;
        v40 = (*v42 + 8 * v42[1]);
        while (v44 != v40)
        {
          v45 = *v44;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v40 = v44;
            break;
          }

          ++v44;
        }
      }

      while (v40 != v41);
    }
  }

  v46 = rf::helpers::findInDirtyOptions<rf::data_flow::consumer::ClientDirtyOption,BOOL>(0, *(a1 + 32), *(a1 + 40));
  if (v46 >= 0x100u && (v46 & 1) == 0)
  {
    v48 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(&ComponentsOfClass);
    v49 = &ComponentsOfClass[v63];
    if (v48 != v49)
    {
      v50 = v47;
      do
      {
        v51 = *v48;
        REComponentGetEntity();
        REColliderComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REColliderComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v52 = v48 + 1;
        v48 = (*v50 + 8 * v50[1]);
        while (v52 != v48)
        {
          v53 = *v52;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v48 = v52;
            break;
          }

          ++v52;
        }
      }

      while (v48 != v49);
    }
  }

  v54 = *(a1 + 24);
  if (v54)
  {
    v55 = 3104;
    if (!*(a1 + 72))
    {
      v55 = 0;
    }

    std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(&ComponentsOfClass, v34 + 64 + v55);
    *(a1 + 72) = v54;
    if (v65)
    {
      std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(v61, &ComponentsOfClass);
      rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(v38, v61, *(a1 + 25), *(a1 + 26));
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v61);
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&ComponentsOfClass);
  }

  else
  {
    *(a1 + 72) = v54;
  }

  if (*(a1 + 56))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__deallocate_node(a1 + 32, *(a1 + 48));
    *(a1 + 48) = 0;
    v56 = *(a1 + 40);
    if (v56)
    {
      for (j = 0; j != v56; ++j)
      {
        *(*(a1 + 32) + 8 * j) = 0;
      }
    }

    *(a1 + 56) = 0;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    v58 = *(v34 + 88);
    v59 = *(v34 + 128);
    kdebug_trace();
  }

  std::mutex::unlock(v34);
}

void sub_261839320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(v18, v17[4]);
  operator delete(v17);
  std::__tree<rf::synthetic::SceneUnderstandingType>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::ClientMeshReconstructionConsumer::setRigidbodyEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[25] != a2)
  {
    this[25] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::ClientDirtyOption,std::pair<rf::data_flow::consumer::ClientDirtyOption const,std::any>>(this + 4, 1);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261839440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::ClientMeshReconstructionConsumer::setCollisionEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[24] != a2)
  {
    this[24] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::ClientDirtyOption,std::pair<rf::data_flow::consumer::ClientDirtyOption const,std::any>>(this + 4, 0);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2618394F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = &v2[v3];
    while (1)
    {
      v6 = *v2;
      if (RESceneUnderstandingComponentGetSourceType() == 1)
      {
        break;
      }

      ++v2;
      v4 -= 8;
      if (!v4)
      {
        v2 = v5;
        break;
      }
    }
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  return v2;
}

uint64_t std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D82798];
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](a4, MEMORY[0x277D82798]);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<BOOL>::__id;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZN2rf9data_flow8consumer32ClientMeshReconstructionConsumer25listenToSceneRemovalEventEP16REServiceLocatorENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = v3[21];
  if (!*&v4)
  {
    return 0;
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a3 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a3));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a3) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = vcnt_s8(v4);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v4)
    {
      v9 = v7 % *&v4;
    }
  }

  else
  {
    v9 = v7 & (*&v4 - 1);
  }

  v10 = v3[20];
  v11 = *(v10 + 8 * v9);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (!*v11)
  {
    return 0;
  }

  v13 = *&v4 - 1;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v7)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v14 >= *&v4)
      {
        v14 %= *&v4;
      }
    }

    else
    {
      v14 &= v13;
    }

    if (v14 != v9)
    {
      return 0;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      return 0;
    }
  }

  if (v12[2] != *a3)
  {
    goto LABEL_17;
  }

  v15 = *v12;
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v4)
    {
      v7 %= *&v4;
    }
  }

  else
  {
    v7 &= v13;
  }

  v16 = *(v10 + 8 * v7);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v12);
  if (v17 == v3 + 22)
  {
    goto LABEL_36;
  }

  v18 = v17[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v18 >= *&v4)
    {
      v18 %= *&v4;
    }
  }

  else
  {
    v18 &= v13;
  }

  if (v18 == v7)
  {
LABEL_38:
    if (v15)
    {
      v19 = v15[1];
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
    if (!v15)
    {
      goto LABEL_37;
    }

    v19 = v15[1];
    if (v8.u32[0] > 1uLL)
    {
      v20 = v15[1];
      if (v19 >= *&v4)
      {
        v20 = v19 % *&v4;
      }
    }

    else
    {
      v20 = v19 & v13;
    }

    if (v20 != v7)
    {
LABEL_37:
      *(v10 + 8 * v7) = 0;
      v15 = *v12;
      goto LABEL_38;
    }

LABEL_40:
    if (v8.u32[0] > 1uLL)
    {
      if (v19 >= *&v4)
      {
        v19 %= *&v4;
      }
    }

    else
    {
      v19 &= v13;
    }

    if (v19 != v7)
    {
      *(v3[20] + 8 * v19) = v17;
      v15 = *v12;
    }
  }

  *v17 = v15;
  *v12 = 0;
  --v3[23];
  std::__tree<rf::synthetic::SceneUnderstandingType>::destroy((v12 + 3), v12[4]);
  operator delete(v12);
  return 0;
}

uint64_t std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>> const&>(a1, (i + 2));
  }

  return a1;
}

uint64_t (**std::any_cast[abi:ne200100]<BOOL const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D82798], &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<rf::synthetic::SceneUnderstandingType>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::ClientDirtyOption,std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::ClientDirtyOption>,std::hash<rf::data_flow::consumer::ClientDirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::ClientDirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::ClientDirtyOption,std::pair<rf::data_flow::consumer::ClientDirtyOption const,std::any>>(void *result, int a2)
{
  v2 = result[1];
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
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_261839E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<REEntity *>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

id *RFGetARAnchorFromAnchorSourceComponent()
{
  Object = RECustomComponentGetObject();
  if (Object)
  {
    Object = *Object;
  }

  return Object;
}

uint64_t RFGetARAnchorTypeFromAnchorSourceComponent(uint64_t result)
{
  if (result)
  {
    result = RECustomComponentGetObject();
    if (result)
    {
      if ((*(result + 8) - 1) >= 5)
      {
        return 0;
      }

      else
      {
        return *(result + 8);
      }
    }
  }

  return result;
}

uint64_t RFGetIsMeshAnchorFromAnchorSourceComponent(uint64_t a1)
{
  if (a1)
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      v2 = *(Object + 12);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t rf::data_flow::provider::SyntheticARData::SyntheticARData(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v7 = a2;
  *a1 = v7;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v8;
  }

  *(a1 + 48) = xmmword_26185DD00;
  *(a1 + 64) = xmmword_26185DD10;
  *(a1 + 80) = xmmword_26185DD20;
  *(a1 + 96) = xmmword_26185E1B0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  uuid_clear((a1 + 112));
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0u;
  v9 = (a1 + 192);
  *(a1 + 240) = 0u;
  v10 = (a1 + 240);
  *(a1 + 384) = 0;
  v11 = (a1 + 264);
  v12 = (a1 + 216);
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  rf::synthetic::SyntheticUsdKitParser::SyntheticUsdKitParser(v23, *a1, *(a1 + 8), a4);
  v20 = 3;
  rf::synthetic::SyntheticUsdKitParser::getInputMeshes(v23, &v20, &v21);
  std::vector<std::shared_ptr<rf::data_flow::provider::InputMesh>>::__vdeallocate((a1 + 144));
  *(a1 + 144) = v21;
  *(a1 + 160) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v20 = 4;
  rf::synthetic::SyntheticUsdKitParser::getInputMeshes(v23, &v20, &v21);
  std::vector<std::shared_ptr<rf::data_flow::provider::InputMesh>>::__vdeallocate((a1 + 168));
  *(a1 + 168) = v21;
  *(a1 + 184) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v24);
  rf::synthetic::SyntheticUsdKitParser::getInputAnchors(v23, &v21);
  if (*(a1 + 192))
  {
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100]((a1 + 192));
    operator delete(*v9);
    *v9 = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = v21;
  *(a1 + 208) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v24);
  rf::synthetic::SyntheticUsdKitParser::getInputObjects(v23, &v21);
  if (*v12)
  {
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100]((a1 + 216));
    operator delete(*v12);
    *v12 = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 216) = v21;
  *(a1 + 232) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v24);
  rf::synthetic::SyntheticUsdKitParser::getEnvironmentProbes(v23, &v21);
  if (*v10)
  {
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100]((a1 + 240));
    operator delete(*v10);
    *v10 = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 240) = v21;
  *(a1 + 256) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v24);
  *(a1 + 388) = 1;
  std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](&v21, (*(a1 + 152) - *(a1 + 144)) >> 4);
  v13 = *v11;
  if (*v11)
  {
    *(a1 + 272) = v13;
    operator delete(v13);
    *v11 = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  *v11 = v21;
  *(a1 + 280) = v22;
  std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](&v21, (*(a1 + 176) - *(a1 + 168)) >> 4);
  v14 = *(a1 + 288);
  if (v14)
  {
    *(a1 + 296) = v14;
    operator delete(v14);
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
  }

  *(a1 + 288) = v21;
  *(a1 + 304) = v22;
  std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](&v21, (*(a1 + 200) - *(a1 + 192)) >> 4);
  v15 = *(a1 + 312);
  if (v15)
  {
    *(a1 + 320) = v15;
    operator delete(v15);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
  }

  *(a1 + 312) = v21;
  *(a1 + 328) = v22;
  std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](&v21, (*(a1 + 224) - *(a1 + 216)) >> 4);
  v16 = *(a1 + 336);
  if (v16)
  {
    *(a1 + 344) = v16;
    operator delete(v16);
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
  }

  *(a1 + 336) = v21;
  *(a1 + 352) = v22;
  std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](&v21, (*(a1 + 248) - *(a1 + 240)) >> 4);
  v18 = (a1 + 360);
  v17 = *(a1 + 360);
  if (v17)
  {
    *(a1 + 368) = v17;
    operator delete(v17);
    *v18 = 0;
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
  }

  *v18 = v21;
  *(a1 + 376) = v22;

  return a1;
}

double rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::SyntheticARData *this, rf::data_flow::provider::InputData *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  if (*(this + 19) != *(this + 18))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this + 33);
      if (v4 >= (*(this + 34) - v6) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = (v6 + 32 * v4);
      if (*(v7 + 16) == 1)
      {
        v7 = *v7;
      }

      if (!uuid_is_null(v7))
      {
        rf::data_flow::provider::InputMesh::InputMesh(v71, *(*(this + 18) + 16 * v4));
        v8 = *(this + 33);
        if (v4 >= (*(this + 34) - v8) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v9 = 0;
        v10 = (v8 + 32 * v4);
        v11 = v10[1];
        *v71 = *v10;
        *&v71[16] = v11;
        v12 = *(this + 3);
        v13 = *(this + 4);
        v14 = *(this + 5);
        v15 = *(this + 6);
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        do
        {
          *(&v67 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v63 + v9))), v13, *(&v63 + v9), 1), v14, *(&v63 + v9), 2), v15, *(&v63 + v9), 3);
          v9 += 16;
        }

        while (v9 != 64);
        v72 = v67;
        v73 = v68;
        v74 = v69;
        v75 = v70;
        std::vector<rf::data_flow::provider::InputMesh>::push_back[abi:ne200100](a2 + 3, v71);

        if (v92 == 1)
        {
        }

        if (v90 == 1)
        {
        }

        if (v88 == 1)
        {
        }

        if (v85 == 1)
        {
        }

        if (v83 == 1)
        {
        }

        if (v81 == 1)
        {
        }

        if (v79 == 1)
        {
        }
      }

      v4 = ++v5;
    }

    while (v5 < ((*(this + 19) - *(this + 18)) >> 4));
  }

  if (*(this + 22) != *(this + 21))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(this + 36);
      if (v16 >= (*(this + 37) - v18) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v19 = (v18 + 32 * v16);
      if (*(v19 + 16) == 1)
      {
        v19 = *v19;
      }

      if (!uuid_is_null(v19))
      {
        rf::data_flow::provider::InputMesh::InputMesh(v71, *(*(this + 21) + 16 * v16));
        v20 = *(this + 36);
        if (v16 >= (*(this + 37) - v20) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v21 = 0;
        v22 = (v20 + 32 * v16);
        v23 = v22[1];
        *v71 = *v22;
        *&v71[16] = v23;
        v24 = *(this + 3);
        v25 = *(this + 4);
        v26 = *(this + 5);
        v27 = *(this + 6);
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        do
        {
          *(&v67 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v63 + v21))), v25, *(&v63 + v21), 1), v26, *(&v63 + v21), 2), v27, *(&v63 + v21), 3);
          v21 += 16;
        }

        while (v21 != 64);
        v72 = v67;
        v73 = v68;
        v74 = v69;
        v75 = v70;
        std::vector<rf::data_flow::provider::InputMesh>::push_back[abi:ne200100](a2 + 91, v71);

        if (v92 == 1)
        {
        }

        if (v90 == 1)
        {
        }

        if (v88 == 1)
        {
        }

        if (v85 == 1)
        {
        }

        if (v83 == 1)
        {
        }

        if (v81 == 1)
        {
        }

        if (v79 == 1)
        {
        }
      }

      v16 = ++v17;
    }

    while (v17 < ((*(this + 22) - *(this + 21)) >> 4));
  }

  v62 = 0;
  if (*(this + 25) != *(this + 24))
  {
    v28 = 0;
    do
    {
      v29 = *(this + 39);
      if (v28 >= (*(this + 40) - v29) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v30 = (v29 + 32 * v28);
      if (*(v30 + 16) == 1)
      {
        v30 = *v30;
      }

      if (!uuid_is_null(v30))
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v71, *(*(this + 24) + 16 * v62));
        *&v67 = this;
        *(&v67 + 1) = &v62;
        *&v68 = a2;
        if (v87 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        *&v63 = &v67;
        (off_28740AAD0[v87])(&v63, v71);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v71);
      }

      v28 = ++v62;
    }

    while (v62 < ((*(this + 25) - *(this + 24)) >> 4));
  }

  if (*(this + 28) != *(this + 27))
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(this + 42);
      if (v31 >= (*(this + 43) - v33) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v34 = (v33 + 32 * v31);
      if (*(v34 + 16) == 1)
      {
        v34 = *v34;
      }

      if (!uuid_is_null(v34))
      {
        v35 = *(*(this + 27) + 16 * v31);
        v74 = v35[4];
        v75 = v35[5];
        v76 = v35[6];
        v77 = v35[7];
        *v71 = *v35;
        *&v71[16] = v35[1];
        v72 = v35[2];
        v73 = v35[3];
        v36 = *(this + 42);
        if (v31 >= (*(this + 43) - v36) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v37 = 0;
        v38 = (v36 + 32 * v31);
        *v71 = *v38;
        *&v71[16] = v38[1];
        v39 = *(this + 3);
        v40 = *(this + 4);
        v41 = *(this + 5);
        v42 = *(this + 6);
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        do
        {
          *(&v67 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v63 + v37))), v40, *(&v63 + v37), 1), v41, *(&v63 + v37), 2), v42, *(&v63 + v37), 3);
          v37 += 16;
        }

        while (v37 != 64);
        v72 = v67;
        v73 = v68;
        v74 = v69;
        v75 = v70;
        std::vector<rf::data_flow::SceneObject>::push_back[abi:ne200100](a2 + 656, v71);
      }

      v31 = ++v32;
    }

    while (v32 < ((*(this + 28) - *(this + 27)) >> 4));
  }

  if (*(this + 31) != *(this + 30))
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(this + 45);
      if (v43 >= (*(this + 46) - v45) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v46 = (v45 + 32 * v43);
      if (*(v46 + 16) == 1)
      {
        v46 = *v46;
      }

      if (!uuid_is_null(v46))
      {
        v47 = *(*(this + 30) + 16 * v43);
        v73 = *(v47 + 48);
        v74 = *(v47 + 64);
        v75 = *(v47 + 80);
        v76 = *(v47 + 96);
        *v71 = *v47;
        *&v71[16] = *(v47 + 16);
        v72 = *(v47 + 32);
        LOBYTE(v77) = 0;
        BYTE8(v77) = 0;
        if (*(v47 + 120) == 1)
        {
          *&v77 = *(v47 + 112);
          BYTE8(v77) = 1;
        }

        v78 = *(v47 + 128);
        v48 = *(this + 45);
        if (v43 >= (*(this + 46) - v48) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v49 = 0;
        v50 = (v48 + 32 * v43);
        *v71 = *v50;
        *&v71[16] = v50[1];
        v51 = *(this + 3);
        v52 = *(this + 4);
        v53 = *(this + 5);
        v54 = *(this + 6);
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        do
        {
          *(&v67 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v63 + v49))), v52, *(&v63 + v49), 1), v53, *(&v63 + v49), 2), v54, *(&v63 + v49), 3);
          v49 += 16;
        }

        while (v49 != 64);
        v72 = v67;
        v73 = v68;
        v74 = v69;
        v75 = v70;
        std::vector<rf::data_flow::EnvironmentProbe>::push_back[abi:ne200100](a2 + 73, v71);
        if (BYTE8(v77) == 1)
        {
        }
      }

      v43 = ++v44;
    }

    while (v44 < ((*(this + 31) - *(this + 30)) >> 4));
  }

  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(v71, *(this + 2), *(this + 3));
  }

  else
  {
    *v71 = *(this + 1);
    *&v71[16] = *(this + 4);
  }

  v55 = *(this + 4);
  v72 = *(this + 3);
  v73 = v55;
  v56 = *(this + 6);
  v74 = *(this + 5);
  v75 = v56;
  v57 = (a2 + 1840);
  if (*(a2 + 1863) < 0)
  {
    operator delete(*v57);
  }

  *v57 = *v71;
  v58 = v73;
  *(a2 + 117) = v72;
  *(a2 + 118) = v58;
  result = *&v74;
  v60 = v75;
  *(a2 + 119) = v74;
  *(a2 + 232) = *&v71[16];
  *(a2 + 120) = v60;
  *(a2 + 510) = *(this + 97);
  *(a2 + 2044) = 1;
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183ABEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42)
  {
  }

  _Unwind_Resume(exception_object);
}

void std::vector<rf::data_flow::provider::InputMesh>::push_back[abi:ne200100](id **a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 5);
    if ((v7 + 1) > 0xBA2E8BA2E8BA2ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x5D1745D1745D17)
    {
      v10 = 0xBA2E8BA2E8BA2ELL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<rf::data_flow::provider::InputMesh>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = 32 * ((v5 - *a1) >> 5);
    std::allocator_traits<std::allocator<rf::data_flow::provider::InputMesh>>::construct[abi:ne200100]<rf::data_flow::provider::InputMesh,rf::data_flow::provider::InputMesh,void,0>(v11, a2);
    v12 = *a1;
    v13 = a1[1];
    v14 = *a1 - v13;
    v15 = (v11 + v14);
    if (v13 != *a1)
    {
      v16 = *a1;
      v17 = v11 + v14;
      do
      {
        std::allocator_traits<std::allocator<rf::data_flow::provider::InputMesh>>::construct[abi:ne200100]<rf::data_flow::provider::InputMesh,rf::data_flow::provider::InputMesh,void,0>(v17, v16);
        v16 += 22;
        v17 += 352;
      }

      while (v16 != v13);
      do
      {
        rf::data_flow::provider::InputMesh::~InputMesh(v12);
        v12 += 44;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    v6 = v11 + 352;
    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<rf::data_flow::provider::InputMesh>>::construct[abi:ne200100]<rf::data_flow::provider::InputMesh,rf::data_flow::provider::InputMesh,void,0>(a1[1], a2);
    v6 = (v5 + 44);
  }

  a1[1] = v6;
}

void std::vector<rf::data_flow::SceneObject>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v12 = *a1;
    v13 = v3 - *a1;
    v14 = v13 >> 7;
    v15 = (v13 >> 7) + 1;
    if (v15 >> 57)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v16 = v4 - v12;
    if (v16 >> 6 > v15)
    {
      v15 = v16 >> 6;
    }

    if (v16 >= 0x7FFFFFFFFFFFFF80)
    {
      v17 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 57))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = a2[5];
    v19 = (v14 << 7);
    v19[4] = a2[4];
    v19[5] = v18;
    v20 = a2[7];
    v19[6] = a2[6];
    v19[7] = v20;
    v21 = a2[1];
    *v19 = *a2;
    v19[1] = v21;
    v22 = a2[3];
    v11 = (v14 << 7) + 128;
    v23 = &v19[-8 * (v13 >> 7)];
    v19[2] = a2[2];
    v19[3] = v22;
    memcpy(v23, v12, v13);
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[7];
    v3[6] = a2[6];
    v3[7] = v10;
    v3[4] = v8;
    v3[5] = v9;
    v11 = (v3 + 8);
  }

  *(a1 + 8) = v11;
}

void **std::vector<rf::data_flow::EnvironmentProbe>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v13 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xE38E38E38E38E3)
    {
      v16 = 0x1C71C71C71C71C7;
    }

    else
    {
      v16 = v14;
    }

    v32 = result;
    if (v16)
    {
      std::allocator<rf::data_flow::EnvironmentProbe>::allocate_at_least[abi:ne200100](result, v16);
    }

    v17 = 144 * v13;
    v29 = 0;
    v30 = v17;
    *(&v31 + 1) = 0;
    v18 = *a2;
    v19 = a2[1];
    *(v17 + 32) = a2[2];
    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[6];
    *(v17 + 80) = a2[5];
    *(v17 + 96) = v22;
    *(v17 + 48) = v20;
    *(v17 + 64) = v21;
    *v17 = v18;
    *(v17 + 16) = v19;
    *(v17 + 112) = 0;
    *(v17 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v23 = *(a2 + 14);
      *(a2 + 14) = 0;
      *(144 * v13 + 0x70) = v23;
      *(144 * v13 + 0x78) = 1;
    }

    *(144 * v13 + 0x80) = *(a2 + 16);
    *&v31 = v17 + 144;
    v24 = result[1];
    v25 = v17 + *result - v24;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>(result, *result, v24, v25);
    v26 = *v3;
    *v3 = v25;
    v27 = v3[2];
    v28 = v31;
    *(v3 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    result = std::__split_buffer<rf::data_flow::EnvironmentProbe>::~__split_buffer(&v29);
    v12 = v28;
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 1) = a2[1];
    *(v4 + 2) = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    *(v4 + 5) = a2[5];
    *(v4 + 6) = v10;
    *(v4 + 3) = v8;
    *(v4 + 4) = v9;
    v4[112] = 0;
    v4[120] = 0;
    if (*(a2 + 120) == 1)
    {
      v11 = *(a2 + 14);
      *(a2 + 14) = 0;
      *(v4 + 14) = v11;
      v4[120] = 1;
    }

    *(v4 + 16) = *(a2 + 16);
    v12 = v4 + 144;
  }

  v3[1] = v12;
  return result;
}

void sub_26183B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<rf::data_flow::EnvironmentProbe>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *rf::data_flow::provider::SyntheticARData::appendRemovedData(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 152) != *(a1 + 144))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(a1 + 264);
      if (v4 >= (*(a1 + 272) - v6) >> 5)
      {
LABEL_60:
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = (v6 + 32 * v4);
      if (*(v7 + 16) == 1)
      {
        v7 = *v7;
      }

      if (!uuid_is_null(v7))
      {
        v8 = *(a1 + 264);
        if (v4 >= (*(a1 + 272) - v8) >> 5)
        {
          goto LABEL_60;
        }

        std::vector<rf::data_flow::RFUUID>::push_back[abi:ne200100](a2 + 48, (v8 + 32 * v4));
      }

      v4 = v5++;
    }

    while (v4 < (*(a1 + 152) - *(a1 + 144)) >> 4);
  }

  v44 = [MEMORY[0x277CBEAA8] date];
  [v44 timeIntervalSince1970];
  if (*(a1 + 176) != *(a1 + 168))
  {
    v10 = v9;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a1 + 288);
      if (v11 >= (*(a1 + 296) - v13) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = (v13 + 32 * v11);
      if (*(v14 + 16) == 1)
      {
        v14 = *v14;
      }

      if (!uuid_is_null(v14))
      {
        v15 = *(a1 + 288);
        if (v11 >= (*(a1 + 296) - v15) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = (v15 + 32 * v11);
        v48 = *v16;
        v49 = v16[1];
        v17 = *(a2 + 760);
        v18 = *(a2 + 768);
        if (v17 >= v18)
        {
          v21 = *(a2 + 752);
          v22 = v17 - v21;
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v21) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 > 0x666666666666666)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v18 - v21) >> 3) > v24)
          {
            v24 = 0x999999999999999ALL * ((v18 - v21) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v21) >> 3) >= 0x333333333333333)
          {
            v25 = 0x666666666666666;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            if (v25 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = 40 * v23;
          v27 = v49;
          *v26 = v48;
          *(v26 + 16) = v27;
          *(v26 + 32) = v10;
          v20 = 40 * v23 + 40;
          v28 = 40 * v23 - v22;
          memcpy((v26 - v22), v21, v22);
          *(a2 + 752) = v28;
          *(a2 + 760) = v20;
          *(a2 + 768) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          v19 = v16[1];
          *v17 = *v16;
          *(v17 + 16) = v19;
          *(v17 + 32) = v10;
          v20 = v17 + 40;
        }

        *(a2 + 760) = v20;
      }

      v11 = v12++;
    }

    while (v11 < (*(a1 + 176) - *(a1 + 168)) >> 4);
  }

  v46 = 0;
  if (*(a1 + 200) != *(a1 + 192))
  {
    v29 = 0;
    do
    {
      v30 = *(a1 + 312);
      if (v29 >= (*(a1 + 320) - v30) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v31 = (v30 + 32 * v29);
      if (*(v31 + 16) == 1)
      {
        v31 = *v31;
      }

      if (!uuid_is_null(v31))
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v48, *(*(a1 + 192) + 16 * v46));
        v45[0] = a1;
        v45[1] = &v46;
        v45[2] = a2;
        if (v50 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v47 = v45;
        (off_28740AB00[v50])(&v47, &v48);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v48);
      }

      v29 = ++v46;
    }

    while (v46 < ((*(a1 + 200) - *(a1 + 192)) >> 4));
  }

  if (*(a1 + 224) != *(a1 + 216))
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = *(a1 + 336);
      if (v32 >= (*(a1 + 344) - v34) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v35 = (v34 + 32 * v32);
      if (*(v35 + 16) == 1)
      {
        v35 = *v35;
      }

      if (!uuid_is_null(v35))
      {
        v36 = *(a1 + 336);
        if (v32 >= (*(a1 + 344) - v36) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<rf::data_flow::RFUUID>::push_back[abi:ne200100](a2 + 680, (v36 + 32 * v32));
      }

      v32 = v33++;
    }

    while (v32 < (*(a1 + 224) - *(a1 + 216)) >> 4);
  }

  if (*(a1 + 248) != *(a1 + 240))
  {
    v37 = 0;
    v38 = 1;
    do
    {
      v39 = *(a1 + 360);
      if (v37 >= (*(a1 + 368) - v39) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v40 = (v39 + 32 * v37);
      if (*(v40 + 16) == 1)
      {
        v40 = *v40;
      }

      if (!uuid_is_null(v40))
      {
        v41 = *(a1 + 360);
        if (v37 >= (*(a1 + 368) - v41) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<rf::data_flow::RFUUID>::push_back[abi:ne200100](a2 + 608, (v41 + 32 * v37));
      }

      v37 = v38++;
    }

    while (v37 < (*(a1 + 248) - *(a1 + 240)) >> 4);
  }

  result = std::string::operator=((a2 + 1816), (a1 + 16));
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 1;
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<rf::data_flow::RFUUID>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void rf::data_flow::provider::SyntheticARData::appendUpdateProbe(float32x4_t *this, void **a2, const unsigned __int8 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (this[15].i64[1] != this[15].i64[0])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = this[22].i64[1];
      if (v6 >= (this[23].i64[0] - v8) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = (v8 + 32 * v6);
      if (*(v9 + 16) == 1)
      {
        v9 = *v9;
      }

      if (!uuid_is_null(v9))
      {
        v10 = *(this[15].i64[0] + 16 * v6);
        v11 = *(v10 + 80);
        v26 = *(v10 + 64);
        v27 = v11;
        v28 = *(v10 + 96);
        v12 = *(v10 + 16);
        v22 = *v10;
        v23 = v12;
        v13 = *(v10 + 48);
        v24 = *(v10 + 32);
        v25 = v13;
        LOBYTE(v29) = 0;
        v30 = 0;
        if (*(v10 + 120) == 1)
        {
          v29 = *(v10 + 112);
          v30 = 1;
        }

        v31 = *(v10 + 128);
        v33.i8[0] = 0;
        v33.i64[1] = 0;
        uuid_clear(uu);
        v14 = 0;
        v22 = *a3;
        v23 = v33;
        v15 = this[3];
        v16 = this[4];
        v17 = this[5];
        v18 = this[6];
        v21[0] = v24;
        v21[1] = v25;
        v21[2] = v26;
        v21[3] = v27;
        do
        {
          *&uu[v14 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v21[v14])), v16, *&v21[v14], 1), v17, v21[v14], 2), v18, v21[v14], 3);
          ++v14;
        }

        while (v14 != 4);
        v24 = *uu;
        v25 = v33;
        v26 = v34;
        v27 = v35;
        std::vector<rf::data_flow::EnvironmentProbe>::push_back[abi:ne200100](a2 + 70, &v22);
        v33.i8[0] = 0;
        v33.i64[1] = 0;
        uuid_clear(uu);
        v19 = v33;
        this[7] = *a3;
        this[8] = v19;
        if (v30 == 1)
        {
        }
      }

      v6 = ++v7;
    }

    while (v7 < ((this[15].i64[1] - this[15].i64[0]) >> 4));
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_26183B888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, char a32)
{
  if (a32 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  if (a2[9].i64[1] != a2[9].i64[0])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[16].i64[1];
      if (v5 >= (a2[17].i64[0] - v7) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = (v7 + 32 * v5);
      if (*(v8 + 16) == 1)
      {
        v8 = *v8;
      }

      if (uuid_is_null(v8))
      {
        rf::data_flow::provider::InputMesh::InputMesh(&v62, *(a2[9].i64[0] + 16 * v5));
        LOBYTE(v87) = 0;
        *(&v87 + 1) = 0;
        uuid_clear(uu);
        uuid_generate_random(uu);
        v9 = 0;
        v62 = *uu;
        v63 = v87;
        v10 = a2[3];
        v11 = a2[4];
        v12 = a2[5];
        v13 = a2[6];
        v58 = v64;
        v59 = v65;
        v60 = v66;
        v61 = v67;
        do
        {
          *&uu[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*(&v58 + v9))), v11, *(&v58 + v9), 1), v12, *(&v58 + v9), 2), v13, *(&v58 + v9), 3);
          v9 += 16;
        }

        while (v9 != 64);
        v64 = *uu;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v14 = a2[16].i64[1];
        if (v5 >= (a2[17].i64[0] - v14) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = v63;
        v16 = (v14 + 32 * v5);
        *v16 = v62;
        v16[1] = v15;
        std::vector<rf::data_flow::provider::InputMesh>::push_back[abi:ne200100](a3, &v62);

        if (v84 == 1)
        {
        }

        if (v82 == 1)
        {
        }

        if (v80 == 1)
        {
        }

        if (v77 == 1)
        {
        }

        if (v75 == 1)
        {
        }

        if (v73 == 1)
        {
        }

        if (v71 == 1)
        {
        }
      }

      v5 = ++v6;
    }

    while (v6 < ((a2[9].i64[1] - a2[9].i64[0]) >> 4));
  }

  if (a2[11].i64[0] != a2[10].i64[1])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = a2[18].i64[0];
      if (v17 >= (a2[18].i64[1] - v19) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v20 = (v19 + 32 * v17);
      if (*(v20 + 16) == 1)
      {
        v20 = *v20;
      }

      if (uuid_is_null(v20))
      {
        rf::data_flow::provider::InputMesh::InputMesh(&v62, *(a2[10].i64[1] + 16 * v17));
        LOBYTE(v87) = 0;
        *(&v87 + 1) = 0;
        uuid_clear(uu);
        uuid_generate_random(uu);
        v21 = 0;
        v62 = *uu;
        v63 = v87;
        v22 = a2[3];
        v23 = a2[4];
        v24 = a2[5];
        v25 = a2[6];
        v58 = v64;
        v59 = v65;
        v60 = v66;
        v61 = v67;
        do
        {
          *&uu[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v58 + v21))), v23, *(&v58 + v21), 1), v24, *(&v58 + v21), 2), v25, *(&v58 + v21), 3);
          v21 += 16;
        }

        while (v21 != 64);
        v64 = *uu;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v26 = a2[18].i64[0];
        if (v17 >= (a2[18].i64[1] - v26) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v27 = v63;
        v28 = (v26 + 32 * v17);
        *v28 = v62;
        v28[1] = v27;
        std::vector<rf::data_flow::provider::InputMesh>::push_back[abi:ne200100]((a3 + 704), &v62);

        if (v84 == 1)
        {
        }

        if (v82 == 1)
        {
        }

        if (v80 == 1)
        {
        }

        if (v77 == 1)
        {
        }

        if (v75 == 1)
        {
        }

        if (v73 == 1)
        {
        }

        if (v71 == 1)
        {
        }
      }

      v17 = ++v18;
    }

    while (v18 < ((a2[11].i64[0] - a2[10].i64[1]) >> 4));
  }

  v57 = 0;
  if (a2[12].i64[1] != a2[12].i64[0])
  {
    v29 = 0;
    do
    {
      v30 = a2[19].i64[1];
      if (v29 >= (a2[20].i64[0] - v30) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v31 = (v30 + 32 * v29);
      if (*(v31 + 16) == 1)
      {
        v31 = *v31;
      }

      if (uuid_is_null(v31))
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v62, *(a2[12].i64[0] + 16 * v57));
        *uu = a2;
        *&uu[8] = &v57;
        *&v87 = a3;
        if (v79 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        *&v58 = uu;
        (off_28740AB30[v79])(&v58, &v62);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v62);
      }

      v29 = ++v57;
    }

    while (v57 < ((a2[12].i64[1] - a2[12].i64[0]) >> 4));
  }

  if (a2[14].i64[0] != a2[13].i64[1])
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = a2[21].i64[0];
      if (v32 >= (a2[21].i64[1] - v34) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v35 = (v34 + 32 * v32);
      if (*(v35 + 16) == 1)
      {
        v35 = *v35;
      }

      if (uuid_is_null(v35))
      {
        v36 = *(a2[13].i64[1] + 16 * v32);
        v66 = v36[4];
        v67 = v36[5];
        v68 = v36[6];
        v69 = v36[7];
        v62 = *v36;
        v63 = v36[1];
        v64 = v36[2];
        v65 = v36[3];
        LOBYTE(v87) = 0;
        *(&v87 + 1) = 0;
        uuid_clear(uu);
        uuid_generate_random(uu);
        v37 = 0;
        v62 = *uu;
        v63 = v87;
        v38 = a2[3];
        v39 = a2[4];
        v40 = a2[5];
        v41 = a2[6];
        v58 = v64;
        v59 = v65;
        v60 = v66;
        v61 = v67;
        do
        {
          *&uu[v37] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v58 + v37))), v39, *(&v58 + v37), 1), v40, *(&v58 + v37), 2), v41, *(&v58 + v37), 3);
          v37 += 16;
        }

        while (v37 != 64);
        v64 = *uu;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v42 = a2[21].i64[0];
        if (v32 >= (a2[21].i64[1] - v42) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v43 = (v42 + 32 * v32);
        *v43 = v62;
        v43[1] = v63;
        std::vector<rf::data_flow::SceneObject>::push_back[abi:ne200100](a3 + 632, &v62);
      }

      v32 = ++v33;
    }

    while (v33 < ((a2[14].i64[0] - a2[13].i64[1]) >> 4));
  }

  if (a2[15].i64[1] != a2[15].i64[0])
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = a2[22].i64[1];
      if (v44 >= (a2[23].i64[0] - v46) >> 5)
      {
        std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
      }

      v47 = (v46 + 32 * v44);
      if (*(v47 + 16) == 1)
      {
        v47 = *v47;
      }

      if (uuid_is_null(v47))
      {
        v48 = *(a2[15].i64[0] + 16 * v44);
        v65 = *(v48 + 48);
        v66 = *(v48 + 64);
        v67 = *(v48 + 80);
        v68 = *(v48 + 96);
        v62 = *v48;
        v63 = *(v48 + 16);
        v64 = *(v48 + 32);
        LOBYTE(v69) = 0;
        BYTE8(v69) = 0;
        if (*(v48 + 120) == 1)
        {
          *&v69 = *(v48 + 112);
          BYTE8(v69) = 1;
        }

        v70 = *(v48 + 128);
        LOBYTE(v87) = 0;
        *(&v87 + 1) = 0;
        uuid_clear(uu);
        uuid_generate_random(uu);
        v49 = 0;
        v62 = *uu;
        v63 = v87;
        v50 = a2[3];
        v51 = a2[4];
        v52 = a2[5];
        v53 = a2[6];
        v58 = v64;
        v59 = v65;
        v60 = v66;
        v61 = v67;
        do
        {
          *&uu[v49] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v58 + v49))), v51, *(&v58 + v49), 1), v52, *(&v58 + v49), 2), v53, *(&v58 + v49), 3);
          v49 += 16;
        }

        while (v49 != 64);
        v64 = *uu;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v54 = a2[22].i64[1];
        if (v44 >= (a2[23].i64[0] - v54) >> 5)
        {
          std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
        }

        v55 = (v54 + 32 * v44);
        *v55 = v62;
        v55[1] = v63;
        std::vector<rf::data_flow::EnvironmentProbe>::push_back[abi:ne200100]((a3 + 560), &v62);
        if (BYTE8(v69) == 1)
        {
        }
      }

      v44 = ++v45;
    }

    while (v45 < ((a2[15].i64[1] - a2[15].i64[0]) >> 4));
  }

  *(a3 + 2040) = a2[24].i32[1];
  *(a3 + 2044) = 1;
  v56 = *MEMORY[0x277D85DE8];
}

void sub_26183C05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (v35)
  {
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<rf::data_flow::provider::InputMesh>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<rf::data_flow::RFUUID>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26183C180(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

rf::data_flow::provider::InputMesh *rf::data_flow::provider::InputMesh::InputMesh(rf::data_flow::provider::InputMesh *this, const rf::data_flow::provider::InputMesh *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  *this = v4;
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v8;
  *(this + 3) = v6;
  *(this + 4) = v7;
  *(this + 112) = 0;
  *(this + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    *(this + 14) = *(a2 + 14);
    *(this + 120) = *(a2 + 120);
    *(this + 136) = 1;
  }

  *(this + 144) = 0;
  *(this + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    *(this + 18) = *(a2 + 18);
    *(this + 152) = *(a2 + 152);
    *(this + 168) = 1;
  }

  *(this + 176) = 0;
  *(this + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    *(this + 22) = *(a2 + 22);
    *(this + 184) = *(a2 + 184);
    *(this + 200) = 1;
  }

  *(this + 208) = 0;
  *(this + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    *(this + 26) = *(a2 + 26);
    *(this + 216) = *(a2 + 216);
    *(this + 232) = 1;
  }

  *(this + 240) = 0;
  *(this + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(this + 30) = *(a2 + 30);
    *(this + 248) = *(a2 + 248);
    *(this + 264) = 1;
  }

  *(this + 272) = 0;
  *(this + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    *(this + 34) = *(a2 + 34);
    *(this + 280) = *(a2 + 280);
    *(this + 296) = 1;
  }

  *(this + 304) = 0;
  *(this + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    *(this + 38) = *(a2 + 38);
    *(this + 312) = *(a2 + 312);
    *(this + 328) = 1;
  }

  *(this + 42) = *(a2 + 42);
  return this;
}

uint64_t std::allocator_traits<std::allocator<rf::data_flow::provider::InputMesh>>::construct[abi:ne200100]<rf::data_flow::provider::InputMesh,rf::data_flow::provider::InputMesh,void,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(result + 16) = a2[1];
  *(result + 32) = v3;
  *result = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(result + 80) = a2[5];
  *(result + 96) = v6;
  *(result + 48) = v4;
  *(result + 64) = v5;
  *(result + 112) = 0;
  *(result + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v7 = *(a2 + 14);
    *(a2 + 14) = 0;
    *(result + 112) = v7;
    *(result + 120) = *(a2 + 120);
    *(result + 136) = 1;
  }

  *(result + 144) = 0;
  *(result + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v8 = *(a2 + 18);
    *(a2 + 18) = 0;
    *(result + 144) = v8;
    *(result + 152) = *(a2 + 152);
    *(result + 168) = 1;
  }

  *(result + 176) = 0;
  *(result + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v9 = *(a2 + 22);
    *(a2 + 22) = 0;
    *(result + 176) = v9;
    *(result + 184) = *(a2 + 184);
    *(result + 200) = 1;
  }

  *(result + 208) = 0;
  *(result + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v10 = *(a2 + 26);
    *(a2 + 26) = 0;
    *(result + 208) = v10;
    *(result + 216) = *(a2 + 216);
    *(result + 232) = 1;
  }

  *(result + 240) = 0;
  *(result + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v11 = *(a2 + 30);
    *(a2 + 30) = 0;
    *(result + 240) = v11;
    *(result + 248) = *(a2 + 248);
    *(result + 264) = 1;
  }

  *(result + 272) = 0;
  *(result + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v12 = *(a2 + 34);
    *(a2 + 34) = 0;
    *(result + 272) = v12;
    *(result + 280) = *(a2 + 280);
    *(result + 296) = 1;
  }

  *(result + 304) = 0;
  *(result + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    v13 = *(a2 + 38);
    *(a2 + 38) = 0;
    *(result + 304) = v13;
    *(result + 312) = *(a2 + 312);
    *(result + 328) = 1;
  }

  v14 = *(a2 + 42);
  *(a2 + 42) = 0;
  *(result + 336) = v14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v28[0] = a2[2];
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  do
  {
    *(&v29 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v28[v7])), v11, *&v28[v7], 1), v12, v28[v7], 2), v13, v28[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v30;
  v18 = v31;
  v19 = v32;
  a2[2] = v29;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v33 = a2[4];
  v34[0] = v21;
  *(v34 + 9) = *(a2 + 89);
  v22 = a2[1];
  v29 = *a2;
  v30 = v22;
  v23 = a2[3];
  v31 = a2[2];
  v32 = v23;
  v35 = *(a2 + 14);
  v24 = a2[11];
  v38 = a2[10];
  v39 = v24;
  v40 = a2[12];
  v25 = a2[9];
  v36 = a2[8];
  v37 = v25;
  v41 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v29);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v29[0] = a2[2];
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  do
  {
    *(&v30 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v29[v7])), v11, *&v29[v7], 1), v12, v29[v7], 2), v13, v29[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v31;
  v18 = v32;
  v19 = v33;
  a2[2] = v30;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v34 = a2[4];
  v35[0] = v21;
  *(v35 + 9) = *(a2 + 89);
  v22 = a2[1];
  v30 = *a2;
  v31 = v22;
  v23 = a2[3];
  v32 = a2[2];
  v33 = v23;
  v36 = *(a2 + 14);
  v24 = a2[11];
  v39 = a2[10];
  v40 = v24;
  v41 = a2[12];
  v25 = a2[9];
  v37 = a2[8];
  v38 = v25;
  v26 = *(a2 + 27);
  v42 = *(a2 + 26);
  memset(v43, 0, 24);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v43, v26, *(a2 + 28), (*(a2 + 28) - v26) >> 4);
  v44 = 1;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v30);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v26[0] = a2[2];
  v26[1] = v14;
  v26[2] = v15;
  v26[3] = v16;
  do
  {
    *(&v27 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v26[v7])), v11, *&v26[v7], 1), v12, v26[v7], 2), v13, v26[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v28;
  v18 = v29;
  v19 = v30;
  a2[2] = v27;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v31 = a2[4];
  v32[0] = v21;
  *(v32 + 9) = *(a2 + 89);
  v22 = a2[1];
  v27 = *a2;
  v28 = v22;
  v23 = a2[3];
  v29 = a2[2];
  v30 = v23;
  v33 = *(a2 + 14);
  v34 = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v35 = *(a2 + 136);
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v36 = *(a2 + 10);
  }

  v37 = a2[12];
  v38 = 2;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v27);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183C998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v28[0] = a2[2];
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  do
  {
    *(&v29 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v28[v7])), v11, *&v28[v7], 1), v12, v28[v7], 2), v13, v28[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v30;
  v18 = v31;
  v19 = v32;
  a2[2] = v29;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v33 = a2[4];
  v34[0] = v21;
  *(v34 + 9) = *(a2 + 89);
  v22 = a2[1];
  v29 = *a2;
  v30 = v22;
  v23 = a2[3];
  v31 = a2[2];
  v32 = v23;
  v35 = *(a2 + 14);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v36 = *(a2 + 8);
  }

  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v37 = *(a2 + 152);
  }

  v24 = a2[12];
  v38 = a2[11];
  v39 = v24;
  v25 = a2[14];
  v40 = a2[13];
  v41 = v25;
  v42 = 3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v29);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v30[0] = a2[2];
  v30[1] = v14;
  v30[2] = v15;
  v30[3] = v16;
  do
  {
    *(&v31 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v30[v7])), v11, *&v30[v7], 1), v12, v30[v7], 2), v13, v30[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v32;
  v18 = v33;
  v19 = v34;
  a2[2] = v31;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v35 = a2[4];
  v36[0] = v21;
  *(v36 + 9) = *(a2 + 89);
  v22 = a2[1];
  v31 = *a2;
  v32 = v22;
  v23 = a2[3];
  v33 = a2[2];
  v34 = v23;
  v37 = *(a2 + 14);
  v24 = a2[13];
  v42 = a2[12];
  v43 = v24;
  v25 = a2[15];
  v44 = a2[14];
  v45 = v25;
  v26 = a2[9];
  v38 = a2[8];
  v39 = v26;
  v27 = a2[11];
  v40 = a2[10];
  v41 = v27;
  v46 = 4;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v31);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183CD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendUpdatedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = 0;
  v8 = (v5 + 32 * v4);
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v26[0] = a2[2];
  v26[1] = v14;
  v26[2] = v15;
  v26[3] = v16;
  do
  {
    *(&v27 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v26[v7])), v11, *&v26[v7], 1), v12, v26[v7], 2), v13, v26[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v17 = v28;
  v18 = v29;
  v19 = v30;
  a2[2] = v27;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  *(a2 + 25) = 2;
  v20 = v2[2];
  v21 = a2[5];
  v31 = a2[4];
  v32[0] = v21;
  *(v32 + 9) = *(a2 + 89);
  v22 = a2[1];
  v27 = *a2;
  v28 = v22;
  v23 = a2[3];
  v29 = a2[2];
  v30 = v23;
  v33 = *(a2 + 14);
  v34 = *(a2 + 32);
  v35 = 5;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v20[6], &v27);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v30[0] = a2[2];
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  do
  {
    *(&v31 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v30[v6])), v10, *&v30[v6], 1), v11, v30[v6], 2), v12, v30[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  a2[2] = v31;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v35 = a2[4];
  v36[0] = v20;
  *(v36 + 9) = *(a2 + 89);
  v21 = a2[1];
  v31 = *a2;
  v32 = v21;
  v22 = a2[3];
  v33 = a2[2];
  v34 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v37 = v23;
  v24 = a2[8];
  v25 = a2[9];
  v26 = a2[12];
  v41 = a2[11];
  v42 = v26;
  v27 = a2[10];
  v39 = v25;
  v40 = v27;
  v38 = v24;
  v43 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v31);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183CFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v31[0] = a2[2];
  v31[1] = v13;
  v31[2] = v14;
  v31[3] = v15;
  do
  {
    *(&v32 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v31[v6])), v10, *&v31[v6], 1), v11, v31[v6], 2), v12, v31[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v33;
  v17 = v34;
  v18 = v35;
  a2[2] = v32;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v36 = a2[4];
  v37[0] = v20;
  *(v37 + 9) = *(a2 + 89);
  v21 = a2[1];
  v32 = *a2;
  v33 = v21;
  v22 = a2[3];
  v34 = a2[2];
  v35 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v38 = v23;
  v24 = a2[9];
  v39 = a2[8];
  v40 = v24;
  v25 = a2[10];
  v26 = a2[12];
  v27 = *(a2 + 26);
  v42 = a2[11];
  v43 = v26;
  v41 = v25;
  v45 = *(a2 + 216);
  v28 = *(a2 + 29);
  v44 = v27;
  v46 = v28;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v47 = 1;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v32);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v26[0] = a2[2];
  v26[1] = v13;
  v26[2] = v14;
  v26[3] = v15;
  do
  {
    *(&v27 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v26[v6])), v10, *&v26[v6], 1), v11, v26[v6], 2), v12, v26[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v28;
  v17 = v29;
  v18 = v30;
  a2[2] = v27;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v31 = a2[4];
  v32[0] = v20;
  *(v32 + 9) = *(a2 + 89);
  v21 = a2[1];
  v27 = *a2;
  v28 = v21;
  v22 = a2[3];
  v29 = a2[2];
  v30 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v33 = v23;
  v34 = *(a2 + 128);
  v35 = *(a2 + 136);
  v36 = *(a2 + 19);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v37 = a2[10];
  v38 = *(a2 + 22);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  v39 = a2[12];
  v40 = 2;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v27);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v30[0] = a2[2];
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  do
  {
    *(&v31 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v30[v6])), v10, *&v30[v6], 1), v11, v30[v6], 2), v12, v30[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  a2[2] = v31;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v35 = a2[4];
  v36[0] = v20;
  *(v36 + 9) = *(a2 + 89);
  v21 = a2[1];
  v31 = *a2;
  v32 = v21;
  v22 = a2[3];
  v33 = a2[2];
  v34 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v37 = v23;
  v24 = *(a2 + 18);
  v38 = a2[8];
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v25 = *(a2 + 21);
  v39 = v24;
  v41 = v25;
  v40 = *(a2 + 152);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  v26 = a2[12];
  v42 = a2[11];
  v43 = v26;
  v27 = a2[14];
  v44 = a2[13];
  v45 = v27;
  v46 = 3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v31);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v32[0] = a2[2];
  v32[1] = v13;
  v32[2] = v14;
  v32[3] = v15;
  do
  {
    *(&v33 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v32[v6])), v10, *&v32[v6], 1), v11, v32[v6], 2), v12, v32[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v34;
  v17 = v35;
  v18 = v36;
  a2[2] = v33;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v37 = a2[4];
  v38[0] = v20;
  *(v38 + 9) = *(a2 + 89);
  v21 = a2[1];
  v33 = *a2;
  v34 = v21;
  v22 = a2[3];
  v35 = a2[2];
  v36 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v39 = v23;
  v24 = a2[8];
  v25 = a2[9];
  v26 = a2[11];
  v42 = a2[10];
  v43 = v26;
  v40 = v24;
  v41 = v25;
  v27 = a2[12];
  v28 = a2[13];
  v29 = a2[15];
  v46 = a2[14];
  v47 = v29;
  v44 = v27;
  v45 = v28;
  v48 = 4;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v33);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::appendRemovedData(rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, __int128 *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1]->u32[0];
  v5 = v3[19].i64[1];
  if (v4 >= (v3[20].i64[0] - v5) >> 5)
  {
    std::vector<rf::data_flow::RFUUID>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = 0;
  v7 = (v5 + 32 * v4);
  v8 = v7[1];
  *a2 = *v7;
  a2[1] = v8;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v26[0] = a2[2];
  v26[1] = v13;
  v26[2] = v14;
  v26[3] = v15;
  do
  {
    *(&v27 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v26[v6])), v10, *&v26[v6], 1), v11, v26[v6], 2), v12, v26[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16 = v28;
  v17 = v29;
  v18 = v30;
  a2[2] = v27;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  v19 = v2[2];
  v20 = a2[5];
  v31 = a2[4];
  v32[0] = v20;
  *(v32 + 9) = *(a2 + 89);
  v21 = a2[1];
  v27 = *a2;
  v28 = v21;
  v22 = a2[3];
  v29 = a2[2];
  v30 = v22;
  v23 = *(a2 + 14);
  *(a2 + 14) = 0;
  v33 = v23;
  v34 = *(a2 + 32);
  v35 = 5;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v19[7].i64[1], &v27);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v31;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v29[0] = *(a2 + 32);
  v29[1] = v10;
  v29[2] = v11;
  v29[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v29[v4])), v7, *&v29[v4], 1), v8, v29[v4], 2), v9, v29[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v31;
  v14 = v32;
  v15 = v33;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35[0] = v19;
  *(v35 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v31 = v20;
  v21 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v36 = v22;
  v23 = *(a2 + 128);
  v24 = *(a2 + 144);
  v25 = *(a2 + 192);
  v40 = *(a2 + 176);
  v41 = v25;
  v26 = *(a2 + 160);
  v38 = v24;
  v39 = v26;
  v37 = v23;
  v42 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v32) = 0;
  *(&v32 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v32;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v30[0] = *(a2 + 32);
  v30[1] = v10;
  v30[2] = v11;
  v30[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v30[v4])), v7, *&v30[v4], 1), v8, v30[v4], 2), v9, v30[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v32;
  v14 = v33;
  v15 = v34;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v35 = *(a2 + 64);
  v36[0] = v19;
  *(v36 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v32 = v20;
  v21 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v37 = v22;
  v23 = *(a2 + 144);
  v38 = *(a2 + 128);
  v39 = v23;
  v24 = *(a2 + 160);
  v25 = *(a2 + 192);
  v26 = *(a2 + 208);
  v41 = *(a2 + 176);
  v42 = v25;
  v40 = v24;
  v44 = *(a2 + 216);
  v27 = *(a2 + 232);
  v43 = v26;
  v45 = v27;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v46 = 1;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v27;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v25[0] = *(a2 + 32);
  v25[1] = v10;
  v25[2] = v11;
  v25[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v25[v4])), v7, *&v25[v4], 1), v8, v25[v4], 2), v9, v25[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v30 = *(a2 + 64);
  v31[0] = v19;
  *(v31 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v27 = v20;
  v21 = *(a2 + 48);
  v28 = *(a2 + 32);
  v29 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v32 = v22;
  v33 = *(a2 + 128);
  v34 = *(a2 + 136);
  v35 = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v36 = *(a2 + 160);
  v37 = *(a2 + 176);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v38 = *(a2 + 192);
  v39 = 2;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v31;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v29[0] = *(a2 + 32);
  v29[1] = v10;
  v29[2] = v11;
  v29[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v29[v4])), v7, *&v29[v4], 1), v8, v29[v4], 2), v9, v29[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v31;
  v14 = v32;
  v15 = v33;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35[0] = v19;
  *(v35 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v31 = v20;
  v21 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v36 = v22;
  v23 = *(a2 + 144);
  v37 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v24 = *(a2 + 168);
  v38 = v23;
  v40 = v24;
  v39 = *(a2 + 152);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v25 = *(a2 + 192);
  v41 = *(a2 + 176);
  v42 = v25;
  v26 = *(a2 + 224);
  v43 = *(a2 + 208);
  v44 = v26;
  v45 = 3;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v33;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v31[0] = *(a2 + 32);
  v31[1] = v10;
  v31[2] = v11;
  v31[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v31[v4])), v7, *&v31[v4], 1), v8, v31[v4], 2), v9, v31[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v33;
  v14 = v34;
  v15 = v35;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v36 = *(a2 + 64);
  v37[0] = v19;
  *(v37 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v33 = v20;
  v21 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v38 = v22;
  v23 = *(a2 + 128);
  v24 = *(a2 + 144);
  v25 = *(a2 + 176);
  v41 = *(a2 + 160);
  v42 = v25;
  v39 = v23;
  v40 = v24;
  v26 = *(a2 + 192);
  v27 = *(a2 + 208);
  v28 = *(a2 + 240);
  v45 = *(a2 + 224);
  v46 = v28;
  v43 = v26;
  v44 = v27;
  v47 = 4;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183DE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData&,rf::data_flow::provider::InputData &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(float32x4_t ***a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v4 = 0;
  v5 = v27;
  *a2 = *uu;
  *(a2 + 16) = v5;
  v6 = (*v3)[3];
  v7 = (*v3)[4];
  v8 = (*v3)[5];
  v9 = (*v3)[6];
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v25[0] = *(a2 + 32);
  v25[1] = v10;
  v25[2] = v11;
  v25[3] = v12;
  do
  {
    *&uu[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v25[v4])), v7, *&v25[v4], 1), v8, v25[v4], 2), v9, v25[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  *(a2 + 32) = *uu;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  v16 = ((*v3)[19].i64[1] + 32 * v3[1]->u32[0]);
  v17 = *(a2 + 16);
  *v16 = *a2;
  v16[1] = v17;
  v18 = v3[2];
  v19 = *(a2 + 80);
  v30 = *(a2 + 64);
  v31[0] = v19;
  *(v31 + 9) = *(a2 + 89);
  v20 = *(a2 + 16);
  *uu = *a2;
  v27 = v20;
  v21 = *(a2 + 48);
  v28 = *(a2 + 32);
  v29 = v21;
  v22 = *(a2 + 112);
  *(a2 + 112) = 0;
  v32 = v22;
  v33 = *(a2 + 128);
  v34 = 5;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v18[4].i64[1], uu);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26183DF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::helpers::createInputMeshFromARMeshAnchor(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 geometry];
  v7 = [v6 normals];
  if ([v7 count] <= 0)
  {
    rf::getMessage("ARMeshAnchor must always provide normals!", __p);
    rf::internal::logAssert(__p);
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v33);
    v54 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::getMessage("ARMeshAnchor must always provide normals!", v52);
    if (v53 >= 0)
    {
      v34 = v52;
    }

    else
    {
      v34 = v52[0];
    }

    v57 = 136315138;
    v58 = v34;
    _os_log_send_and_compose_impl();
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    _os_crash_msg();
    __break(1u);
  }

  [v5 transform];
  v48 = v9;
  v50 = v8;
  v44 = v11;
  v46 = v10;
  v43 = [v5 identifier];
  rf::data_flow::RFUUID::copy(v43, a3);
  *(a3 + 32) = v50;
  *(a3 + 48) = v48;
  *(a3 + 64) = v46;
  *(a3 + 80) = v44;
  *(a3 + 96) = 0;
  *(a3 + 100) = a2;
  [v5 lastUpdateTimestamp];
  *(a3 + 104) = v12;
  v51 = [v5 geometry];
  v49 = [v51 vertices];
  v13 = [v49 buffer];
  v47 = [v5 geometry];
  v45 = [v47 vertices];
  v14 = [v45 format];
  v42 = [v5 geometry];
  v41 = [v42 vertices];
  v15 = [v41 count];
  *(a3 + 112) = v13;
  *(a3 + 120) = v14;
  *(a3 + 128) = v15;
  *(a3 + 136) = 1;
  v40 = [v5 geometry];
  v39 = [v40 normals];
  v16 = [v39 buffer];
  v38 = [v5 geometry];
  v37 = [v38 normals];
  v17 = [v37 format];
  v36 = [v5 geometry];
  v35 = [v36 normals];
  v18 = [v35 count];
  *(a3 + 144) = v16;
  *(a3 + 152) = v17;
  *(a3 + 160) = v18;
  *(a3 + 168) = 1;
  v19 = [v5 geometry];
  v20 = [v19 faces];
  v21 = [v20 buffer];
  v22 = [v5 geometry];
  v23 = [v22 faces];
  v24 = [v23 count];
  *(a3 + 176) = v21;
  *(a3 + 184) = 36;
  *(a3 + 192) = 3 * v24;
  *(a3 + 200) = 1;
  v25 = [v5 geometry];
  v26 = [v25 classification];
  v27 = [v26 buffer];

  if (v27)
  {
    v28 = [v26 buffer];
    v29 = [v26 format];
    v30 = [v26 count];
    *(a3 + 208) = v28;
    *(a3 + 216) = v29;
    v31 = 1;
    *(a3 + 224) = v30;
  }

  else
  {
    v31 = 0;
    *(a3 + 208) = 0;
  }

  *(a3 + 232) = v31;

  *(a3 + 240) = 0;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  *(a3 + 296) = 0;
  *(a3 + 304) = 0;
  *(a3 + 328) = 0;
  *(a3 + 336) = v5;

  v32 = *MEMORY[0x277D85DE8];
}

void sub_26183E41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, id a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v42 + 200) == 1)
  {
  }

  if (*(v42 + 168) == 1)
  {
  }

  if (*(v42 + 136) == 1)
  {
  }

  _Unwind_Resume(a1);
}

void rf::helpers::getBaseAnchorPropertiesFromARAnchor(rf::helpers *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = this;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  uuid_clear(a2);
  *(a2 + 32) = xmmword_26185DD00;
  *(a2 + 48) = xmmword_26185DD10;
  *(a2 + 64) = xmmword_26185DD20;
  *(a2 + 80) = xmmword_26185E1B0;
  *(a2 + 96) = 16842752;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v5 = [(rf::helpers *)v4 identifier];
  rf::data_flow::RFUUID::copy(v5, v13);
  v6 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v6;

  [(rf::helpers *)v4 transform];
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  if ([(rf::helpers *)v4 conformsToProtocol:&unk_28740D950])
  {
    *(a2 + 99) = [(rf::helpers *)v4 isTracked];
  }

  *(a2 + 100) = 1;
  v11 = *(a2 + 112);
  *(a2 + 112) = v4;

  v12 = *MEMORY[0x277D85DE8];
}

void RFPhysicalDeviceCameraStreamConfigCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4D28 != -1)
  {
    dispatch_once(&qword_2810C4D28, &__block_literal_global_14);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_34REPhysicalDeviceCameraStreamConfigEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_25[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::REPhysicalDeviceCameraStreamConfig]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4D30 = 0u;
  xmmword_2810C4D40 = 0u;
  xmmword_2810C4D50 = 0u;
  unk_2810C4D60 = 0u;
  xmmword_2810C4D70 = 0u;
  unk_2810C4D80 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4D30 + 1) = p_dst;
  *&xmmword_2810C4D40 = rf::ClassRegistration<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>>::initCallback;
  *&xmmword_2810C4D50 = rf::ClassRegistration<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>>::finalizeCallback;
  qword_2810C4D68 = rf::ClassRegistration<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4D70 = rf::ClassRegistration<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>>::copyDebugDescriptionCallback;
  _MergedGlobals_16 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26183EA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::REPhysicalDeviceCameraStreamConfig>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x26670D060);
  }

  return result;
}

void rf::internal::logAssert(const char *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = backtrace(buf, 48);
  v3 = backtrace_symbols(buf, v2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v4 = v2 - 3;
  if (v4 >= 5)
  {
    for (i = 4; i != v4; ++i)
    {
      v6 = v3[i];
      std::string::basic_string[abi:ne200100]<0>(&v62, v6);
      v7 = *v6;
      v8 = v6;
      while ((v7 & 0xFFFFFFDF) != 0)
      {
        v9 = *++v8;
        v7 = v9;
      }

      while (v7 == 32)
      {
        v10 = *++v8;
        v7 = v10;
      }

      if ((v7 & 0xFFFFFFDF) != 0)
      {
        do
        {
          v11 = *++v8;
          v7 = v11;
        }

        while ((v11 & 0xFFFFFFDF) != 0);
        while (v7 == 32)
        {
          v12 = *++v8;
          v7 = v12;
        }
      }

      if (v7)
      {
        *v8++ = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v61, v6);
      for (j = *v8; (j & 0xFFFFFFDF) != 0; j = v14)
      {
        v14 = *++v8;
      }

      while (j == 32)
      {
        v15 = *++v8;
        j = v15;
      }

      v16 = v8;
      if (j)
      {
        v17 = 0;
        v16 = v8;
        while (j != 32 || v17)
        {
          v18 = v17 - 1;
          if (j == 91)
          {
            ++v17;
          }

          if (j == 93)
          {
            v17 = v18;
          }

          v19 = *++v16;
          j = v19;
          if (!v19)
          {
            goto LABEL_31;
          }
        }

        *v16 = 0;
      }

LABEL_31:
      std::string::basic_string[abi:ne200100]<0>(&v60, v8);
      std::string::basic_string[abi:ne200100]<0>(&__p, v16 + 1);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v60;
      }

      else
      {
        v20 = v60.__r_.__value_.__r.__words[0];
      }

      v21 = __cxa_demangle(v20, 0, 0, 0);
      if (v21)
      {
        std::string::basic_string[abi:ne200100]<0>(&v64, v21);
        free(v21);
        v22 = v64;
        size = v65;
        v58[0] = v66;
        *(v58 + 3) = *(&v66 + 3);
        LOBYTE(v16) = HIBYTE(v66);
      }

      else
      {
        v22 = 0;
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v55, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
      }

      else
      {
        v55 = v61;
      }

      if (v21)
      {
        if ((v16 & 0x80) != 0)
        {
          v23 = v22;
LABEL_47:
          std::string::__init_copy_ctor_external(&v56, v23, size);
          goto LABEL_48;
        }

        v56.__r_.__value_.__r.__words[0] = v22;
        v56.__r_.__value_.__l.__size_ = size;
        LODWORD(v56.__r_.__value_.__r.__words[2]) = v58[0];
        *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v58 + 3);
        *(&v56.__r_.__value_.__s + 23) = v16;
      }

      else
      {
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v60.__r_.__value_.__l.__size_;
          v23 = v60.__r_.__value_.__r.__words[0];
          goto LABEL_47;
        }

        v56 = v60;
      }

LABEL_48:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v57, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v57 = __p;
      }

      if (v21 && (v16 & 0x80) != 0)
      {
        operator delete(v22);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      v24 = v53;
      if (v53 >= v54)
      {
        v26 = 0x8E38E38E38E38E39 * ((v53 - v52) >> 3);
        v27 = v26 + 1;
        if (v26 + 1 > 0x38E38E38E38E38ELL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x1C71C71C71C71C72 * ((v54 - v52) >> 3) > v27)
        {
          v27 = 0x1C71C71C71C71C72 * ((v54 - v52) >> 3);
        }

        if (0x8E38E38E38E38E39 * ((v54 - v52) >> 3) >= 0x1C71C71C71C71C7)
        {
          v28 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v28 = v27;
        }

        v68 = &v52;
        if (v28)
        {
          if (v28 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v32 = 8 * ((v53 - v52) >> 3);
        v64 = 0;
        v65 = v32;
        v66 = v32;
        v67 = 0;
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((8 * ((v53 - v52) >> 3)), v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
        }

        else
        {
          *v32 = *&v55.__r_.__value_.__l.__data_;
          *(72 * v26 + 0x10) = *(&v55.__r_.__value_.__l + 2);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v32 + 24), v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
        }

        else
        {
          *(72 * v26 + 0x18) = *&v56.__r_.__value_.__l.__data_;
          *(72 * v26 + 0x28) = *(&v56.__r_.__value_.__l + 2);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v32 + 48), v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
        }

        else
        {
          *(72 * v26 + 0x30) = *&v57.__r_.__value_.__l.__data_;
          *(72 * v26 + 0x40) = *(&v57.__r_.__value_.__l + 2);
        }

        v33 = v66;
        v34 = v52;
        size = v53;
        v35 = (v65 + v52 - v53);
        if (v53 != v52)
        {
          v36 = v52;
          v37 = v65 + v52 - v53;
          do
          {
            v38 = *&v36->__r_.__value_.__l.__data_;
            *(v37 + 2) = *(&v36->__r_.__value_.__l + 2);
            *v37 = v38;
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
            v39 = *&v36[1].__r_.__value_.__l.__data_;
            *(v37 + 5) = *(&v36[1].__r_.__value_.__l + 2);
            *(v37 + 24) = v39;
            v36[1].__r_.__value_.__l.__size_ = 0;
            v36[1].__r_.__value_.__r.__words[2] = 0;
            v36[1].__r_.__value_.__r.__words[0] = 0;
            v40 = *&v36[2].__r_.__value_.__l.__data_;
            *(v37 + 8) = *(&v36[2].__r_.__value_.__l + 2);
            *(v37 + 3) = v40;
            v36[2].__r_.__value_.__l.__size_ = 0;
            v36[2].__r_.__value_.__r.__words[2] = 0;
            v36[2].__r_.__value_.__r.__words[0] = 0;
            v36 += 3;
            v37 += 72;
          }

          while (v36 != size);
          do
          {
            std::allocator_traits<std::allocator<re::StackFrame>>::destroy[abi:ne200100]<re::StackFrame,void,0>(v34);
            v34 += 72;
          }

          while (v34 != size);
          v34 = v52;
        }

        v31 = v33 + 3;
        v52 = v35;
        v53 = v31;
        v41 = v54;
        v54 = v67;
        v66 = v34;
        v67 = v41;
        v64 = v34;
        v65 = v34;
        std::__split_buffer<re::StackFrame>::~__split_buffer(&v64);
      }

      else
      {
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v53, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
        }

        else
        {
          v25 = *&v55.__r_.__value_.__l.__data_;
          v53->__r_.__value_.__r.__words[2] = v55.__r_.__value_.__r.__words[2];
          *&v24->__r_.__value_.__l.__data_ = v25;
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v24 + 1, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = *&v56.__r_.__value_.__l.__data_;
          v24[1].__r_.__value_.__r.__words[2] = v56.__r_.__value_.__r.__words[2];
          *&v24[1].__r_.__value_.__l.__data_ = v29;
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v24 + 2, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
        }

        else
        {
          v30 = *&v57.__r_.__value_.__l.__data_;
          v24[2].__r_.__value_.__r.__words[2] = v57.__r_.__value_.__r.__words[2];
          *&v24[2].__r_.__value_.__l.__data_ = v30;
        }

        v31 = v24 + 3;
      }

      v53 = v31;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }
    }
  }

  free(v3);
  v42 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v43 = a1;
    if (a1[23] < 0)
    {
      v43 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v43;
    _os_log_impl(&dword_2617CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Assertion failed: %s", buf, 0xCu);
  }

  v44 = v52;
  v45 = v53;
  if (v52 != v53)
  {
    v46 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = v44;
        if (SHIBYTE(v44->__r_.__value_.__r.__words[2]) < 0)
        {
          v47 = v44->__r_.__value_.__r.__words[0];
        }

        v48 = &v44[1];
        if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
        {
          v48 = v48->__words[0];
        }

        v49 = &v44[2];
        if (SHIBYTE(v44[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v49 = v49->__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v47;
        v70 = 2080;
        v71 = v48;
        v72 = 2080;
        v73 = v49;
        _os_log_impl(&dword_2617CB000, v46, OS_LOG_TYPE_ERROR, "%s %s %s", buf, 0x20u);
      }

      v44 += 3;
    }

    while (v44 != v45);
  }

  if (a1[23] < 0)
  {
    v42 = *a1;
  }

  fprintf(*MEMORY[0x277D85DF8], "Assertion failed: %s\nCheck os_log for additional details!\n", v42);
  *buf = &v52;
  std::vector<re::StackFrame>::__destroy_vector::operator()[abi:ne200100](buf);
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t rf::internal::debugBreakHandler(rf::internal *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = getpid();
  v3 = 648;
  result = sysctl(v4, 4u, v7, &v3, 0, 0);
  if ((v8 & 0x800) != 0)
  {
    result = raise(5);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void std::allocator_traits<std::allocator<re::StackFrame>>::destroy[abi:ne200100]<re::StackFrame,void,0>(uint64_t a1)
{
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

uint64_t std::__split_buffer<re::StackFrame>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<re::StackFrame>>::destroy[abi:ne200100]<re::StackFrame,void,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void re::StackFrame::~StackFrame(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<re::StackFrame>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator_traits<std::allocator<re::StackFrame>>::destroy[abi:ne200100]<re::StackFrame,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(int a1, uint64_t a2, unint64_t a3)
{
  v3 = std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::find<rf::data_flow::consumer::DirtyOption>(a2, a3, a1);
  if (v3)
  {
    v4 = std::any_cast[abi:ne200100]<BOOL const>(v3 + 3);
    if (!v4)
    {
      std::__throw_bad_any_cast[abi:ne200100]();
    }

    v5 = *v4;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

uint64_t rf::data_flow::consumer::MeshReconstructionConsumer::MeshReconstructionConsumer(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28740AB90;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  v5 = *(a2 + 32);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = &unk_287408D00;
  *(a1 + 152) = v5;
  *(a1 + 153) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 176) = dispatch_queue_create("AcousticMeshExportQueue", v7);

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 184) = dispatch_queue_create("AcousticMeshExportCompletionQueue", v9);

  *(a1 + 192) = dispatch_group_create();
  return a1;
}

uint64_t rf::data_flow::consumer::MeshReconstructionConsumer::setARStateData(uint64_t result, uint64_t a2)
{
  *(result + 144) = a2;
  *(result + 16) = a2;
  return result;
}

void rf::data_flow::consumer::MeshReconstructionConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  v183 = *MEMORY[0x277D85DE8];
  rf::data_flow::consumer::EntitiesProcessor::consumeLatestUpdate(a1 + 128, a2);
  if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
  {
    goto LABEL_221;
  }

  v167 = *(a1 + 16);
  std::mutex::lock(v167);
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v4 = MEMORY[0x26670CB10](*(a2 + 8));
  if (v4)
  {
    v6 = (a1 + 112);
    v5 = *(a1 + 112);
    if (REAssetGetAssetManager() != v4)
    {
      AssetHandle = REAssetManagerCreateAssetHandle();
      *buf = AssetHandle;
      REAssetHandleLoadAsync();
      v8 = *(a1 + 40);
      if (!v8 || v8 == *v6)
      {
        *(a1 + 40) = AssetHandle;
      }

      v9 = *(a1 + 48);
      if (!v9 || v9 == *v6)
      {
        *(a1 + 48) = AssetHandle;
      }

      RESharedPtr<REAsset>::operator=((a1 + 112), buf);
      RESharedPtr<REAsset>::~RESharedPtr(buf);
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v166 = *(a2 + 24);
  RESceneUnderstandingRootComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  if (v11 != 1)
  {
    rf::getMessage("We should have a root entity!", &__p);
    rf::internal::logAssert(&__p);
    if (SHIBYTE(v171) < 0)
    {
      operator delete(__p);
    }

    rf::internal::debugBreakHandler(v161);
    v168 = 0;
    v177 = 0u;
    v178 = 0u;
    v176 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    rf::getMessage("We should have a root entity!", uu);
    if (v181 >= 0)
    {
      v162 = uu;
    }

    else
    {
      v162 = *uu;
    }

    LODWORD(v174[0]) = 136315138;
    *(v174 + 4) = v162;
    _os_log_send_and_compose_impl();
    if (v181 < 0)
    {
      operator delete(*uu);
    }

    _os_crash_msg();
    __break(1u);
    goto LABEL_270;
  }

  v12 = *ComponentsOfClass;
  REComponentGetEntity();
  RESceneUnderstandingRenderOptionsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v13 = *(a1 + 24);
  RESceneUnderstandingRenderOptionsComponentSetOcclusionEnabled();
  v14 = *(a1 + 27);
  RESceneUnderstandingRenderOptionsComponentSetWireframeEnabled();
  v15 = *(a1 + 29);
  RESceneUnderstandingRenderOptionsComponentSetDepthFeatheringEnabled();
  v16 = *(a1 + 28);
  RESceneUnderstandingRenderOptionsComponentSetShadowEnabled();
  v17 = *(a1 + 26);
  RESceneUnderstandingRenderOptionsComponentSetPhysicsEnabled();
  RESceneUnderstandingComponentGetComponentType();
  *buf = RESceneGetComponentsOfClass();
  *&buf[8] = v18;
  *&buf[16] = 0uLL;
  v163 = (a1 + 64);
  if (rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(0, *(a1 + 64), *(a1 + 72)) >= 0x100u && (*(a1 + 24) & 1) == 0 && (*(a1 + 28) & 1) == 0 && (*(a1 + 27) & 1) == 0 && (*(a1 + 30) & 1) == 0 && (*(a1 + 32) & 1) == 0)
  {
    v20 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v21 = *buf + 8 * *&buf[8];
    if (v20 != v21)
    {
      v22 = v19;
      do
      {
        v23 = *v20;
        REComponentGetEntity();
        REMeshComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMeshComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        REMaterialParameterBlockArrayComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMaterialParameterBlockArrayComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v24 = v20 + 1;
        v20 = (*v22 + 8 * v22[1]);
        while (v24 != v20)
        {
          v25 = *v24;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v20 = v24;
            break;
          }

          ++v24;
        }
      }

      while (v20 != v21);
    }
  }

  if (rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(4, *(a1 + 64), *(a1 + 72)) >= 0x100u && (*(a1 + 24) & 1) == 0 && (*(a1 + 28) & 1) == 0 && (*(a1 + 27) & 1) == 0 && (*(a1 + 30) & 1) == 0 && (*(a1 + 32) & 1) == 0)
  {
    v27 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v28 = *buf + 8 * *&buf[8];
    if (v27 != v28)
    {
      v29 = v26;
      do
      {
        v30 = *v27;
        REComponentGetEntity();
        REMeshComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMeshComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        REMaterialParameterBlockArrayComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMaterialParameterBlockArrayComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v31 = v27 + 1;
        v27 = (*v29 + 8 * v29[1]);
        while (v31 != v27)
        {
          v32 = *v31;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v27 = v31;
            break;
          }

          ++v31;
        }
      }

      while (v27 != v28);
    }
  }

  if (rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(5, *(a1 + 64), *(a1 + 72)) >= 0x100u && ((*(a1 + 24) & 1) != 0 || (*(a1 + 28) & 1) != 0 || (*(a1 + 27) & 1) != 0 || (*(a1 + 30) & 1) != 0 || *(a1 + 32) == 1))
  {
    v34 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v35 = *buf + 8 * *&buf[8];
    if (v34 != v35)
    {
      v36 = v33;
      do
      {
        v37 = *v34;
        REComponentGetEntity();
        REMaterialParameterBlockArrayComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMaterialParameterBlockArrayComponentGetBlockAtIndex();
          v38 = *(a1 + 28);
          REMaterialParameterBlockSetBool();
          if (*(a1 + 56) == 1)
          {
            RENetworkMarkComponentDirty();
          }
        }

        v39 = v34 + 1;
        v34 = (*v36 + 8 * v36[1]);
        while (v39 != v34)
        {
          v40 = *v39;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v34 = v39;
            break;
          }

          ++v39;
        }
      }

      while (v34 != v35);
    }
  }

  if (rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(6, *(a1 + 64), *(a1 + 72)) >= 0x100u && ((*(a1 + 24) & 1) != 0 || (*(a1 + 28) & 1) != 0 || (*(a1 + 27) & 1) != 0 || (*(a1 + 30) & 1) != 0 || *(a1 + 32) == 1))
  {
    v42 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v43 = *buf + 8 * *&buf[8];
    if (v42 != v43)
    {
      v44 = v41;
      do
      {
        v45 = *v42;
        REComponentGetEntity();
        REMaterialParameterBlockArrayComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMaterialParameterBlockArrayComponentGetBlockAtIndex();
          v46 = *(a1 + 30);
          REMaterialParameterBlockSetBool();
          if (*(a1 + 56) == 1)
          {
            RENetworkMarkComponentDirty();
          }
        }

        v47 = v42 + 1;
        v42 = (*v44 + 8 * v44[1]);
        while (v47 != v42)
        {
          v48 = *v47;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v42 = v47;
            break;
          }

          ++v47;
        }
      }

      while (v42 != v43);
    }
  }

  v49 = std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::find<rf::data_flow::consumer::DirtyOption>(*(a1 + 64), *(a1 + 72), 3);
  if (v49)
  {
    v50 = v49[3];
    {
      std::__throw_bad_any_cast[abi:ne200100]();
    }

    v52 = *v51;
    if ((*(a1 + 24) & 1) != 0 || (*(a1 + 28) & 1) != 0 || (*(a1 + 27) & 1) != 0 || (*(a1 + 30) & 1) != 0 || *(a1 + 32) == 1)
    {
      v54 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
      v55 = *buf + 8 * *&buf[8];
      if (v54 != v55)
      {
        v56 = v53;
        do
        {
          v57 = *v54;
          REComponentGetEntity();
          REMeshComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            REMeshComponentSetMaterialAtIndex();
            if (*(a1 + 56) == 1)
            {
              RENetworkMarkComponentDirty();
            }
          }

          v58 = v54 + 1;
          v54 = (*v56 + 8 * v56[1]);
          while (v58 != v54)
          {
            v59 = *v58;
            if (RESceneUnderstandingComponentGetSourceType() == 1)
            {
              v54 = v58;
              break;
            }

            ++v58;
          }
        }

        while (v54 != v55);
      }
    }
  }

  v60 = rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(2, *(a1 + 64), *(a1 + 72));
  v61 = v60;
  if (v60 >= 0x100u)
  {
    v63 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v64 = *buf + 8 * *&buf[8];
    if (v63 != v64)
    {
      v65 = v62;
      do
      {
        v66 = *v63;
        REComponentGetEntity();
        RERigidBodyComponentGetComponentType();
        if (v61)
        {
          if (REEntityAddComponentByClass())
          {
            RERigidBodyComponentSetMotionType();
            if (*(a1 + 56) == 1)
            {
              RENetworkMarkComponentDirty();
            }
          }
        }

        else if (REEntityGetComponentByClass())
        {
          RERigidBodyComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v67 = v63 + 1;
        v63 = (*v65 + 8 * v65[1]);
        while (v67 != v63)
        {
          v68 = *v67;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v63 = v67;
            break;
          }

          ++v67;
        }
      }

      while (v63 != v64);
    }
  }

  v69 = rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(1, *(a1 + 64), *(a1 + 72));
  if (v69 >= 0x100u && (v69 & 1) == 0)
  {
    v71 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v72 = *buf + 8 * *&buf[8];
    if (v71 != v72)
    {
      v73 = v70;
      do
      {
        v74 = *v71;
        REComponentGetEntity();
        REColliderComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REColliderComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v75 = v71 + 1;
        v71 = (*v73 + 8 * v73[1]);
        while (v75 != v71)
        {
          v76 = *v75;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v71 = v75;
            break;
          }

          ++v75;
        }
      }

      while (v71 != v72);
    }
  }

  v77 = rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(8, *(a1 + 64), *(a1 + 72));
  if (v77 >= 0x100u && v77 == 0)
  {
    v80 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v81 = *buf + 8 * *&buf[8];
    if (v80 != v81)
    {
      v82 = v79;
      do
      {
        v83 = *v80;
        if (RESceneUnderstandingComponentIsEntityType())
        {
          v84 = *v80;
          REComponentGetEntity();
          REAcousticMeshComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v85 = v80 + 1;
        v80 = (*v82 + 8 * v82[1]);
        while (v85 != v80)
        {
          v86 = *v85;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v80 = v85;
            break;
          }

          ++v85;
        }
      }

      while (v80 != v81);
    }
  }

  if (rf::helpers::findInDirtyOptions<rf::data_flow::consumer::DirtyOption,BOOL>(9, *(a1 + 64), *(a1 + 72)) >= 0x100u && (*(a1 + 24) & 1) == 0 && (*(a1 + 28) & 1) == 0 && (*(a1 + 27) & 1) == 0 && (*(a1 + 30) & 1) == 0 && (*(a1 + 32) & 1) == 0)
  {
    v88 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,rf::data_flow::consumer::ClientMeshReconstructionConsumer::updateComponentsInSceneWithConfigChange(REScene *)::$_0> &>(buf);
    v89 = *buf + 8 * *&buf[8];
    if (v88 != v89)
    {
      v90 = v87;
      do
      {
        v91 = *v88;
        REComponentGetEntity();
        REMeshComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMeshComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        REMaterialParameterBlockArrayComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REMaterialParameterBlockArrayComponentGetComponentType();
          REEntityRemoveComponentByClass();
        }

        v92 = v88 + 1;
        v88 = (*v90 + 8 * v90[1]);
        while (v92 != v88)
        {
          v93 = *v92;
          if (RESceneUnderstandingComponentGetSourceType() == 1)
          {
            v88 = v92;
            break;
          }

          ++v92;
        }
      }

      while (v88 != v89);
    }
  }

  v94 = *(*(a1 + 16) + 4064);
  v95 = v94 > 4;
  v96 = (1 << v94) & 0x15;
  if (v95 || v96 == 0)
  {
    v98 = (a1 + 120);
    if (*(a1 + 120) == 1)
    {
      RESceneUnderstandingComponentGetComponentType();
      v100 = RESceneGetComponentsOfClass();
      if (v101)
      {
        v102 = v100;
        v103 = 8 * v101;
        do
        {
          v104 = *v102;
          if ((RESceneUnderstandingComponentIsEntityType() & 1) == 0)
          {
            v105 = *v102;
            REComponentGetEntity();
            REAnchorComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              IsAnchorExternal = REAnchorComponentGetIsAnchorExternal();
              if ((IsAnchorExternal & 1) == 0)
              {
                v107 = rf::realityFusionLogObject(IsAnchorExternal);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                {
                  Name = REEntityGetName();
                  LocalId = REEntityGetLocalId();
                  *buf = 136315394;
                  *&buf[4] = Name;
                  *&buf[12] = 2048;
                  *&buf[14] = LocalId;
                  _os_log_impl(&dword_2617CB000, v107, OS_LOG_TYPE_DEFAULT, "MeshReconstructionConsumer: Mark SU mesh entity %s(%llu) as external.", buf, 0x16u);
                }

                REAnchorComponentSetIsAnchorExternal();
              }
            }
          }

          ++v102;
          v103 -= 8;
        }

        while (v103);
      }
    }

    v99 = 0;
  }

  else
  {
    v98 = (a1 + 120);
    v99 = 1;
  }

  *v98 = v99;
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v164 = v167 + 1;
  v165 = *(a2 + 8);
  if (*(a1 + 24) & 1) != 0 || (*(a1 + 28) & 1) != 0 || (*(a1 + 27) & 1) != 0 || (*(a1 + 30) & 1) != 0 || (*(a1 + 32))
  {
    v110 = 3064;
    if (!*(a1 + 104))
    {
      v110 = 0;
    }

    std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(buf, v164 + v110);
    *(a1 + 104) = 1;
    if (!*&buf[24])
    {
      goto LABEL_190;
    }

    RESceneUnderstandingComponentGetComponentType();
    __p = RESceneGetComponentsOfClass();
    v170 = v111;
    v172 = 0;
    v173 = 0;
    v171 = buf;
    *uu = &v171;
    v112 = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::MeshReconstructionConsumer::updateMeshComponentsInSceneWithSnapshot(REServiceLocator *,REScene *,rf::LockedARStateData &)::$_0>,std::identity>(__p, __p + v111, uu);
    v172 = v112;
    LOBYTE(v173) = 1;
    v113 = __p + 8 * v170;
    if (v112 == v113)
    {
LABEL_190:
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(buf);
      goto LABEL_191;
    }

    while (1)
    {
      v141 = *v112;
      REComponentGetEntity();
      REAnchorComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        v142 = REAnchorComponentGetIsAnchorExternal();
        if (v142)
        {
          v143 = rf::realityFusionLogObject(v142);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            v144 = REEntityGetLocalId();
            *uu = 134217984;
            *&uu[4] = v144;
            _os_log_impl(&dword_2617CB000, v143, OS_LOG_TYPE_DEFAULT, "MeshReconstructionConsumer: Mark SU mesh entity %llu as relocalized.", uu, 0xCu);
          }

          REAnchorComponentSetIsAnchorExternal();
        }
      }

      REMeshComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      v145 = *v112;
      IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
      v180 = 0;
      v182 = 0;
      uuid_clear(uu);
      *uu = IdentifierPtr;
      v180 = 1;
      v174[0] = uu;
      v147 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(buf, uu);
      v149 = v147[6];
      v148 = v147[7];
      if (v148)
      {
        atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Mesh = REMeshComponentGetMesh();
      if ((*(v149 + 376) & 1) == 0)
      {
        break;
      }

      if (Mesh != *(v149 + 368))
      {
        REMeshComponentSetMesh();
        if (!REMeshComponentGetMaterialCount())
        {
          v151 = 40;
          if (*(v149 + 112))
          {
            v151 = 48;
          }

          v152 = *(a1 + v151);
          REMeshComponentAddMaterial();
        }

        if (*(a1 + 56) == 1)
        {
          RENetworkMarkComponentDirty();
        }

        REMaterialParameterBlockArrayComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        BlockAtIndex = REMaterialParameterBlockArrayComponentGetBlockAtIndex();
        v174[0] = 0;
        if (BlockAtIndex)
        {
          RERetain();
          v174[0] = BlockAtIndex;
        }

        else
        {
          MEMORY[0x26670CB70](v165);
          v154 = 40;
          if (*(v149 + 112))
          {
            v154 = 48;
          }

          v155 = *(a1 + v154);
          v168 = RERenderManagerMaterialParameterBlockCreateWithAsset();
          v156 = v174[0];
          v174[0] = v168;
          if (v156)
          {
            RERelease();
          }

          v168 = 0;
          RESharedPtr<REMaterialParameterBlock>::~RESharedPtr(&v168);
          REMaterialParameterBlockArrayComponentSetBlockAtIndex();
        }

        v157 = *(a1 + 28);
        REMaterialParameterBlockSetBool();
        v158 = *(a1 + 30);
        REMaterialParameterBlockSetBool();
        if (*(v149 + 280) == 1)
        {
          [*(v149 + 256) length];
        }

        REMaterialParameterBlockSetBool();
        if (*(v149 + 312) == 1)
        {
          [*(v149 + 288) length];
        }

        REMaterialParameterBlockSetBool();
        if (*(a1 + 56) == 1)
        {
          RENetworkMarkComponentDirty();
        }

        RESharedPtr<REMaterialParameterBlock>::~RESharedPtr(v174);
        if (re::internal::enableSignposts(0, 0))
        {
          if (!*(v149 + 24))
          {
            if (*(v149 + 16))
            {
              v160 = *v149;
            }

            else
            {
              v160 = v149;
            }

            *(v149 + 24) = ((*v160 >> 2) + (*v160 << 6) + v160[1] + 2654435769) ^ *v160;
          }

          v159 = *(v149 + 32);
          kdebug_trace();
        }
      }

      if (v148)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v148);
      }

      *uu = &v171;
      v112 = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::MeshReconstructionConsumer::updateMeshComponentsInSceneWithSnapshot(REServiceLocator *,REScene *,rf::LockedARStateData &)::$_0>,std::identity>(v112 + 1, __p + v170, uu);
      if (v112 == v113)
      {
        goto LABEL_190;
      }
    }

LABEL_270:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *(a1 + 104) = *(a1 + 32);
LABEL_191:
  if (*(a1 + 31) == 1)
  {
    RESceneUnderstandingComponentGetComponentType();
    v114 = RESceneGetComponentsOfClass();
    if (v115)
    {
      v116 = v114;
      v117 = 8 * v115;
      v118 = MEMORY[0x277D860B8];
      do
      {
        v119 = *v116;
        if (RESceneUnderstandingComponentIsEntityType())
        {
          Entity = REComponentGetEntity();
          REAcousticMeshComponentGetComponentType();
          if (REEntityGetOrAddComponentByClass())
          {
            SelfEnabled = REEntityGetSelfEnabled();
            if (*(a1 + 57) != SelfEnabled)
            {
              v122 = rf::realityFusionLogObject(SelfEnabled);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                v123 = *(a1 + 57);
                v124 = REEntityGetName();
                *buf = 67109378;
                *&buf[4] = v123;
                *&buf[8] = 2080;
                *&buf[10] = v124;
                _os_log_impl(&dword_2617CB000, v122, OS_LOG_TYPE_DEFAULT, "Setting enabled=%d for AcousticMeshComponent on entity: %s", buf, 0x12u);
              }

              MEMORY[0x26670C3A0](Entity, *(a1 + 57));
            }

            v125 = RESceneUnderstandingComponentGetIdentifierPtr();
            buf[16] = 0;
            *&buf[24] = 0;
            uuid_clear(buf);
            *buf = v125;
            buf[16] = 1;
            v126 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v167[50].__m_.__opaque, buf);
            if (v126)
            {
              RETransformComponentGetComponentType();
              REEntityGetComponentByClass();
              v127 = v118[2];
              v128 = v118[3];
              v129 = *v118;
              v130 = v118[1];
              RETransformComponentSetWorldMatrix4x4F();
              v131 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(&v167[1].__m_.__opaque[32], buf);
              if (v131)
              {
                v132 = *(v131[6] + 120);
                REAcousticMeshComponentSetLastUpdateTimestamp();
              }

              v133 = v126[6];
              REAcousticMeshComponentSetARMesh();
              if (*(a1 + 56) == 1)
              {
                RENetworkMarkComponentDirty();
              }
            }
          }
        }

        ++v116;
        v117 -= 8;
      }

      while (v117);
    }
  }

  v134 = *(a1 + 25);
  if (v134)
  {
    v135 = 3104;
    if (!*(a1 + 105))
    {
      v135 = 0;
    }

    std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(buf, v164 + v135);
    *(a1 + 105) = v134;
    if (*&buf[24])
    {
      std::unordered_map<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::unordered_map(&__p, buf);
      rf::helpers::updateSceneUnderstandingPhysicsComponentsWithMeshUpdates(v166, &__p, *(a1 + 26), *(a1 + 56));
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(&__p);
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(buf);
  }

  else
  {
    *(a1 + 105) = v134;
  }

  if (*(a1 + 88))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__deallocate_node(v163, *(a1 + 80));
    *(a1 + 80) = 0;
    v136 = *(a1 + 72);
    if (v136)
    {
      for (i = 0; i != v136; ++i)
      {
        *(*v163 + 8 * i) = 0;
      }
    }

    *(a1 + 88) = 0;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    v138 = *&v167[1].__m_.__opaque[16];
    sig = v167[2].__m_.__sig;
    kdebug_trace();
  }

  std::mutex::unlock(v167);
LABEL_221:
  v140 = *MEMORY[0x277D85DE8];
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setRigidbodyEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[26] != a2)
  {
    this[26] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 2);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261840BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setCollisionEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[25] != a2)
  {
    this[25] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 1);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261840C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setOcclusionEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[24] != a2)
  {
    this[24] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 0);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261840D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t (**rf::data_flow::consumer::MeshReconstructionConsumer::setMeshMaterial(uint64_t (**result)(void, void, void, void, void), uint64_t (*a2)(void, void, void, void, void)))(void, void, void, void, void)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (result[5] != a2)
  {
    result[5] = a2;
    v3[0] = std::__any_imp::_SmallHandler<REAsset *>::__handle[abi:ne200100];
    v3[1] = a2;
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(result + 8, 3);
    result = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261840DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t (**rf::data_flow::consumer::MeshReconstructionConsumer::setSyntheticMeshMaterial(uint64_t (**result)(void, void, void, void, void), uint64_t (*a2)(void, void, void, void, void)))(void, void, void, void, void)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (result[6] != a2)
  {
    result[6] = a2;
    v3[0] = std::__any_imp::_SmallHandler<REAsset *>::__handle[abi:ne200100];
    v3[1] = a2;
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(result + 8, 3);
    result = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261840E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setWireframeEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[27] != a2)
  {
    this[27] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 4);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261840F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setLightingEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[28] != a2)
  {
    this[28] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 5);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_261841004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setDynamicLightingEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[30] != a2)
  {
    this[30] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 6);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2618410B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *rf::data_flow::consumer::MeshReconstructionConsumer::setAtmosphereOcclusionEnabled(_BYTE *this, int a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (this[32] != a2)
  {
    this[32] = a2;
    v3[1] = a2;
    v3[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(this + 8, 9);
    this = std::any::reset[abi:ne200100](v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_26184116C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::MeshReconstructionConsumer::getBoundingBox@<X0>(int a1@<W2>, float32x4_t *a2@<X8>)
{
  RESceneUnderstandingComponentGetComponentType();
  result = RESceneGetComponentsOfClass();
  v6 = result;
  v7 = v5;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  *a2 = vnegq_f32(v8);
  a2[1] = v8;
  if (v5)
  {
    v9 = 8 * v5;
    for (i = result; ; ++i)
    {
      v11 = *i;
      result = RESceneUnderstandingComponentGetSourceType();
      if (result == 1)
      {
        break;
      }

      v9 -= 8;
      if (!v9)
      {
        return result;
      }
    }
  }

  else
  {
    i = result;
  }

  v12 = (v6 + 8 * v7);
  if (i != v12)
  {
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    v14.i64[0] = 0x7F0000007FLL;
    v14.i64[1] = 0x7F0000007FLL;
    v21 = vnegq_f32(v13);
    v22 = v14;
    while (1)
    {
      v15 = *i;
      result = REComponentGetEntity();
      if (a1 != 1)
      {
        break;
      }

      RETransformComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (result)
      {
        REColliderComponentGetComponentType();
        result = REEntityGetComponentByClass();
        if (result)
        {
          REColliderComponentGetShape();
          RECollisionShapeAssetGetCollisionShape();
          RETransformComponentGetWorldPose();
          result = RECollisionShapeGetBoundingBox();
LABEL_16:
          v19 = v21;
          v18 = v22;
          v19.i32[3] = 0;
          v16.i32[3] = 0;
          v18.i32[3] = 0;
          v17.i32[3] = 0;
          v21 = vminnmq_f32(v19, v16);
          v22 = vmaxnmq_f32(v18, v17);
          *a2 = v21;
          a2[1] = v22;
          goto LABEL_17;
        }
      }

      do
      {
LABEL_17:
        if (++i == v12)
        {
          return result;
        }

        v20 = *i;
        result = RESceneUnderstandingComponentGetSourceType();
      }

      while (result != 1);
      if (i == v12)
      {
        return result;
      }
    }

    if (!a1)
    {
      RETransformComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        goto LABEL_17;
      }

      RETransformComponentGetWorldMatrix4x4F();
      result = REEntityComputeMeshBounds();
    }

    goto LABEL_16;
  }

  return result;
}

void rf::data_flow::consumer::MeshReconstructionConsumer::exportAcousticMeshComponents(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  RESceneUnderstandingComponentGetComponentType();
  RESceneGetComponentsOfClass();
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  a3;
  v4 = [v9 createDirectoryAtURL:? withIntermediateDirectories:? attributes:? error:?];
  v5 = 0;
  v8 = v5;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v7 = rf::realityFusionLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      block = 138412290;
      block_4 = v8;
      _os_log_error_impl(&dword_2617CB000, v7, OS_LOG_TYPE_ERROR, "[MeshReconstructionConsumer::exportAcousticMeshComponentsInScene] Could not create export directory: %@", &block, 0xCu);
    }
  }

  operator new();
}

void ___ZNK2rf9data_flow8consumer26MeshReconstructionConsumer28exportAcousticMeshComponentsEP7REScenePK7__CFURLNSt3__18functionIFvP7NSErrorEEE_block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (**(a1 + 32) != 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v8 = *MEMORY[0x277CCA450];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"RealityFusion MeshReconstructionConsumer::exportAcousticMeshComponents has failure in exporting acoustic meshes. For details look for logs containing [MeshReconstructionConsumer::exportAcousticMeshComponentsInScene]"];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"RealityFusion" code:-1 userInfo:v3];
  if (*(a1 + 32))
  {
LABEL_5:
    MEMORY[0x26670D060]();
  }

  if (*(a1 + 64))
  {
    v7 = v4;
    v5 = *(a1 + 64);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void rf::data_flow::consumer::MeshReconstructionConsumer::~MeshReconstructionConsumer(id *this)
{
  *this = &unk_28740AB90;

  RESharedPtr<REAsset>::~RESharedPtr(this + 14);
  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table((this + 8));
}

{
  *this = &unk_28740AB90;

  RESharedPtr<REAsset>::~RESharedPtr(this + 14);
  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table((this + 8));

  JUMPOUT(0x26670D060);
}

void *RESharedPtr<REMaterialParameterBlock>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

void *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::MeshReconstructionConsumer::updateMeshComponentsInSceneWithSnapshot(REServiceLocator *,REScene *,rf::LockedARStateData &)::$_0>,std::identity>(void *a1, void *a2, void ***a3)
{
  v3 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a3;
      v7 = *v5;
      if (RESceneUnderstandingComponentGetSourceType() != 2)
      {
        v8 = *v6;
        IdentifierPtr = RESceneUnderstandingComponentGetIdentifierPtr();
        v14 = 0;
        v15 = 0;
        uuid_clear(uu);
        *uu = IdentifierPtr;
        v14 = 1;
        v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v8, uu);
        if (v10)
        {
          if (*(v10[6] + 376))
          {
            break;
          }
        }
      }

      if (++v5 == v3)
      {
        goto LABEL_9;
      }
    }

    v3 = v5;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void *std::__any_imp::_SmallHandler<REAsset *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<REAsset *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<REAsset *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<REAsset *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void ___ZZNK2rf9data_flow8consumer26MeshReconstructionConsumer28exportAcousticMeshComponentsEP7REScenePK7__CFURLNSt3__18functionIFvP7NSErrorEEEEN3__0clEP11REComponent_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CD7AD0]);
  v3 = [*(a1 + 64) allocator];
  v4 = [v2 initWithBufferAllocator:v3];

  [v4 addObject:*(a1 + 64)];
  v5 = MEMORY[0x277CCACA8];
  rf::data_flow::RFUUID::string((a1 + 32), __p);
  if (v14 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  v7 = [v5 stringWithFormat:@"%s.obj", v6];
  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v8 = [*(a1 + 72) URLByAppendingPathComponent:v7];
  *__p = 0;
  v9 = [v4 exportAssetToURL:v8 error:__p];

  if ((v9 & 1) == 0)
  {
    **(a1 + 80) = 1;
    v11 = rf::realityFusionLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__p = 138412290;
      *&__p[4] = 0;
      _os_log_error_impl(&dword_2617CB000, v11, OS_LOG_TYPE_ERROR, "[MeshReconstructionConsumer::exportAcousticMeshComponentsInScene]: error when exporting mdlAsset %@", __p, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __copy_helper_block_ea8_32c170_ZTSZZNK2rf9data_flow8consumer26MeshReconstructionConsumer28exportAcousticMeshComponentsEP7REScenePK7__CFURLNSt3__18functionIFvP7NSErrorEEEEN3__0clEP11REComponentEUlSB_E_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

void __destroy_helper_block_ea8_32c170_ZTSZZNK2rf9data_flow8consumer26MeshReconstructionConsumer28exportAcousticMeshComponentsEP7REScenePK7__CFURLNSt3__18functionIFvP7NSErrorEEEEN3__0clEP11REComponentEUlSB_E_(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t *std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::find<rf::data_flow::consumer::DirtyOption>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::__unordered_map_hasher<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::hash<rf::data_flow::consumer::DirtyOption>,std::equal_to<rf::data_flow::consumer::DirtyOption>,true>,std::__unordered_map_equal<rf::data_flow::consumer::DirtyOption,std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>,std::equal_to<rf::data_flow::consumer::DirtyOption>,std::hash<rf::data_flow::consumer::DirtyOption>,true>,std::allocator<std::__hash_value_type<rf::data_flow::consumer::DirtyOption,std::any>>>::__emplace_unique_key_args<rf::data_flow::consumer::DirtyOption,std::pair<rf::data_flow::consumer::DirtyOption const,std::any>>(void *result, int a2)
{
  v2 = result[1];
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
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2618422E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void RFRayCastingServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4D98 != -1)
  {
    dispatch_once(&qword_2810C4D98, &__block_literal_global_15);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

__n128 RFRayCastingServiceGetRayCastingResult@<Q0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *a1 = *MEMORY[0x277D860B8];
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = -1073741824;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer18RayCastingConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_26[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::RayCastingConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4DA0 = 0u;
  xmmword_2810C4DB0 = 0u;
  xmmword_2810C4DC0 = 0u;
  unk_2810C4DD0 = 0u;
  xmmword_2810C4DE0 = 0u;
  unk_2810C4DF0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4DA0 + 1) = p_dst;
  *&xmmword_2810C4DB0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>>::initCallback;
  *&xmmword_2810C4DC0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>>::finalizeCallback;
  qword_2810C4DD8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4DE0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_17 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261842648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::RayCastingConsumer>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void *rf::TrackableResourceComponent::instance(rf::TrackableResourceComponent *this)
{
  {
    rf::TrackableResourceComponent::TrackableResourceComponent(&rf::TrackableResourceComponent::instance(void)::instance);
  }

  return &rf::TrackableResourceComponent::instance(void)::instance;
}

rf::TrackableResourceComponent *rf::TrackableResourceComponent::TrackableResourceComponent(rf::TrackableResourceComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  rf::TrackableResourceComponent::buildIntrospectionInfo(this);
  rf::TrackableResourceComponent::registerTrackableResourceComponent(this);
  return this;
}

void sub_261842764(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::TrackableResourceComponent::buildIntrospectionInfo(uint64_t this)
{
  if (!*(this + 136))
  {
    v1 = this;
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::TrackableResourceComponent::registerTrackableResourceComponent(void *this)
{
  if (!*this)
  {
    v1 = this;
    v2 = this[17];
    this = RECustomComponentTypeCreate();
    *v1 = this;
  }

  return this;
}

void *rf::TrackableResourceComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 0)
  {
    rf::TrackableResourceComponent::buildIntrospectionInfo(this);
    this = rf::TrackableResourceComponent::registerTrackableResourceComponent(v1);
    v2 = *(v1 + 36);
  }

  *(v1 + 36) = v2 + 1;
  return this;
}

void rf::TrackableResourceComponent::registerTrackableResourceComponent(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::TrackableResourceComponent::registerTrackableResourceComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::TrackableResourceComponent::registerTrackableResourceComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::TrackableResourceComponent::registerTrackableResourceComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::TrackableResourceComponent::registerTrackableResourceComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::helpers::drawArrowWithSphere(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, __int128 *a5)
{
  v8 = *a4;
  v9 = *a3;
  REPrimitiveRenderAddLine();
  REPrimitiveRenderSetLineWidth();
  v10 = *a5;
  REPrimitiveRenderSetLineColor();
  v11 = vaddq_f32(*a3, vmulq_f32(*a4, vdupq_n_s32(0x3DCCCCCDu)));
  REPrimitiveRenderAddShape();
  v12 = *a5;
  REPrimitiveRenderSetShapeColor();

  return REPrimitiveRenderSetShapeScale();
}

uint64_t rf::helpers::drawAxis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = vmulq_f32(*a3, 0);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  REPrimitiveRenderAddLine();
  REPrimitiveRenderSetLineWidth();
  REPrimitiveRenderSetLineColor();
  v8 = *(a3 + 48);
  v9 = vmlaq_f32(vmlaq_f32(vmulq_f32(*a3, 0), 0, *(a3 + 16)), 0, *(a3 + 32));
  REPrimitiveRenderAddLine();
  REPrimitiveRenderSetLineWidth();
  REPrimitiveRenderSetLineColor();
  v10 = *(a3 + 48);
  v11 = vmlaq_f32(vmlaq_f32(vmulq_f32(*a3, 0), 0, *(a3 + 16)), 0, *(a3 + 32));
  REPrimitiveRenderAddLine();
  REPrimitiveRenderSetLineWidth();

  return REPrimitiveRenderSetLineColor();
}

uint64_t rf::helpers::drawAxisWithSphere(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v6 = a3[1];
  v7 = vmulq_f32(*a3, 0);
  v8 = *a3;
  v9 = a3[2];
  v10 = vmlaq_f32(vmlaq_f32(*a3, 0, v6), 0, v9);
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v28 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v13 = vmlaq_f32(vaddq_f32(v7, v6), 0, v9);
  v14 = vmulq_f32(v13, v13);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v27 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v16 = vaddq_f32(vmlaq_f32(v7, 0, v6), v9);
  v17 = vmulq_f32(v16, v16);
  *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v18);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
  v19 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v20 = vaddq_f32(a3[3], vmlaq_f32(vmlaq_f32(vmulq_f32(v8, 0), 0, v6), 0, a3[2]));
  v25 = vdivq_f32(v20, vdupq_laneq_s32(v20, 3));
  v26 = v19;
  v24 = xmmword_26185E190;
  rf::helpers::drawArrowWithSphere(a1, a2, &v25, &v28, &v24);
  v21 = vaddq_f32(a3[3], vmlaq_f32(vmlaq_f32(vmulq_f32(*a3, 0), 0, a3[1]), 0, a3[2]));
  v24 = xmmword_261865AF0;
  v25 = vdivq_f32(v21, vdupq_laneq_s32(v21, 3));
  rf::helpers::drawArrowWithSphere(a1, a2, &v25, &v27, &v24);
  v22 = vaddq_f32(a3[3], vmlaq_f32(vmlaq_f32(vmulq_f32(*a3, 0), 0, a3[1]), 0, a3[2]));
  v24 = xmmword_261865AE0;
  v25 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
  return rf::helpers::drawArrowWithSphere(a1, a2, &v25, &v26, &v24);
}

uint64_t rf::helpers::drawAnchorCube(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  v5 = vaddq_f32(a3[3], vmlaq_f32(vmlaq_f32(vmulq_f32(*a3, 0), 0, v3), 0, v4));
  v7[0] = *a3;
  v7[1] = v3;
  v7[2] = v4;
  re::makeQuaternionFromMatrix<float>(v7);
  REPrimitiveRenderAddShape();
  REPrimitiveRenderSetShapeColor();
  return REPrimitiveRenderSetShapeScale();
}

uint64_t rf::helpers::drawPlaneRect(uint64_t a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  v4 = 0;
  v23[16] = *MEMORY[0x277D85DE8];
  v5 = a3[2];
  v22 = a3[3];
  v6 = vmulq_f32(*a3, *a3);
  v7 = vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7));
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32)));
  v6.i32[0] = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32))).u32[0];
  v8 = vmulq_f32(v5, v5);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(vmulq_n_f32(*a3, v6.f32[0]), *a4 * 0.5);
  v11 = vaddq_f32(v22, v10);
  v12 = vmulq_n_f32(vmulq_n_f32(v5, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]), a4[2] * 0.5);
  v13 = vsubq_f32(v22, v10);
  v20 = vaddq_f32(v12, v13);
  v21 = vaddq_f32(v12, v11);
  v18 = vsubq_f32(v11, v12);
  v19 = vsubq_f32(v13, v12);
  v23[0] = &v21;
  v23[1] = &v20;
  v23[2] = &v21;
  v23[3] = &v18;
  v23[10] = &v22;
  v23[11] = &v21;
  v23[4] = &v20;
  v23[5] = &v19;
  v23[6] = &v19;
  v23[7] = &v18;
  v23[8] = &v19;
  v23[9] = &v22;
  v23[12] = &v18;
  v23[13] = &v22;
  v23[14] = &v22;
  v23[15] = &v20;
  do
  {
    v14 = *v23[v4];
    v15 = *v23[v4 + 1];
    REPrimitiveRenderAddLine();
    REPrimitiveRenderSetLineColor();
    result = REPrimitiveRenderSetLineWidth();
    v4 += 2;
  }

  while (v4 != 16);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rf::helpers::drawBox(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v14 = *(a3 + 48);
  v15[0] = *a3;
  v15[1] = v5;
  v15[2] = v6;
  re::makeQuaternionFromMatrix<float>(v15);
  REPrimitiveRenderAddShape();
  __asm { FMOV            V0.4S, #1.0 }

  REPrimitiveRenderSetShapeColor();
  v12 = *a4;
  return REPrimitiveRenderSetShapeScale();
}

uint64_t rf::helpers::drawSphere(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v9 = *(a3 + 48);
  v10[0] = *a3;
  v10[1] = v5;
  v10[2] = v6;
  re::makeQuaternionFromMatrix<float>(v10);
  REPrimitiveRenderAddShape();
  v7 = *a4;
  REPrimitiveRenderSetShapeColor();
  return REPrimitiveRenderSetShapeScale();
}

uint64_t rf::helpers::drawBoundingBox(uint64_t a1, uint64_t a2, float32x4_t *a3, float *a4, __int128 *a5)
{
  v6 = 0;
  v40[24] = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = vmulq_f32(*a3, *a3);
  v9 = vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v8.f32[2] + v9));
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v8.f32[2] + v9), vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_f32(v7, v7);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v13 = a3[2];
  v12 = a3[3];
  v14 = vmulq_f32(v13, v13);
  v15 = vaddv_f32(*v14.f32);
  v10.i32[0] = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).u32[0];
  v16 = vrsqrte_f32(COERCE_UNSIGNED_INT(v14.f32[2] + v15));
  v17 = vmul_f32(v16, vrsqrts_f32(COERCE_UNSIGNED_INT(v14.f32[2] + v15), vmul_f32(v16, v16)));
  v18 = vmulq_n_f32(vmulq_n_f32(*a3, vmul_f32(*v8.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v8.f32[2] + v9), vmul_f32(*v8.f32, *v8.f32))).f32[0]), *a4 * 0.5);
  v19 = vaddq_f32(v12, v18);
  v20 = vmulq_n_f32(vmulq_n_f32(v13, vmul_f32(v17, vrsqrts_f32(COERCE_UNSIGNED_INT(v14.f32[2] + v15), vmul_f32(v17, v17))).f32[0]), a4[2] * 0.5);
  v21 = vaddq_f32(v19, v20);
  v22 = vmulq_n_f32(vmulq_n_f32(v7, v10.f32[0]), a4[1] * 0.5);
  v23 = vsubq_f32(v12, v18);
  v24 = vaddq_f32(v23, v20);
  v38 = vaddq_f32(v22, v24);
  v39 = vaddq_f32(v22, v21);
  v25 = vsubq_f32(v23, v20);
  v26 = vsubq_f32(v19, v20);
  v36 = vaddq_f32(v22, v26);
  v37 = vaddq_f32(v22, v25);
  v34 = vsubq_f32(v24, v22);
  v35 = vsubq_f32(v21, v22);
  v32 = vsubq_f32(v26, v22);
  v33 = vsubq_f32(v25, v22);
  v40[0] = &v39;
  v40[1] = &v38;
  v40[2] = &v39;
  v40[3] = &v36;
  v40[4] = &v38;
  v40[5] = &v37;
  v40[6] = &v37;
  v40[7] = &v36;
  v40[8] = &v35;
  v40[9] = &v34;
  v40[10] = &v35;
  v40[11] = &v32;
  v40[12] = &v34;
  v40[13] = &v33;
  v40[14] = &v33;
  v40[15] = &v32;
  v40[16] = &v39;
  v40[17] = &v35;
  v40[18] = &v38;
  v40[19] = &v34;
  v40[20] = &v36;
  v40[21] = &v32;
  v40[22] = &v37;
  v40[23] = &v33;
  do
  {
    v27 = *v40[v6];
    v28 = *v40[v6 + 1];
    REPrimitiveRenderAddLine();
    v29 = *a5;
    REPrimitiveRenderSetLineColor();
    result = REPrimitiveRenderSetLineWidth();
    v6 += 2;
  }

  while (v6 != 24);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::makeQuaternionFromMatrix<float>(float32x4_t *a1)
{
  v1 = a1[1];
  v2 = vmulq_f32(*a1, *a1);
  v3.i32[1] = 0;
  v4 = COERCE_UNSIGNED_INT(v2.f32[2] + vaddv_f32(*v2.f32));
  *v2.f32 = vrsqrte_f32(v4);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v2.f32, *v2.f32)));
  v5 = vmulq_n_f32(*a1, vmul_f32(*v2.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v6 = vmulq_f32(v1, v5);
  v7 = vmulq_f32(v5, v5);
  v8 = a1[2];
  v9 = vmulq_f32(v5, v8);
  *v9.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v7.i8), vzip2_s32(*v9.i8, *v7.i8)));
  v10 = vsubq_f32(v1, vmulq_n_f32(v5, (v6.f32[2] + vaddv_f32(*v6.f32)) / *&v9.i32[1]));
  v11 = vmulq_f32(v10, v10);
  *v7.i32 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v7.u32[0]);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v11.f32, *v11.f32)));
  v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v13 = vsubq_f32(v8, vmulq_n_f32(v5, *v9.i32 / *&v9.i32[1]));
  v14 = vmulq_f32(v8, v12);
  v15 = vmulq_f32(v12, v12);
  *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
  v16 = vsubq_f32(v13, vmulq_n_f32(v12, vdiv_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).f32[0]));
  v17 = vmulq_f32(v16, v16);
  *v15.i32 = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v15.u32[0]);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32)));
  v18 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v19 = (v5.f32[0] + v12.f32[1]) + v18.f32[2];
  if (v19 >= 0.0)
  {
    v26 = sqrtf(v19 + 1.0);
    v3.f32[0] = v26 + v26;
    v27 = vrecpe_f32(v3);
    v28 = vmul_f32(v27, vrecps_f32(v3, v27));
    v29 = vmul_f32(v28, vrecps_f32(v3, v28)).f32[0];
    v3.f32[0] = (v12.f32[2] - v18.f32[1]) * v29;
    v25 = (v18.f32[0] - v5.f32[2]) * v29;
  }

  else if (v5.f32[0] < v12.f32[1] || v5.f32[0] < v18.f32[2])
  {
    v30 = 1.0 - v5.f32[0];
    if (v12.f32[1] >= v18.f32[2])
    {
      v35 = sqrtf(v12.f32[1] + (v30 - v18.f32[2]));
      v36 = v35 + v35;
      v37 = vrecpe_f32(COERCE_UNSIGNED_INT(v35 + v35));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v35 + v35), v37));
      v3.f32[0] = (v5.f32[1] + v12.f32[0]) * vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v35 + v35), v38)).f32[0];
      v25 = v36 * 0.25;
    }

    else
    {
      v31 = sqrtf((v30 - v12.f32[1]) + v18.f32[2]);
      v32 = vrecpe_f32(COERCE_UNSIGNED_INT(v31 + v31));
      v33 = vmul_f32(v32, vrecps_f32(COERCE_UNSIGNED_INT(v31 + v31), v32));
      v34 = vmul_f32(v33, vrecps_f32(COERCE_UNSIGNED_INT(v31 + v31), v33)).f32[0];
      v3.f32[0] = (v5.f32[2] + v18.f32[0]) * v34;
      v25 = (v12.f32[2] + v18.f32[1]) * v34;
    }
  }

  else
  {
    v20 = sqrtf(v5.f32[0] + ((1.0 - v12.f32[1]) - v18.f32[2]));
    *&v21 = v20 + v20;
    v22 = vrecpe_f32(v21);
    v23 = vmul_f32(v22, vrecps_f32(v21, v22));
    v24 = vmul_f32(v23, vrecps_f32(v21, v23)).f32[0];
    v3.f32[0] = *&v21 * 0.25;
    v25 = (v5.f32[1] + v12.f32[0]) * v24;
  }

  v3.f32[1] = v25;
  return v3;
}

float rf::ColorPalette::setColor(void *a1, int a2, _OWORD *a3, float result)
{
  if (a2 >= 1 && (a1[1] - *a1) >> 4 > a2)
  {
    v4 = *a3;
    v5 = 1.0;
    if (COERCE_FLOAT(*a3) <= 1.0)
    {
      LODWORD(v6) = *a3;
    }

    else
    {
      *&v6 = 1.0;
    }

    if (*&v4 < 0.0)
    {
      *&v6 = 0.0;
    }

    if (*(&v4 + 1) <= 1.0)
    {
      LODWORD(v7) = HIDWORD(*a3);
    }

    else
    {
      v7 = 1.0;
    }

    if (*(&v4 + 1) >= 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    *(&v6 + 1) = v8;
    if (*(&v4 + 2) <= 1.0)
    {
      LODWORD(v9) = DWORD2(*(a3 + 8));
    }

    else
    {
      v9 = 1.0;
    }

    if (*(&v4 + 2) >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    *(&v6 + 2) = v10;
    if (*(&v4 + 3) <= 1.0)
    {
      LODWORD(v5) = HIDWORD(*a3);
    }

    if (*(&v4 + 3) >= 0.0)
    {
      result = v5;
    }

    else
    {
      result = 0.0;
    }

    *(&v6 + 3) = result;
    *(*a1 + 16 * a2) = v6;
  }

  return result;
}

uint64_t rf::ColorPalette::setColorVisibility(uint64_t this, unsigned int a2)
{
  if (*(this + 56))
  {
    v2 = 0;
    v3 = *(this + 48);
    do
    {
      v4 = v2 >> 6;
      v5 = 1 << v2;
      if ((a2 >> v2))
      {
        v6 = *(v3 + 8 * v4) | v5;
      }

      else
      {
        v6 = *(v3 + 8 * v4) & ~v5;
      }

      *(v3 + 8 * v4) = v6;
      ++v2;
    }

    while (v2 < *(this + 56));
  }

  return this;
}

rf::ColorPaletteMaterialARKit *rf::ColorPaletteMaterialARKit::ColorPaletteMaterialARKit(rf::ColorPaletteMaterialARKit *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 6) = 0;
  v7 = this + 48;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10[0] = xmmword_261865B20;
  v10[1] = xmmword_261865B20;
  v10[2] = xmmword_261865B30;
  v10[3] = xmmword_261865B40;
  v10[4] = xmmword_261865B50;
  v10[5] = xmmword_261865B60;
  v10[6] = xmmword_261865B70;
  v10[7] = xmmword_261865B80;
  v10[8] = xmmword_261865B90;
  v10[9] = xmmword_261865BA0;
  v10[10] = xmmword_261865BB0;
  v10[11] = xmmword_261865BC0;
  v10[12] = xmmword_261865BD0;
  v10[13] = xmmword_261865BE0;
  v10[14] = xmmword_261865BF0;
  v10[15] = xmmword_261865C00;
  v10[16] = xmmword_261865C10;
  v10[17] = xmmword_261865C20;
  v10[18] = xmmword_261865C30;
  v10[19] = xmmword_261865C40;
  v10[20] = xmmword_261865C50;
  v10[21] = xmmword_261865C60;
  v10[22] = xmmword_261865C70;
  v10[23] = xmmword_261865C80;
  v10[24] = xmmword_261865C90;
  v10[25] = xmmword_261865CA0;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPKS1_S7_EEvT_T0_l(this, v10, v11, 0x1AuLL);
  std::vector<BOOL>::resize(v7, (*(this + 1) - *this) >> 4);
  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v5 = *(a1 + 16);
  if (v5 << 6 < v4 || v3 > (v5 << 6) - v4)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if ((v5 << 6) > 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v5 << 7;
      if (v7 <= ((a2 + 63) & 0x7FFFFFFFFFFFFFC0))
      {
        v7 = (a2 + 63) & 0x7FFFFFFFFFFFFFC0;
      }

      if (!v7)
      {
        v11 = *a1;
        if (v3 < 1)
        {
          LODWORD(v9) = 0;
          v8 = 0;
        }

        else
        {
          v12 = v3 >> 6;
          if (v3 >= 0x40)
          {
            memmove(0, *a1, 8 * v12);
          }

          v8 = (8 * v12);
          v9 = v3 & 0x3F;
          if (v9)
          {
            *(8 * v12) = *(8 * v12) & ~(0xFFFFFFFFFFFFFFFFLL >> -v9) | v11[v12] & (0xFFFFFFFFFFFFFFFFLL >> -v9);
          }

          v11 = *a1;
        }

        *a1 = 0;
        *(a1 + 8) = a2;
        *(a1 + 16) = 0;
        if (v11)
        {
          operator delete(v11);
        }

        goto LABEL_26;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
LABEL_13:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }
    }

    memset(v15, 0, sizeof(v15));
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v15, ((v7 - 1) >> 6) + 1);
  }

  v8 = (*a1 + 8 * (v3 >> 6));
  v9 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
LABEL_26:
  if (v9)
  {
    if ((64 - v9) >= v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = (64 - v9);
    }

    *v8++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v9 - v13)) & (-1 << v9);
    v4 -= v13;
  }

  v14 = v4 >> 6;
  if (v4 >= 0x40)
  {
    memset(v8, 255, 8 * v14);
  }

  if ((v4 & 0x3F) != 0)
  {
    v8[v14] |= 0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F);
  }
}