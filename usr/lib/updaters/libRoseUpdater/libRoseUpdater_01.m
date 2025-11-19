uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);

    operator delete(v3);
  }
}

char *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_299EB1C78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> &,0>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2025330;
  std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2025330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  MEMORY[0x29C2B4E30](a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_299EB1E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_299EB1EC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2025380;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2025380;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = **v2;
  if (!v5)
  {
    v6 = 0;
    *(v1 + 64) = 0;
    goto LABEL_7;
  }

  v6 = (**v5)(v5);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v2)
  {
    v3 = *v2;
LABEL_7:
    (*(v3 + 2))(v2);
  }

  return v6;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2025410;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher4waitEjNSt3__18functionIFbvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2025490;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher6notifyEbNSt3__18functionIFvvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2025520;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2025520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = RoseCapabilities::supportsRTKitIOConfig(*(v2 + 104));
  RoseEvent::create(v1, v3, v4, &v7);
  v5 = v7;
  v7 = 0;
  result = *(v2 + 64);
  *(v2 + 64) = v5;
  if (result)
  {
    (*(*result + 16))(result);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2B52E0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_299EB2548(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2B5240](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2B5250](v13);
  return a1;
}

void sub_299EB27B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2B5250](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x299EB2798);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_299EB29DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20255A0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 5) = 0;
  *(v2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20255A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  if (!v3)
  {
    return 0;
  }

  v4 = **v3;
  if (*(a1 + 16) == 1)
  {
    if (v5)
    {
      v6 = (**v5)(v5);
LABEL_8:
      v7 = v6;
      goto LABEL_10;
    }
  }

  else
  {
    if (v8)
    {
      v6 = RoseCommandCompleteEvent::validate(v8, 32);
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:
  v9 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

ACFURestore *RoseRestore::create(RoseRestore *this, const __CFDictionary *a2)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v3 = operator new(0x178uLL);
  ACFURestore::ACFURestore(v3);
  *v3 = &unk_2A2025620;
  *(v3 + 180) = 0;
  *(v3 + 46) = 0;
  v4 = RoseRestore::init(v3, this, @"Rap,Ticket");
  if (v4)
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    (*(*v3 + 8))(v3);
    return 0;
  }

  return v3;
}

void RoseRestore::RoseRestore(RoseRestore *this)
{
  ACFURestore::ACFURestore(this);
  *v1 = &unk_2A2025620;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
}

void RoseRestore::queryCmd(RoseRestore *this@<X0>, uint64_t a2@<X8>)
{
  if (ACFURestore::isNeRDOS(this))
  {
    v4 = (*(*this + 16))(this);
    if (v4)
    {
      v5 = v4;
      v6 = 1;
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v15 = *(this + 13);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to collect preflight info");
      ACFUError::addError();
      if (v19 < 0)
      {
        operator delete(__p);
      }

      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    Cmd = ACFURestore::queryCmd(&__s2, this);
    v5 = __s2;
    v6 = v17;
    if (v17)
    {
      if ((ACFURestore::isPreflight(this) & 1) == 0 && CFDictionaryContainsKey(v5, @"Rap,BoardID"))
      {
        LOWORD(__s2) = 0;
        Value = CFDictionaryGetValue(v5, @"Rap,BoardID");
        v9 = Value;
        if (Value)
        {
          TypeID = CFDataGetTypeID();
          Value = CFGetTypeID(v9);
          if (TypeID == Value)
          {
            BytePtr = CFDataGetBytePtr(v9);
            Length = CFDataGetLength(v9);
            if (Length >= 2)
            {
              v13 = 2;
            }

            else
            {
              v13 = Length;
            }

            Value = memcmp(BytePtr, &__s2, v13);
            LODWORD(v9) = Value == 0;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }

        ACFULogging::getLogInstance(Value);
        ACFULogging::handleMessage();
        v14 = MEMORY[0x29EDB8F00];
        if (!v9)
        {
          v14 = MEMORY[0x29EDB8EF8];
        }

        CFDictionaryAddValue(v5, @"LocalSigningID", *v14);
      }
    }

    else
    {
      RoseRestore::queryCmd(Cmd);
    }
  }

  *a2 = v5;
  *(a2 + 8) = v6;
}

void sub_299EB2F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseRestore::performCmd(CFDictionaryRef *this)
{
  result = ACFURestore::performCmd(this);
  if (result)
  {
    if (ACFURestore::getCurrentUpdateStep(this))
    {
      RoseRestore::performCmd(this);
      return 1;
    }

    isPostSealing = ACFURestore::isPostSealing(this);
    if (isPostSealing)
    {
      Value = CFDictionaryGetValue(this[16], @"APTicket");
      if (!Value)
      {
        RoseRestore::performCmd(0);
        return 0;
      }

      v5 = Value;
      v6 = CFGetTypeID(Value);
      TypeID = CFDataGetTypeID();
      if (v6 != TypeID)
      {
        RoseRestore::performCmd(TypeID);
        return 0;
      }

      LOWORD(v42) = 0;
      *(&v42 + 1) = v5;
      LOBYTE(v43) = *(this + 361);
      v8 = this[22];
      v40 = this[21];
      v41 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = this[7];
      v38 = this[6];
      v39 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = this[21];
      {
        v12 = this[22];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v12 = 0;
      }

      RoseTransport::getCapabilities(v10, &v36);
      v13 = RoseCalibration::sendCalibration(&v40, &v38, &v36, &v42);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      isPostSealing = v41;
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v13)
      {
        RoseRestore::performCmd(&v42);
        return 0;
      }
    }

    if (*(this + 360) != 1)
    {
      return 1;
    }

    this[25] = this[44];
    v14 = this[18];
    this[26] = v14;
    if (this[27] && this[28])
    {
      if (v14)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, this[15]);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          v17 = ACFUFirmware::copyFWContainer(this[19]);
          if (v17)
          {
            v18 = v17;
            CFDictionarySetValue(v16, @"FirmwareData", v17);
            CFRelease(v18);
            ACFULogging::getLogInstance(v19);
            std::string::basic_string[abi:ne200100]<0>(&v30, "RoseRestore");
            v20 = std::string::append(&v30, "::");
            v21 = *&v20->__r_.__value_.__l.__data_;
            v31.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&v31.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            v22 = std::string::append(&v31, "performCmd");
            v23 = *&v22->__r_.__value_.__l.__data_;
            v43 = v22->__r_.__value_.__r.__words[2];
            v42 = v23;
            v22->__r_.__value_.__l.__size_ = 0;
            v22->__r_.__value_.__r.__words[2] = 0;
            v22->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42);
            }

            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            v24 = (*(*this[6] + 32))(this[6], this + 200, this[17], v16, 0);
            if (!v24)
            {
              CFRelease(v16);
              return 1;
            }

            ACFULogging::getLogInstance(v24);
            ACFULogging::handleMessage();
            v28 = this[13];
            std::string::basic_string[abi:ne200100]<0>(v29, "Failed to perform certification step");
            ACFUError::addError();
            RoseRestore::performCmd(v29, v16);
          }

          else
          {
            RoseRestore::performCmd(v16);
          }
        }

        else
        {
          RoseRestore::performCmd(0);
        }

        return 0;
      }

      ACFULogging::getLogInstance(isPostSealing);
      ACFULogging::handleMessage();
      v27 = this[13];
      std::string::basic_string[abi:ne200100]<0>(&__p, "No certification URL found for certification step");
      ACFUError::addError();
      if ((v33 & 0x80000000) == 0)
      {
        return 0;
      }

      v26 = __p;
    }

    else
    {
      ACFULogging::getLogInstance(isPostSealing);
      ACFULogging::handleMessage();
      v25 = this[13];
      std::string::basic_string[abi:ne200100]<0>(&v34, "Incomplete parameter set for certification");
      ACFUError::addError();
      if ((v35 & 0x80000000) == 0)
      {
        return 0;
      }

      v26 = v34;
    }

    operator delete(v26);
    return 0;
  }

  return result;
}

