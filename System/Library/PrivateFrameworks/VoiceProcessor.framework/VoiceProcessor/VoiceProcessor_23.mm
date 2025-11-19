void sub_2726531BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  __cxa_free_exception(v55);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v56 - 192));
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a32);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(CFMutableDictionaryRef **a1, char *__s, char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    goto LABEL_10;
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_11;
  }

  applesauce::CF::TypeRef::TypeRef(&value, a3);
  if (!value)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    value = 0;
    key = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(**a1, key, value);
  if (value)
  {
    CFRelease(value);
  }

  if (key)
  {
    CFRelease(key);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_27265357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::make_ArrayRef(CFArrayRef *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v7 = 0x5555555555555558 * ((v4 - *a2) >> 3);
  MEMORY[0x28223BE20](a1);
  v9 = (v26 - v8);
  v26[1] = v6;
  if (v4 != v5)
  {
    bzero(v26 - v8, v7);
    v10 = 0;
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v12 + v10);
      if ((*(v12 + v10 + 23) & 0x80000000) == 0)
      {
        break;
      }

      v13 = *v13;
      v14 = strlen(v13);
      if (v13)
      {
        goto LABEL_6;
      }

      v15 = 0;
LABEL_7:
      v16 = v9[v11];
      v9[v11] = v15;
      if (v16)
      {
        CFRelease(v16);
      }

      ++v11;
      v12 = *a2;
      v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      v10 += 24;
      if (v11 >= v6)
      {
        goto LABEL_12;
      }
    }

    v14 = strlen(v13);
LABEL_6:
    v15 = CFStringCreateWithBytes(0, v13, v14, 0x8000100u, 0);
    v27 = v15;
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_7;
  }

LABEL_12:
  std::vector<void const*>::vector[abi:ne200100](&v27, v6);
  p_isa = &v27->isa;
  if (v6)
  {
    v18 = 8 * v6;
    v19 = v9;
    do
    {
      v20 = *v19++;
      *p_isa++ = v20;
      v18 -= 8;
    }

    while (v18);
    p_isa = &v27->isa;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(p_isa, v28);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  *a1 = CFArray;
  if (v4 != v5)
  {
    v22 = (v9 - 1);
    do
    {
      v23 = *&v22[v7];
      if (v23)
      {
        CFRelease(v23);
      }

      v7 -= 8;
    }

    while (v7);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2726537F4(_Unwind_Exception *exception_object)
{
  v6 = *(v4 - 112);
  if (v6)
  {
    *(v4 - 104) = v6;
    operator delete(v6);
  }

  if (v2 != v3)
  {
    v7 = *(v4 - 120);
    v8 = -8 * v7;
    v9 = (v1 + 8 * v7 - 8);
    do
    {
      applesauce::CF::StringRef::~StringRef(v9);
      v9 = (v10 - 8);
      v8 += 8;
    }

    while (v8);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(CFMutableDictionaryRef **a1, char *__s, const void **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_8;
  }

  v7 = *a3;
  if (!v7)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CFRetain(v7);
  CFDictionarySetValue(**a1, key, v7);
  CFRelease(v7);
  CFRelease(key);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_272653A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(CFMutableDictionaryRef **a1, char *__s, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *cf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    valuePtr = 134217984;
    v13 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_8;
  }

  valuePtr = a3;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  cf[0] = v7;
  if (!v7)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  CFDictionarySetValue(**a1, key, v7);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  CFRelease(key);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_272653CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  return a1;
}

void sub_272653E60(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(CFMutableDictionaryRef **a1, char *__s, const void **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_8;
  }

  v7 = *a3;
  if (!v7)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CFRetain(v7);
  CFDictionarySetValue(**a1, key, v7);
  CFRelease(v7);
  CFRelease(key);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2726540D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

uint64_t std::tuple<unsigned int,applesauce::CF::DictionaryRef>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(CFMutableDictionaryRef **a1, char *__s, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    goto LABEL_10;
  }

  v7 = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  cf = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v9 = *v8;
  if (!*v8)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(**a1, v7, v9);
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2726544B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v213Graph_Builder19set_property_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, const void *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetPropertyDirection(&v14, **v3, a2);
  if (v14)
  {
    v5 = 0;
  }

  else
  {
    v5 = cf;
  }

  if ((cf & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
  }

  if (v5)
  {
    v6 = v4[38];
    v7 = v4[39];
    if (v6 == v7)
    {
LABEL_12:
      if (v4[44])
      {
        v12 = a2;
        v11[0] = 0;
        v11[3] = v4;
        v11[4] = v11;
        v11[5] = &v12;
        cf = 0;
        LOBYTE(v14) = 3;
        operator new();
      }
    }

    else
    {
      while (1)
      {
        LODWORD(v14) = *v6;
        std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](&cf, *(v6 + 8));
        if (v14 == a2)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(v13, **v3);
      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v16[0] = v8;
      vp::vx::dsp::v2::Graph_Builder::set_property_value(v4, v13, a2, v16);
      if (v16[0])
      {
        CFRelease(v16[0]);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v13);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2726548B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::dsp::v2::Graph_Builder::set_property_value(vp *a1, CFTypeRef *a2, const void *a3, const __CFDictionary **a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return;
  }

  v9 = CFStringCreateWithBytes(0, "Value", 5, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v4, v9);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (Value)
  {
    CFRetain(Value);
    CFRetain(Value);
    v41[0] = Value;
    p_val = v41;
    v55 = 8;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v53, *a2);
    v11 = CFCopyDescription(Value);
    p_p_val = v11;
    applesauce::CF::details::CFString_get_value<true>(&cf, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v53, a3, &p_val, &cf);
    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v53);
    CFRelease(Value);
    CFRelease(Value);
    return;
  }

  if (!*a4)
  {
    goto LABEL_86;
  }

  v13 = applesauce::CF::details::at_key<char const(&)[5]>(*a4, "Data");
  if (!v13)
  {
LABEL_22:
    if (*a4)
    {
      v19 = applesauce::CF::details::at_key<char const(&)[7]>(*a4, "UInt32");
      if (v19)
      {
        v20 = applesauce::CF::convert_as<unsigned int,0>(v19);
        __val = v20;
        v50 = BYTE4(v20);
        if ((v20 & 0x100000000) != 0)
        {
          p_val = &__val;
          v55 = 4;
          CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v48, *a2);
          std::to_string(&cf, __val);
          vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v48, a3, &p_val, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v21 = &v48;
LABEL_84:
          CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v21);
          return;
        }
      }

      else
      {
        v50 = 0;
        __val = 0;
      }

      if (*a4)
      {
        v22 = applesauce::CF::details::at_key<char const(&)[7]>(*a4, "UInt64");
        if (v22)
        {
          v23 = v22;
          TypeID = CFNumberGetTypeID();
          if (TypeID == CFGetTypeID(v23))
          {
            switch(CFNumberGetType(v23))
            {
              case kCFNumberSInt8Type:
                cf.__r_.__value_.__s.__data_[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt8Type, &cf);
                goto LABEL_64;
              case kCFNumberSInt16Type:
                LOWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt16Type, &cf);
                goto LABEL_59;
              case kCFNumberSInt32Type:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt32Type, &cf);
                goto LABEL_76;
              case kCFNumberSInt64Type:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt64Type, &cf);
                goto LABEL_71;
              case kCFNumberFloat32Type:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloat32Type, &cf);
                goto LABEL_51;
              case kCFNumberFloat64Type:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloat64Type, &cf);
                goto LABEL_61;
              case kCFNumberCharType:
                cf.__r_.__value_.__s.__data_[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCharType, &cf);
LABEL_64:
                v31 = v25 != 0;
                v36 = cf.__r_.__value_.__s.__data_[0];
                if (!v25)
                {
                  v36 = 0;
                }

                v37 = cf.__r_.__value_.__s.__data_[0] < 0 && v25 != 0;
                v32 = (v36 | (v37 << 63 >> 63 << 8));
                goto LABEL_80;
              case kCFNumberShortType:
                LOWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberShortType, &cf);
LABEL_59:
                v33 = v25 == 0;
                v31 = v25 != 0;
                v34 = cf.__r_.__value_.__s.__data_[0];
                data_low = SLOWORD(cf.__r_.__value_.__l.__data_);
                goto LABEL_77;
              case kCFNumberIntType:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberIntType, &cf);
LABEL_76:
                v33 = v25 == 0;
                v31 = v25 != 0;
                v34 = cf.__r_.__value_.__s.__data_[0];
                data_low = SLODWORD(cf.__r_.__value_.__l.__data_);
LABEL_77:
                v38 = data_low & 0xFFFFFFFFFFFFFF00 | v34;
                if (v33)
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v38;
                }

                goto LABEL_80;
              case kCFNumberLongType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberLongType, &cf);
                goto LABEL_71;
              case kCFNumberLongLongType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberLongLongType, &cf);
                goto LABEL_71;
              case kCFNumberFloatType:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloatType, &cf);
LABEL_51:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = *&cf.__r_.__value_.__l.__data_;
                goto LABEL_72;
              case kCFNumberDoubleType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberDoubleType, &cf);
                goto LABEL_61;
              case kCFNumberCFIndexType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCFIndexType, &cf);
                goto LABEL_71;
              case kCFNumberNSIntegerType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberNSIntegerType, &cf);
LABEL_71:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = cf.__r_.__value_.__r.__words[0];
                goto LABEL_72;
              case kCFNumberCGFloatType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCGFloatType, &cf);
LABEL_61:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = *&cf.__r_.__value_.__l.__data_;
LABEL_72:
                if (v30)
                {
                  v32 = 0;
                }

LABEL_80:
                p_val = v32;
                LOBYTE(v55) = v31;
                if (v25)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
              default:
                goto LABEL_36;
            }
          }

          v26 = CFBooleanGetTypeID();
          if (v26 == CFGetTypeID(v23))
          {
            p_val = CFBooleanGetValue(v23);
            LOBYTE(v55) = 1;
LABEL_81:
            p_p_val = &p_val;
            v47 = 8;
            CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v45, *a2);
            std::to_string(&cf, p_val);
            vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v45, a3, &p_p_val, &cf);
            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            v21 = &v45;
            goto LABEL_84;
          }
        }

LABEL_36:
        p_val = 0;
        LOBYTE(v55) = 0;
LABEL_37:
        if (*a4)
        {
          v27 = applesauce::CF::details::at_key<char const(&)[8]>(*a4, "Float32");
          if (v27)
          {
            v28 = applesauce::CF::convert_as<float,0>(v27);
            LODWORD(v43) = v28;
            v44 = BYTE4(v28);
            if (HIDWORD(v28))
            {
              p_p_val = &v43;
              v47 = 4;
              CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v42, *a2);
              std::to_string(&cf, v43);
              vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v42, a3, &p_p_val, &cf);
              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v21 = &v42;
              goto LABEL_84;
            }
          }

          else
          {
            v44 = 0;
            v43 = 0.0;
          }

          applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&cf, a4);
          p_p_val = applesauce::CF::details::find_at_key_or_optional<double,char const(&)[8]>(*cf.__r_.__value_.__l.__data_);
          LOBYTE(v47) = v29;
          if ((v29 & 1) == 0)
          {
            return;
          }

          v41[0] = &p_p_val;
          v41[1] = 8;
          CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v40, *a2);
          std::to_string(&cf, *&p_p_val);
          vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v40, a3, v41, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v21 = &v40;
          goto LABEL_84;
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v39, "Could not construct");
LABEL_88:
      }
    }

LABEL_86:
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    goto LABEL_88;
  }

  v14 = v13;
  CFRetain(v13);
  v15 = CFGetTypeID(v14);
  if (v15 != CFDataGetTypeID())
  {
    CFRelease(v14);
    goto LABEL_22;
  }

  CFRetain(v14);
  if (CFDataGetBytePtr(v14) && CFDataGetLength(v14))
  {
    BytePtr = CFDataGetBytePtr(v14);
    Length = CFDataGetLength(v14);
    vp::Blob::Blob(&p_val, BytePtr, Length);
    CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v51, *a2);
    v18 = CFCopyDescription(v14);
    p_p_val = v18;
    applesauce::CF::details::CFString_get_value<true>(&cf, v18);
    if (v18)
    {
      CFRelease(v18);
    }

    vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v51, a3, &p_val, &cf);
    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v51);
  }

  CFRelease(v14);
  CFRelease(v14);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[3],char [3],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t vp::vx::dsp::v2::Graph_Builder::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7[0] = a4;
  result = a3(v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726552E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    a19 = 0;
    a20 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&a19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&a19);
    if (*v20)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&a17, v20);
      v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(&a19, "context");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(v21, &a17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a17);
    }

    vp::get_log_exception_info(&a15);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::generate_property_value(unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 352);
  if (v2)
  {
    v6 = **(v1 + 16);
    (*(*v2 + 48))(&v5);
    v3 = *(v1 + 8);
    v4 = *v3;
    *v3 = v5;
    v5 = v4;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

const void **vp::vx::dsp::v2::Graph_Builder::set_property_value(vp *a1, void *a2, const void *a3, uint64_t *a4, char *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v13 = v41;
    v14 = v41;
    v15 = v40;
    v16 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v14 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (v14 < 0)
      {
        p_p = __p;
      }

      if (v17)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      v19 = bswap32(a3);
      *&buf[1] = v19;
      if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v38, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v38, buf);
      }

      v20 = &v38;
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v38.__r_.__value_.__r.__words[0];
      }

      if (a5[23] >= 0)
      {
        v21 = a5;
      }

      else
      {
        v21 = *a5;
      }

      *buf = 136315906;
      *&buf[4] = p_p;
      v43 = 2080;
      v44 = v18;
      v45 = 2080;
      v46 = v20;
      v47 = 2080;
      v48 = v21;
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting DSP graph property %s to %s", buf, 0x2Au);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      LOBYTE(v14) = v41;
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v22 = *a4;
  v23 = *(a4 + 2);
  result = CA::DSP::Graph::SetProperty(&v36, *a2, a3);
  if ((v37 & 1) == 0)
  {
    v26 = vp::get_log(result);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = &__p;
      v28 = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v29 = v41;
      v30 = v41;
      v31 = v40;
      v32 = vp::get_log(v28);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        if (v30 >= 0)
        {
          v33 = v29;
        }

        else
        {
          v33 = v31;
        }

        if (v30 < 0)
        {
          v27 = __p;
        }

        if (v33)
        {
          v34 = " ";
        }

        else
        {
          v34 = "";
        }

        caulk::string_from_4cc(&v38, a3);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v38;
        }

        else
        {
          v35 = v38.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v27;
        v43 = 2080;
        v44 = v34;
        v45 = 2080;
        v46 = v35;
        v47 = 2112;
        v48 = v36;
        _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_ERROR, "%s%sfailed to set DSP graph property %s - %@", buf, 0x2Au);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        LOBYTE(v30) = v41;
      }

      if ((v30 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v36);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27265589C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *vp::Blob::Blob(void *this, const void *a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = a2;
  this[1] = a3;
  if (!a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_272655A1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<double,char const(&)[8]>(const __CFDictionary *a1)
{
  result = applesauce::CF::details::at_key<char const(&)[8]>(a1, "Float64");
  if (result)
  {
    return applesauce::CF::convert_as<double,0>(result);
  }

  return result;
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v213Graph_Builder20set_parameter_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetParameterDirection(&v12, **v3, a2);
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = v13;
  }

  if ((v13 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
  }

  if (v5)
  {
    for (i = *(v4 + 31); i != *(v4 + 32); i += 2)
    {
      if (*i == v2)
      {
        v7 = i[1];
        CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v12, **v3);
        vp::vx::dsp::v2::Graph_Builder::set_parameter_value(v4, &v12, v2, v7);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v12);
        goto LABEL_14;
      }
    }

    if (*(v4 + 37))
    {
      v11 = v2;
      cf[0] = 0;
      cf[3] = v4;
      cf[4] = cf;
      cf[5] = &v11;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&v12);
    }
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_272655D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **vp::vx::dsp::v2::Graph_Builder::set_parameter_value(vp *a1, uint64_t *a2, unsigned int a3, float a4)
{
  v45 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v11 = v37;
    v12 = v37;
    v13 = v36;
    v14 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v12 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      if (v12 < 0)
      {
        p_p = __p;
      }

      if (v15)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v17 = bswap32(a3);
      *&buf[1] = v17;
      if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v34, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v34, buf);
      }

      v18 = &v34;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v34.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = p_p;
      v39 = 2080;
      v40 = v16;
      v41 = 2080;
      v42 = v18;
      v43 = 2048;
      v44 = a4;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%s%ssetting DSP graph parameter %s to %f", buf, 0x2Au);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      LOBYTE(v12) = v37;
    }

    if ((v12 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v19 = *a2;
  result = CA::DSP::Graph::SetParameter(&v32, a4);
  if ((v33 & 1) == 0)
  {
    v22 = vp::get_log(result);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = &__p;
      v24 = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v25 = v37;
      v26 = v37;
      v27 = v36;
      v28 = vp::get_log(v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        if (v26 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = v27;
        }

        if (v26 < 0)
        {
          v23 = __p;
        }

        if (v29)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        caulk::string_from_4cc(&v34, a3);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v34;
        }

        else
        {
          v31 = v34.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v23;
        v39 = 2080;
        v40 = v30;
        v41 = 2080;
        v42 = v31;
        v43 = 2112;
        v44 = v32;
        _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%s%sfailed to set DSP graph parameter %s - %@", buf, 0x2Au);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        LOBYTE(v26) = v37;
      }

      if ((v26 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v32);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272656164(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t vp::vx::dsp::v2::Graph_Builder::set_parameter_value(unint64_t result, const void **a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = applesauce::CF::convert_as<float,0>(a4);
    if (HIDWORD(result))
    {
      v7 = *a2;
      *a2 = 0;
      v8 = v7;
      vp::vx::dsp::v2::Graph_Builder::set_parameter_value(v6, &v8, a3, *&result);
      return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v8);
    }
  }

  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::generate_parameter_value(unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 296);
  if (v2)
  {
    v6 = **(v1 + 16);
    (*(*v2 + 48))(&v5);
    v3 = *(v1 + 8);
    v4 = *v3;
    *v3 = v5;
    v5 = v4;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

const void **caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_0>(uint64_t **a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&cf, *(*a1)[1]);
  if (*(v2 + 376) == 1 && *(v2 + 80) == 1)
  {
    v3 = v1[2];
    v56.__val_ = 0;
    v56.__cat_ = std::system_category();
    std::__fs::filesystem::__create_directories((v2 + 56), &v56);
    CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v54, cf);
    v4 = CADSPGraphModelCopyName();
    v57 = 0;
    v55 = v4;
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v57);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v54);
    v53 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = CADSPGraphModelCopyBoxes();
    v57 = 0;
    v58[0] = v5;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v57);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v53);
    v6 = v58[0];
    Count = CFArrayGetCount(v58[0]);
    v8 = Count;
    v9 = v58[0];
    v10 = *MEMORY[0x277CBECE8];
    if (v6 != v58[0] || Count)
    {
      v11 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
        v13 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        v57 = 0;
        v52 = v13;
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v57);
        v50 = v52;
        if (v52)
        {
          CFRetain(v52);
        }

        v14 = CADSPBoxModelCopyName();
        v57 = 0;
        v51 = v14;
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v57);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v50);
        if (vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(v3, v55, v51))
        {
          for (i = 0; ; ++i)
          {
            v49 = v52;
            if (v52)
            {
              CFRetain(v52);
            }

            v16 = MEMORY[0x2743CAAA0]();
            CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v49);
            if (v16 <= i)
            {
              break;
            }

            CA::DSP::MutableRecorderTapPointModel::Create(&v57, v10);
            v47 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            v46 = v51;
            if (v51)
            {
              CFRetain(v51);
            }

            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v46);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v47);
            v45 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPRecorderTapPointModelSetAudioFilePath();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v45);
            v44 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPRecorderTapPointModelSetBoxName();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v44);
            v43 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPRecorderTapPointModelSetPortIndex();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v43);
            v42 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v41 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPGraphModelAddRecorderTapPoint();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v41);
            CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v42);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v48);
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v57);
          }
        }

        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v51);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v52);
        ++v11;
      }

      while (v6 != v9 || v11 != v8);
    }

    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v58);
    v17 = 0;
    v58[0] = 0x100000000;
    do
    {
      v18 = *(v58 + v17);
      v51 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v19 = CADSPGraphModelCopyPorts();
      v57 = 0;
      v52 = v19;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v57);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v51);
      v20 = v52;
      v21 = CFArrayGetCount(v52);
      v22 = v52;
      if (v20 != v52 || v21)
      {
        v23 = 0;
        v24 = v21 - 1;
        do
        {
          v25 = v23;
          v26 = CFArrayGetValueAtIndex(v20, v23);
          v27 = v26;
          if (v26)
          {
            CFRetain(v26);
          }

          v57 = 0;
          v48 = v27;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v57);
          v39 = v48;
          if (v48)
          {
            CFRetain(v48);
          }

          v28 = CADSPPortModelCopyName();
          v57 = 0;
          v40 = v28;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v57);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v39);
          if (vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(v3, v55, v40))
          {
            CA::DSP::MutableRecorderTapPointModel::Create(&v57, v10);
            v37 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            v36 = v40;
            if (v40)
            {
              CFRetain(v40);
            }

            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v36);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v37);
            v35 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPRecorderTapPointModelSetAudioFilePath();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v35);
            v34 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPRecorderTapPointModelSetBoxName();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v34);
            v33 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v32 = v57;
            if (v57)
            {
              CFRetain(v57);
            }

            CADSPGraphModelAddRecorderTapPoint();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v32);
            CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v33);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v38);
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v57);
          }

          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v40);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v48);
          v23 = v25 + 1;
        }

        while (v20 != v22 || v24 != v25);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v52);
      v17 += 4;
    }

    while (v17 != 8);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v55);
  }

  result = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726567C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::MutableRecorderTapPointModel::Create(CA::DSP::MutableRecorderTapPointModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPRecorderTapPointModelCreateMutable();
  return CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v3);
}

const void **vp::vx::dsp::v2::anonymous namespace::make_audio_capture_file_path(CFMutableStringRef *a1, uint64_t *a2, const time_t *a3, CFStringRef *a4, CFStringRef *a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 256);
  theString = Mutable;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  CFStringAppendFormat(Mutable, 0, @"%s/vp.", v13);
  v21 = 0u;
  v22 = 0u;
  *cStr = 0u;
  v20 = 0u;
  v14 = localtime(a3);
  strftime(cStr, 0x40uLL, "%Y%m%d.%H%M%S.", v14);
  CFStringAppendCString(theString, cStr, 0x8000100u);
  if (*a4 && CFStringGetLength(*a4))
  {
    CFStringAppend(theString, *a4);
    CFStringAppendCString(theString, ".", 0x8000100u);
  }

  if (*a5 && CFStringGetLength(*a5))
  {
    CFStringAppend(theString, *a5);
  }

  if ((a6 & 0x100000000) != 0)
  {
    CFStringAppendFormat(theString, 0, @"[%u]", a6);
  }

  CFStringAppendCString(theString, ".caf", 0x8000100u);
  v17 = theString;
  if (theString)
  {
    CFRetain(theString);
  }

  v17 = 0;
  *a1 = theString;
  CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v17);
  result = CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&theString);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272656BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(id *this, CFTypeRef cf, CFTypeRef a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (cf && (CFRetain(cf), v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    cfa = 0;
    CFRelease(cf);
  }

  else
  {
    cfa = cf;
  }

  if (a3 && (CFRetain(a3), v7 = CFGetTypeID(a3), v7 != CFStringGetTypeID()))
  {
    v22 = 0;
    CFRelease(a3);
    a3 = 0;
  }

  else
  {
    v22 = a3;
  }

  if (*this)
  {
    CFRetain(@"GraphName");
    v8 = @"GraphName";
    v9 = CFGetTypeID(@"GraphName");
    TypeID = CFStringGetTypeID();
    if (v9 == TypeID)
    {
      v25 = @"GraphName";
    }

    else
    {
      v25 = 0;
      CFRelease(@"GraphName");
      v8 = 0;
    }

    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(v27, v8, &cfa);
    CFRetain(@"BoxName");
    v12 = @"BoxName";
    v13 = CFGetTypeID(@"BoxName");
    v14 = CFStringGetTypeID();
    if (v13 == v14)
    {
      v24 = @"BoxName";
    }

    else
    {
      v24 = 0;
      CFRelease(@"BoxName");
      v12 = 0;
    }

    v21 = this;
    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(v28, v12, &v22);
    v26[0] = v27;
    v26[1] = 2;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v26);
    for (i = 0; i != -4; i -= 2)
    {
      v17 = v28[i + 1];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = v27[i + 2];
      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (v13 == v14)
    {
      CFRelease(v12);
    }

    if (v9 == TypeID)
    {
      CFRelease(v8);
    }

    CFRetain(CFDictionaryRef);
    v11 = vp::cf::Predicate::evaluate(v21, CFDictionaryRef);
    if (CFDictionaryRef)
    {
      CFRelease(CFDictionaryRef);
    }

    CFRelease(CFDictionaryRef);
    if (a3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 1;
    if (a3)
    {
LABEL_31:
      CFRelease(a3);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_272656F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::trim_gains_parse_cf(vp::vx *this, const __CFArray **a2)
{
  v2 = *a2;
  v23 = 0u;
  if (*a2)
  {
    Count = CFArrayGetCount(v2);
    v5 = Count;
    v6 = *a2;
    if (v6)
    {
      v7 = CFArrayGetCount(v6);
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_27;
      }
    }

    v8 = 0;
    v23 = 0u;
    do
    {
      if (v2 == v6 && v7 == v8)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v24, v2, v8);
      v9 = v24;
      if (!v24)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v10 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
      cf = v10;
      if (!v10)
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
      }

      Value = CFDictionaryGetValue(v9, v10);
      if (cf)
      {
        CFRelease(cf);
      }

      if (!Value)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not find item");
      }

      v12 = applesauce::CF::convert_to<float,0>(Value);
      v13 = (*(&v23 + 1) - v23) >> 2;
      v14 = v13 + 1;
      if ((v13 + 1) >> 62)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      if (-v23 >> 1 > v14)
      {
        v14 = -v23 >> 1;
      }

      if (-v23 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (4 * v13);
      *v16 = v12;
      v17 = v16 + 1;
      memcpy(0, v23, *(&v23 + 1) - v23);
      if (v23)
      {
        operator delete(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      *&v18 = 0;
      *(&v18 + 1) = v17;
      v23 = v18;
      ++v8;
    }

    while (v5 != v8);
  }

LABEL_27:
  *this = v23;
  *(this + 2) = 0;
  *(this + 24) = 1;
}

void sub_272657394(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  if (a4)
  {
    operator delete(a4);
  }

  __cxa_begin_catch(a1);
  *a3 = 0;
  a3[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272657240);
}

uint64_t std::__function::__value_func<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_272657694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v9 = a3;
  v7 = a5;
  v8 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v9, &v8, &v7, a6);
}

void *vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(void *result, uint64_t a2, void **a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if ((v5 & 1) == 0)
  {
    result = *a2;
    if (*a3 && result != 0)
    {
      result = result;
      **a3 = result;
      v5 = *(a2 + 8);
    }
  }

  *v4 = 0;
  *(v4 + 8) = v5;
  if ((v5 & 1) == 0)
  {

    return vp::objc::ID::ID(v4, a2);
  }

  return result;
}

void sub_272657984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v8, &v7, &v6);
}