void sub_299EB33F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RoseRestore::~RoseRestore(RoseRestore *this)
{
  ACFURestore::~ACFURestore(this);

  operator delete(v1);
}

ACFULogging *RoseRestore::gatherPreflightParameters(__CFString **this)
{
  isNeRDOS = ACFURestore::isNeRDOS(this);
  v3 = isNeRDOS;
  ACFULogging::getLogInstance(isNeRDOS);
  if ((v3 & 1) == 0)
  {
    ACFULogging::handleMessage();
    v8 = dlopen("/System/Library/PrivateFrameworks/Proximity.framework/Proximity", 1);
    if (!v8)
    {
      RoseRestore::gatherPreflightParameters(0);
      return 0;
    }

    v6 = v8;
    v9 = dlsym(v8, "PRGetPreflightInfo");
    ACFULogging::getLogInstance(v9);
    if (v9)
    {
      v5 = ACFULogging::handleMessage();
      v10 = 1;
      while (1)
      {
        ACFULogging::getLogInstance(v5);
        v11 = ACFULogging::handleMessage();
        v5 = (v9)(v11);
        if (v5)
        {
          break;
        }

        ++v10;
        __ns.__rep_ = 1000000000;
        std::this_thread::sleep_for (&__ns);
        if (v10 == 3)
        {
          goto LABEL_10;
        }
      }

LABEL_3:
      v7 = v5;
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
      if (!v6)
      {
        return v7;
      }

      goto LABEL_11;
    }

    ACFULogging::handleMessage();
    v7 = 0;
LABEL_11:
    dlclose(v6);
    return v7;
  }

  ACFULogging::handleMessage();
  v5 = RoseBootstrappedPreflight::bootstrappedPreflight(0, 0, this[46], v4);
  v6 = 0;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_10:
  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  v7 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t RoseRestore::init(RoseRestore *this, const __CFDictionary *a2, const void *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = ACFURestore::init(this, a2, a3);
  if (v4)
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v14 = 4000;
    goto LABEL_18;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"DebugLogPath"))
  {
    Value = CFDictionaryGetValue(*(this + 16), @"DebugLogPath");
    if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), Value = CFStringGetTypeID(), v7 != Value))
    {
      RoseRestore::init(Value);
      v14 = 4002;
      goto LABEL_18;
    }

    *(this + 46) = v6;
  }

  isPreflight = ACFURestore::isPreflight(this);
  if (isPreflight & 1) != 0 || (isPreflight = ACFURestore::isNeRDOS(this), (isPreflight))
  {
    ACFULogging::getLogInstance(isPreflight);
    ACFULogging::handleMessage();
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v49 = 1;
  v53 = 0;
  v54 = 0;
  v50 = 0;
  v51 = 0;
  v52 = &v53;
  v48 = 1;
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(*(this + 44), @"/usr/standalone/firmware/Rose/", v9);
  v10 = URLByAppendingStrings;
  if (URLByAppendingStrings)
  {
    v50 = @"Rap,Ticket";
    v51 = URLByAppendingStrings;
    GetRoseTatsuTagToFileNameMap(&v45);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v52, v53);
    v18 = v46;
    v52 = v45;
    v53 = v46;
    v54 = v47;
    if (v47)
    {
      v46->__shared_weak_owners_ = &v53;
      v45 = &v46;
      v46 = 0;
      v47 = 0;
      v18 = 0;
    }

    else
    {
      v52 = &v53;
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v45, v18);
    RTKitFirmware::create();
    std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(this + 19, &v45);
    v19 = v45;
    v45 = 0;
    if (v19)
    {
      v19 = (*(*v19 + 56))(v19);
    }

    if (*(this + 19))
    {
      v20 = *(this + 24);
      v43 = *(this + 23);
      v44 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RoseTransport::create(&v43, 0, 0, &v45);
      std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(this + 21, &v45);
      v21 = v45;
      v45 = 0;
      if (v21)
      {
        (*(*v21 + 64))(v21);
      }

      v22 = v44;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(this + 21))
      {
        v23 = *(this + 22);
        v41 = *(this + 21);
        v42 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 20);
        v39 = *(this + 19);
        v40 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = *(this + 24);
        v37 = *(this + 23);
        v38 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ACFURTKitROM::create();
        v11 = v45;
        v12 = v46;
        v45 = 0;
        v46 = 0;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        v26 = v42;
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (v11)
        {
          if (*(this + 18))
          {
            isPostSealing = ACFURestore::isPostSealing(this);
            *(this + 360) = isPostSealing ^ 1;
            if ((isPostSealing & 1) == 0)
            {
              ACFULogging::getLogInstance(isPostSealing);
              ACFULogging::handleMessage();
              v28 = *(this + 21);
              {
                v30 = *(this + 22);
                if (v30)
                {
                  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              else
              {
                v30 = 0;
              }

              RoseTransport::getCapabilities(v28, &v45);
              v31 = RoseCapabilities::chipNameForCertification(v45);
              *(this + 25) = 0;
              *(this + 26) = 0;
              *(this + 27) = v31;
              *(this + 28) = @"rcrt";
              *(this + 58) = 1;
              *(this + 31) = 0;
              *(this + 32) = 0;
              *(this + 30) = 0;
              *(this + 264) = 0;
              *(this + 34) = 0;
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }
            }
          }

          else
          {
            *(this + 360) = 0;
          }

          if (ACFURestore::isPostSealing(this))
          {
            v32 = *(this + 21);
            {
              v34 = *(this + 22);
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v34 = 0;
            }

            RoseTransport::getCapabilities(v32, &v45);
            *(this + 361) = RoseCapabilities::supportsRTKitIOConfig(v45);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            v36 = ACFUCommon::parseDebugArgs(&v45, *(this + 15), "combinedFDRObjects", v35);
            if (!HIDWORD(v45))
            {
              *(this + 361) = v45 != 0;
              ACFULogging::getLogInstance(v36);
              *(this + 361);
              ACFULogging::handleMessage();
            }
          }

          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v52, v53);
          if (v12)
          {
            v13 = 0;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = 0;
            v50 = v11;
            v51 = v12;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_10:
            LOWORD(v52) = 3;
            BYTE2(v52) = 1;
            std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(this + 3, &v49, &v53);
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            }

            if ((v13 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            ACFUError::createAppendedDomain(*(this + 13), @"RoseRestore");
            v14 = 0;
            if (!v10)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_9:
          v12 = 0;
          v49 = 0;
          v13 = 1;
          v50 = v11;
          v51 = 0;
          goto LABEL_10;
        }

        ACFULogging::getLogInstance(v26);
        ACFULogging::handleMessage();
      }

      else
      {
        ACFULogging::getLogInstance(v22);
        v12 = 0;
        ACFULogging::handleMessage();
      }

      v14 = 4008;
    }

    else
    {
      ACFULogging::getLogInstance(v19);
      v12 = 0;
      ACFULogging::handleMessage();
      v14 = 1000;
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    v12 = 0;
    ACFULogging::handleMessage();
    v14 = 4000;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v52, v53);
  if (v10)
  {
LABEL_15:
    CFRelease(v10);
  }

LABEL_16:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_299EB3DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v25 + 24, *(v26 - 88));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void sub_299EB3EB4()
{
  if (!v0)
  {
    JUMPOUT(0x299EB3E94);
  }

  JUMPOUT(0x299EB3E8CLL);
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(uint64_t **result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 8;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 8;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(v5, a2, a2);
    a2 += 8;
  }

  return result;
}