uint64_t caulk::expected<applesauce::CF::TypeRef,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_272657A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void caulk::bad_expected_access<vp::rpb::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2881B9728;
  vp::objc::ID::~ID(&a1[1].__vftable);

  std::exception::~exception(a1);
}

{
  a1->__vftable = &unk_2881B9728;
  vp::objc::ID::~ID(&a1[1].__vftable);
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

void sub_272657D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_272657E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

vp::objc::ID *caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(vp::objc::ID *this)
{
  if (*(this + 32) == 1)
  {
    v3 = this;
    std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

void sub_272658180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    vp::objc::ID::~ID(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v8, &v7, &v6);
}

uint64_t caulk::expected<float,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_2726582A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void sub_27265847C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_2726585B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void *caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(void *result, uint64_t a2)
{
  *result = 0;
  v2 = *(a2 + 32);
  *(result + 32) = v2;
  if (v2 != 1)
  {
    return vp::objc::ID::ID(result, a2);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = *(a2 + 24);
  *result = *a2;
  result[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

vp::objc::ID *caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(vp::objc::ID *this)
{
  if (*(this + 32) == 1)
  {
    v3 = this;
    std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

void vp::rpb::Host::add_item(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 addItem:v3];
}

void vp::rpb::Host::find_item_by_name(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [v6 itemForName:*a3];
  *a1 = v5;
}

void vp::rpb::Host::add_wire(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 addWire:v3];
}

void vp::rpb::Host::find_wire_by_name(void *a1, void *a2, id *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a2;
  v6 = [v5 wires];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = *a3;
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          *a1 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  *a1 = 0;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

void vp::rpb::Host::add_parameter_wire(void *a1, unsigned int *a2, id *a3, unsigned int *a4)
{
  v12 = a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  LODWORD(v11) = a4[2];
  [v12 addWireFromHostParameter:v7 scope:v8 element:v9 to:v10 parameter:*a4 scope:a4[1] element:v11];
}

void vp::rpb::Host::add_parameter_wire(void *a1, id *a2, unsigned int *a3, unsigned int *a4)
{
  v9 = a1;
  v7 = *a2;
  LODWORD(v8) = a4[2];
  [v9 addWireFrom:v7 parameter:*a3 scope:a3[1] element:a3[2] toHostParameter:*a4 scope:a4[1] element:v8];
}

void vp::rpb::Host::add_property_wire(void *a1, unsigned int *a2, id *a3, unsigned int *a4)
{
  v12 = a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  LODWORD(v11) = a4[2];
  [v12 addWireFromHostProperty:v7 scope:v8 element:v9 to:v10 property:*a4 scope:a4[1] element:v11];
}

void vp::rpb::Host::add_property_wire(void *a1, id *a2, unsigned int *a3, unsigned int *a4)
{
  v9 = a1;
  v7 = *a2;
  LODWORD(v8) = a4[2];
  [v9 addWireFrom:v7 property:*a3 scope:a3[1] element:a3[2] toHostProperty:*a4 scope:a4[1] element:v8];
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::Delegate::on_get_property_info(void *a1, uint64_t a2)
{
  v3 = a1;
  std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](v3 + 104, a2);
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::Delegate::on_get_property(void *a1, uint64_t a2)
{
  v3 = a1;
  std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](v3 + 136, a2);
}

uint64_t std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::new_delegate(vp::rpb::Host *this)
{
  v2 = objc_alloc_init(RPBHost_Delegate);
  *this = v2;
}

void vp::rpb::Host::set_delegate(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 setDelegate:v3];
}

void virtual thunk tovp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(vp::vx::IO_Far_End_Voice_Proc_Node_Factory *this)
{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(vp::vx::IO_Far_End_Voice_Proc_Node_Factory *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B7EC0;
  *(this + 12) = &unk_2881B7EF0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Far_End_Voice_Proc_Node_Factory]", 42);
    v3 = v15;
    v4 = v15;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v15;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  vp::vx::data_flow::State<void>::~State(this + 6);
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 12) = &unk_2881C6630;
  v12 = *(this + 14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Far_End_Voice_Proc_Node_Factory::new_node(int *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (a1)
    {
      v7 = a1 + *(*a1 - 24);
    }

    else
    {
      v7 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v7, "vp::vx::IO_Far_End_Voice_Proc_Node_Factory]", 42);
    v8 = BYTE7(v26);
    v9 = SBYTE7(v26);
    v10 = __p[1];
    v12 = vp::get_log(v11);
    v6 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = __p[0];
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%s%swill create node", buf, 0x16u);
      LOBYTE(v9) = BYTE7(v26);
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  default_resource = std::pmr::get_default_resource(v6);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = default_resource;
  vp::vx::data_flow::State<void>::get_value(a1 + 18, buf);
  v17 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v17;
  v26 = *(v17 + 16);
  v27 = *(v17 + 32);
  vp::vx::data_flow::Value::~Value(buf);
  v19 = std::pmr::get_default_resource(v18);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v19;
  vp::vx::data_flow::State<void>::get_value(a1 + 12, buf);
  v20 = *vp::vx::data_flow::Value::view_storage(buf);
  vp::vx::data_flow::Value::~Value(buf);
  v22 = std::pmr::get_default_resource(v21);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v22;
  vp::vx::data_flow::State<void>::get_value(a1 + 6, buf);
  v23 = vp::vx::data_flow::Value::view_storage(buf);
  v24 = *v23;
  *v23 = 0;
  vp::vx::data_flow::Value::~Value(buf);
  *buf = 0;
  *&buf[8] = a3;
  *&buf[16] = xmmword_272756560;
  *((*(*a3 + 16))(a3, 88, 8) + 64) = &unk_2881C6630;
  operator new();
}

void sub_2726598B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::unique_ptr<vp::vx::io::nodes::Far_End_Voice_Proc_Node,vp::Allocator_Delete<vp::vx::io::nodes::Far_End_Voice_Proc_Node>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[7];
    if (v4)
    {
      _Block_release(v4);
      v2[7] = 0;
    }

    v2[8] = &unk_2881C6630;
    v5 = v2[10];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::destroy_value(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    _Block_release(*a2);
    *a2 = 0;
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::move_value(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a2 = v3;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::copy_value(uint64_t a1, void *a2, void **a3)
{
  result = *a3;
  if (*a3)
  {
    result = _Block_copy(result);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void sub_272659C94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F10;
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F10;
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("far-end-voice proc I/O block is %p", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7F58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("far-end-voice proc max I/O block size is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 32))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7FA0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if (v15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        caulk::make_string("far-end-voice proc I/O format is %s", &v17, p_p);
        if (v15 < 0)
        {
          operator delete(__p);
        }

        __p = v17;
        *v14 = *v18;
        *&v14[7] = *&v18[7];
        v15 = v19;
        v16 = 1;
        (*(*v11 + 32))(v11, v6, &__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7FE8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(vp::vx::IO_Mic_Ref_Sync_Node_Factory *this)
{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(vp::vx::IO_Mic_Ref_Sync_Node_Factory *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8038;
  *(this + 18) = &unk_2881B8068;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v3 = v15;
    v4 = v15;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v15;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 30);
  vp::vx::data_flow::State<void>::~State(this + 24);
  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  vp::vx::data_flow::State<void>::~State(this + 6);
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 18) = &unk_2881C6630;
  v12 = *(this + 20);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Mic_Ref_Sync_Node_Factory::new_node(int *a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (a1)
    {
      v7 = a1 + *(*a1 - 24);
    }

    else
    {
      v7 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v7, "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v8 = __p[23];
    v9 = __p[23];
    v10 = *&__p[8];
    v12 = vp::get_log(v11);
    v6 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = *__p;
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%s%swill create new mic-ref-sync node", buf, 0x16u);
      LOBYTE(v9) = __p[23];
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v6);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = default_resource;
  vp::vx::data_flow::State<void>::get_value(a1 + 24, __p);
  v17 = *vp::vx::data_flow::Value::view_storage(__p);
  vp::vx::data_flow::Value::~Value(__p);
  v19 = vp::get_log(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (a1)
    {
      v21 = a1 + *(*a1 - 24);
    }

    else
    {
      v21 = 0;
    }

    vp::vx::io::get_log_context_info(buf, v21, "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v22 = buf[23];
    v23 = *&buf[8];
    v25 = vp::get_log(v24);
    v20 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if ((v22 & 0x80u) == 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      if (buf[23] >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      *__p = 136315650;
      *&__p[4] = v27;
      if (v26)
      {
        v28 = " ";
      }

      else
      {
        v28 = "";
      }

      *&__p[12] = 2080;
      *&__p[14] = v28;
      *&__p[22] = 1024;
      *&__p[24] = v17;
      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%s%screating mic-ref-sync node with time delta of %d samples", __p, 0x1Cu);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v29 = std::pmr::get_default_resource(v20);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v29;
  vp::vx::data_flow::State<void>::get_value(a1 + 12, buf);
  v30 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v30;
  *&__p[16] = *(v30 + 16);
  v44 = *(v30 + 32);
  vp::vx::data_flow::Value::~Value(buf);
  *&v40 = 0;
  v39 = std::pmr::get_default_resource(v31);
  vp::vx::data_flow::State<void>::get_value(a1 + 18, &v39);
  v32 = vp::vx::data_flow::Value::view_storage(&v39);
  *buf = *v32;
  *&buf[16] = *(v32 + 16);
  v42 = *(v32 + 32);
  vp::vx::data_flow::Value::~Value(&v39);
  v34 = std::pmr::get_default_resource(v33);
  *&v40 = 0;
  v39 = v34;
  vp::vx::data_flow::State<void>::get_value(a1 + 6, &v39);
  v35 = *vp::vx::data_flow::Value::view_storage(&v39);
  vp::vx::data_flow::Value::~Value(&v39);
  v37 = std::pmr::get_default_resource(v36);
  *&v40 = 0;
  v39 = v37;
  vp::vx::data_flow::State<void>::get_value(a1 + 30, &v39);
  v38 = *vp::vx::data_flow::Value::view_storage(&v39);
  vp::vx::data_flow::Value::~Value(&v39);
  *&v39 = 0;
  *(&v39 + 1) = a3;
  v40 = xmmword_2727566D0;
  *((*(*a3 + 16))(a3, 144, 8) + 120) = &unk_2881C6630;
  operator new();
}

void sub_27265B180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t default_resource, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::nodes::Mic_Ref_Sync_Node,vp::Allocator_Delete<vp::vx::io::nodes::Mic_Ref_Sync_Node>>::reset[abi:ne200100](&a9, 0);
    v21 = __cxa_begin_catch(exception_object);
    a9 = 0;
    default_resource = std::pmr::get_default_resource(v21);
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    __cxa_end_catch();
    JUMPOUT(0x27265B02CLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::io::nodes::Mic_Ref_Sync_Node,vp::Allocator_Delete<vp::vx::io::nodes::Mic_Ref_Sync_Node>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 104), 0);
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 96), 0);
    *(v2 + 120) = &unk_2881C6630;
    v4 = *(v2 + 136);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::chrono::duration<long long,std::ratio<1l,1000l>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<int>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void sub_27265B5C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("mic-ref-sync I/O block size is %u", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B8088;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if (v15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        caulk::make_string("mic-ref-sync microphone I/O format is %s", &v17, p_p);
        if (v15 < 0)
        {
          operator delete(__p);
        }

        __p = v17;
        *v14 = *v18;
        *&v14[7] = *&v18[7];
        v15 = v19;
        v16 = 1;
        (*(*v11 + 24))(v11, v6, &__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B80D0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B80D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B80D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if (v15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        caulk::make_string("mic-ref-sync reference I/O format is %s", &v17, p_p);
        if (v15 < 0)
        {
          operator delete(__p);
        }

        __p = v17;
        *v14 = *v18;
        *&v14[7] = *&v18[7];
        v15 = v19;
        v16 = 1;
        (*(*v11 + 24))(v11, v6, &__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B8118;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8118;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8118;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<int>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8160;
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8160;
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("mic-ref-sync time delta is %d samples", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B81A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::chrono::duration<long long,std::ratio<1l,1000l>>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9570;
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9570;
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        caulk::make_string("mic-ref-sync reference audio ring buffer capacity is %lld milliseconds", &v14, *a3);
        __p = v14;
        *v11 = *v15;
        *&v11[7] = *&v15[7];
        v12 = v16;
        v13 = 1;
        (*(*v9 + 24))(v9, v6, &__p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B81F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(vp::vx::IO_Node_Audio_Capturer *this)
{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer((this + *(*this - 24)));
}

void vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(vp::vx::IO_Node_Audio_Capturer *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8240;
  *(this + 14) = &unk_2881B82D8;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
    v3 = v14;
    v4 = v14;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = this + 72;
  std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 40;
  std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](__p);
  *this = off_2881B8358;
  *(this + 14) = off_2881B83F0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 14) = &unk_2881C6630;
  v11 = *(this + 16);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t **std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7, v4);
        }
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v9 = v5[3];
    v10 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<vp::Audio_Capture>>::deallocate[abi:ne200100](v9, v4, v10);
  }

  return result;
}

void vp::vx::IO_Node_Audio_Capturer::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  *buf = 0x34002E00000000;
  *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Capturer_Factory.cpp";
  v45 = 0uLL;
  *&buf[16] = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v46);
  v12 = v46;
  *a6 = 0;
  *(a6 + 4) = 3407918;
  *(a6 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Capturer_Factory.cpp";
  *(a6 + 24) = 0uLL;
  *(a6 + 40) = v12;
  *(a6 + 48) = 0;
  if (a3)
  {
    v13 = 0;
    v14 = (a2 + 16);
    do
    {
      v15 = *(a1 + 40);
      if (v13 < (*(a1 + 48) - v15) >> 3)
      {
        v16 = *(v15 + 8 * v13);
        if (v16)
        {
          v17 = vp::vx::detail::capture(v16, *(a1 + 104), *(v14 - 2), *v14, *(v14 - 1));
          if ((v17 & 1) == 0)
          {
            v18 = vp::get_log(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&__p, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
              v37 = v43;
              v35 = v42;
              log = vp::get_log(v19);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v20 = v35;
                if ((v37 & 0x80u) == 0)
                {
                  v20 = v37;
                }

                p_p = &__p;
                if ((v43 & 0x80u) != 0)
                {
                  p_p = __p;
                }

                *buf = 136315650;
                v22 = v20 == 0;
                v23 = " ";
                if (v22)
                {
                  v23 = "";
                }

                *&buf[4] = p_p;
                *&buf[12] = 2080;
                *&buf[14] = v23;
                *&buf[22] = 2048;
                *&v45 = v13;
                _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to capture data for input %lu", buf, 0x20u);
              }

              if (v43 < 0)
              {
                operator delete(__p);
              }
            }
          }
        }
      }

      ++v13;
      v14 += 6;
    }

    while (a3 != v13);
  }

  (*(**(a1 + 8) + 80))(buf);
  caulk::expected<void,vp::vx::io::Error>::operator=(a6, buf);
  if ((v47 & 1) == 0 && SHIBYTE(v45) < 0)
  {
    (*(*v46 + 24))(v46, *&buf[16], *(&v45 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (a5)
  {
    v24 = 0;
    v25 = (a4 + 16);
    do
    {
      v26 = *(a1 + 72);
      if (v24 < (*(a1 + 80) - v26) >> 3)
      {
        v27 = *(v26 + 8 * v24);
        if (v27)
        {
          v28 = vp::vx::detail::capture(v27, *(a1 + 104), *(v25 - 2), *v25, *(v25 - 1));
          if ((v28 & 1) == 0)
          {
            v29 = vp::get_log(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&__p, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
              v38 = v43;
              v36 = v42;
              loga = vp::get_log(v30);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
              {
                v31 = v36;
                if ((v38 & 0x80u) == 0)
                {
                  v31 = v38;
                }

                if ((v43 & 0x80u) == 0)
                {
                  v32 = &__p;
                }

                else
                {
                  v32 = __p;
                }

                *buf = 136315650;
                v22 = v31 == 0;
                v33 = " ";
                if (v22)
                {
                  v33 = "";
                }

                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = v33;
                *&buf[22] = 2048;
                *&v45 = v24;
                _os_log_impl(&dword_2724B4000, loga, OS_LOG_TYPE_ERROR, "%s%sfailed to capture data for output %lu", buf, 0x20u);
              }

              if (v43 < 0)
              {
                operator delete(__p);
              }
            }
          }
        }
      }

      ++v24;
      v25 += 6;
    }

    while (a5 != v24);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_27265D2A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::detail::capture(AudioBufferList *a1, int a2, uint64_t a3, const AudioTimeStamp *a4, double *a5)
{
  if (a2 == 1)
  {
    vp::Audio_Capture::write_async(v8, a1, a3, a4, a5);
    v5 = v8[4];
  }

  else if (!a2)
  {
    if (a5)
    {
      v6 = (*(*&a1->mNumberBuffers + 96))(a1, a4, a3, 1, *a5);
    }

    else
    {
      v6 = (*(*&a1->mNumberBuffers + 96))(a1, a4, a3, 1, -1);
    }

    v5 = v6 == 0;
  }

  return v5 & 1;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::new_node_decorator(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v113 = *MEMORY[0x277D85DE8];
  *&__src[8] = 0;
  *&v110 = 0;
  *__src = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((a1 + 24), __src);
  v7 = *vp::vx::data_flow::Value::view_storage(__src);
  vp::vx::data_flow::Value::~Value(__src);
  if (v7 != 1)
  {
    goto LABEL_96;
  }

  v80 = a5;
  v97 = 0;
  v99 = 0uLL;
  default_resource = std::pmr::get_default_resource(v8);
  v9 = *a3;
  v111 = 0u;
  v112 = 0u;
  *__src = 0u;
  v110 = 0u;
  v96 = *(a1 + 56);
  v10 = localtime(&v96);
  strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v10);
  v95.__val_ = 0;
  v95.__cat_ = std::system_category();
  std::__fs::filesystem::__create_directories((a1 + 64), &v95);
  v11 = 0;
  v108 = 0x100000000;
  do
  {
    v81 = v11;
    v85 = *&__src[v11 - 8];
    v12 = (*(*v9 + 48))(v9);
    if (v12)
    {
      v13 = 0;
      v14 = 32 * (v85 != 0);
      v15 = a1 + 120 + v14;
      v16 = "output";
      if (!v85)
      {
        v16 = "input";
      }

      v82 = v16;
      v86 = v12;
      do
      {
        *__p = a2;
        *&__p[4] = v13;
        boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(&v94, v15, __p);
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        if (v17)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18 == 0;
        }

        if (!v19)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v94 != (v17 + 32 * v18))
        {
          if (*(a1 + 87) < 0)
          {
            std::string::__init_copy_ctor_external(&v93, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            v93 = *(a1 + 64);
          }

          std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v93, "vp.");
          v20 = (&v108 + 7);
          do
          {
            v21 = v20->__r_.__value_.__s.__data_[1];
            v20 = (v20 + 1);
          }

          while (v21);
          std::string::append[abi:ne200100]<char const*,0>(&v93, __src, v20);
          std::string::append(&v93, ".", 1uLL);
          caulk::make_string("%03u", __p, *(a1 + 112));
          if (__p[23] >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = *__p;
          }

          if (__p[23] >= 0)
          {
            v23 = __p[23];
          }

          else
          {
            v23 = *&__p[8];
          }

          std::string::append(&v93, v22, v23);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::append(&v93, ".", 1uLL);
          v24 = std::string::basic_string[abi:ne200100]<0>(&v100, "????");
          *__p = std::pmr::get_default_resource(v24);
          *&__p[8] = 0;
          *&__p[16] = 0;
          vp::vx::data_flow::State<void>::get_value((a1 + 88), __p);
          v25 = vp::vx::data_flow::Value::view_storage(__p);
          v26 = *(v25 + 16);
          *v90 = *v25;
          *&v91 = v26;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          *v25 = 0;
          vp::vx::data_flow::Value::~Value(__p);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(v100);
          }

          if ((SBYTE7(v91) & 0x80u) == 0)
          {
            v27 = v90;
          }

          else
          {
            v27 = v90[0];
          }

          if ((SBYTE7(v91) & 0x80u) == 0)
          {
            v28 = BYTE7(v91);
          }

          else
          {
            v28 = v90[1];
          }

          std::string::append(&v93, v27, v28);
          if (SBYTE7(v91) < 0)
          {
            operator delete(v90[0]);
          }

          std::string::append(&v93, ".", 1uLL);
          v29 = *(v94 + 31);
          if (v29 >= 0)
          {
            v30 = (v94 + 2);
          }

          else
          {
            v30 = *(v94 + 1);
          }

          if (v29 >= 0)
          {
            v31 = *(v94 + 31);
          }

          else
          {
            v31 = *(v94 + 2);
          }

          std::string::append(&v93, v30, v31);
          std::string::append(&v93, ".caf", 4uLL);
          (*(*v9 + 56))(__p, v9, v13, v85);
          vp::Audio_Capture::create(&v92, &v93, __p, *(a1 + 52));
          if ((v106 & 1) == 0 && SHIBYTE(v104) < 0)
          {
            v32 = (*(*v105 + 24))(v105, *&__p[16], v104 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          if (v92)
          {
            log = vp::get_log(v32);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              log_context_info = vp::get_log_context_info(&v100, a1, "vp::vx::IO_Node_Audio_Capturer_Factory]", 38);
              v35 = HIBYTE(v101);
              v36 = v101;
              v37 = vp::get_log(log_context_info);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                if ((v35 & 0x80u) == 0)
                {
                  v38 = v35;
                }

                else
                {
                  v38 = v36;
                }

                v39 = &v100;
                if (v101 < 0)
                {
                  v39 = v100;
                }

                v19 = v38 == 0;
                v40 = " ";
                if (v19)
                {
                  v40 = "";
                }

                v41 = &v93;
                if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v93.__r_.__value_.__r.__words[0];
                }

                *__p = 136316418;
                *&__p[4] = v39;
                *&__p[12] = 2080;
                *&__p[14] = v40;
                *&__p[22] = 2080;
                *&__p[24] = v41;
                LOWORD(v104) = 1024;
                *(&v104 + 2) = a2;
                HIWORD(v104) = 2080;
                v105 = v82;
                v106 = 1024;
                v107 = v13;
                _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_DEFAULT, "%s%scapture audio to %s for node %u %s terminal %u", __p, 0x36u);
              }

              if (SHIBYTE(v101) < 0)
              {
                operator delete(v100);
              }
            }

            v42 = v97;
            if (!v97)
            {
              v43 = *(a1 + 48);
              v90[0] = 0;
              v90[1] = a4;
              v91 = xmmword_2727566E0;
              v44 = (*(*a4 + 16))(a4, 136, 8);
              v45 = *a3;
              *a3 = 0;
              v101 = *(a3 + 8);
              v46 = *(a3 + 24);
              v100 = v45;
              v102 = v46;
              *(v44 + 112) = &unk_2881C6630;
              operator new();
            }

            while (1)
            {
              v60 = (v42 + v14 + 40);
              v59 = *v60;
              v62 = (v42 + v14 + 48);
              v61 = *v62;
              if (v13 <= (*v62 - *v60) >> 3)
              {
                break;
              }

              v47 = *(v42 + v14 + 56);
              if (v61 >= v47)
              {
                v49 = (v61 - v59) >> 3;
                v50 = v49 + 1;
                if ((v49 + 1) >> 61)
                {
                  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                }

                v51 = v47 - v59;
                if (v51 >> 2 > v50)
                {
                  v50 = v51 >> 2;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v52 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                v104 = v42 + v14 + 64;
                if (v52)
                {
                  v53 = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100](v42 + v14 + 64, v52);
                }

                else
                {
                  v53 = 0;
                }

                v54 = (v53 + 8 * v49);
                *__p = v53;
                *&__p[8] = v54;
                *&__p[24] = v53 + 8 * v52;
                *v54 = 0;
                *&__p[16] = v54 + 1;
                v55 = v60[1];
                v56 = (v54 + *v60 - v55);
                std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(*v60, v55, v56);
                v57 = *v60;
                *v60 = v56;
                v58 = v60[2];
                v88 = *&__p[16];
                *&__p[8] = v57;
                *&__p[16] = v57;
                *(v60 + 1) = v88;
                *&__p[24] = v58;
                *__p = v57;
                std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(__p);
                v48 = v88;
                v42 = v97;
              }

              else
              {
                *v61 = 0;
                v48 = v61 + 1;
              }

              *v62 = v48;
            }

            v63 = *(v42 + v14 + 56);
            if (v61 >= v63)
            {
              v65 = (v61 - v59) >> 3;
              v66 = v65 + 1;
              if ((v65 + 1) >> 61)
              {
                std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
              }

              v67 = v63 - v59;
              if (v67 >> 2 > v66)
              {
                v66 = v67 >> 2;
              }

              if (v67 >= 0x7FFFFFFFFFFFFFF8)
              {
                v68 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v68 = v66;
              }

              v104 = (v60 + 3);
              if (v68)
              {
                v69 = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100]((v60 + 3), v68);
              }

              else
              {
                v69 = 0;
              }

              v70 = (v69 + 8 * v65);
              *__p = v69;
              *&__p[8] = v70;
              *&__p[24] = v69 + 8 * v68;
              *v70 = v92;
              v92 = 0;
              *&__p[16] = v70 + 1;
              v71 = v60[1];
              v72 = (v70 + *v60 - v71);
              std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(*v60, v71, v72);
              v73 = *v60;
              *v60 = v72;
              v74 = v60[2];
              v89 = *&__p[16];
              *&__p[8] = v73;
              *&__p[16] = v73;
              *(v60 + 1) = v89;
              *&__p[24] = v74;
              *__p = v73;
              std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(__p);
              v75 = v92;
              *v62 = v89;
              if (v75)
              {
                (*(*v75 + 8))(v75);
              }
            }

            else
            {
              v64 = v92;
              v92 = 0;
              *v61 = v64;
              *v62 = v61 + 1;
            }
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }
        }

        ++v13;
      }

      while (v13 != v86);
    }

    v11 = v81 + 4;
  }

  while (v81 != 4);
  v76 = v97;
  if (!v97)
  {
    std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](&v97, 0);
    a5 = v80;
LABEL_96:
    v78 = *a3;
    *a3 = 0;
    *a5 = v78;
    *(a5 + 8) = *(a3 + 8);
    *(a5 + 24) = *(a3 + 24);
    goto LABEL_97;
  }

  v97 = 0;
  v77 = default_resource;
  *v80 = v76;
  *(v80 + 8) = v77;
  *(v80 + 16) = v99;
  std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](&v97, 0);
LABEL_97:
  v79 = *MEMORY[0x277D85DE8];
}

void sub_27265DE78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v21 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(a1, &v21, v3 + 32 * v4, *a3, a3[1]);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = (v10 + 32 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 >= *v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    if (*a3 == *v14)
    {
      v16 = a3[1];
      v17 = v14[1];
      v18 = v16 >= v17;
      v19 = v16 == v17;
      v20 = -1;
      if (v18)
      {
        v20 = 1;
      }

      if (v19)
      {
        v15 = 0;
      }

      else
      {
        v15 = v20;
      }
    }

    if (v15 < 0)
    {
      *a1 = v13;
    }
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a3++ = v6;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::Audio_Capture>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 3);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(void *result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *a2;
  if (*a2 != a3)
  {
    v6 = (a3 - v5) >> 5;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v6 >> 1;
      v8 = &v5[8 * (v6 >> 1)];
      if (*v8 >= a4)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (*v8 == a4)
      {
        v10 = v8[1];
        v11 = v10 == a5;
        v9 = v10 >= a5 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      if (v9 < 0)
      {
        v5 = v8 + 8;
        *a2 = v8 + 8;
        v7 = v6 + ~v7;
      }

      v6 = v7;
    }

    while (v7);
  }

  *result = v5;
  return result;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::~IO_Node_Audio_Capturer_Factory(vp::vx::IO_Node_Audio_Capturer_Factory *this)
{
  *this = &unk_2881B8328;
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  vp::vx::data_flow::State<void>::~State(this + 22);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B8328;
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  vp::vx::data_flow::State<void>::~State(this + 22);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        if (v6)
        {
          v10 = "I/O node audio captures are enabled";
        }

        else
        {
          v10 = "I/O node audio captures are disabled";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v10);
        v13 = 1;
        (*(*v9 + 16))(v9, v5, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B84D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B84D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B84D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::set_port_type_four_char_code(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[0] = &unk_2881B85C8;
  v3[1] = v1;
  v3[2] = v2;
  v3[3] = v3;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::__value_func[abi:ne200100](v4, v3);
  v5 = 0;
  operator new();
}

void sub_27265E760(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8580;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8580;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        LOBYTE(__p) = 0;
        v10 = 0;
        (*(*v7 + 16))(v7, v4, &__p);
        if (v10 == 1 && v9 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B85C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B85C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B85C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__n128 vp::vx::IO_Node_Audio_Capturer_Factory::add_audio_capturer(uint64_t a1, unsigned int a2, unsigned int a3, int a4, __n128 *a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript(a1 + 32 * (a4 != 0) + 120, v9);
  v7 = v6;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *a5;
  v7[1].n128_u64[0] = a5[1].n128_u64[0];
  *v7 = result;
  a5[1].n128_u8[7] = 0;
  a5->n128_u8[0] = 0;
  return result;
}

unsigned int *boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript(uint64_t a1, unsigned int *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v3;
  if (v4)
  {
    v7 = *a2;
    v8 = a2[1];
    v6 = v3;
    v9 = *(a1 + 16);
    do
    {
      if (v9 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v9 >> 1;
      v11 = &v6[8 * (v9 >> 1)];
      if (*v11 >= v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*v11 == v7)
      {
        v13 = v11[1];
        v14 = v13 == v8;
        v12 = v13 >= v8 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v15 = v11 + 8;
      v9 += ~v10;
      if (v12 < 0)
      {
        v6 = v15;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  v16 = v3 + 32 * v4;
  if (v6 == v16)
  {
    goto LABEL_36;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 >= *v6)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  if (*a2 == *v6)
  {
    v18 = a2[1];
    v19 = v6[1];
    v20 = v18 >= v19;
    v21 = v18 == v19;
    v17 = -1;
    if (v20)
    {
      v17 = 1;
    }

    if (v21)
    {
      v17 = 0;
    }
  }

  if (v17 < 0)
  {
LABEL_36:
    v22 = *a2;
    v54 = *a2;
    __p = 0uLL;
    v56 = 0;
    v23 = "this->priv_in_range_or_end(hint)";
    v24 = 879;
    v25 = "flat_tree.hpp";
    v26 = "insert_unique";
    if (v3 > v6 || v6 > v16)
    {
      goto LABEL_99;
    }

    v52 = 0;
    if (v6 == v16)
    {
      v32 = v16;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v27 = -1;
      if (*v6 <= v22)
      {
        v27 = 1;
      }

      if (*v6 == v22)
      {
        v28 = v6[1];
        v29 = v28 == HIDWORD(v22);
        v30 = v28 > HIDWORD(v22);
        v31 = -1;
        if (!v30)
        {
          v31 = 1;
        }

        if (v29)
        {
          v27 = 0;
        }

        else
        {
          v27 = v31;
        }
      }

      v32 = v6;
      if ((v27 & 0x80) == 0)
      {
        v53 = v16;
        if ((boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(v6, &v53, &v54, &v52) & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_64;
      }
    }

    v52 = v6;
    if (v32 != v3)
    {
      if (!v32)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v33 = *(v32 - 32);
      if (v33 == v22)
      {
        v34 = *(v32 - 28);
        if (v34 >= HIDWORD(v22))
        {
          v35 = -1;
          if (v34 <= HIDWORD(v22))
          {
            v35 = 1;
          }

          if (v34 == HIDWORD(v22))
          {
            v35 = 0;
          }

          if (v35 < 0)
          {
            goto LABEL_61;
          }

          goto LABEL_84;
        }
      }

      else if (v33 >= v22)
      {
        v48 = -1;
        if (v33 <= v22)
        {
          v48 = 1;
        }

        if (v48 < 0)
        {
LABEL_61:
          v53 = v32 - 32;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(v3, &v53, &v54, &v52))
          {
LABEL_85:
            if (!*(a1 + 8) && v52)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v51 = v52;
LABEL_88:
            if (SHIBYTE(v56) < 0)
            {
              operator delete(__p);
            }

            v6 = v51;
            if (!v51)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            goto LABEL_91;
          }

          goto LABEL_64;
        }

LABEL_84:
        v52 = (v32 - 32);
        goto LABEL_85;
      }
    }

LABEL_64:
    v36 = v52;
    v37 = *(a1 + 8);
    if (v37 > v52)
    {
      goto LABEL_96;
    }

    v38 = *(a1 + 16);
    if (!v37 && v38)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v39 = v37 + 32 * v38;
    if (v52 > v39)
    {
LABEL_96:
      v23 = "this->priv_in_range_or_end(position)";
      v24 = 1862;
      v25 = "vector.hpp";
      v26 = "emplace";
    }

    else
    {
      v40 = *(a1 + 24);
      if (v40 >= v38)
      {
        if (v40 == v38)
        {
          boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>(&v51, a1, v52, &v54);
        }

        else
        {
          if (v39 == v52)
          {
            *v39 = v54;
            v47 = __p;
            *(v39 + 24) = v56;
            *(v39 + 8) = v47;
            v56 = 0;
            __p = 0uLL;
            ++*(a1 + 16);
          }

          else
          {
            v42 = v39 - 32;
            v41 = *(v39 - 32);
            *(v39 + 8) = *(v39 - 24);
            *(v39 + 24) = *(v39 - 8);
            *(v39 - 24) = 0;
            *(v39 - 16) = 0;
            *(v39 - 8) = 0;
            *v39 = v41;
            ++*(a1 + 16);
            if ((v39 - 32) != v36)
            {
              v43 = (v39 - 32);
              do
              {
                v44 = *(v43 - 8);
                v43 -= 8;
                v45 = *(v42 - 28);
                *v42 = v44;
                *(v42 + 4) = v45;
                if (*(v42 + 31) < 0)
                {
                  operator delete(*(v42 + 8));
                }

                *(v42 + 8) = *(v42 - 24);
                *(v42 + 24) = *(v42 - 8);
                *(v42 - 1) = 0;
                *(v42 - 24) = 0;
                v42 = v43;
              }

              while (v43 != v36);
            }

            *v36 = v54;
            if (*(v36 + 31) < 0)
            {
              operator delete(*(v36 + 1));
            }

            v46 = __p;
            *(v36 + 3) = v56;
            *(v36 + 2) = v46;
            HIBYTE(v56) = 0;
            LOBYTE(__p) = 0;
          }

          v51 = v36;
        }

        goto LABEL_88;
      }

      v23 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v24 = 2821;
      v25 = "vector.hpp";
      v26 = "priv_insert_forward_range";
    }

LABEL_99:
    __assert_rtn(v26, v25, v24, v23);
  }

LABEL_91:
  v49 = *MEMORY[0x277D85DE8];
  return v6 + 2;
}

void sub_27265F314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v30[1] = a2;
  v30[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      v21 = *(v20 + 8);
      *(v19 + 24) = *(v20 + 24);
      *(v19 + 8) = v21;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 8) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  v22 = *(a4 + 8);
  *(v19 + 24) = *(a4 + 24);
  *(v19 + 8) = v22;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v18 != a3)
  {
    v23 = v19 + 40;
    v24 = a3;
    do
    {
      *(v23 - 8) = *v24;
      v25 = *(v24 + 8);
      *(v23 + 16) = *(v24 + 24);
      *v23 = v25;
      v23 += 32;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 8) = 0;
      v24 += 32;
    }

    while (v24 != v18);
  }

  v30[0] = 0;
  if (v17)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      v27 = (v17 + 31);
      do
      {
        if (*v27 < 0)
        {
          operator delete(*(v27 - 23));
        }

        v27 += 32;
        --v26;
      }

      while (v26);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v28;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(v30);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_27265F5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v15 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(&v16, &v15, *a2, *a3, a3[1]);
  v7 = v16;
  *a4 = v16;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a3 >= *v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 255;
  }

  if (*a3 == *v7)
  {
    v9 = a3[1];
    v10 = v7[1];
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = 255;
    if (v11)
    {
      v13 = 1;
    }

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v13;
    }
  }

  return v8 >> 7;
}

void virtual thunk tovp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(vp::vx::IO_Node_Audio_Injector *this)
{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector((this + *(*this - 24)));
}

void vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(vp::vx::IO_Node_Audio_Injector *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8618;
  *(this + 13) = &unk_2881B86B0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
    v3 = v14;
    v4 = v14;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = this + 72;
  std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 40;
  std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](__p);
  *this = off_2881B8730;
  *(this + 13) = off_2881B87C8;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 13) = &unk_2881C6630;
  v11 = *(this + 15);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t **std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    v5 = v2;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v6 = *v3;
      v5 = **v3;
    }

    v1[1] = v2;
    v7 = v6[3];
    v8 = (v6[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::deallocate[abi:ne200100](v7, v5, v8);
  }

  return result;
}

uint64_t std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::IO_Node_Audio_Injector::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  *buf = 0x34002500000000;
  *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Injector_Factory.cpp";
  *v56 = 0uLL;
  *&buf[16] = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v56[16]);
  v12 = *&v56[16];
  *a6 = 0;
  *(a6 + 4) = 3407909;
  *(a6 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Injector_Factory.cpp";
  *(a6 + 24) = 0uLL;
  *(a6 + 40) = v12;
  *(a6 + 48) = 0;
  if (a3)
  {
    v13 = 0;
    v14 = (a2 + 16);
    v15 = 24;
    do
    {
      v16 = *(a1 + 40);
      if (v13 < (*(a1 + 48) - v16) >> 5)
      {
        v17 = *(v16 + v15);
        if (v17)
        {
          v18 = std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(v17, *(v14 - 2), *(v14 - 1), *v14);
          v19 = v18;
          if (v18)
          {
            v20 = vp::get_log(v18);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&v52, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
              v43 = v54;
              v41 = v53;
              log = vp::get_log(v21);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v22 = v41;
                if (v43 >= 0)
                {
                  v22 = v43;
                }

                if ((v54 & 0x80u) == 0)
                {
                  v23 = &v52;
                }

                else
                {
                  v23 = v52;
                }

                v24 = v22 == 0;
                v25 = " ";
                if (v24)
                {
                  v25 = "";
                }

                v42 = v25;
                v44 = v23;
                caulk::string_from_4cc(&__p, v19);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = v42;
                *&buf[22] = 2048;
                *v56 = v13;
                *&v56[8] = 2080;
                *&v56[10] = p_p;
                _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to inject data for input %lu with status %s", buf, 0x2Au);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              if (v54 < 0)
              {
                operator delete(v52);
              }
            }
          }
        }
      }

      ++v13;
      v15 += 32;
      v14 += 6;
    }

    while (a3 != v13);
  }

  (*(**(a1 + 8) + 80))(buf);
  caulk::expected<void,vp::vx::io::Error>::operator=(a6, buf);
  if ((v57 & 1) == 0 && (v56[15] & 0x80000000) != 0)
  {
    (*(**&v56[16] + 24))(*&v56[16], *&buf[16], *&v56[8] & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (a5)
  {
    v27 = 0;
    v28 = (a4 + 16);
    v29 = 24;
    do
    {
      v30 = *(a1 + 72);
      if (v27 < (*(a1 + 80) - v30) >> 5)
      {
        v31 = *(v30 + v29);
        if (v31)
        {
          v32 = std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(v31, *(v28 - 2), *(v28 - 1), *v28);
          v33 = v32;
          if (v32)
          {
            v34 = vp::get_log(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&v52, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
              loga = v54;
              v45 = v53;
              v50 = vp::get_log(v35);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v36 = v45;
                if (loga >= 0)
                {
                  v36 = loga;
                }

                if ((v54 & 0x80u) == 0)
                {
                  v37 = &v52;
                }

                else
                {
                  v37 = v52;
                }

                v24 = v36 == 0;
                v38 = " ";
                if (v24)
                {
                  v38 = "";
                }

                v46 = v38;
                logb = v37;
                caulk::string_from_4cc(&__p, v33);
                v39 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v39 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = logb;
                *&buf[12] = 2080;
                *&buf[14] = v46;
                *&buf[22] = 2048;
                *v56 = v27;
                *&v56[8] = 2080;
                *&v56[10] = v39;
                _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%s%sfailed to inject data for output %lu with status %s", buf, 0x2Au);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              if (v54 < 0)
              {
                operator delete(v52);
              }
            }
          }
        }
      }

      ++v27;
      v29 += 32;
      v28 += 6;
    }

    while (a5 != v27);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_27265FFA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

void vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  v71 = a2;
  v63 = a5;
  v109 = *MEMORY[0x277D85DE8];
  v8 = (*(**a3 + 48))(*a3, 0);
  MEMORY[0x28223BE20](v8);
  v64 = v9;
  v67 = (&v62 - 2 * v9);
  bzero(v67, v10);
  if (v8)
  {
    v11 = v67 + 1;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v11 - 1) = 0;
      *v11 = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = (*(**v6 + 48))(*v6, 1);
  MEMORY[0x28223BE20](v14);
  v62 = v15;
  v66 = (&v62 - 2 * v15);
  bzero(v66, v16);
  if (v14)
  {
    v17 = v66 + 1;
    v18 = v14;
    do
    {
      v19 = *v17;
      *(v17 - 1) = 0;
      *v17 = 0;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v17 += 2;
      --v18;
    }

    while (v18);
  }

  v72 = 0;
  v20 = 0;
  v68 = v14;
  v69 = v8;
  v21 = v71;
  v74 = a1;
  v75 = v6;
  *&v73 = a4;
  v65 = v71;
  do
  {
    v70 = v20;
    v22 = *(vp::domains(void)::s_domains + v20);
    if (v22)
    {
      v23 = v68;
    }

    else
    {
      v23 = v69;
    }

    if (v23)
    {
      v24 = 0;
      v25 = v67;
      if (v22)
      {
        v25 = v66;
      }

      v26 = v25 + 1;
      while (1)
      {
        vp::vx::IO_Node_Audio_Injector_Factory::new_audio_player(buf, a1, v21, v24, v22, a4);
        v27 = *buf;
        if (*buf)
        {
          break;
        }

LABEL_62:
        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v108);
        }

        ++v24;
        v26 += 2;
        if (v23 == v24)
        {
          goto LABEL_70;
        }
      }

      (*(**v6 + 56))(v76);
      if (v80 != 1)
      {
LABEL_59:
        if ((v80 & 1) == 0 && SHIBYTE(v78) < 0)
        {
          (*(*v79 + 24))(v79, v77, v78 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_62;
      }

      v97 = (*(**v6 + 32))();
      v28 = vp::Audio_File::get_property<long long,(decltype(nullptr))0>((v27 + 24));
      if (v28 <= 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = -1;
      }

      if (HIDWORD(v28))
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      v32 = v31 | 0x100000000;
      if (v29)
      {
        v33 = v32;
      }

      else
      {
        v33 = v28;
      }

      if ((v33 & 0x100000000) == 0)
      {
        v42 = v33;
LABEL_54:
        v6 = v75;
        if (!v42)
        {
          v48 = v108;
          if (v108)
          {
            atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ++v72;
          v49 = *v26;
          *(v26 - 1) = v27;
          *v26 = v48;
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }
        }

        goto LABEL_59;
      }

      vp::Audio_File::get_property<CA::StreamDescription,(decltype(nullptr))0>(&v95, (v27 + 24));
      if ((v96 & 1) == 0)
      {
        v42 = LODWORD(v95);
        goto LABEL_53;
      }

      v34 = *(v27 + 40);
      if (v34 <= 0.0)
      {
        v41 = 0;
      }

      else
      {
        *&v98 = 0;
        LODWORD(v83) = 8;
        Property = AudioUnitGetProperty(*(v27 + 32), 2u, 2u, 0, &v98, &v83);
        v36 = *&v98;
        if (Property)
        {
          *&v36 = Property;
        }

        v37 = v36;
        if (Property)
        {
          v37 = INFINITY;
        }

        v38 = *(v27 + 104) + v34 / v37;
        v39 = v95;
        v40 = fmod(v38, v33 / v95);
        *(v27 + 104) = v40;
        v41 = vcvtpd_u64_f64(v39 * v40);
      }

      v42 = AudioUnitUninitialize(*(v27 + 32));
      if (v42)
      {
        goto LABEL_53;
      }

      v42 = AudioUnitSetProperty(*(v27 + 32), 8u, 0, 0, v76, 0x28u);
      if (v42)
      {
        goto LABEL_53;
      }

      v42 = AudioUnitSetProperty(*(v27 + 32), 0xEu, 0, 0, &v97, 4u);
      if (v42)
      {
        goto LABEL_53;
      }

      *&v98 = 0;
      LODWORD(inData) = 8;
      vp::Audio_File::get_property(&v83, (v27 + 24), 0x6166696Cu, &v98, &inData);
      if (BYTE4(v83) != 1)
      {
        v42 = LODWORD(v83);
        goto LABEL_53;
      }

      v43 = v98;
      inData = v98;
      v42 = AudioUnitSetProperty(*(v27 + 32), 0xCEEu, 0, 0, &inData, 8u);
      if (v42 || (v42 = AudioUnitInitialize(*(v27 + 32))) != 0)
      {
LABEL_52:
        v21 = v65;
LABEL_53:
        a1 = v74;
        a4 = v73;
        goto LABEL_54;
      }

      if (v41)
      {
        v104 = 0;
        v101 = 0uLL;
        v102 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v98 = 0uLL;
        v103 = v43;
        *&v105 = v41;
        v44 = v33 - v41;
        *(&v105 + 1) = v44;
        vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v83, *(v27 + 32), &v98);
        if (BYTE4(v83))
        {
          v91 = 0xFFFFFFFFLL;
          v92 = 0;
          v94 = 0;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = v76[0] * v44 / v95;
          v88 = 0;
          v89 = 0;
          v87 = 0;
          v90 = v43;
          v93 = v33;
          vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v81, *(v27 + 32), &v83);
          if (v82 != 1)
          {
            v42 = v81;
            goto LABEL_52;
          }

LABEL_50:
          *&v101 = 0;
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
          *(&v101 + 1) = 1;
          v42 = AudioUnitSetProperty(*(v27 + 32), 0xCE5u, 0, 0, &v98, 0x40u);
          if (!v42)
          {
            v46 = v100;
            v45 = v101;
            v47 = v99;
            *(v27 + 40) = v98;
            *(v27 + 56) = v47;
            *(v27 + 72) = v46;
            *(v27 + 88) = v45;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v105 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v98 = 0uLL;
        v103 = v43;
        v104 = 0xFFFFFFFFLL;
        DWORD2(v105) = v33;
        vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v83, *(v27 + 32), &v98);
        if (BYTE4(v83) == 1)
        {
          goto LABEL_50;
        }
      }

      v42 = LODWORD(v83);
      goto LABEL_52;
    }

LABEL_70:
    v20 = v70 + 4;
  }

  while (v70 != 4);
  if (v72)
  {
    v76[0] = 0.0;
    *&v76[1] = a4;
    v77 = xmmword_2727566F0;
    v50 = (*(*a4 + 16))(a4, 128, 8);
    v51 = *v6;
    *v6 = 0;
    v83 = v51;
    v73 = *(v6 + 1);
    v84 = v73;
    *&v85 = v6[3];
    *(v50 + 104) = &unk_2881C6630;
    operator new();
  }

  v52 = *v6;
  *v6 = 0;
  v53 = v63;
  *v63 = v52;
  *(v53 + 1) = *(v6 + 1);
  v53[3] = v6[3];
  v54 = v64;
  v55 = (v66 - 1);
  v56 = 16 * v62;
  do
  {
    v57 = *&v55[v56];
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v56 -= 16;
  }

  while (v56);
  v58 = (v67 - 1);
  v59 = 16 * v54;
  do
  {
    v60 = *&v58[v59];
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v59 -= 16;
  }

  while (v59);
  v61 = *MEMORY[0x277D85DE8];
}

void sub_272660D24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::IO_Node_Audio_Injector_Factory::new_audio_player(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v84 = a6;
  v82 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v7 = a2 + 32 * (a5 != 0);
  v87 = __PAIR64__(a4, a3);
  v8 = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(&v106, v7 + 88, &v87);
  v10 = *(v7 + 96);
  v11 = *(v7 + 104);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v106.__r_.__value_.__r.__words[0] == v10 + 32 * v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v9);
  }

  if (*(v106.__r_.__value_.__r.__words[0] + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, *(v106.__r_.__value_.__r.__words[0] + 8), *(v106.__r_.__value_.__r.__words[0] + 16));
  }

  else
  {
    v13 = *(v106.__r_.__value_.__r.__words[0] + 8);
    v96.__r_.__value_.__r.__words[2] = *(v106.__r_.__value_.__r.__words[0] + 24);
    *&v96.__r_.__value_.__l.__data_ = v13;
  }

  MEMORY[0x28223BE20](v8);
  v14 = v78;
  v15 = (a2 + 56);
  if (*(a2 + 79) < 0)
  {
    v15 = *v15;
  }

  v16 = (a2 + 32);
  if (*(a2 + 55) < 0)
  {
    v16 = *v16;
  }

  snprintf(v78, 0x20uLL, "vp.inject.%s.%s.", v15, v16);
  v17 = (a2 + 8);
  v18 = *(a2 + 31);
  v81 = &v79;
  if (v18 < 0)
  {
    v17 = *v17;
  }

  v19 = 0;
  v105[0] = v17;
  v105[1] = "/tmp/";
  v86 = xmmword_272756700;
  v83 = xmmword_272756710;
  v79 = v78;
LABEL_17:
  v20 = 0;
  v80 = v19;
  v95 = *(v105 + v19);
  v104[0] = v14;
  v104[1] = "vp.inject.";
  v104[2] = "iiii.000.";
LABEL_18:
  v21 = 0;
  v85 = v20;
  v22 = *(v104 + v20);
  v103[0] = ".wav";
  v103[1] = ".caf";
  while (1)
  {
    v23 = v103[v21];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v94, &v95);
    if (v22->__r_.__value_.__s.__data_[0] == 47)
    {
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        *v94.__r_.__value_.__l.__data_ = 0;
        v94.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v94.__r_.__value_.__s.__data_[0] = 0;
        *(&v94.__r_.__value_.__s + 23) = 0;
      }
    }

    else if (std::__fs::filesystem::path::__filename(&v94).__size_)
    {
      std::string::push_back(&v94, 47);
    }

    v24 = (v22 - 1);
    do
    {
      v25 = v24->__r_.__value_.__s.__data_[1];
      v24 = (v24 + 1);
    }

    while (v25);
    std::string::append[abi:ne200100]<char const*,0>(&v94, v22, v24);
    if (*(a2 + 84) == 1)
    {
      caulk::make_string("v%u.", &v106, *(a2 + 80));
      v26 = (v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v106 : v106.__r_.__value_.__r.__words[0];
      v27 = (v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v106.__r_.__value_.__r.__words[2]) : v106.__r_.__value_.__l.__size_;
      std::string::append(&v94, v26, v27);
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v96;
    }

    else
    {
      v28 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v94, v28, size);
    v30 = strlen(v23);
    std::string::append(&v94, v23, v30);
    std::__fs::filesystem::__status(&v94, 0);
    if (!v106.__r_.__value_.__s.__data_[0] || v106.__r_.__value_.__s.__data_[0] == 255)
    {
      v109.__data_ = (a2 + 152);
      v109.__size_ = &v94;
      boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(&v106, v109);
      v31 = *(a2 + 160);
      v32 = *(a2 + 168);
      if (!v31 && v32)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v33 = v31 + 40 * v32;
      v34 = v106.__r_.__value_.__r.__words[0];
      if (v106.__r_.__value_.__r.__words[0] != v33)
      {
        if (v31 > v106.__r_.__value_.__r.__words[0] || v106.__r_.__value_.__r.__words[0] >= v33)
        {
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        v35 = v106.__r_.__value_.__r.__words[0] + 40;
        while (v35 != v33)
        {
          v36 = v34 + 40;
          v35 = boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v34, (v34 + 40)) + 80;
          v34 = v36;
        }

        std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v33 - 40);
        --*(a2 + 168);
      }

      goto LABEL_120;
    }

    v110.__data_ = (a2 + 152);
    v110.__size_ = &v94;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(&v93, v110);
    v37 = *(a2 + 160);
    v38 = *(a2 + 168);
    if (!v37 && v38)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v93 == (v37 + 40 * v38))
    {
      v90 = 0;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v106, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
      }

      else
      {
        v106 = v94;
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v106;
      }

      else
      {
        v39 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v106.__r_.__value_.__l.__size_;
      }

      v41 = MEMORY[0x2743CB370](0, v39, v40, 0, 0);
      v98[0] = v41;
      if (!v41)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
        v41 = v98[0];
      }

      ExtAudioFileOpenURL(v41, &v90);
      if (v98[0])
      {
        CFRelease(v98[0]);
      }

      v42 = v90;
      v90 = 0;
      LOBYTE(v88) = 1;
      v106.__r_.__value_.__r.__words[0] = v42;
      v87 = 0;
      v106.__r_.__value_.__s.__data_[8] = 1;
      vp::Audio_File::~Audio_File(&v87);
      vp::Audio_File::~Audio_File(&v90);
      v87 = 0;
      v43 = v106.__r_.__value_.__r.__words[0];
      v106.__r_.__value_.__r.__words[0] = 0;
      v92 = v43;
      vp::Audio_File::~Audio_File(&v87);
      vp::Audio_File::~Audio_File(&v106);
      if (!v92)
      {
        goto LABEL_116;
      }

      *&v106.__r_.__value_.__l.__data_ = v86;
      LODWORD(v106.__r_.__value_.__r.__words[2]) = 0;
      v87 = 0;
      Next = AudioComponentFindNext(0, &v106);
      v45 = AudioComponentInstanceNew(Next, &v87);
      if (v45)
      {
        v46 = 0;
        LODWORD(v90) = v45;
      }

      else
      {
        v90 = v87;
        v87 = 0;
        v46 = 1;
      }

      v91 = v46;
      vp::Audio_Unit::~Audio_Unit(&v87);
      if (v91 != 1)
      {
LABEL_116:
        vp::Audio_File::~Audio_File(&v92);
        v37 = *(a2 + 160);
        v38 = *(a2 + 168);
        if (v37)
        {
          goto LABEL_118;
        }

        goto LABEL_117;
      }

      v97 = v84;
      v87 = 0;
      v88 = v84;
      v89 = v83;
      v47 = (*(*v84 + 16))(v84, 112, 8);
      v100 = v47;
      v98[0] = &v100;
      v98[1] = &v97;
      v99 = 0;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v106, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
      }

      else
      {
        v106 = v94;
      }

      v48 = v92;
      v92 = 0;
      v49 = v90;
      v90 = 0;
      *(v47 + 16) = *(&v106.__r_.__value_.__l + 2);
      *(v47 + 24) = v48;
      *v47 = *&v106.__r_.__value_.__l.__data_;
      memset(&v106, 0, sizeof(v106));
      v101 = 0;
      v102 = 0;
      *(v47 + 32) = v49;
      *(v47 + 40) = 0u;
      *(v47 + 56) = 0u;
      *(v47 + 72) = 0u;
      *(v47 + 88) = 0;
      *(v47 + 96) = 1;
      *(v47 + 104) = 0;
      if (!v48)
      {
        _os_crash();
        __break(1u);
LABEL_145:
        _os_crash();
        __break(1u);
LABEL_146:
        v74 = 879;
        v75 = "insert_unique";
        v76 = "flat_tree.hpp";
        v77 = "this->priv_in_range_or_end(hint)";
LABEL_152:
        __assert_rtn(v75, v76, v74, v77);
      }

      if (!v49)
      {
        goto LABEL_145;
      }

      vp::Audio_Unit::~Audio_Unit(&v101);
      vp::Audio_File::~Audio_File(&v102);
      v50 = v100;
      v99 = 1;
      std::__exception_guard_exceptions<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player * std::pmr::polymorphic_allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::new_object[abi:ne200100]<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit>(std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v98);
      std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](&v87, v50);
      v52 = v93;
      *&v106.__r_.__value_.__l.__data_ = *&v94.__r_.__value_.__l.__data_;
      v53 = v94.__r_.__value_.__r.__words[2];
      memset(&v94, 0, sizeof(v94));
      v106.__r_.__value_.__r.__words[2] = v53;
      *&v107 = v87;
      if (v87)
      {
        operator new();
      }

      v107 = 0uLL;
      v87 = 0;
      v54 = *(a2 + 160);
      if (v54 > v93)
      {
        goto LABEL_146;
      }

      v55 = *(a2 + 168);
      if (!v54 && v55)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v56 = &v54[40 * v55];
      if (v93 > v56)
      {
        goto LABEL_146;
      }

      v102 = 0;
      if (v93 != v56)
      {
        if (!v93)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        v51.__data_ = v93;
        if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v106, v51) & 0x80) == 0)
        {
          v98[0] = v56;
          v111.__data_ = v98;
          v111.__size_ = &v106;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(v52, v111, &v102))
          {
            goto LABEL_110;
          }

LABEL_100:
          v59 = v102;
          v60 = *(a2 + 160);
          if (v60 > v102)
          {
            goto LABEL_149;
          }

          v61 = *(a2 + 168);
          if (!v60 && v61)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          v62 = v60 + 40 * v61;
          if (v102 > v62)
          {
LABEL_149:
            v74 = 1862;
            v75 = "emplace";
            v76 = "vector.hpp";
            v77 = "this->priv_in_range_or_end(position)";
            goto LABEL_152;
          }

          v63 = *(a2 + 176);
          if (v63 < v61)
          {
            v74 = 2821;
            v75 = "priv_insert_forward_range";
            v76 = "vector.hpp";
            v77 = "this->m_holder.capacity() >= this->m_holder.m_size";
            goto LABEL_152;
          }

          if (v63 == v61)
          {
            boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>*,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>(&v101, (a2 + 152), v102, &v106);
            v59 = v101;
          }

          else if (v62 == v102)
          {
            v66 = *&v106.__r_.__value_.__l.__data_;
            *(v62 + 16) = *(&v106.__r_.__value_.__l + 2);
            *v62 = v66;
            memset(&v106, 0, sizeof(v106));
            *(v62 + 24) = v107;
            v107 = 0uLL;
            ++*(a2 + 168);
          }

          else
          {
            v64 = v62 - 40;
            *v62 = *(v62 - 40);
            *(v62 + 16) = *(v62 - 24);
            *(v62 - 40) = 0;
            *(v62 - 32) = 0;
            *(v62 + 24) = *(v62 - 16);
            *(v62 - 24) = 0;
            *(v62 - 16) = 0;
            *(v62 - 8) = 0;
            ++*(a2 + 168);
            if ((v62 - 40) != v59)
            {
              do
              {
                v65 = (v64 - 40);
                boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v64, (v64 - 40));
                v64 = v65;
              }

              while (v65 != v59);
            }

            boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v59, &v106);
          }

          goto LABEL_114;
        }

        v54 = *(a2 + 160);
      }

      v102 = v52;
      if (v52 == v54)
      {
        goto LABEL_100;
      }

      if (!v52)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v57 = (v52 - 40);
      v51.__data_ = &v106;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](v57, v51) & 0x80) != 0)
      {
        goto LABEL_100;
      }

      v58.__data_ = v57;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v106, v58) & 0x80) != 0)
      {
        v98[0] = v57;
        v112.__data_ = v98;
        v112.__size_ = &v106;
        if (boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(v54, v112, &v102))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v102 = v57;
      }

LABEL_110:
      v59 = v102;
      if (!*(a2 + 160) && v102)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

LABEL_114:
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(&v106);
      v93 = v59;
      std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](&v87, 0);
      if (v91)
      {
        vp::Audio_Unit::~Audio_Unit(&v90);
      }

      goto LABEL_116;
    }

    if (v37)
    {
      goto LABEL_118;
    }

LABEL_117:
    if (v38)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

LABEL_118:
    if (v93 != (v37 + 40 * v38))
    {
      v67 = *(v93 + 3);
      if (v67)
      {
        break;
      }
    }

LABEL_120:
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (++v21 == 2)
    {
      v20 = v85 + 8;
      if (v85 != 16)
      {
        goto LABEL_18;
      }

      v14 = v79;
      v19 = v80 + 8;
      if (v80 == 8)
      {
        v69 = 1;
        goto LABEL_134;
      }

      goto LABEL_17;
    }
  }

  v70 = *(v93 + 4);
  v71 = v82;
  *v82 = v67;
  v71[1] = v70;
  if (v70)
  {
    atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v69 = 0;
LABEL_134:
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
    if (v69)
    {
      goto LABEL_138;
    }
  }

  else
  {
    if ((v69 & 1) == 0)
    {
      goto LABEL_139;
    }

LABEL_138:
    v72 = v82;
    *v82 = 0;
    v72[1] = 0;
  }