void sub_299EB3FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(uint64_t **a1, int *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1 + 1;
  v5 = a1[1];
  v7 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v7;
    RestoreStep::operator=();
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v6, v3);
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(uint64_t **a1, int *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x40uLL);
    v11 = v10;
    v10[8] = *a3;
    v12 = *(a3 + 16);
    *(v10 + 5) = *(a3 + 8);
    *(v10 + 6) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(v10 + 28) = *(a3 + 24);
    *(v10 + 58) = *(a3 + 26);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v6, v10);
  }

  return v11;
}

uint64_t RoseTargetMap::getRoseTarget(RoseTargetMap *this)
{
  if (RoseTargetMap::getRoseTarget(void)::onceToken != -1)
  {
    RoseTargetMap::getRoseTarget();
  }

  ACFULogging::getLogInstance(this);
  if (RoseTargetMap::getRoseTarget(void)::roseTarget)
  {
    [RoseTargetMap::getRoseTarget(void)::roseTarget UTF8String];
  }

  ACFULogging::handleMessage();
  return RoseTargetMap::getRoseTarget(void)::roseTarget;
}

uint64_t ___ZN13RoseTargetMap13getRoseTargetEv_block_invoke()
{
  result = MGGetProductType();
  if (result > 2309863437)
  {
    if (result <= 3564012491)
    {
      if (result > 2940697644)
      {
        if (result <= 3001488777)
        {
          if (result <= 2943112656)
          {
            if (result != 2940697645)
            {
              v1 = 2941181571;
              goto LABEL_104;
            }

            goto LABEL_75;
          }

          if (result != 2943112657)
          {
            v9 = 2979575960;
            goto LABEL_108;
          }

LABEL_90:
          v3 = 0x2A14F2000;
          v4 = @"r1w0";
          goto LABEL_112;
        }

        if (result <= 3143587591)
        {
          if (result != 3001488778)
          {
            v1 = 3048527336;
            goto LABEL_104;
          }

LABEL_100:
          v3 = 0x2A14F2000;
          v4 = @"r1p1";
          goto LABEL_112;
        }

        if (result != 3143587592)
        {
          if (result == 3348380076)
          {
            v3 = 0x2A14F2000;
            v4 = @"r1hp0";
            goto LABEL_112;
          }

          goto LABEL_114;
        }

        goto LABEL_101;
      }

      if (result > 2688879998)
      {
        if (result <= 2793418700)
        {
          if (result != 2688879999)
          {
            if (result != 2722529672)
            {
              goto LABEL_114;
            }

            goto LABEL_72;
          }

LABEL_75:
          v3 = 0x2A14F2000;
          v4 = @"r1p3";
          goto LABEL_112;
        }

        if (result != 2793418701)
        {
          v1 = 2795618603;
          goto LABEL_104;
        }

LABEL_111:
        v3 = 0x2A14F2000uLL;
        v4 = @"r2p0";
        goto LABEL_112;
      }

      if (result != 2309863438)
      {
        if (result != 2390434178)
        {
          v6 = 2625074843;
LABEL_93:
          if (result != v6)
          {
            goto LABEL_114;
          }

          goto LABEL_101;
        }

        goto LABEL_71;
      }

LABEL_85:
      v3 = 0x2A14F2000;
      v4 = @"r1p2";
      goto LABEL_112;
    }

    if (result > 3819635029)
    {
      if (result <= 3885279869)
      {
        if (result > 3839750254)
        {
          if (result == 3839750255)
          {
            goto LABEL_101;
          }

          v6 = 3867318491;
          goto LABEL_93;
        }

        if (result != 3819635030)
        {
          if (result != 3825599860)
          {
            goto LABEL_114;
          }

          goto LABEL_111;
        }

LABEL_110:
        v3 = 0x2A14F2000;
        v4 = @"r1w2";
        goto LABEL_112;
      }

      if (result > 4068102501)
      {
        if (result != 4068102502)
        {
          if (result != 4201643249)
          {
            goto LABEL_114;
          }

          goto LABEL_100;
        }

LABEL_101:
        v3 = 0x2A14F2000;
        v4 = @"r2w0";
        goto LABEL_112;
      }

      if (result == 3885279870)
      {
        goto LABEL_100;
      }

      v7 = 4018315120;
      goto LABEL_63;
    }

    if (result > 3591055298)
    {
      if (result > 3742999857)
      {
        if (result != 3742999858)
        {
          v9 = 3767261006;
LABEL_108:
          if (result == v9)
          {
            goto LABEL_109;
          }

LABEL_114:
          ACFULogging::getLogInstance(result);
          return ACFULogging::handleMessage();
        }

        goto LABEL_110;
      }

      if (result != 3591055299)
      {
        v2 = 3663011141;
LABEL_43:
        if (result != v2)
        {
          goto LABEL_114;
        }

        goto LABEL_110;
      }

LABEL_105:
      v3 = 0x2A14F2000;
      v4 = @"r2p1";
      goto LABEL_112;
    }

    if (result != 3564012492)
    {
      if (result == 3571532206)
      {
        goto LABEL_90;
      }

      v5 = 3585085679;
      goto LABEL_84;
    }

LABEL_71:
    v3 = 0x2A14F2000;
    v4 = @"r2w2";
    goto LABEL_112;
  }

  if (result > 1280909811)
  {
    if (result <= 1770142588)
    {
      if (result > 1434404432)
      {
        if (result > 1554479184)
        {
          if (result != 1554479185)
          {
            v9 = 1602181456;
            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (result == 1434404433)
        {
          goto LABEL_75;
        }

        if (result != 1540760353)
        {
          goto LABEL_114;
        }

        v3 = 0x2A14F2000;
        v4 = @"r1hp1";
LABEL_112:
        *(v3 + 480) = v4;
        return result;
      }

      if (result == 1280909812)
      {
LABEL_109:
        v3 = 0x2A14F2000;
        v4 = @"r1w1";
        goto LABEL_112;
      }

      if (result == 1371389549)
      {
LABEL_72:
        v3 = 0x2A14F2000;
        v4 = @"r1p0";
        goto LABEL_112;
      }

      v8 = 1408738134;
    }

    else
    {
      if (result <= 2080700390)
      {
        if (result <= 1872992316)
        {
          if (result != 1770142589)
          {
            v1 = 1781728947;
            goto LABEL_104;
          }

          goto LABEL_101;
        }

        if (result != 1872992317)
        {
          if (result != 2021146989)
          {
            goto LABEL_114;
          }

          goto LABEL_75;
        }

        goto LABEL_105;
      }

      if (result <= 2085054104)
      {
        if (result != 2080700391)
        {
          v6 = 2084894489;
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      if (result == 2085054105)
      {
        goto LABEL_110;
      }

      v8 = 2132302344;
    }

    if (result != v8)
    {
      goto LABEL_114;
    }

    goto LABEL_90;
  }

  if (result > 749116820)
  {
    if (result <= 877582974)
    {
      if (result == 749116821)
      {
        goto LABEL_101;
      }

      if (result != 851437781)
      {
        v7 = 861924853;
LABEL_63:
        if (result != v7)
        {
          goto LABEL_114;
        }

        goto LABEL_71;
      }

      goto LABEL_105;
    }

    if (result > 1169082143)
    {
      if (result == 1169082144)
      {
        goto LABEL_100;
      }

      v1 = 1260109173;
LABEL_104:
      if (result == v1)
      {
        goto LABEL_105;
      }

      goto LABEL_114;
    }

    if (result == 877582975)
    {
      goto LABEL_105;
    }

    v5 = 1060988941;
    goto LABEL_84;
  }

  if (result > 347088859)
  {
    if (result <= 574536382)
    {
      if (result != 347088860)
      {
        v2 = 425046865;
        goto LABEL_43;
      }

      goto LABEL_71;
    }

    if (result == 574536383)
    {
      goto LABEL_105;
    }

    v5 = 689804742;
LABEL_84:
    if (result != v5)
    {
      goto LABEL_114;
    }

    goto LABEL_85;
  }

  if (result != -1)
  {
    if (result != 133314240)
    {
      v1 = 330877086;
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
  return ACFULogging::handleMessage();
}

void *RoseUpdaterCreate(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, void *a4)
{
  v8 = MEMORY[0x29C2B5140](v26, @"RoseUpdaterCreate");
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v24, "failed to init logging");
    v16 = ACFUError::addError();
    Instance = 0;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v17 = v24;
    goto LABEL_17;
  }

  if (RoseUpdaterCreate::only_once != -1)
  {
    RoseUpdaterCreate_cold_1();
  }

  if (!kRoseRestoreObjTypeID)
  {
    ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v22, "failed to create Rose CFRuntimeClass");
    v16 = ACFUError::addError();
    Instance = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v17 = v22;
    goto LABEL_17;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v20, "failed to create Rose CFType object");
    v16 = ACFUError::addError();
    Instance = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v17 = v20;
    goto LABEL_17;
  }

  v14 = RoseRestore::create(a1, v12);
  Instance[2] = v14;
  if (v14)
  {
    ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage();
    goto LABEL_8;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  std::string::basic_string[abi:ne200100]<0>(v18, "failed to get the Rose restore instance");
  v16 = ACFUError::addError();
  if (v19 < 0)
  {
    v17 = v18;
LABEL_17:
    operator delete(*v17);
  }

LABEL_18:
  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  *a4 = ACFUError::getCFError(v26);
  if (Instance)
  {
    CFRelease(Instance);
    Instance = 0;
  }

LABEL_8:
  MEMORY[0x29C2B5150](v26);
  return Instance;
}

void sub_299EB4BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B5150](v28 - 48);
  _Unwind_Resume(a1);
}

uint64_t __RoseUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kRoseRestoreObjTypeID = result;
  return result;
}

void *RoseRestoreObjDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      v2 = (*(*result + 8))(result);
      ACFULogging::getLogInstance(v2);
      result = ACFULogging::handleMessage();
      v1[2] = 0;
    }
  }

  return result;
}

CFStringRef RoseRestoreObjDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<RoseRestoreObj %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t RoseUpdaterExecCommand(ACFULogging *a1, ACFURestore *this, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      ACFURestore::restoreCommand(this, this);
      if (ACFURestore::executeCommand())
      {
        return 1;
      }

      ACFURestore::getErrorHandle(&v9, v5);
      *a5 = ACFUError::getCFError(v9);
      v8 = v10;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
    }

    else
    {
      RoseUpdaterExecCommand_cold_1(a1);
    }
  }

  else
  {
    RoseUpdaterExecCommand_cold_2(0);
  }

  return 0;
}

void sub_299EB4E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseUpdaterIsDone(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = *(result + 16);
    if (!v3)
    {
      v5 = MEMORY[0x29C2B5140](&v8, @"RoseUpdaterIsDone");
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
      std::string::basic_string[abi:ne200100]<0>(&__p, "RoseRestore object doesn't exist");
      ACFUError::addError();
      if (v7 < 0)
      {
        operator delete(__p);
      }

      *a2 = ACFUError::getCFError(&v8);
      MEMORY[0x29C2B5150](&v8);
      return 1;
    }

    result = ACFURestore::isRestoreComplete(*(result + 16));
    if (result)
    {
      ACFURestore::getErrorHandle(&v8, v3);
      *a2 = ACFUError::getCFError(v8);
      v4 = v9;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ACFULogging::getLogInstance(v4);
      ACFULogging::handleMessage();
      return 1;
    }

    *a2 = 0;
  }

  return result;
}