LABEL_139:
  v73 = *MEMORY[0x277D85DE8];
}

void sub_2726619A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v3 - 160);
    std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100]((v2 + 80), 0);
    if (*(v2 + 120) == 1)
    {
      vp::Audio_Unit::~Audio_Unit((v2 + 112));
    }

    vp::Audio_File::~Audio_File((v2 + 128));
    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    if (*(v2 + 199) < 0)
    {
      operator delete(*(v2 + 176));
    }

    __cxa_begin_catch(a1);
    v5 = *(v2 + 24);
    *v5 = 0;
    v5[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x272661764);
  }

  _Unwind_Resume(a1);
}

void sub_272661AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272661AD0);
  }

  JUMPOUT(0x272661AD8);
}

void *std::unique_ptr<vp::vx::IO_Node_Audio_Injector,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>,std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>*>(uint64_t result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    for (i = (result + 24); ; i += 4)
    {
      v7 = *i;
      if (*i)
      {
        if (i - 3 == v7)
        {
          *(a3 + 24) = a3;
          (*(**i + 24))(*i, a3);
          goto LABEL_9;
        }

        *(a3 + 24) = v7;
        v8 = i;
      }

      else
      {
        v8 = (a3 + 24);
      }

      *v8 = 0;
LABEL_9:
      a3 += 32;
      v9 = i + 1;
      if (v9 == a2)
      {
        do
        {
          result = std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](v5);
          v5 += 32;
        }

        while (v5 != a2);
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

double std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(uint64_t a1, AudioBufferList **a2, uint64_t a3, UInt32 *a4)
{
  v4 = *a4;
  v5 = *(a1 + 8);
  AudioUnitRender(*(v5 + 32), 0, (v5 + 40), 0, *a4, *a2);
  result = *(v5 + 40) + v4;
  *(v5 + 40) = result;
  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B88A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B88A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B88A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(uint64_t a1, AudioUnit inUnit, void *inData)
{
  result = AudioUnitSetProperty(inUnit, 0xCEFu, 0, 0, inData, 0x70u);
  if (result)
  {
    v5 = 0;
    *a1 = result;
  }

  else
  {
    *a1 = 0;
    v5 = 1;
  }

  *(a1 + 4) = v5;
  return result;
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(uint64_t result, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  v3 = *(a2.__data_ + 2);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  size = a2.__size_;
  v6 = result;
  if (v3)
  {
    data = a2.__data_;
    do
    {
      if (v3 != 1 && !v2)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      a2.__data_ = size;
      result = std::__fs::filesystem::operator<=>[abi:ne200100](&v2[40 * (v3 >> 1)], a2);
      if ((result & 0x80u) == 0)
      {
        v3 >>= 1;
      }

      else
      {
        v2 += 40 * (v3 >> 1) + 40;
        v3 += ~(v3 >> 1);
      }
    }

    while (v3);
    v8 = *(data + 1);
    v3 = *(data + 2);
    *v6 = v2;
    if (!v8 && v3)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }
  }

  else
  {
    *result = v2;
    v8 = v2;
  }

  v9 = &v8[40 * v3];
  if (v2 != v9)
  {
    if (!v2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    a2.__data_ = v2;
    result = std::__fs::filesystem::operator<=>[abi:ne200100](size, a2);
    if ((result & 0x80) != 0)
    {
      *v6 = v9;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::operator()(result + 1, v3);
  }

  return result;
}

uint64_t boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(uint64_t a1, __int128 *a2)
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
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::operator()(void *a1, uint64_t a2)
{
  vp::Audio_Unit::~Audio_Unit((a2 + 32));
  vp::Audio_File::~Audio_File((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = *(**a1 + 24);

  return v6();
}

uint64_t boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>*,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>(void *a1, const char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x666666666666666)
  {
    goto LABEL_27;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x666666666666666)
  {
    v6 = 0x666666666666666;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x666666666666666)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v15 = v14;
  v28[1] = a2;
  v28[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 40 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      v20 = *v19;
      *(v18 + 16) = *(v19 + 2);
      *v18 = v20;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      *v19 = 0;
      *(v18 + 24) = *(v19 + 24);
      *(v19 + 3) = 0;
      *(v19 + 4) = 0;
      v19 = (v19 + 40);
      v18 += 40;
    }

    while (v19 != a3);
  }

  v21 = *a4;
  *(v18 + 16) = *(a4 + 2);
  *v18 = v21;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(v18 + 24) = *(a4 + 24);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  if (v17 != a3)
  {
    v22 = (v18 + 64);
    v23 = a3;
    do
    {
      v24 = *v23;
      *(v22 - 1) = *(v23 + 2);
      *(v22 - 24) = v24;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *v23 = 0;
      *v22 = *(v23 + 24);
      v22 = (v22 + 40);
      *(v23 + 3) = 0;
      *(v23 + 4) = 0;
      v23 = (v23 + 40);
    }

    while (v23 != v17);
  }

  v28[0] = 0;
  if (v16)
  {
    for (i = *(a2 + 2); i; v16 += 40)
    {
      --i;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v16);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v26;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(v28);
  *a1 = a3 + *(a2 + 1) - v13;
  return result;
}

void sub_2726623F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t std::__fs::filesystem::operator<=>[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  v3 = std::__fs::filesystem::path::__compare(a1, a2);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(const std::string_view::value_type *a1, std::__fs::filesystem::path::__string_view a2, const std::string_view::value_type **a3)
{
  size = a2.__size_;
  data = a2.__data_;
  v6 = a1;
  if (*a2.__data_ != a1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*a2.__data_ - a1) >> 3);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      a2.__data_ = size;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v6[40 * (v7 >> 1)], a2) & 0x80u) == 0)
      {
        v7 >>= 1;
      }

      else
      {
        v6 += 40 * (v7 >> 1) + 40;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  *a3 = v6;
  if (v6 == *data)
  {
    return 1;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  a2.__data_ = v6;
  return (std::__fs::filesystem::operator<=>[abi:ne200100](size, a2) & 0x80u) != 0;
}

void std::__shared_ptr_pointer<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player *,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__exception_guard_exceptions<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player * std::pmr::polymorphic_allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::new_object[abi:ne200100]<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit>(std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

uint64_t vp::vx::IO_Node_Audio_Injector_Factory::IO_Node_Audio_Injector_Factory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2881B8700;
  v5 = (a1 + 8);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 84) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

__n128 vp::vx::IO_Node_Audio_Injector_Factory::add_audio_injector(uint64_t a1, unsigned int a2, unsigned int a3, int a4, __n128 *a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript(a1 + 32 * (a4 != 0) + 88, v9);
  v7 = v6;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *a5;
  v7[1].n128_u64[0] = a5[1].n128_u64[0];
  *v7 = result;
  a5[1].n128_u8[7] = 0;
  a5->n128_u8[0] = 0;
  return result;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(vp::vx::IO_Parameter_Setter_Command *this)
{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command((this + *(*this - 24)));
}

void vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(vp::vx::IO_Parameter_Setter_Command *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 4, v2);
    *(this + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(this + 4);
  *(this + 6) = &unk_2881C6630;
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(_DWORD *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  if (v3 && *(v3 + 8) != -1)
  {
    v4 = a1[2];
    v5 = *a2;
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    operator new();
  }

  v6 = a1[10];
  if (v6)
  {
    vp::vx::data_flow::State<void>::unregister_listener(a1 + 4, v6);
    a1[10] = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_272662B48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 24);
      if (v8)
      {
        log = vp::get_log(v6);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            v10 = v5 + 48;
          }

          else
          {
            v10 = 0;
          }

          v11 = v22;
          vp::vx::io::get_log_context_info(v22, v10, "vp::vx::IO_Parameter_Setter_Command]", 35);
          v12 = v23;
          v13 = v23;
          v14 = v22[1];
          v16 = vp::get_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v13 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v14;
            }

            if (v13 < 0)
            {
              v11 = v22[0];
            }

            if (v17)
            {
              v18 = " ";
            }

            else
            {
              v18 = "";
            }

            caulk::string_from_4cc(&__p, *(a1 + 16));
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            v25 = v11;
            v26 = 2080;
            *v27 = v18;
            *&v27[8] = 2080;
            v28 = p_p;
            LOWORD(v29) = 2048;
            *(&v29 + 2) = v4;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting parameter %s to %f", buf, 0x2Au);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOBYTE(v13) = v23;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(v22[0]);
          }
        }

        (*(*v8 + 32))(buf, v8, *(v5 + 8), v4);
        if ((v30 & 1) == 0 && SBYTE7(v29) < 0)
        {
          (*(**(&v29 + 1) + 24))(*(&v29 + 1), *&v27[2], v29 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_272662D8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B89F0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B89F0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B89F0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t vp::vx::IO_Parameter_Setter_Command::get_parameter_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(result + 8);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Command_Factory::~IO_Parameter_Setter_Command_Factory(vp::vx::IO_Parameter_Setter_Command_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Command_Factory::~IO_Parameter_Setter_Command_Factory(vp::vx::IO_Parameter_Setter_Command_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = (*(*a2 + 8))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v10);
    if (v10 != v11)
    {
      v14 = *v10;
      v8 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(a1 + 8, &v14);
      v15 = 0;
      v16 = a3;
      v17 = xmmword_272756720;
      v9 = (*(*a3 + 16))(a3, 72, 8);
      vp::vx::data_flow::State<void>::State(v18, v8);
      *(v9 + 48) = &unk_2881C6630;
      operator new();
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v15 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(&v14, &v15, v2 + 32 * v3, *a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = (v8 + 32 * v9);
  v12 = v14;
  if (v14 != v11)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v14)
    {
      v12 = v11;
    }
  }

  if (v12 == v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v7);
  }

  return v12 + 2;
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::operator()(void (**a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  v6 = *(a2 + 1);
  v7 = a2[3];
  v2(a1 + 1, &v5);
  return std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](&v5);
}

vp::vx::IO_Parameter_Setter_Command **std::unique_ptr<vp::vx::IO_Parameter_Setter_Command,vp::Allocator_Delete<vp::vx::IO_Parameter_Setter_Command>>::reset[abi:ne200100](vp::vx::IO_Parameter_Setter_Command **result, vp::vx::IO_Parameter_Setter_Command *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 5;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[8 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 8;
        *a2 = v7 + 8;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(uint64_t a1, unsigned int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = *(a1 + 16);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  v12 = v3 + 32 * v4;
  if (v6 == v12)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_18:
    v34 = 0u;
    v35 = 0u;
    v32 = a2;
    v33 = 0;
    v36 = 0;
    v39 = a2;
    v40 = 0;
    v41 = 0u;
    if (v3 > v6 || v6 > v12)
    {
      v27 = "this->priv_in_range_or_end(hint)";
      v28 = 879;
      v29 = "flat_tree.hpp";
      v30 = "insert_unique";
      goto LABEL_58;
    }

    v37 = 0;
    if (v6 == v12)
    {
      v14 = v12;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v6;
      if (*v6 <= a2)
      {
        v38 = v12;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(v6, &v38, &v39, &v37))
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }
    }

    v37 = v6;
    if (v14 == v3)
    {
      goto LABEL_31;
    }

    if (!v14)
    {
      __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
    }

    v16 = *(v14 - 32);
    v15 = (v14 - 32);
    v17 = v16 > a2;
    if (v16 < a2)
    {
LABEL_31:
      v6 = v37;
      v18 = *(a1 + 8);
      if (v18 > v37)
      {
        goto LABEL_55;
      }

      v19 = *(a1 + 16);
      if (!v18 && v19)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v20 = v18 + 32 * v19;
      if (v37 > v20)
      {
LABEL_55:
        v27 = "this->priv_in_range_or_end(position)";
        v28 = 1862;
        v29 = "vector.hpp";
        v30 = "emplace";
      }

      else
      {
        v21 = *(a1 + 24);
        if (v21 >= v19)
        {
          if (v21 == v19)
          {
            boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>(&v31, a1, v37, &v39);
            v6 = v31;
          }

          else if (v20 == v37)
          {
            *v20 = v39;
            *(v20 + 8) = v40;
            *(v20 + 16) = v41;
            v41 = 0uLL;
            *(a1 + 16) = v19 + 1;
          }

          else
          {
            v22 = v20 - 32;
            *v20 = *(v20 - 32);
            *(v20 + 8) = *(v20 - 24);
            *(v20 + 16) = *(v20 - 16);
            *(v20 - 16) = 0;
            *(v20 - 8) = 0;
            ++*(a1 + 16);
            if ((v20 - 32) != v6)
            {
              v23 = (v20 - 32);
              do
              {
                v24 = *(v23 - 8);
                v23 -= 8;
                *v22 = v24;
                vp::vx::data_flow::State<void>::~State((v22 + 8));
                *(v22 + 8) = *(v22 - 24);
                *(v22 + 16) = *(v22 - 16);
                *(v22 - 16) = 0;
                *(v22 - 8) = 0;
                v22 = v23;
              }

              while (v23 != v6);
            }

            *v6 = v39;
            vp::vx::data_flow::State<void>::~State(v6 + 2);
            v6[2] = v40;
            *(v6 + 1) = v41;
            v41 = 0uLL;
          }

          goto LABEL_48;
        }

        v27 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v28 = 2821;
        v29 = "vector.hpp";
        v30 = "priv_insert_forward_range";
      }

LABEL_58:
      __assert_rtn(v30, v29, v28, v27);
    }

    if (v17)
    {
      v38 = v15;
      if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(v3, &v38, &v39, &v37))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v37 = v15;
    }

LABEL_46:
    v6 = v37;
    if (!*(a1 + 8) && v37)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

LABEL_48:
    vp::vx::data_flow::State<void>::~State(&v40);
    vp::vx::data_flow::State<void>::~State(&v33);
    vp::vx::data_flow::State<void>::~State(&v35);
    if (!v6)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6 + 2;
}

void sub_272663B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v27[1] = a2;
  v27[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 8) = *(a4 + 8);
  *(v19 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v18 != a3)
  {
    v21 = (v19 + 48);
    v22 = a3;
    do
    {
      *(v21 - 4) = *v22;
      *(v21 - 2) = *(v22 + 8);
      *v21 = *(v22 + 16);
      v21 += 2;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v22 += 32;
    }

    while (v22 != v18);
  }

  v27[0] = 0;
  if (v17)
  {
    v23 = *(a2 + 2);
    if (v23)
    {
      v24 = (v17 + 8);
      do
      {
        --v23;
        v24 = vp::vx::data_flow::State<void>::~State(v24) + 8;
      }

      while (v23);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v25;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_272663E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(vp::vx::IO_Parameter_Setter_Delegate *this)
{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(vp::vx::IO_Parameter_Setter_Delegate *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 4, v2);
    *(this + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(this + 4);
  *(this + 7) = &unk_2881C6630;
  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

unsigned int *vp::vx::IO_Parameter_Setter_Delegate::process(unsigned int *result, int a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (!a2)
  {
    v5 = result;
    v6 = COERCE_FLOAT(atomic_load(result + 11));
    a4.n128_f32[0] = v6;
    a5.n128_u32[0] = result[12];
    if (*(result + 52) != 1 || a5.n128_f32[0] != v6)
    {
      result = (*(*a3 + 32))(v8, a3, result[2], a4, a5);
      if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
      {
        result = (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      *(v5 + 12) = v6;
      *(v5 + 52) = 1;
    }
  }

  return result;
}

void vp::vx::IO_Parameter_Setter_Delegate::notify(_DWORD *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v4 = a1[10];
    if (v4)
    {
      vp::vx::data_flow::State<void>::unregister_listener(a1 + 4, v4);
      a1[10] = 0;
    }
  }

  else if (!a2)
  {
    v3 = a1[2];
    v6[0] = &unk_2881B8B50;
    v6[1] = a1;
    v6[2] = v3;
    v6[3] = v6;
    std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v7, v6);
    v8 = 0;
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_272664258(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = v4 + 56;
    }

    else
    {
      v6 = 0;
    }

    v7 = v18;
    vp::vx::io::get_log_context_info(v18, v6, "vp::vx::IO_Parameter_Setter_Delegate]", 36);
    v8 = v19;
    v9 = v19;
    v10 = v18[1];
    v12 = vp::get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (v9 < 0)
      {
        v7 = v18[0];
      }

      if (v13)
      {
        v14 = " ";
      }

      else
      {
        v14 = "";
      }

      caulk::string_from_4cc(&__p, *(a1 + 16));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v21 = v7;
      v22 = 2080;
      v23 = v14;
      v24 = 2080;
      v25 = p_p;
      v26 = 2048;
      v27 = v3;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%ssetting parameter %s to %f", buf, 0x2Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      LOBYTE(v9) = v19;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(v18[0]);
    }
  }

  atomic_store(LODWORD(v3), (v4 + 44));
  v16 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881B8B50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t vp::vx::IO_Parameter_Setter_Delegate::get_parameter_ids@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(result + 8);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &vars0, 1uLL);
  }

  return result;
}