void sub_299EB4F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void GetRoseTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v7[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v4, kRoseSwDsp1, "sbd1");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, kRoseRtkitos, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, kRoseRestoreRtkitos, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v7, &kRoseRtkitosICNF, "icnf");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v4, 4);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v7[i + 3]) < 0)
    {
      operator delete(v7[i + 1]);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_299EB50A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 104;
  v13 = -128;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
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

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_299EB54EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t RoseRestoreHost::createRequest(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseRestoreHost::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t RoseBootstrappedPreflight::bootstrappedPreflight(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  return (*(v2 + 64))(v1);
}

{
  v1 = OUTLINED_FUNCTION_0(a1);
  return (*(v2 + 56))(v1);
}

{
  v1 = OUTLINED_FUNCTION_0(a1);
  return (*(v2 + 56))(v1);
}

uint64_t RoseEvent::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseEvent::validate(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  OUTLINED_FUNCTION_1(a1);
  OUTLINED_FUNCTION_0_0();
  return ACFULogging::handleMessage();
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1, unsigned __int16 *a2, uint64_t a3)
{
  ACFULogging::getLogInstance(a1);
  v8 = *a1;
  v9 = *a2;
  ACFULogging::handleMessage();
  v6 = *(*a3 + 24);

  return v6(a3);
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::validate(ACFULogging *a1, uint64_t *a2, uint64_t a3)
{
  ACFULogging::getLogInstance(a1);
  v8 = *a1;
  v9 = *a2;
  ACFULogging::handleMessage();
  v6 = *(*a3 + 24);

  return v6(a3);
}

uint64_t RoseInitDoneEvent::validate(ACFULogging *a1)
{
  OUTLINED_FUNCTION_1(a1);
  v5 = *v2;
  ACFULogging::handleMessage();
  v3 = *(*v1 + 24);

  return v3(v1);
}

uint64_t RoseTransport::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::createRoseController(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getPowerState(const void *a1)
{
  CFRelease(a1);
  ACFULogging::getLogInstance(v1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getBootNonceHash(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::setNonce(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::pushFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::isCrashLogAvailable(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::collectFirmwareLogs(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::logCrashLogReason(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::logCrashLogReason(unsigned int *a1)
{
  ACFULogging::getLogInstance(a1);
  v4 = a1[2];
  v5 = a1[3];
  v3 = *a1;
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::collectIOReport(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getRoseDebugInfoDict(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::sendRoseCommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::parsePingResponse(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

void RoseTransport::sendCalibration()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    unk_2A14F21D8 = 0;
    xmmword_2A14F21C8 = 0uLL;
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A14F21C8, &dword_299EA3000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  dispatch_once(&RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::only_once, &__block_literal_global_0);
}

uint64_t RoseTransport::runCertification(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseRestore::performCmd(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  ACFURestore::getCurrentUpdateStep(a1);
  return ACFULogging::handleMessage();
}

void RoseRestore::performCmd(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  CFRelease(cf);
}

void RoseRestore::performCmd(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  CFRelease(a1);
}

uint64_t RoseRestore::init(uint64_t a1)
{
  return (*(*a1 + 56))(a1);
}

{
  return (*(*a1 + 64))(a1);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t RTKitFirmware::create()
{
  return MEMORY[0x2A1C5F128]();
}

{
  return MEMORY[0x2A1C5F138]();
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